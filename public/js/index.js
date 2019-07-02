//import { createDeflate } from "zlib";


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

//User profile link needs to be updated with user id in local storage
// var local_storage_user;
if(JSON.parse(localStorage.getItem('userData')) != null)
{
  var localStorageData = JSON.parse(localStorage.getItem('userData'));
  console.log("---------------------");
  console.log("local_storage_data:", localStorageData );

  $("#user-profile-link").attr("href", "/user/" + localStorageData.id);
}
else
{
  $("#user-profile-link").attr("href", "/user/0");
  /*var local_storage_user = {
    id: 0,
    first_name: "",
    last_name: "",
    email: ""
  }*/
}

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
  },
  addStoreComment(commentObj)
  {
    return $.ajax({
      headers: {
        "Content-Type": "application/json"
      },
      type: "POST",
      url: "api/storecomment",
      data: JSON.stringify(commentObj)
    });
  },
  userDeleteComment: function(id) {
    return $.ajax({
      url: "api/store_comment/" + id,
      type: "DELETE"
    });
  },
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


/* Sign-In form submission
$('#signInForm').submit(function ()
{

  var email = $("#signin-email").val().trim();
  var password = $("#signin-password").val().trim();

  var cred = email + "+" + password;

  var action = '/user/signin/' + cred;
  // compute action here...
  $(this).attr('action', action);

});
*/

$( "#signin-submit" ).click(function(event)
{
  event.preventDefault();

  var email = $("#signin-email").val().trim();
  var password = $("#signin-password").val().trim();

  var credentials = email + "+" + password;

  // var action = '/user/signin/' + cred;

  $.ajax({
    url: "/user/signin/" + credentials,
    type: "GET"
  }).then(function(data) 
  {
    var userData = {
      id: data.id,
      first_name: data.first_name,
      last_name: data.last_name,
      email: data.email
    }

    localStorage.removeItem("userData");
    localStorage.setItem("userData", JSON.stringify(userData));
  
    window.location.href = "/user/" + data.id;
  });

});

$( "#btn-signout" ).click(function(event){

  localStorage.removeItem("userData");
  $("#user-profile-link").attr("href", "/user/0");

});


//commentForm
$( "#new-comment-submit" ).click(function(event){
  event.preventDefault();
  
  // get user id from local storage
  var user = 4; // Ryan
  // need store id
  var store = $("#store-name").attr("data-store-id");

  var newComment = $("#user-added-comment").val().trim();
  // createdAt
  // updateAt

  console.log("--------------------");
  console.log("store id = " + store);
  console.log(newComment);

  var currTime = moment().format("YYYY-MM-DD HH:mm:ss");

  var commentObj = {
    comment: newComment,
    createdAt: currTime,
    updatedAt: currTime,
    StoreId: store,
    UserId: user
  };

  API.addStoreComment(commentObj).then(function(data)
  {
    //console.log("--New Comment Created -------------------------");
    //console.log("data from POST", data);
    location.reload();
  });


})


$( ".user-comment" ).mouseenter(function()
{
    // local storage user id = ???

    var localStorageData = JSON.parse(localStorage.getItem('userData'));
    
    // console.log("--- HOVER COMMENT -----------------");
    // console.log("Store ID: " + storeID);
    // console.log("User ID: " + userID);
    // console.log("Comment ID: " + commentID);

    if(localStorageData != null)
    {
      var commentID = $(this).attr("data-comment-id");
      var userID = $(this).find("h5").attr("data-user-id");
      var storeID = $("#store-name").attr("data-store-id"); 

      if(Number.parseInt(localStorageData.id) === Number.parseInt(userID))
      {
        $(this).find("button").show();
      }
    }
    else
    {
      console.log("LOCAL STORAGE = NULL");
    }

  });


  $( ".user-comment" ).mouseleave(function() {
    $(this).find("button").hide();
  });
  

  $(document).on("click", "button.user-comment-edit", function() {
    event.preventDefault();
  });

  $(document).on("click", "button.user-comment-delete", function() {
    event.preventDefault();
  });



/*

$( "div.enterleave" )
  .mouseenter(function() {
    $( "p:first", this ).text( "mouse enter" );
    $( "p:last", this ).text( ++n );
  })
  .mouseleave(function() {
    $( "p:first", this ).text( "mouse leave" );
  });


$(document).on("click", "button.delete-comment", function() {});

$(document).on("click", "button.delete-comment", function() {});

  $("input").prop('disabled', true);
$("input").prop('disabled', false);
  
  event.preventDefault();

*/




$exampleList.on("click", ".delete", handleDeleteBtnClick);


// user page - edit comment
$(document).on("click", "button.user-edit-comment", function() 
{
  var store_comment = $(this).attr("data-comment");
  var user = $("#user-profile-section").attr("data-user");
  var store = $(this).attr("data-store");
  var currTime = moment().format("YYYY-MM-DD HH:mm:ss");
  var comment_text = "";

  console.log("-- UPDATE Comment ---------------------------");
  console.log("CommentID: " + store_comment);
  console.log("UserID: " + user);
  console.log("StoreID: " + store);
  console.log("UpdatedAt: " + currTime);

});

// user page - delete comment
$(document).on("click", "button.user-delete-comment", function() 
{
  var store_comment = $(this).attr("data-comment");
  //var user = $("#user-profile-section").attr("data-user");
  //var store = $(this).attr("data-store");
  //var currTime = moment().format("YYYY-MM-DD HH:mm:ss");
 
  //console.log("-- DELETE Comment ---------------------------");
  //console.log("CommentID: " + store_comment);
  //console.log("UserID: " + user);
  //console.log("StoreID: " + store);
  //console.log("UpdatedAt: " + currTime);


  API.userDeleteComment(store_comment).then(function(data)
  {
    //console.log("-- DELETE Comment -------------------------");
    //console.log("data from DELETE", data);
    location.reload();
  });
});




}); // DOCUMENT LOAD
