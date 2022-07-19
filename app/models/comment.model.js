module.exports = (sequelize, Sequelize) => {
  const Comment = sequelize.define("comment", {
    review_id: {
      type: Sequelize.INTEGER,
      primaryKey: true
    },
    author: {
      type: Sequelize.STRING
    },
    comment: {
      type: Sequelize.TEXT
    },
    review_id: {
      type: Sequelize.STRING,
    },
  });

  return Comment;
};
