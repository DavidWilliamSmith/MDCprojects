/* 02_03  Continuous Percentiles */

SELECT
    PERCENTILE_CONT(0.95) WITHIN GROUP (order by revenue) as pct_95c_rev,
    PERCENTILE_DISC(0.95) WITHIN GROUP (order by revenue) as pct_95d_rev 
FROM
    store_sales;

