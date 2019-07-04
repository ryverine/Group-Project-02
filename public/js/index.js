//import { createDeflate } from "zlib";

$(document).ready(function() 
{
  var pageURL = window.location.href; //console.log("pageURL = "+ pageURL);

  var initialComment = ""; //used for resetting comment if user decideds not to update

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
  }

  var API = {
    getMatchingProducts: function(name) 
    {
      return $.ajax({
        url: "api/products/" + name,
        type: "GET"
      });
    },
    getStoresById: function(storeids)
    {
      return $.ajax({
        url: "api/stores/" + storeids,
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
    deleteComment(commentID) 
    {
      return $.ajax({
        url: "api/store_comment/" + commentID,
        type: "DELETE"
      });
    },
    updateComment(commentObj)
    {
      return $.ajax({
        method: "PUT",
        url: "/api/store_comment/" + commentObj.id,
        data: commentObj
      });
    }
  };

  $( ".btn-find" ).click(function() 
  {
    var prod = $("#prodName").text();
    var reformatName = prod.split(' ').join('+');
    API.getMatchingProducts(reformatName).then(function(data) 
    {
      var stores = [];
      var storeIdStr = "storeids=";
      for (var i = 0; i < data.length; i++)
      {
        var storeID = data[i].StoreId;
        if(!stores.includes(storeID))
        {
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
      var resultDiv = $("#find-results");
      resultDiv.empty();

      for (var i = 0; i < data.length; i++)
      {
        var storeName = data[i].name + " (" + data[i].city + ", " + data[i].state + ")";
        var storeNameDiv = $("<div>");
        var storeLink = $("<a>");
        storeLink.attr("href", "/store/" + data[i].id);
        storeLink.text(storeName);
        storeNameDiv.append(storeLink);
        resultDiv.append(storeNameDiv);
      }
    });
  }

  $('#searchForm').submit(function ()
  {
    var searchTerms = $("#product-search").val().trim();
    var formattedStr = "";

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

    var action = '/api/products/' + formattedStr;
    $(this).attr('action', action);
  });

  $( "#signin-submit" ).click(function(event)
  {
    event.preventDefault();
    var email = $("#signin-email").val().trim();
    var password = $("#signin-password").val().trim();
    var credentials = email + "+" + password;

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

  $( "#btn-signout" ).click(function(event)
  {
    localStorage.removeItem("userData");
    $("#user-profile-link").attr("href", "/user/0");
    location.reload();
  });

  $( "#new-comment-submit" ).click(function(event)
  {
    event.preventDefault();
    var localStorageData = JSON.parse(localStorage.getItem('userData'));
    if(localStorageData != null)
    {
      var user = Number.parseInt(localStorageData.id);
      if(user != 0)
      {
        var store = $("#store-name").attr("data-store-id");
        var newComment = $("#user-added-comment").val().trim();
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
          location.reload();
        });
      }
    }
  });

  $( ".store-user-comment" ).mouseenter(function()
  {
    var localStorageData = JSON.parse(localStorage.getItem('userData'));
    if(localStorageData != null)
    {
      var userID = $(this).find("h5").attr("data-user-id");

      if(Number.parseInt(localStorageData.id) === Number.parseInt(userID))
      {
        $(this).find("button.user-edit-comment").show();
        $(this).find("button.user-delete-comment").show();
      }
    }
  });

  $( ".store-user-comment" ).mouseleave(function() {
    $(this).find("button").hide();
  });
  
  $(document).on("click", "button.user-edit-comment", function() 
  {
    event.preventDefault();
    $(this).hide();
    $(this).parent().find("button.user-save-comment").show();
    var textarea = $(this).parent().find("textarea");
    textarea.prop('readonly', false);
    initialComment = $(this).parent().find("textarea").text();
  });

  $(document).on("click", "button.user-save-comment", function() 
  {
    event.preventDefault();
    var storeCommentID = $(this).attr("data-comment");
    var userID = $(this).attr("data-user");
    var storeID = $(this).attr("data-store");
    var currTime = moment().format("YYYY-MM-DD HH:mm:ss");
    var textarea = $(this).parent().find("textarea");
    var newComment = textarea.val().trim();
    var submitChanges = confirm("Update your comment?");
    if(submitChanges)
    {
        var updatedComment = {
          id: storeCommentID,
          comment: newComment,
          createdAt: currTime, 
          updatedAt: currTime,
          StoreID: storeID,
          UserID: userID 
        };

        API.updateComment(updatedComment).then(function(data)
        {
          location.reload();
        });
    }
    else
    {
      textarea.text(initialComment);
    }

    $(this).parent().find("button.user-edit-comment").show();
    $(this).hide();
    textarea.prop('readonly', true);
  });

  $(document).on("click", "button.user-delete-comment", function() 
  {
      event.preventDefault();
      var store_comment = $(this).attr("data-comment");
      API.deleteComment(store_comment).then(function(data)
      {
        location.reload();
      });
  });

}); // $(document).ready(function() 
