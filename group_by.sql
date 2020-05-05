SELECT status
FROM orders
GROUP BY status;

SELECT status, COUNT(*) AS 'Số lượng'
FROM orders
GROUP BY status;

SELECT status, SUM(quantityOrdered * priceEach) as amount
FROM orders
         INNER JOIN orderdetails USING (orderNumber)
GROUP BY status;

SELECT status, SUM(quantityOrdered * priceEach) as total
FROM orderdetails
         INNER JOIN orders USING (orderNumber)
GROUP BY orderNumber;

SELECT YEAR(orderDate) as năm, sum(quantityOrdered * priceEach) as Tổng
FROM orders
         INNER JOIN orderdetails USING (orderNumber)
WHERE status = 'shipped'
    GROUP BY năm
HAVING năm > 2003