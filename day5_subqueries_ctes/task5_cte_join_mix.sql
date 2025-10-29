--  Task 5: CTE + Joins Mix — Customer Insights Report
-- ----------------------------------------------------------------------
-- This query combines CTEs, JOINs, and aggregations to generate
-- a single, analytical dataset summarizing customer spending.

-- Step 1️: Aggregate order metrics per customer
WITH customer_orders AS (
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        c.country,
        COUNT(s.order_id) AS total_orders,
        ROUND(SUM(s.quantity * s.price), 2) AS total_revenue
    FROM customers AS c
    INNER JOIN sales AS s
        ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name, c.country
),

-- Step 2️: Compute global revenue statistics
global_stats AS (
    SELECT 
        ROUND(AVG(total_revenue), 2) AS avg_revenue,
        ROUND(MAX(total_revenue), 2) AS max_revenue,
        ROUND(MIN(total_revenue), 2) AS min_revenue
    FROM customer_orders
)

-- Step 3️: Join both CTEs and classify customers into categories
SELECT 
    co.customer_id,
    co.first_name,
    co.last_name,
    co.country,
    co.total_orders,
    co.total_revenue,
    ROUND(co.total_revenue / NULLIF(co.total_orders, 0), 2) AS avg_order_value,
    CASE
        WHEN co.total_revenue >= gs.avg_revenue THEN 'High Value'
        WHEN co.total_revenue >= (gs.avg_revenue * 0.5) THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM customer_orders AS co
CROSS JOIN global_stats AS gs
ORDER BY co.total_revenue DESC;

--  Explanation:
-- 1️ customer_orders: aggregates sales per customer.
-- 2️ global_stats: computes overall average, min, and max.
-- 3️ The final SELECT joins both and classifies each customer
--     as High, Medium, or Low value based on revenue benchmarks.
-- 4️ NULLIF() prevents division by zero when calculating avg_order_value.
-- 5️ This resembles a real ETL transformation for analytics reporting.
