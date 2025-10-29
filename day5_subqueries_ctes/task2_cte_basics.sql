--  Task 2: CTE Basics — Calculate Average Price Using WITH
-- ------------------------------------------------------------------
-- A CTE (Common Table Expression) lets you define a temporary
-- result set that can be referenced later in your main query.

WITH avg_price_cte AS (
    SELECT 
        ROUND(AVG(price), 2) AS avg_price
    FROM sales
)
SELECT 
    order_id,
    product,
    country,
    price,
    order_date
FROM sales, avg_price_cte
WHERE sales.price > avg_price_cte.avg_price
ORDER BY price DESC;

--  Explanation:
-- 1️ WITH avg_price_cte AS (...) creates a named temporary result.
-- 2️ The CTE runs first and computes the average price from the sales table.
-- 3️ The main SELECT uses that value to filter records with price above average.
-- 4️ Unlike subqueries, CTEs make your logic cleaner, reusable, and easier to debug.
