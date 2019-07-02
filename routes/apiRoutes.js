var db = require("../models");
var seq = require("sequelize");

module.exports = function(app) {

  app.get("/api/products/:searchStr", function(req, res) 
  {
    var reformatedName = req.params.searchStr.split('+').join(' ').trim();

    //console.log("------------------------------");
    //console.log("req.params.searchStr = ", req.params.searchStr);
    //console.log("reformatedName  = ", reformatedName);
    //console.log("------------------------------");
    
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
    }).then(function(dbExample) {
  
      console.log("dbExample", dbExample);
      res.json(dbExample);
      // res.render user page
    });
  });

  /*app.get("/api/products/:productName", function(req, res) {
    console.log("req.params.productName = " + req.params.productName);
    var product = req.params.productName;
    var spaced = product.split('+').join(' ');
    var dotted = spaced.split('-').join('.');
    db.Product.getProductsByName(dotted).then(function(dbProducts) {
      console.log("dbProducts", dbProducts);
      res.json(dbProducts);
    });
  });*/


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
