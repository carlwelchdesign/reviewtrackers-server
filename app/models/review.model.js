module.exports = (sequelize, Sequelize) => {
  const Review = sequelize.define("review", {
    id: {
      type: Sequelize.STRING,
      primaryKey: true
    },
    author: {
      type: Sequelize.STRING
    },
    place: {
      type: Sequelize.STRING
    },
    published_at: {
      type: Sequelize.STRING
    },
    rating: {
      type: Sequelize.INTEGER
    },
    content: {
      type: Sequelize.TEXT
    },
    comment_id: {
      type: Sequelize.INTEGER,
    },
  });

  return Review;
};
