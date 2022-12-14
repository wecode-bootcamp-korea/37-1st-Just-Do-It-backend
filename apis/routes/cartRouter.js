const cartRouter = require('express').Router();
const { cartController } = require('../controllers');
const { loginRequired } = require('../utils/auth');

cartRouter.get('/', loginRequired, cartController.getCarts);
cartRouter.get('/:cartId', loginRequired, cartController.getDetailInCart);
cartRouter.post('/', loginRequired, cartController.postCart);
cartRouter.patch('/:cartId', loginRequired, cartController.updateCart);
cartRouter.delete('/:cartId', loginRequired, cartController.deleteCart);
cartRouter.delete('/', loginRequired, cartController.deleteAllCarts);

module.exports = cartRouter;
