const { orderDao } = require('../models');
const { checkStock } = require('../utils/checkStock');

const orderInDetail = async (quantity, userId, productOptionId) => {
  await checkStock(productOptionId, quantity);

  await orderDao.orderInDetail(productOptionId, quantity);
};

const orderInCart = async (userId) => {
  const checkCart = await orderDao.checkCartForOrder(userId);

  for (let i = 0; i < checkCart.length; i++) {
    if (checkCart[i].stock <= checkCart[i].quantity) {
      const error = new Error(`REQUEST_QUANTITY_MORE_THAN_STOCK`);
      error.statusCode = 400;

      throw error;
    }
  }
  console.log('SERVOCEEEEE');
  const result = await orderDao.orderInCart(userId);
  return result;
};

module.exports = {
  orderInDetail,
  orderInCart,
};
