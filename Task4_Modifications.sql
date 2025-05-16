-- TASK 4: Data Modification (Update and Alter)

-- 4A: Increase price of Electronics by 10%
UPDATE Products SET price = price * 1.10 WHERE category = 'Electronics';
SELECT name, price, stock_quantity FROM Products WHERE category = 'Electronics' LIMIT 1;

-- 4B: Add 'discount' column to Orders and retrieve first order
ALTER TABLE Orders ADD COLUMN discount REAL DEFAULT 0;
SELECT order_id, total_amount, discount FROM Orders LIMIT 1;

-- 4C: Update stock to 0 where it was 10
UPDATE Products SET stock_quantity = 0 WHERE stock_quantity = 10;
SELECT * FROM Products WHERE stock_quantity = 0;

-- 4D: Add 'new_address' column to Customers
ALTER TABLE Customers ADD COLUMN new_address TEXT DEFAULT 'Unknown';
SELECT name, address, new_address FROM Customers LIMIT 1;

-- 4E: Set 5% discount for orders above ₹900
UPDATE Orders SET discount = total_amount * 0.05 WHERE total_amount > 900;
SELECT order_id, total_amount, discount FROM Orders WHERE discount > 0;
