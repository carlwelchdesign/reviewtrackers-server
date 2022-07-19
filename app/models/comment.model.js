module.exports = (sequelize, Sequelize) => {
  const Comment = sequelize.define("comment", {
    author: {
      type: Sequelize.STRING
    },
    comment: {
      type: Sequelize.TEXT
    },
    review_id: {
      type: Sequelize.STRING,
      primaryKey: true
    },
  });

  return Comment;
};
