**Project Overview:**

This project performs an in-depth analysis of product data from Zepto, a quick-commerce grocery delivery platform, using SQL. The goal is to explore product pricing, discounts, stock availability, and inventory distribution while applying data cleaning techniques to ensure accurate analysis. The project demonstrates practical SQL skills used in real-world retail and e-commerce scenarios.

**Tools & Technologies:**

Database: MySQL

Language: SQL

Skills Used:

Data Exploration

Data Cleaning

Aggregation & Grouping

Conditional Logic (CASE)

Business Metrics Analysis

**Dataset Description:**

The dataset (zepto_data) includes the following attributes:

Product Name

Category

MRP

Discount Percentage

Discounted Selling Price

Available Quantity

Weight (in grams)

Stock Status (Out of Stock / In Stock)

**Data Cleaning:**

Checked for NULL values across all columns

Removed products with invalid pricing (MRP or discounted price = 0)

Converted product prices from paise to rupees

Identified duplicate product names and categories

**Analysis Performed:**

Compared in-stock vs out-of-stock products

Identified top 10 best-value products

Found high-MRP products with low discounts

Calculated average discount percentage by category

Determined price per gram for products above 100g

Categorized products into Low, Medium, and Bulk by weight

Calculated total inventory weight per category

Estimated category-wise revenue potential

**How to Run the Project:**
1.Create and use the schema:

CREATE SCHEMA zeptoanalysis;
USE zeptoanalysis;


2.Import the zepto_data table

3.Execute the SQL queries sequentially

Conclusion

This project showcases how SQL can be effectively used for data cleaning, exploration, and business analysis in an e-commerce context. It highlights strong SQL fundamentals and analytical thinking, making it suitable for data analyst and SQL developer portfolios.



