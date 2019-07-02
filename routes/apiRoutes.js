var db = require("../models");
var seq = require("sequelize");

module.exports = function(app) {

  app.get("/api/products/:searchStr", function(req, res) 
  {
    var reformatedName = req.params.searchStr.split('+').join(' ').trim();

    db.Product.findAll({
      where: {
        name: {
          [seq.Op.substring]: reformatedName
        }
      }
    }).then(function(dbProducts) 
    {
      res.render("products", {searchResults: dbProducts});
      //res.json(dbProducts);
    }).catch(function(error){
      console.log("------------------------------");
      console.log(error);
      console.log("------------------------------");
    });
  });

  app.get("/product/api/products/:name", function(req, res) 
  {
    var prodName = req.params.name; 
    var reformatName = prodName.split('+').join(' ');
    db.Product.findAll({
      where: { name: reformatName }
    }).then(function(dbProducts) 
    {
      res.json(dbProducts);
    });
  });

  app.get("/product/api/stores/:storeids", function(req, res)
  {
    var idStr = req.params.storeids.replace("storeids=+","");

    var storeIdArr = idStr.split('+'); 

    db.Store.findAll({
      where:{
        id: storeIdArr
      }
    }).then(function(dbStores) 
    {
      res.json(dbStores);
    });

  });

  app.post("/store/api/storecomment", function(req, res) {
    db.Store_Comment.create(req.body).then(function(dbNewComment) {
      res.json(dbNewComment);
    });
  });

  // Delete a comment
  app.delete("*/api/store_comment/:id", function(req, res) 
  {
    db.Store_Comment.destroy({ 
      where: { id: req.params.id } 
    }).then(function(dbCommentsRemoved) {
  
      //console.log("dbExample", dbCommentsRemoved);
      res.json(dbCommentsRemoved);
      
    });
  });

  // edit store comment
  // https://medium.com/@sarahdherr/sequelizes-update-method-example-included-39dfed6821d
  app.put("*/api/store_comment/:id", function(req, res) 
  {
    console.log("------------------------------");
    console.log("comment id: ", req.body.id);
    console.log("comment: ", req.body.comment);
    console.log("createdAt", req.body.createdAt);
    console.log("updated at: ", req.body.updatedAt);
    console.log("StoreID", req.body.StoreID);
    console.log("UserID", req.body.UserID);
    console.log("------------------------------");

    // needs to be object
    db.Store_Comment.update({
        comment: req.body.comment,
        //createdAt: req.body.createdAt,
        updateAt: req.body.updateAt
      },
      {
        where: {
          id: req.body.id
        }
      }).then(function(dbComment){
        res.json(dbComment);
      }).catch(function(error){
        console.log("------------------------------");
        console.log(error);
        console.log("------------------------------");
      });

  });



  /*

  // PUT route for updating todos. We can get the updated todo data from req.body
  app.put("/api/todos", function(req, res) {
    // Update takes in an object describing the properties we want to update, and
    // we use where to describe which objects we want to update
    db.Todo.update({
      text: req.body.text,
      complete: req.body.complete
    }, {
      where: {
        id: req.body.id
      }
    }).then(function(dbTodo) {
      res.json(dbTodo);
    });
  });


  */






  // Get all examples
  /*app.get("/api/examples", function(req, res) {
    db.Example.findAll({}).then(function(dbExamples) {
      res.json(dbExamples);
    });
  });*/

  // Create a new example
  /*app.post("/api/examples", function(req, res) {
    db.Example.create(req.body).then(function(dbExample) {
      res.json(dbExample);
    });
  });*/

  // Delete an example by id
  /*app.delete("/api/examples/:id", function(req, res) {
    db.Example.destroy({ where: { id: req.params.id } }).then(function(dbExample) {
      res.json(dbExample);
    });
  });*/

};
