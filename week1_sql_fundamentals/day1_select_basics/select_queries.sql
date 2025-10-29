-- ========================================================
-- Author: Lakshmi Sharath (@lakshmisharath31)
-- Project: SQL Foundations Practice
-- Week: 1 — SELECT and WHERE Queries
-- Description: Practice queries for learning SELECT, WHERE,
--              ORDER BY, and filtering basics in PostgreSQL.
-- ========================================================


CREATE TABLE sales (
    order_id INT,
    region VARCHAR(50),
    country VARCHAR(50),
    product VARCHAR(50),
    quantity INT,
    price NUMERIC(10,2),
    order_date DATE
);

INSERT INTO sales VALUES
(1, 'North America', 'USA', 'Laptop', 2, 899.99, '2024-01-10'),
(2, 'Europe', 'Germany', 'Phone', 5, 499.99, '2024-01-12'),
(3, 'Asia', 'India', 'Tablet', 3, 299.99, '2024-01-15'),
(4, 'North America', 'Canada', 'Monitor', 4, 199.99, '2024-01-18'),
(5, 'Europe', 'France', 'Laptop', 1, 999.99, '2024-01-20');


-- 1. Select all columns
SELECT * FROM sales;

-- 2. Select specific columns
SELECT order_id, region, product, price FROM sales;

-- 3. Rename columns using aliases
SELECT order_id AS id, product AS item, price AS unit_price FROM sales;

-- 4. Sort results
SELECT * FROM sales ORDER BY price DESC;

-- 5. Limit rows
SELECT * FROM sales LIMIT 3;


-- 6. Filter by region
SELECT * FROM sales WHERE region = 'Europe';

-- 7. Filter by product type
SELECT * FROM sales WHERE product = 'Laptop';

-- 8. Filter with multiple conditions
SELECT * FROM sales 
WHERE region = 'North America' AND price > 500;

-- 9. Use OR and NOT operators
SELECT * FROM sales 
WHERE region = 'Asia' OR NOT (country = 'Germany');

-- 10. Filter by date range
SELECT * FROM sales
WHERE order_date BETWEEN '2024-01-10' AND '2024-01-18';

-- Find all sales with quantity > 2 and price < 500
SELECT * FROM sales WHERE quantity > 2 AND price < 500;

-- Find the total number of unique regions
SELECT COUNT(DISTINCT region) AS total_regions FROM sales;
