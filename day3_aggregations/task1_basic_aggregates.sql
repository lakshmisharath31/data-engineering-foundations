/* ----------------------------------------------------------------------
   Day 3 – Task 1: Basic Aggregations
   Goal: Learn to calculate simple metrics using aggregate functions.
   Dataset: sales
   Columns: order_id, region, country, product, quantity, price, order_date
---------------------------------------------------------------------- */

/* 1️  Total revenue (quantity × price) */
SELECT 
  SUM(quantity * price) AS total_revenue
FROM sales;

/* 2️  Average price across all products */
SELECT 
  ROUND(AVG(price), 2) AS avg_price
FROM sales;

/* 3️  Count of total orders */
SELECT 
  COUNT(DISTINCT(order_id)) AS total_orders
FROM sales;

/* 4️  Highest and lowest product price */
SELECT 
  MAX(price) AS max_price,
  MIN(price) AS min_price
FROM sales;

/* ----------------------------------------------------------------------
   Notes:
   - SUM, AVG, COUNT, MAX, MIN are aggregate functions.
   - Useful for generating summary statistics from raw data.
---------------------------------------------------------------------- */
