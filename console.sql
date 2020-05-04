SELECT * FROM Customers;
SELECT customerName, phone, city, country FROM Customers;
SELECT * FROM Customers WHERE customerName = 'Atelier Graphique';
SELECT * FROM Customers WHERE customerName LIKE 'A%';
SELECT * FROM Customers WHERE city IN ('Nantes',' Las Vegas',' Warszawa','NYC');