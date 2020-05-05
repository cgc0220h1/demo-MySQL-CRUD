SELECT productCode, productName, buyPrice, quantityInStock FROM products
WHERE buyPrice > 56.76 AND quantityInStock > 10;

SELECT productCode, productName, buyPrice, textDescription FROM products
INNER JOIN productlines
ON products.productLine = productlines.productLine
WHERE buyPrice > 56.76 AND quantityInStock > 10;