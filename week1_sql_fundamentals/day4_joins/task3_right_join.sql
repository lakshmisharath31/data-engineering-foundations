--  Task 3: RIGHT JOIN — Include All Sales (Even If No Matching Customer)
-- --------------------------------------------------------------------
-- The RIGHT JOIN returns all rows from the 'sales' table,
-- and the matching rows from 'customers'. 
-- If a sale record exists without a corresponding customer record,
-- the customer details will show as NULL.

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    c.country,
    s.order_id,
    s.product,
    s.quantity,
    s.price,
    s.order_date
FROM customers AS c
RIGHT JOIN sales AS s
    ON c.customer_id = s.customer_id
ORDER BY s.order_id;


