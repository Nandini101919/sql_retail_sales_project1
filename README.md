'''
🛍️ Retail Sales Data Analysis using SQL
📌 Project Title

Retail Sales Data Analysis using SQL

🎯 Project Level

Beginner to Intermediate Level (B.Tech / Student Level Project)

🗄️ Database Used

MySQL

Database Name: project

Table Name: retail_sales

📖 Project Overview

This project focuses on analyzing retail sales data using SQL. The main goal is to perform data cleaning, exploration, and analysis to extract meaningful insights such as total sales, customer behavior, category performance, and transaction trends.

Using SQL queries, we:

Created a database

Cleaned null values

Explored data

Performed analytical queries

Generated business insights

This project helps in understanding real-world data handling and business intelligence using SQL.

🎯 Project Objectives

Create and manage a retail sales database.

Perform data cleaning to remove null values.

Explore dataset structure and contents.

Analyze customer and sales trends.

Generate insights using SQL aggregate functions.

Identify top customers and best-performing categories.

🏗️ Project Structure

Database Setup

Data Exploration

Data Cleaning

Data Analysis

Findings & Insights

1️⃣ Database Setup (With Code)
CREATE DATABASE project;
SHOW DATABASES;
USE project;

SELECT * FROM project.retail_sales;
SELECT * FROM project.retail_sales LIMIT 10;
SELECT COUNT(*) FROM project.retail_sales;


This step:

Creates the database

Selects the database

Checks data inside the table

2️⃣ Data Cleaning
🔍 Checking for NULL Values
SELECT * FROM project.retail_sales
WHERE sale_date IS NULL;

DELETE FROM project.retail_sales
WHERE transactions_id IS NULL
   OR sale_date IS NULL
   OR sale_time IS NULL
   OR gender IS NULL
   OR category IS NULL
   OR quantity IS NULL
   OR cogs IS NULL
   OR total_sale IS NULL;

✅ Result:

No NULL values were found in the dataset after cleaning.

3️⃣ Data Exploration

Some basic exploration queries:

Total number of sales

Unique customers

Available categories

Date-wise filtering

Example:

SELECT COUNT(*) AS total_sale FROM retail_sales;

SELECT DISTINCT category FROM retail_sales;

4️⃣ Data Analysis (10 Important Questions with Queries)
1. How many total sales are there?
SELECT COUNT(*) AS total_sales
FROM retail_sales;

2. How many unique customers are there?
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM retail_sales;

3. Retrieve all sales on '2022-11-05'
SELECT *
FROM retail_sales
WHERE sale_date = '2022-11-05';

4. Total sales amount for each category
SELECT category,
       SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY category;

5. Clothing category transactions with quantity > 3 in Nov 2022
SELECT *
FROM retail_sales
WHERE category = 'Clothing'
  AND quantity > 3
  AND sale_date BETWEEN '2022-11-01' AND '2022-11-30';

6. Average age of customers in Beauty category
SELECT ROUND(AVG(age),2) AS avg_age
FROM retail_sales
WHERE category = 'Beauty';

7. Transactions where total_sale > 1000
SELECT *
FROM retail_sales
WHERE total_sale > 1000;

8. Total transactions by gender in each category
SELECT category,
       gender,
       COUNT(*) AS total_transactions
FROM retail_sales
GROUP BY category, gender
ORDER BY category;

9. Top 5 customers by highest total sales
SELECT customer_id,
       SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 5;

10. Unique customers per category
SELECT category,
       COUNT(DISTINCT customer_id) AS unique_customers
FROM retail_sales
GROUP BY category;

📊 Data Analysis & Findings

After running the above queries, we observed:

The dataset contains multiple categories like Clothing, Beauty, etc.

Some customers contribute more revenue (Top 5 customers identified).

Clothing category shows higher quantity purchases.

Sales above 1000 indicate premium transactions.

Customer age varies by category preference.

Gender-wise category purchases show buying pattern differences.

🏁 Conclusion

This project demonstrates how SQL can be used for:

Database creation

Data cleaning

Data exploration

Business analysis

Generating actionable insights

It strengthens understanding of:

SELECT

WHERE

GROUP BY

ORDER BY

COUNT()

SUM()

AVG()

DISTINCT

LIMIT

