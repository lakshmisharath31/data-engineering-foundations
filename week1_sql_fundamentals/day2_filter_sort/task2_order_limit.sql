/* ----------------------------------------------------------------------
   Day 2 – Task 2: ORDER BY and LIMIT Practice
   Goal: Learn how to sort query results and limit output rows
   Dataset: sales
   Columns: order_id, region, country, product, quantity, price, order_date
---------------------------------------------------------------------- */

/* 1️  List top 10 orders by highest price */
SELECT "order_id", "product", "country", "region", "price", "quantity"
FROM sales
ORDER BY "price" DESC
LIMIT 10;

/* 2️  List bottom 10 orders by lowest price */
SELECT "order_id", "product", "country", "region", "price", "quantity"
FROM sales
ORDER BY "price" ASC
LIMIT 10;

/* 3️ List top 10 orders with the highest total sales value (Quantity × Price) */
SELECT "order_id", "product", "country", "region",
       ("quantity" * "price") AS total_sales_value
FROM sales
ORDER BY total_sales_value DESC
LIMIT 10;

/* 4️  Sort all orders alphabetically by Region, then by latest Order_Date */
SELECT "order_id", "region", "country", "product", "order_date", "price"
FROM sales
ORDER BY "region" ASC, "order_date" DESC;

/* 5️⃣  Find top 5 products sold in terms of unit price */
SELECT "product", "country", "price"
FROM sales
ORDER BY "price" DESC
LIMIT 5;

/* ----------------------------------------------------------------------
   Notes:
   - ORDER BY defaults to ascending order (ASC). Use DESC for descending.
   - LIMIT restricts the number of returned rows.
   - Derived columns (e.g., quantity * price) can be used for sorting.
---------------------------------------------------------------------- */
