/* ----------------------------------------------------------------------
   Day 3 – Task 3: HAVING Clause Practice
   Goal: Filter aggregated data after grouping.
   Dataset: sales
---------------------------------------------------------------------- */

/* 1️  Find regions where individual product prices are above 20 
       and total revenue exceeds 1000 */
SELECT 
  region,
  SUM(quantity * price) AS total_revenue
FROM sales
WHERE price > 20               -- filters individual rows first
GROUP BY region
HAVING SUM(quantity * price) > 1000   -- filters aggregated groups
ORDER BY total_revenue DESC;



/* 2️  Countries with average order value > 200 */
SELECT 
  country,
  ROUND(AVG(quantity * price), 2) AS avg_order_value
FROM sales
GROUP BY country
HAVING AVG(quantity * price) > 200
ORDER BY avg_order_value DESC;

/* ----------------------------------------------------------------------
   Notes:
   - WHERE filters individual rows before grouping.
   - HAVING filters aggregated results after grouping.
   - Together, they help control both row-level and summary-level filters.
---------------------------------------------------------------------- */

