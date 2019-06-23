var db = require("../models");

module.exports = function(app) {
  // Load index page
  app.get("/", function(req, res) 
  {
      res.render("index", {
        msg: "Welcome!"
      });
  });

  // load locations page
  // lists all locations
  app.get("/locations", function(req, res) 
  {
    db.Location.findAll({
      include: [db.Store]
    }).then(function(dbLocations) 
    {
      res.render("locations", {
        locations: dbLocations
      });
    });
  });

  // load location page
  // page for specific location 
  app.get("/locations/:id", function(req, res) 
  {
    db.Location.findOne(
    {
      include: [db.Store], 
      where: { id: req.params.id }
    }).then(function(dbLocation) 
    {
      console.log("dbLocations.dataValues", dbLocation.dataValues);
      res.render("location", {
        location: dbLocation
      });
    });
  });



  // Load example page and pass in an example by id
  app.get("/example/:id", function(req, res) {

    db.Example.findOne({ where: { id: req.params.id } }).then(function(dbExample) {
      res.render("example", {
        example: dbExample
      });
    });

  });

  // Render 404 page for any unmatched routes
  app.get("*", function(req, res) {
    res.render("404");
  });
};
