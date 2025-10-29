--  Task 4: Multi-Step CTE Chain — Compare Each Customer to Average Spend
-- ------------------------------------------------------------------------
-- This example uses multiple CTEs to break down a multi-step calculation flow.

-- Step 1️: Calculate total spend per customer

WITH customer_totals AS (
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        c.country,
        ROUND(SUM(s.quantity * s.price), 2) AS total_spent
    FROM customers AS c
    INNER JOIN sales AS s
        ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name, c.country
),

-- Step 2️: Calculate the overall average spend across all customers
average_spend AS (
    SELECT ROUND(AVG(total_spent), 2) AS avg_customer_spend
    FROM customer_totals
)

-- Step 3️: Compare each customer’s total to the overall average
SELECT 
    ct.customer_id,
    ct.first_name,
    ct.last_name,
    ct.country,
    ct.total_spent,
    a.avg_customer_spend,
    CASE
        WHEN ct.total_spent > a.avg_customer_spend THEN 'Above Average'
        WHEN ct.total_spent = a.avg_customer_spend THEN 'Average'
        ELSE 'Below Average'
    END AS spend_category
FROM customer_totals AS ct, average_spend AS a
ORDER BY ct.total_spent DESC;

--  Explanation:
-- 1️ customer_totals CTE computes each customer's total spend.
-- 2️ average_spend CTE computes the average across all customers.
-- 3️ The final SELECT joins both and categorizes customers as
--     'Above Average', 'Average', or 'Below Average'.
-- 4️ This pattern mirrors ETL transformations:
--     Extract (sales + customer data), Transform (aggregations),
--     Load (final clean dataset ready for analytics).
