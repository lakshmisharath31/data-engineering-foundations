/* ------------------------------------------------------------------
    Task 1: INNER JOIN – Customers who made purchases
   Goal: Show all customers who have at least one sale.
------------------------------------------------------------------ */

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    c.country,
    s.product,
    s.price,
    s.order_date
FROM customers AS c
INNER JOIN sales AS s
    ON c.customer_id = s.customer_id
ORDER BY c.customer_id, s.order_date;
