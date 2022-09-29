const { productDao } = require('../models');

const getDetail = async (productId, userId) => {
  //1. product의 상세 정보
  /**
    - product options
    - review
    - isWished 
   */
  //2. 해당 상품과 관련된 상품들의 정보
  // - 썸네일
  const product = await productDao.getProduct(productId);

  if (!product) {
    const err = new Error('product is not exists');
    err.statusCode = 404;
    throw err;
  }

  const productOptions = await productDao.getProductOptions(productId);
  const productReview = await productDao.getReviewList(productId);
  const isWished = Boolean(await productDao.isWished(productId, userId));

  const styleCode = product.styleCode.substring(0, 6);
  const relatedProducts = await productDao.getRelatedProducts(styleCode);

  getDescription.relatedProducts = relatedProducts;
  getDescription.productOptions = productOptions;
  getDescription.review = productReview;
  getDescription.isWished = isWished;
  return getDescription;
};

module.exports = {
  getDetail,
};
