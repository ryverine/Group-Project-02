var db = require("../models");
var seq = require("sequelize");

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
      res.render("location", {
        location: dbLocation
      });
    });
  });


  // load store page
  // page for specific store
  app.get("/store/:id", function(req, res) 
  {
    db.Store.findOne(
    { 
      include: [{model: db.Product},
        {model: db.Store_Comment, 
        order: ['updatedAt', 'DESC']
      }],
      where: { id: req.params.id }
    }).then(function(dbStore) 
    {
      console.log("--------------------------");
      console.log("dbStore: ", dbStore);
      console.log("--------------------------");
      res.render("store", {
        store: dbStore
      });
    });
  });


    // load store page
  // page for specific store
  app.get("/product/:id", function(req, res) 
  {
    db.Product.findOne(
    { 
      where: { id: req.params.id }
    }).then(function(dbProduct) 
    {
      res.render("product", {
        product: dbProduct
      });
    });
  });


  /* Load example page and pass in an example by id
  app.get("/example/:id", function(req, res) 
  {
    db.Example.findOne({ where: { id: req.params.id } }).then(function(dbExample) {
      res.render("example", {
        example: dbExample
      });
    });
  });*/

  app.get('/signin', function(req, res) {
    res.render("signin", {});
  });

  app.get('/user/signin/:cred', function(req, res) {
    var cred = req.params.cred.split("+");
    var email_input = cred[0];
    var password_input = cred[1];

    console.log("--------------------------");
    console.log("req.params.cred = ", req.params.cred);
    console.log("email = ", email_input);
    console.log("password = ", password_input);
    console.log("--------------------------");

    // search for email and password
    // go to user page

    
  db.User.findAll({
    include: [db.Store_Comment],
      where: {
        email: email_input,
        [seq.Op.and]: {password: password_input}    
      }
    }).then(function(dbUser) 
    {
      console.log("------------------------------");
      console.log("dbUser:", dbUser);
      console.log("------------------------------");
      res.render("user", {user: dbUser[0]});
      //res.json(dbProducts);
    }).catch(function(error){
      console.log("------------------------------");
      console.log(error);
      console.log("------------------------------");
    });
    

  });

  // Render 404 page for any unmatched routes
  app.get("*", function(req, res) {
    res.render("404");
  });
};
