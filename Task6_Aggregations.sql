-- TASK 6: Aggregations & Grouping

-- 6A: Total revenue
ROLLBACK TO S1;
SELECT SUM(total_amount) AS total_revenue FROM Orders;

-- 6B: Average spending per customer
SELECT AVG(total_amount) AS avg_spending_per_customer FROM Orders;

-- 6C: Number of orders placed per month
SELECT strftime('%Y-%m', order_date) AS order_month, COUNT(order_id) AS total_orders 
FROM Orders
GROUP BY order_month
ORDER BY order_month;

-- 6D: Highest-priced product
SELECT name, price FROM Products WHERE price = (SELECT MAX(price) FROM Products);
