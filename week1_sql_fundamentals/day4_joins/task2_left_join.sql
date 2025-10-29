--  Task 2: LEFT JOIN — Include All Customers (Even Those Without Sales)
-- ---------------------------------------------------------------
-- The LEFT JOIN returns all records from the 'customers' table,
-- along with matching rows from the 'sales' table (if any).
-- If a customer has not made any purchases, the sales-related
-- columns (product, price, order_date) will return NULL.

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    c.country,
    s.product,
    s.price,
    s.order_date
FROM customers AS c
LEFT JOIN sales AS s
    ON c.customer_id = s.customer_id
ORDER BY c.customer_id;

