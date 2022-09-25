const router = require('express').Router();

const userRouter = require('./userRouter');
const cartRouter = require('./cartRouter');
const orderRouter = require('./orderRouter');

router.use('/users', userRouter);
router.use('/cart', cartRouter);
router.use('/order', orderRouter);

module.exports = router;
