-- TASK 5: Deleting Records

-- 5A: Delete products out of stock
BEGIN TRANSACTION;
SAVEPOINT S1;
DELETE FROM Products WHERE stock_quantity = 0;
SELECT product_id, name, stock_quantity FROM Products;

-- 5B: Delete orders before 2024-01-20
BEGIN TRANSACTION;
SAVEPOINT S1;
DELETE FROM Orders WHERE order_date < '2024-01-20';
SELECT order_id, customer_id, order_date, total_amount FROM Orders;

-- 5C: Delete customers who have no orders
DELETE FROM Customers WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM Orders);
SELECT customer_id, name FROM Customers;

-- 5D: Delete orders with total_amount < 150
DELETE FROM Orders WHERE total_amount < 150;
SELECT order_id, customer_id, total_amount FROM Orders;
