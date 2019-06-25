var db = require("../models");

module.exports = function(app) {


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
