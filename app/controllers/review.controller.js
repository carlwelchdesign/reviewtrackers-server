const db = require("../models");
const Review = db.reviews;
const Op = db.Sequelize.Op;

// Retrieve all Review from the database.
exports.findAllReviews = (req, res) => {
  const content = req.query.content;
  var condition = content ? { content: { [Op.like]: `%${content}%` } } : null;

  Review.findAll({ where: condition })
    .then(data => {
      // res.setHeader('custom_header_name', 'abcde');
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving Reviews."
      });
    });
};

// Find a single Review with an id
exports.findOneReview = (req, res) => {
  const id = req.params.id;

  Review.findByPk(id)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving Review with id=" + id
      });
    });
};

