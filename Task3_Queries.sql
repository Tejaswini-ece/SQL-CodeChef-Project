-- TASK 3: Data Retrieval Using Queries

-- 3A: Fetch all distinct product categories
SELECT DISTINCT category FROM Products;

-- 3B: Get orders of customers who have spent more than ₹900
SELECT * FROM Orders WHERE total_amount > 900;

-- 3C: Find the 2 most expensive products
SELECT * FROM Products ORDER BY price DESC LIMIT 2;

-- 3D: Find customers who have not provided their address
SELECT * FROM Customers WHERE address = 'Not Provided';
