/* 03_03 Row_Number */

SELECT
   sale_date,
   month_of_year,
   units_sold,
   ROW_NUMBER () OVER (ORDER BY units_sold)
FROM
   store_sales;


SELECT
   sale_date,
   month_of_year,
   units_sold,
   ROW_NUMBER () OVER (ORDER BY units_sold)
FROM
   store_sales
ORDER BY
   sale_date
