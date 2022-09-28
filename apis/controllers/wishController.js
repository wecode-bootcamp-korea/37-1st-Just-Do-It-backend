const { wishService } = require('../services');
const { catchAsync } = require('../utils/error');


const createWish = catchAsync(async (req, res) => {
  const userId = req.user.id
  const { productId } = req.params;
  console.log(userId)
  console.log(productId)
  if (!productId) {
    const err = new Error('KEY_ERROR');
    err.statusCode = 400;
    throw err;
  }
  await wishService.createWish(productId, userId)
  return res.status(200).json({ message: "WISH_CREATE_SUCCESS" })
})

const removeWish = catchAsync(async (req, res) => {
  const userId = req.user.id
  const { productId } = req.body;
  if (!productId) {
    const err = new Error('KEY_ERROR');
    err.statusCode = 400;
    throw err;
  }
  const result = await wishService.removeWish(productId, userId)
  return res.status(200).json(result)
})

const postWish = catchAsync(async (req, res) => {
  const userId = req.user.id
  if (!userId) {
    const err = new Error('KEY_ERROR');
    err.statusCode = 400;
    throw err;
  }
  const result = await wishService.postWish(userId)
  return res.status(201).json(result)
}

)
module.exports = {
  createWish,
  removeWish,
  postWish
}