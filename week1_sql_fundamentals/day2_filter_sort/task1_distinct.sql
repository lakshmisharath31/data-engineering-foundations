/* --------/* ----------------------------------------------------------------------
   Day 2 – Task 1: DISTINCT Practice
   Goal: Identify unique values and perform basic data profiling
   Dataset: sales
   Columns: order_id, region, country, product, quantity, price, order_Date
---------------------------------------------------------------------- */

/*1️ List all unique regions */
SELECT DISTINCT "region"
FROM sales;

/* 2️ List all unique countries */
SELECT DISTINCT "country"
FROM sales;

/* 3️ List all unique products */
SELECT DISTINCT "product"
FROM sales;

/* 4️  Count number of unique regions */
SELECT COUNT(DISTINCT "region") AS unique_regions
FROM sales;

/* 5️ Count number of unique countries */
SELECT COUNT(DISTINCT "country") AS unique_countries
FROM sales;

/* 6️ Count number of unique products */
SELECT COUNT(DISTINCT "product") AS unique_products
FROM sales;

/* ----------------------------------------------------------------------
   Notes:
   - DISTINCT removes duplicate values from a column.
   - COUNT(DISTINCT ...) counts unique entries across rows.
   - Quoted column names are required because they contain spaces.
---------------------------------------------------------------------- */
