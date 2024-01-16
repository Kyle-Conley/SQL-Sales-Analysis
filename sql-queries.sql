-- Example 1: Total Sales per Salesperson
SELECT salesperson_id, SUM(amount) AS total_sales
FROM SalesTransaction
GROUP BY salesperson_id;

-- Example 2: Top-Performing Products
SELECT product_id, COUNT(*) AS sales_count
FROM SalesTransaction
GROUP BY product_id
ORDER BY sales_count DESC
LIMIT 5;