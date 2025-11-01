/* ------------------------------------------------------------------------
    Day 6 – Task 3: DENSE_RANK()
   ------------------------------------------------------------------------
   Goal:
   Understand how DENSE_RANK() works and how it differs from RANK().
   Use case: Find top-selling products by revenue within each region,
   handling ties without skipping rank numbers.
--------------------------------------------------------------------------*/

-- 1️ Compare RANK() vs DENSE_RANK() based on product revenue per region

SELECT
    region,
    product,
    SUM(quantity * price) AS total_revenue,
    
    RANK() OVER (
        PARTITION BY region
        ORDER BY SUM(quantity * price) DESC
    ) AS revenue_rank,

    DENSE_RANK() OVER (
        PARTITION BY region
        ORDER BY SUM(quantity * price) DESC
    ) AS revenue_dense_rank

FROM sales
GROUP BY region, product
ORDER BY region, revenue_dense_rank;

-------------------------------------------------------------------------------
--  Notes:
-- - RANK(): Ties share the same rank, but the next rank is skipped.
--   Example → 1, 2, 2, 4
-- - DENSE_RANK(): Ties share the same rank, and the next rank is not skipped.
--   Example → 1, 2, 2, 3
--
--  Business use:
-- - Use RANK() for competition-style results (e.g., medals, leaderboard)
-- - Use DENSE_RANK() for tiered rankings (e.g., Top 3 products per region)
-------------------------------------------------------------------------------



