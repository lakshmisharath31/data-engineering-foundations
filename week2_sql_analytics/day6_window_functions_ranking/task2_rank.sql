/* ----------------------------------------------------------------------
   Day 6 – Task 2: RANK() for Sales Performance
   Goal: Rank products by price within each region (ties allowed)
---------------------------------------------------------------------- */

SELECT
    region,
    product,
    price,
    RANK() OVER (
        PARTITION BY region
        ORDER BY price DESC
    ) AS price_rank
FROM sales
ORDER BY region, price_rank;

/* ----------------------------------------------------------------------
  Explanation:
If two products in a region have the same price, they share the same rank.
The next rank is skipped (1, 2, 2, 4...).
---------------------------------------------------------------------- */