const wishRouter = require('express').Router();
const { wishController } = require('../controllers');
const { loginRequired } = require("../utils/auth");

wishRouter.get('/create', loginRequired, wishController.createWish);
wishRouter.post('/', loginRequired, wishController.postWish)
wishRouter.delete('/remove', loginRequired, wishController.removeWish);

module.exports = wishRouter;