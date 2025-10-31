/* -------------------------------------------------------------------------
    Day 6 – Task 4: Top 3 Products per Region using DENSE_RANK()
   -------------------------------------------------------------------------
   Goal:
   Find the top 3 products in each region based on total revenue.
   Demonstrates practical use of DENSE_RANK() for ranking grouped data.
--------------------------------------------------------------------------*/

WITH product_sales AS (
    SELECT
        region,
        product,
        SUM(quantity * price) AS total_revenue
    FROM sales
    GROUP BY region, product
),
ranked_products AS (
    SELECT
        region,
        product,
        total_revenue,
        DENSE_RANK() OVER (
            PARTITION BY region
            ORDER BY total_revenue DESC
        ) AS rank_within_region
    FROM product_sales
)
SELECT
    region,
    product,
    total_revenue,
    rank_within_region
FROM ranked_products
WHERE rank_within_region <= 3
ORDER BY region, rank_within_region, total_revenue DESC;

-------------------------------------------------------------------------------
--  Notes:
-- - This pattern is very common in analytics and data engineering.
-- - DENSE_RANK() ensures ties are included fairly without skipping ranks.
-- - Limiting to top N (e.g., top 3) gives business insight per category.
--
--  Example Use Cases:
--   - Top 3 products per region (sales analysis)
--   - Top 5 employees by sales per department
--   - Top 10 customers by revenue per quarter
--
--  Can be reused in ETL workflows for generating summarized tables or dashboards.
-------------------------------------------------------------------------------
