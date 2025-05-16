-- TASK 7: Working with NULL values

-- 7A: Replace 'Unknown' with NULL in new_address
UPDATE Customers SET new_address = NULL WHERE new_address = 'Unknown';
SELECT customer_id, name, new_address FROM Customers LIMIT 3;

-- 7B: Update NULL address of customer_id=10
UPDATE Customers SET new_address = '23 Walnut Lane'
WHERE customer_id = 10 AND name = 'Henry Adams' AND new_address IS NULL;
SELECT * FROM Customers WHERE customer_id = 10;

-- 7C: Set 'No Remarks' in Orders to NULL and display
UPDATE Orders SET Remarks_if_any = NULL WHERE Remarks_if_any = 'No Remarks';
SELECT order_id, Remarks_if_any FROM Orders WHERE Remarks_if_any IS NULL;
