module.exports = (sequelize, Sequelize) => {
  const Comment = sequelize.define("comment", {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true
    },
    review_id: {
      type: Sequelize.STRING,
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
