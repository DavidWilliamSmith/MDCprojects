/* 02_02 Discrete Percentiles */

SELECT
   * 
FROM
    store_sales 
LIMIT
   5;



SELECT
    * 
FROM
  store_sales 
ORDER BY
  revenue desc




SELECT
    AVG(revenue) 
FROM
   store_sales;




SELECT
    PERCENTILE_DISC(0.50) WITHIN GROUP  (ORDER BY revenue) as pct_50_rev FROM
    store_sales;



SELECT
   PERCENTILE_DISC(0.50) WITHIN GROUP (ORDER BY revenue) as pct_50_rev,
   PERCENTILE_DISC(0.60) WITHIN GROUP (ORDER BY revenue) as pct_60_rev,
       PERCENTILE_DISC(0.90) WITHIN GROUP (ORDER BY revenue) as pct_90_rev,
       PERCENTILE_DISC(0.95) WITHIN GROUP (ORDER BY revenue) as pct_95_rev FROM
  store_sales;





