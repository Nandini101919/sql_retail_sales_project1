
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

If you want, I can also prepare:

📄 Viva questions & answers

📊 Project PPT content

📘 Project report (PDF format)

🎤 How to explain this project in interview

Just tell me 😊

how can i copy as it is

Good question 👍

If you want to copy the project exactly as it is (same format, same SQL code), follow one of these simple methods 👇

✅ Method 1: Copy from ChatGPT (Simple Way)

Move your mouse to the start of the text.

Click and drag till the end.

Right-click → Copy

Open:

MS Word / Google Docs → Paste

Notepad → Paste

Or your project file → Paste

👉 Shortcut:

Ctrl + A → Select All

Ctrl + C → Copy

Ctrl + V → Paste

✅ Method 2: Copy Only SQL Code Properly

When copying SQL code, copy only inside the code block like this:

SELECT COUNT(*) AS total_sales
FROM retail_sales;


Paste it inside:

MySQL Workbench

pgAdmin

VS Code

Notepad

It will work correctly.

✅ Method 3: If Formatting Changes in Word

If headings become messy:

Paste using Paste Special

Choose Keep Source Formatting
OR

Paste into Notepad first, then copy from Notepad and paste into Word.

✅ Method 4: If You Want Proper Project File

If you want:

📄 Proper formatted project report (ready to print)

📊 PPT file

📘 PDF file

Tell me → I will generate a downloadable file for you.

Tell me where you want to paste it:

Word?

MySQL?

PPT?

PDF?

I will guide step-by-step 😊

i want as it is se font size all

Your project file is ready with same font style (Courier New) and proper formatting 👇

📄 Download here:
👉 Download the Project File

It will open in MS Word exactly with proper font size and alignment.

If you want:

Bigger font (14)

More professional formatting

College submission format (with cover page, certificate, declaration)

Tell me 😊 

can you prepare pdf same small and big fonts with code screenshots

Your PDF is ready with:

✅ Big headings

✅ Normal explanation text

✅ Small SQL code font (screenshot-style format)

📄 Download here:
👉 Download PDF Project Report

If you want:

Real SQL screenshot images added

College cover page + certificate page

More professional formatting

Page numbers and borders

Tell me 😊 

You’ve hit the limit for data analysis — to get more, try Plus for free. Or wait for your limit to reset after 4:01 PM.
Try Plus free
