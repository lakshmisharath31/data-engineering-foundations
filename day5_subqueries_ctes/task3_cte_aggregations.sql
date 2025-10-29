--  Task 3: CTE with Aggregations — Customer Spend Summary
-- ----------------------------------------------------------------
-- We'll use a CTE to pre-aggregate total spend and order count per customer.
-- Then, in the main query, we'll filter customers who spent above a threshold.

WITH customer_sales_summary AS (
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        c.country,
        ROUND(SUM(s.quantity * s.price), 2) AS total_spent,
        COUNT(s.order_id) AS total_orders
    FROM customers AS c
    INNER JOIN sales AS s
        ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name, c.country
)
SELECT 
    customer_id,
    first_name,
    last_name,
    country,
    total_spent,
    total_orders
FROM customer_sales_summary
WHERE total_spent > 1000
ORDER BY total_spent DESC;

--  Explanation:
-- 1️ The CTE (customer_sales_summary) performs the JOIN and GROUP BY once.
-- 2️ It computes each customer's total revenue and total orders.
-- 3️ The main query filters high-spending customers using WHERE.
-- 4️ This approach avoids repeating aggregation logic and keeps SQL clean.
