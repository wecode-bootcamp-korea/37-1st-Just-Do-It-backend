const database = require('./dataSource');

const createWish = async (productId, userId) => {
  try {
    return await database.query(
      `INSERT INTO wishlist(
        product_id,
        user_id
        ) VALUES(?, ?)
    `, [productId, userId]
    );
  } catch (err) {
    const error = new Error('INVALID_DATA_INPUT');
    error.statusCode = 500;
    throw error;
  }
}

const getWishList = async (userId) => {
  try {
    return await database.query(
      `SELECT
        p.thumbnail AS thumbnail,
        p.name AS name,
        IFNULL(p.discount_price, p.retail_price) AS price,
        u.id AS userId,
        w.id AS wishlistId,
        p.id AS productId
      FROM wishlist w
      JOIN products p ON p.id = w.product_id
      JOIN users u ON u.id = w.user_id
      WHERE w.user_id = ?
    `, [userId]
    );
  } catch (err) {
    const error = new Error('INVALID_DATA_INPUT');
    error.statusCode = 500;
    throw error;
  }
}

const removeWish = async (productId, userId) => {
  try {
    return await database.query(
      `DELETE
      FROM wishlist
      WHERE product_id = ? AND user_id = ?
  `, [productId, userId]
    )
  } catch (err) {
    const error = new Error('INVALID_DATA_INPUT');
    error.statusCode = 500;
    throw error;
  }
}

const checkWishlist = async (productId, userId) => {
  try {
    return await database.query(
      `SELECT
          product_id
        FROM wishlist
        WHERE product_id = ? AND user_id = ?
      `, [productId, userId]
    )
  }
  catch (err) {
    const error = new Error('INVALID_DATA_INPUT');
    error.statusCode = 500;
    throw error;
  }
}

module.exports = {
  createWish,
  removeWish,
  checkWishlist,
  getWishList
};
