const { productService } = require('../services');
const { catchAsync } = require('../utils/error');

GET: 3000 / products / 1;
const getDetail = catchAsync(async (req, res, next) => {
  const { productId } = req.params;
  const { userId } = req.userId;

  const result = await productService.getDetail(productId, userId);
  return res.status(200).json(result);
});

module.exports = {
  getDetail,
};
