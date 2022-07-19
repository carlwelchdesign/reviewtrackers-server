module.exports = app => {
  const reviews = require("../controllers/review.controller.js");
  const comment = require("../controllers/comment.controller.js");

  var router = require("express").Router();
  
  // Retrieve all reviews
  router.get("/reviews", reviews.findAllReviews);
  
  // Retrieve a single Review with id
  router.get("/reviews/:id", reviews.findOneReview);

  // Create a new Review Comment
  router.post("/review/comment", comment.createComment);

  // Update a Review Comment with id
  router.get("/review/comment/:id", comment.findOneComment);

  // // Update a Review Comment with id
  // router.put("/review/comment/:id", reviews.updateComment);

  // Delete a Review Comment with id
  router.delete("/review/comment/:id", comment.deleteComment);

  app.use('/', router);
};
