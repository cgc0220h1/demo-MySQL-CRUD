SELECT productCode, productName, buyPrice, quantityInStock FROM products
WHERE buyPrice > 56.76 AND quantityInStock > 10;

SELECT productCode, productName, buyPrice, textDescription FROM products
INNER JOIN productlines
ON products.productLine = productlines.productLine
WHERE buyPrice > 56.76 AND quantityInStock > 10;

SELECT productCode, productName, buyPrice, quantityInStock FROM products
WHERE productLine = 'Classic Cars' or productVendor = 'Min Lin Diecast';

SELECT customerNumber, customerName, phone, paymentDate, amount FROM classicmodels.customers
    INNER JOIN payments USING (customerNumber)
        WHERE city = 'Las Vegas';

SELECT customerNumber, customerName, orderNumber, status FROM classicmodels.customers
    INNER JOIN orders USING (customerNumber);

SELECT customerNumber, customerName, orderNumber, status FROM classicmodels.customers
    LEFT JOIN orders USING (customerNumber)
        WHERE orderNumber is NULL