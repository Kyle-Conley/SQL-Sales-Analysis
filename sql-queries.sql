
Average Sales Amount:
SELECT AVG(amount) AS average_sales
FROM SalesTransaction;

Most Recent Sale:
SELECT *
FROM SalesTransaction
ORDER BY date DESC
LIMIT 1;

Salesperson with Highest Total Sales:
SELECT salesperson_id, SUM(amount) AS total_sales
FROM SalesTransaction
GROUP BY salesperson_id
ORDER BY total_sales DESC
LIMIT 1;

Sales Between Two Dates:
SELECT *
FROM SalesTransaction
WHERE date BETWEEN '2024-01-01' AND '2024-12-31';

Total Sales per Salesperson:
SELECT salesperson_id, SUM(amount) AS total_sales
FROM SalesTransaction
GROUP BY salesperson_id;

Top-Performing Products:
SELECT product_id, COUNT(*) AS sales_count
FROM SalesTransaction
GROUP BY product_id
ORDER BY sales_count DESC
LIMIT 5;

Add New Product:
INSERT INTO Product (name, category)
VALUES ('Computer', 'Electronics');

Add New Salesman:
INSERT INTO Salesperson(name, role)
VALUES ('Tom Brady', 'Sales Associate';

Add New Sales Compensation Plan: 
INSERT INTO SalesCompensationPlan (salesperson_id, commission_rate, quota)
VALUES (4, 0.10, 18000);

Edit A Sales Transaction:
UPDATE SalesTransaction
SET amount = 1000
WHERE transaction_id = 3;

