

$(document).ready(function() 
{

var pageURL = window.location.href;
console.log("pageURL = "+ pageURL);


// Get references to page elements
var $exampleText = $("#example-text");
var $exampleDescription = $("#example-description");
var $submitBtn = $("#submit");
var $exampleList = $("#example-list");
var $searchForm = $("searchForm");

// The API object contains methods for each kind of request we'll make
var API = {
  saveExample: function(example) {
    return $.ajax({
      headers: {
        "Content-Type": "application/json"
      },
      type: "POST",
      url: "api/examples",
      data: JSON.stringify(example)
    });
  },
  getExamples: function() {
    return $.ajax({
      url: "api/examples",
      type: "GET"
    });
  },
  deleteExample: function(id) {
    return $.ajax({
      url: "api/examples/" + id,
      type: "DELETE"
    });
  },
  getMatchingProducts: function(name) {
    // console.log("getMatchingProducts("+name+")");
    return $.ajax({
      url: "api/products/" + name,
      type: "GET"
    });
  },
  getStoresById: function(storeids)
  {
    return $.ajax({
      url: "api/stores/" + storeids,
      //data: { storeids: idArr },
      type: "GET"
    });
  },
  searchForProduct(theProduct)
  {
    return $.ajax({
      url: "api/products/" + theProduct,
      type: "GET"
    });
  }
};


$( ".btn-find" ).click(function() {
  var prod = $("#prodName").text();
  var id =  $("#prodName").attr("data-prod");
  var reformatName = prod.split(' ').join('+');
  API.getMatchingProducts(reformatName).then(function(data) 
  {
    console.log("prodData", data);
    console.log("data.length = " + data.length);
    
    var stores = [];
    var storeIdStr = "storeids=";
    for (var i = 0; i < data.length; i++){
      var storeID = data[i].StoreId;
      if(!stores.includes(storeID)){
        //stores.push(storeID);
        storeIdStr += "+" + storeID;
      }
    } 
    getStoresForProduct(storeIdStr);
  });

});

function getStoresForProduct(storeids)
{
  API.getStoresById(storeids).then(function(data)
  {
    console.log("store data = ", data);
    var resultDiv = $("#find-results");
    resultDiv.empty();

    for (var i = 0; i < data.length; i++)
    {
      var storeName = data[i].name;
      var storeNameDiv = $("<div>");
      var storeLink = $("<a>");
      storeLink.attr("href", "/store/" + data[i].id);
      storeLink.text(storeName);
      storeNameDiv.append(storeLink);
      resultDiv.append(storeNameDiv);
    }
  });
}
// <strong><a href="/store/{{id}}">{{name}}</a></strong><br></br>

// refreshExamples gets new examples from the db and repopulates the list
var refreshExamples = function() {
  API.getExamples().then(function(data) {
    var $examples = data.map(function(example) {
      var $a = $("<a>")
        .text(example.text)
        .attr("href", "/example/" + example.id);

      var $li = $("<li>")
        .attr({
          class: "list-group-item",
          "data-id": example.id
        })
        .append($a);

      var $button = $("<button>")
        .addClass("btn btn-danger float-right delete")
        .text("ｘ");

      $li.append($button);

      return $li;
    });

    $exampleList.empty();
    $exampleList.append($examples);
  });
};

// handleFormSubmit is called whenever we submit a new example
// Save the new example to the db and refresh the list
/*var handleFormSubmit = function(event) 
{
  event.preventDefault();

  var example = {
    text: $exampleText.val().trim(),
    description: $exampleDescription.val().trim()
  };

  if (!(example.text && example.description)) {
    alert("You must enter an example text and description!");
    return;
  }

  API.saveExample(example).then(function() {
    refreshExamples();
  });

  $exampleText.val("");
  $exampleDescription.val("");
};*/


//$submitBtn.on("click", function()
var handleFormSubmit = function(event) {


  

  
    /*var action = '';
    // compute action here...
    $(this).attr('action', action);*/
  



  /*
  // event.preventDefault();
  var searchTerms = $("#product-search").val().trim();
  var formattedStr = "";
  console.log("searchTerms = ", searchTerms);
  for (var i = 0; i < searchTerms.length; i++)
  {
    if(searchTerms.charAt(i) === " ")
    {
      formattedStr += "+";
    }
    else
    {
      formattedStr += searchTerms.charAt(i);
    }
  }
  console.log("formattedStr = ", formattedStr);
  if(formattedStr.length > 0)
  {
    API.searchForProduct(formattedStr).then(function(data){
      console.log("data = ", data);
      
    });
  }*/
  
};





// handleDeleteBtnClick is called when an example's delete button is clicked
// Remove the example from the db and refresh the list
var handleDeleteBtnClick = function() {
  var idToDelete = $(this)
    .parent()
    .attr("data-id");

  API.deleteExample(idToDelete).then(function() {
    refreshExamples();
  });
};

// Add event listeners to the submit and delete buttons
// $submitBtn.on("click", handleFormSubmit);

$('#searchForm').submit(function ()
{

  var searchTerms = $("#product-search").val().trim();
  var formattedStr = "";

  console.log("searchTerms = ", searchTerms);

  for (var i = 0; i < searchTerms.length; i++)
  {
    if(searchTerms.charAt(i) === " ")
    {
      formattedStr += "+";
    }
    else
    {
      formattedStr += searchTerms.charAt(i);
    }
  }

  console.log("formattedStr = ", formattedStr);

  var action = '/api/products/' + formattedStr;
  // compute action here...
  $(this).attr('action', action);

});


$('#signInForm').submit(function ()
{

  var email = $("#signin-email").val().trim();
  var password = $("#signin-password").val().trim();

  var cred = email + "+" + password;

  var action = '/user/signin/' + cred;
  // compute action here...
  $(this).attr('action', action);

});


$exampleList.on("click", ".delete", handleDeleteBtnClick);


}); // DOCUMENT LOAD
