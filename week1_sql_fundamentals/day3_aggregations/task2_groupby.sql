/* ----------------------------------------------------------------------
   Day 3 – Task 2: GROUP BY Practice
   Goal: Learn how to aggregate data across categories.
   Dataset: sales
---------------------------------------------------------------------- */

/* 1️  Total revenue by region */
SELECT 
  region,
  SUM(quantity * price) AS region_revenue
FROM sales
GROUP BY region
ORDER BY region_revenue DESC;

/* 2️  Average order value by country */
SELECT 
  country,
  ROUND(AVG(quantity * price), 2) AS avg_order_value
FROM sales
GROUP BY country
ORDER BY avg_order_value DESC;

/* 3️  Total quantity sold per product */
SELECT 
  product,
  SUM(quantity) AS total_quantity
FROM sales
GROUP BY product
ORDER BY total_quantity DESC;
