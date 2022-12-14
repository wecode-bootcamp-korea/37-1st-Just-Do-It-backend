const { cartDao } = require('../models');

const checkStock = async (productOptionId, quantity) => {
  const productOption = await cartDao.getStock(productOptionId);

  if (productOption.stock === 0) {
    const error = new Error('OUT_OF_STOCK');
    error.statusCode = 400;

    throw error;
  }

  if (productOption.stock < quantity) {
    const error = new Error('REQUEST_QUANTITY_MORE_THAN_STOCK');
    error.statusCode = 400;

    throw error;
  }
};

module.exports = {
  checkStock,
};
