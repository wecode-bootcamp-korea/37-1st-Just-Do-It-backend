const cartRouter = require('express').Router();
const { cartController } = require('../controllers');
const { loginRequired } = require('../utils/auth');

cartRouter.get('/', loginRequired, cartController.getCart);
cartRouter.post('/', cartController.postCart);

cartRouter.get('/test', cartController.testCart);
// cartRouter.post('/', loginRequired, cartController.postCart);

module.exports = cartRouter;
