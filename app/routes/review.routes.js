module.exports = app => {
  const reviews = require("../controllers/review.controller.js");

  var router = require("express").Router();

  // Create a new Review
  router.post("/reviews", reviews.create);

  // Retrieve all reviews
  router.get("/reviews", reviews.findAll);

  // Retrieve all published reviews
  // router.get("/published", reviews.findAllPublished);

  // Retrieve a single Review with id
  router.get("/reviews/:id", reviews.findOne);

  // Update a Review with id
  router.put("/reviews/:id", reviews.update);

  // // Delete a Review with id
  // router.delete("/:id", reviews.delete);

  // // Delete all reviews
  // router.delete("/", reviews.deleteAll);

  app.use('/', router);
};
