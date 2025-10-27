--  Task 4: FULL OUTER JOIN — Combine All Customers and All Sales
-- --------------------------------------------------------------------
-- The FULL OUTER JOIN combines the results of both LEFT and RIGHT joins.
-- It returns all customers and all sales — matching where possible.
-- If there’s no match on either side, the missing values are shown as NULL.

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    c.country AS customer_country,
    s.order_id,
    s.country AS sales_country,
    s.product,
    s.price,
    s.order_date
FROM customers AS c
FULL OUTER JOIN sales AS s
    ON c.customer_id = s.customer_id
ORDER BY c.customer_id NULLS LAST, s.order_id;


