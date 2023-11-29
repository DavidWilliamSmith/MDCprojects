/* 03_02 Correlation Coefficients */



SELECT
    CORR(units_sold, revenue) 
FROM
    store_sales;


SELECT
   CORR(units_sold, employee_shifts) 
FROM
   store_sales



SELECT
    CORR(units_sold, month_of_year) 
FROM
    store_sales



