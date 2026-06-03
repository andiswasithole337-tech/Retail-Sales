-- Databricks notebook source
select * 
from `retail`.`sales`.`dataset` 
limit 100;
SELECT MIN(Date) AS min_date
FROM retail.sales.dataset;

SELECT MAX(Date) AS max_date
FROM retail.sales.dataset;

SELECT COUNT(*) AS count_rows
FROM retail.sales.dataset;

SELECT COUNT(*) AS count_rows,
    COUNT(DISTINCT 'Transaction ID') AS number_of_transactions,
    COUNT(DISTINCT 'Customer ID') AS number_of_customers
FROM retail.sales.dataset;

SELECT DISTINCT gender
FROM retail.sales.dataset;

SELECT MIN(age) AS min_age
FROM retail.sales.dataset;

SELECT MAX(age) AS max_age
FROM retail.sales.dataset;

SELECT SUM(Quantity) AS number_of_units_sold,
       SUM('Total Amoun't) AS total_revenue,
       AVG('Total Amount') AS average_spent,
       MIN('Price per unit') AS min_price,
       MAX('Price Per Unit') AS max_price
FROM retail.sales.dataset;











-- Age >=60 "Gogo"
--Age  BETWEEN 30 AND 59 "Adult"
--Age BETWEEN 18 AND 29 THEN "Youth"
--Age <18 "Kids in Tech"

SELECT age,
CASE
WHEN Age >=60 THEN "Gogo"
WHEN Age  BETWEEN 30 AND 59 THEN "Adult"
WHEN Age BETWEEN 18 AND 29 THEN "Youth"
WHEN Age <18 THEN "Kids in Tech"
END AS age_group,
"Total Amount",
 CASE
WHEN 'Total Amount'>= 1000 THEN 'High Spend'
WHEN 'Total Amount' BETWEEN 500 AND 999.99 THEN 'Medium Spend'
WHEN 'Total Amount'< 500 THEN 'Low Spend'
END AS spend_group
FROM retail.sales.dataset;

SELECT Date AS Purchase_date,
YEAR(Date) AS Year_of_purchase, --Extract the year on your date column
MONTH(Date) AS Month_of_purchase, --Extraxt the month on your date column
MONTHNAME(Date) AS Montgname_of_purchase --Extraxt the name of the month on your date column
FROM retail.sales.dataset
LIMIT 10;


