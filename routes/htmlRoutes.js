var db = require("../models");
var seq = require("sequelize");

module.exports = function(app) {

  app.get("/", function(req, res) 
  {
      res.render("index", {
        msg: "Welcome!"
      });
  });

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

  app.get("/store/:id", function(req, res) 
  {
    db.Store.findOne(
    { 
      include: [{model: db.Product},
        {model: db.Store_Comment, 
        order: ['updatedAt', 'DESC'],
        include: [db.User]
      }],
      where: { id: req.params.id }
    }).then(function(dbStore) 
    {
      res.render("store", {
        store: dbStore
      });
    });
  });

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

  app.get('/signin', function(req, res) {
    res.render("signin", {});
  });

  app.get('/user/signin/:cred', function(req, res) {
    var cred = req.params.cred.split("+");
    var email_input = cred[0];
    var password_input = cred[1];
    
  db.User.findAll({
    include: [{model: db.Store_Comment,
              include: [db.Store]}],
      where: {
        email: email_input,
        [seq.Op.and]: {password: password_input}    
      }
    }).then(function(dbUser) 
    {
      if(dbUser.length > 0)
      {
        res.json(dbUser[0].dataValues);
      }
      else{
        var emptyUser = {
          id: 0,
          first_name: "",
          last_name: "",
          email: ""
        }

        res.json(emptyUser);
      }

    }).catch(function(error){
      console.log("------------------------------");
      console.log(error);
      console.log("------------------------------");
    });
    
  });

  app.get('/user/:id', function(req, res) {
    db.User.findOne({
        include: [{model: db.Store_Comment,
                  include: [db.Store]}],
          where: {
            id: req.params.id
          }
    }).then(function(dbUser){
      res.render("user", {user: dbUser});
    });
  });

  app.get("/user", function(req, res) 
  {
      res.render("user", {});
  });

  app.get("*", function(req, res) {
    res.render("404");
  });








};
