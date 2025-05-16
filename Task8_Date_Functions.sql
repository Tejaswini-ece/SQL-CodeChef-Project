-- TASK 8: Date Functions

-- 8.1: Orders placed in January 2024
SELECT order_id, customer_id, order_date FROM Orders 
WHERE strftime('%Y-%m', order_date) = '2024-01';

-- 8.2: Most recent order date
SELECT MAX(order_date) AS most_recent_order FROM Orders;

-- 8.3: Orders count between 2024-01-15 and 2024-01-17
SELECT order_date, COUNT(*) AS order_count
FROM Orders
WHERE order_date BETWEEN '2024-01-15' AND '2024-01-17'
GROUP BY order_date;

-- 8.4: Days between earliest and latest order dates
SELECT JULIANDAY(MAX(order_date)) - JULIANDAY(MIN(order_date)) AS days_between FROM Orders;

-- 8.5: Orders in 5 days before 2024-01-24
SELECT order_id, customer_id, order_date, total_amount 
FROM Orders
WHERE order_date BETWEEN DATE('2024-01-24', '-5 days') AND DATE('2024-01-23');
