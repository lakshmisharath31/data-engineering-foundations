--  Task 1: Subquery Basics — Filter Sales Above Average Price
-- ---------------------------------------------------------------
-- A subquery is a query nested inside another.
-- Here we first calculate the average price, and then use it
-- inside the WHERE clause to filter higher-value sales.

SELECT 
    order_id,
    product,
    country,
    price,
    order_date
FROM sales
WHERE price > (
    SELECT AVG(price)
    FROM sales
)
ORDER BY price DESC;

--  Explanation:
-- 1️ The inner query (SELECT AVG(price)) runs first and calculates the average price of all products.
-- 2️ The outer query compares each product’s price against that value.
-- 3️ Only sales above the average price are returned.
-- 4️ Useful for data validation, anomaly detection, and identifying high-value transactions.
