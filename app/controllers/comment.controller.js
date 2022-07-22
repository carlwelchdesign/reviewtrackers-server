const db = require("../models");
const Comment = db.comment;
const Review = db.reviews;

// Create and Save a new Review
exports.createComment = (req, res) => {
  // Validate request
  if (!req.body.comment) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
    return;
  }

  // Create a Review Comment
  const comment = {
    author: req.body.author,
    comment: req.body.comment,
    review_id: req.body.review_id
  };

  Review.update({ hasComment : 1 },{ where : { id : comment.review_id }});

  // Save Review Comment in the database
  Comment.create(comment)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the Review Comment."
      });
    });
};

// Find a single Review Comment with an id
exports.findOneComment = (req, res) => {
  const id = req.params.id;
  Comment.findOne({where: { review_id: id }})
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving Review Comment with review_id=" + review_id
      });
    });
};

// Update a Review Comment by the id in the request
exports.updateComment = (req, res) => {
  const id = req.params.id;
  Comment.update(req.body, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Review Comment was updated successfully."
        });
      } else {
        res.send({
          message: `Cannot update Review Comment with id=${id}. Maybe Review was not found or req.body is empty!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating Review Comment with id=" + id
      });
    });
};

// Delete a Review Comment with the specified id in the request
exports.deleteComment = (req, res) => {
  const id = req.params.id;
  const review_id = req.params.review_id;

  Review.update({ hasComment : 0 },{ where : { id : review_id }});

  Comment.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "Review Comment was deleted successfully!"
        });
      } else {
        res.send({
          message: `Cannot delete Review Comment with id=${id}. Maybe Review was not found!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Could not delete Review Comment with id=" + id
      });
    });
};

