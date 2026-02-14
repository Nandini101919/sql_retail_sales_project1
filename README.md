#Retail Sales Project1

'''
🛍️ Retail Sales Data Analysis using SQL
________________________________________
📌 Project Title
Retail Sales Data Analysis using SQL
________________________________________
🎯 Project Level
Beginner to Intermediate Level (B.Tech / Student Level Project)
________________________________________
🗄️ Database Used
•	MySQL
•	Database Name: project
•	Table Name: retail_sales
________________________________________
📖 Project Overview
This project focuses on analyzing retail sales data using SQL. The main goal is to perform data cleaning, exploration, and analysis to extract meaningful insights such as total sales, customer behavior, category performance, and transaction trends.
Using SQL queries, we:
•	Created a database
•	Cleaned null values
•	Explored data
•	Performed analytical queries
•	Generated business insights
This project helps in understanding real-world data handling and business intelligence using SQL.
________________________________________
🎯 Project Objectives
1.	Create and manage a retail sales database.
2.	Perform data cleaning to remove null values.
3.	Explore dataset structure and contents.
4.	Analyze customer and sales trends.
5.	Generate insights using SQL aggregate functions.
6.	Identify top customers and best-performing categories.
________________________________________
🏗️ Project Structure
1.	Database Setup
2.	Data Exploration
3.	Data Cleaning
4.	Data Analysis
5.	Findings & Insights
________________________________________
 1️⃣   Database Setup (With Code)
CREATE DATABASE project;
SHOW DATABASES;
USE project;

SELECT * FROM project.retail_sales;
SELECT * FROM project.retail_sales LIMIT 10;
SELECT COUNT(*) FROM project.retail_sales;
This step:
•	Creates the database
•	Selects the database
•	Checks data inside the table
________________________________________
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
________________________________________
3️⃣ Data Exploration
Some basic exploration queries:
•	Total number of sales
•	Unique customers
•	Available categories
•	Date-wise filtering
Example:
SELECT COUNT(*) AS total_sale FROM retail_sales;
SELECT DISTINCT category FROM retail_sales;
________________________________________
4️⃣ Data Analysis (10 Important Questions with Queries)
________________________________________
1. How many total sales are there?
SELECT COUNT(*) AS total_sales
FROM retail_sales;
________________________________________
2. How many unique customers are there?
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM retail_sales;
________________________________________
3. Retrieve all sales on '2022-11-05'?
   
SELECT *
FROM retail_sales
WHERE sale_date = '2022-11-05';
________________________________________
4. Total sales amount for each category
SELECT category,
       SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY category;
________________________________________
5. Clothing category transactions with quantity > 3 in Nov 2022
SELECT *
FROM retail_sales
WHERE category = 'Clothing'
  AND quantity > 3
  AND sale_date BETWEEN '2022-11-01' AND '2022-11-30';
________________________________________
6. Average age of customers in Beauty category
SELECT ROUND(AVG(age),2) AS avg_age
FROM retail_sales
WHERE category = 'Beauty';
________________________________________
7. Transactions where total_sale > 1000
SELECT *
FROM retail_sales
WHERE total_sale > 1000;
________________________________________
8. Total transactions by gender in each category
SELECT category,
       gender,
       COUNT(*) AS total_transactions
FROM retail_sales
GROUP BY category, gender
ORDER BY category;
________________________________________
9. Top 5 customers by highest total sales
SELECT customer_id,
       SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 5;
________________________________________
10. Unique customers per category
SELECT category,
       COUNT(DISTINCT customer_id) AS unique_customers
FROM retail_sales
GROUP BY category;
________________________________________
📊 Data Analysis & Findings
After running the above queries, we observed:
1.	The dataset contains multiple categories like Clothing, Beauty, etc.
2.	Some customers contribute more revenue (Top 5 customers identified).
3.	Clothing category shows higher quantity purchases.
4.	Sales above 1000 indicate premium transactions.
5.	Customer age varies by category preference.
6.	Gender-wise category purchases show buying pattern differences.
________________________________________
🏁 Conclusion
This project demonstrates how SQL can be used for:
•	Database creation
•	Data cleaning
•	Data exploration
•	Business analysis
•	Generating actionable insights
It strengthens understanding of:
•	SELECT
•	WHERE
•	GROUP BY
•	ORDER BY
•	COUNT()
•	SUM()
•	AVG()
•	DISTINCT
•	LIMIT
________________________________________

'''
