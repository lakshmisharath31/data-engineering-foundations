/* ----------------------------------------------------------------------
   Day 2 – Task 3: CASE WHEN Conditional Logic
   Goal: Use CASE statements to categorize data based on conditions
   Dataset: sales
   Columns: order_id, region, country, product, quantity, price, order_date
---------------------------------------------------------------------- */

/* 1️  Categorize orders based on Quantity sold */
SELECT 
  "order_id",
  "product",
  "quantity",
  CASE
    WHEN "quantity" >= 50 THEN 'High Volume'
    WHEN "quantity" BETWEEN 20 AND 49 THEN 'Medium Volume'
    ELSE 'Low Volume'
  END AS "quantity_category"
FROM sales
ORDER BY "quantity" DESC;

/* 2️ Categorize countries based on average price per order */
SELECT 
  "country",
  ROUND(AVG("price"), 2) AS avg_price,
  CASE
    WHEN AVG("price") >= 100 THEN 'Premium Market'
    WHEN AVG("price") BETWEEN 50 AND 99 THEN 'Mid Market'
    ELSE 'Budget Market'
  END AS "market_segment"
FROM sales
GROUP BY "country"
ORDER BY avg_price DESC;

/* 3️  Add a new column for total order value and categorize profitability */
SELECT 
  "order_id",
  "country",
  "product",
  ("quantity" * "price") AS total_value,
  CASE
    WHEN ("quantity" * "price") >= 5000 THEN 'High Value'
    WHEN ("quantity" * "price") BETWEEN 2000 AND 4999 THEN 'Medium Value'
    ELSE 'Low Value'
  END AS "value_category"
FROM sales
ORDER BY total_value DESC;

/* ----------------------------------------------------------------------
   Notes:
   - CASE WHEN adds logic-based categorization in SQL.
   - Useful for classifying data into business-friendly segments.
   - Combine with ORDER BY or GROUP BY for richer analytics.
---------------------------------------------------------------------- */
