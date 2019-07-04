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

  app.delete("*/api/store_comment/:id", function(req, res) 
  {
    db.Store_Comment.destroy({ 
      where: { id: req.params.id } 
    }).then(function(dbCommentsRemoved) {

      res.json(dbCommentsRemoved);
      
    });
  });

  app.put("*/api/store_comment/:id", function(req, res) 
  {

    db.Store_Comment.update({
        comment: req.body.comment
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

};
