var db = require("../models");

module.exports = function(app) {

  // Get all examples
  /*app.get("/api/products/:id", function(req, res) 
  {
    //var prodName = "NO. 32 CINNAMON FUNNEL CAKE NS";// req.params.name 
    //var idNum = Number.parseInt();
    db.Product.findAll({where:{id: req.params.id}}).then(function(dbProducts) 
    {
      console.log("------------------------------");
      console.log("dbProducts", dbProducts);
      console.log("------------------------------");
      res.json(dbProducts);
    });

  });*/

  app.get("/product/api/products/:name", function(req, res) 
  {
    console.log("http://localhost:3000/product/api/products/" + req.params.name);
    var prodName = req.params.name; //"NO. 32 CINNAMON FUNNEL CAKE NS";// req.params.name 
    //var idNum = Number.parseInt();
    var reformatName = prodName.split('+').join(' ');
    console.log("reformatName", reformatName);

    db.Product.findAll({where:{name: reformatName}}).then(function(dbProducts) 
    {
      console.log("------------------------------");
      console.log("dbProducts", dbProducts);
      console.log("------------------------------");
      res.json(dbProducts);
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
