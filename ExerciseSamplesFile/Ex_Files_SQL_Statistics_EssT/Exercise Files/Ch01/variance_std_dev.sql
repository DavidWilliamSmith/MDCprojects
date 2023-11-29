/* 01_05 Basics: Variance and Standard Deviation */


SELECT
  month_of_year, sum(units_sold), avg(units_sold), var_pop(units_sold)
FROM
   store_sales
GROUP BY
    month_of_year;


SELECT
  month_of_year, 
  SUM(units_sold), 
  AVG(units_sold), 
  VAR_POP(units_sold), 
   STDDEV_POP(units_sold)
FROM
   store_sales
GROUP BY
    Month_of_year;


/* Round to 2 decimal places */
select
  month_of_year,
  SUM(units_sold),
  ROUND( AVG(units_sold),2), 
  ROUND(VAR_POP(units_sold), 2),
  ROUND(STDDEV_POP(units_sold), 2)
FROM
   store_sales
GROUP BY
    Month_of_year;





