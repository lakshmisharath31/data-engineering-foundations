/* ----------------------------------------------------------------------
   Day 6 – Task 1: ROW_NUMBER() Ranking
   Goal: Assign a unique sequential number to orders per region
---------------------------------------------------------------------- */

SELECT
    region,
    country,
    product,
    price,
    ROW_NUMBER() OVER (
        PARTITION BY region
        ORDER BY price DESC
    ) AS row_num
FROM sales
ORDER BY region, row_num;

/* --------------------------------------------------------------------
Explanation:
PARTITION BY region resets numbering per region.
ORDER BY price DESC ranks the most expensive first in each region
---------------------------------------------------------------------- */