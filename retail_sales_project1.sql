#create a new database
CREATE DATABASE project;
#see a database
SHOW DATABASES;
#use a database
USE project;

SELECT * FROM project.retail_sales;

SELECT * FROM project.retail_sales LIMIT 10;

SELECT COUNT(*) FROM project.retail_sales;

#Data Cleaning
SELECT * FROM project.retail_sales
WHERE sale_date IS NULL;
SELECT * FROM project.retail_sales
WHERE sale_time IS NULL;
SELECT * FROM project.retail_sales
WHERE
     ï»¿transactions_id IS NULL
     OR
     sale_date IS NULL
     OR
     sale_time IS NULL
	 OR
     gender IS NULL
     OR 
     category IS NULL
     OR 
     quantiy IS NULL
     OR 
     cogs IS NULL
     OR 
     total_sale IS NULL;
#NO NULL values in the data

DELETE FROM project.retail_sales
WHERE
     ï»¿transactions_id IS NULL
     OR
     sale_date IS NULL
     OR
     sale_time IS NULL
	 OR
     gender IS NULL
     OR 
     category IS NULL
     OR 
     quantiy IS NULL
     OR 
     cogs IS NULL
     OR 
     total_sale IS NULL;
#delete NULL values in the data.no null values present

#Data Exploration
#1. How many sales we have?
SELECT COUNT(*) AS total_sale 
FROM retail_sales;

#2.How many unique customers we have?
SELECT COUNT(DISTINCT customer_id) AS total_sale 
FROM retail_sales;

SELECT DISTINCT category 
FROM retail_sales;

#3.Write a SQL query to retrieve all columns for sales made on '2022-11-05'
SELECT *
FROM retail_sales
WHERE sale_date = '2022-11-05';

#4.Write a SQL query to find the total sales amount for each category
SELECT category,
       SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY category;

#5.Write a SQL query to retrieve all transactions where the category is 'Clothing'
#and the quantity sold is more than 3 in the month of Nov-2022
SELECT *
FROM retail_sales
WHERE category = 'Clothing'
  AND quantity > 3
  AND TO_CHAR(sale_date, 'YYYY-MM') = '2022-11';
  
#6.write a sql query to find the average age of customers who purchased
#items from the 'Beauty' category
SELECT
     ROUND(AVG(age),2) as avg_age
FROM retail_sales
WHERE category = 'Beauty';

#7.write a sql query to find all transactions where the total_sale is greater
#than 1000.
SELECT * FROM retail_sales
WHERE total_sale>1000;

#8..write a sql query to find the taotal number of transactions 
#(transaction_id) made by each gender in each category
SELECT 
      category,
      gender,
      COUNT(*) AS total_trans
FROM retail_sales
GROUP BY
      category,
      gender
ORDER BY 1;

#9.write a sql query to find the TOP 5 customers based on the highest total sales
SELECT
      customer_id,
      SUM(total_sale) as total_sales
FROM retail_sales
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 5;

#10.write a sql query to find the number of unique customers who purchased
#items from each category.
SELECT
     category,
     COUNT(DISTINCT customer_id) AS cnt_unique_cs
FROM retail_sales
GROUP BY category;

#End of the Project