/* 04_03 computing_intercept.sql */

SELECT
    REGR_INTERCEPT(employee_shifts, units_sold)
FROM
  Store_sales


SELECT
   REGR_INTERCEPT(units_sold,employee_shifts)
FROM
  store_sales


