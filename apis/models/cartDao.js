const database = require('../models/dataSource');

const getCartById = async (userId) => {
  const cart = await database.query(
    `
    SELECT DISTINCT
        c.id AS cartId,
        p.name AS productName,
        c.quantity,
        s.foot_size AS size,
        p.retail_price AS retailPrice,
        o.stock,
        p.style_code AS styleCode,
        p.discount_price AS discountPrice,
        p.thumbnail,
        p.id AS productId,
        s.id AS sizeId
        o.id as productOptionId
    FROM carts c, product_options o, products p, sizes s
    WHERE c.product_option_id = o.id
    AND o.product_id = p.id 
    AND o.size_id = s.id 
    AND user_id = ?;
    `,
    [userId]
  );
  return cart;
};

module.exports = {
  getCartById,
};
