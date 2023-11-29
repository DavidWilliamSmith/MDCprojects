/* 03_04 mode.sql */

SELECT
   month_of_year,
   MODE() WITHIN GROUP (ORDER BY employee_shifts) as emp_mode
FROM
   store_sales
GROUP BY
    month_of_year

