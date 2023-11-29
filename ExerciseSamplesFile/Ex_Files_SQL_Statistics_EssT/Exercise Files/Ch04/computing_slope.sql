/* 04_04 computing_slope.sql */

SELECT
   REGR_SLOPE(employee_shifts,units_sold)
FROM
  store_sales



SELECT
  REGR_INTERCEPT(units_sold,employee_shifts)
FROM
  store_sales


 SELECT 
      REGR_SLOPE(employee_shifts,units_sold) * 1500 +            
      REGR_INTERCEPT(employee_shifts,units_sold) as predicted_value
 FROM
     store_sales
