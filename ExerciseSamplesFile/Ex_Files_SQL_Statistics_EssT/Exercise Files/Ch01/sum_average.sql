/* 01_04 Basics: Sum and Average */


SELECT 
   *
 FROM 
   store_sales
 LIMIT 
   10;


SELECT
    SUM(units_sold) 
FROM
   store_sales;


SELECT
  month_of_year, SUM(employee_shifts)
FROM
   store_sales
GROUP BY
    month_of_year;


SELECT
  month_of_year, SUM(units_sold), avg(units_sold)
FROM
   store_sales
GROUP BY
  month_of_year



