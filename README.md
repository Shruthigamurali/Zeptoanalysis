Understood. Here is a **clean, professional README version with no emojis**, suitable for academic, corporate, or recruiter-facing GitHub repositories.

You can copy and paste this directly into your `README.md`.

---

# Zepto Product Data Analysis using SQL

## Project Overview

This project performs an in-depth analysis of product data from **Zepto**, a quick-commerce grocery delivery platform, using **SQL**. The objective is to analyze product pricing, discounts, stock availability, and inventory distribution while applying data cleaning techniques to ensure accurate and reliable insights. The project demonstrates practical SQL skills used in real-world retail and e-commerce scenarios.

---

## Tools & Technologies

* **Database:** MySQL
* **Language:** SQL
* **Skills Used:**

  * Data Exploration
  * Data Cleaning
  * Aggregation and Grouping
  * Conditional Logic (CASE)
  * Business Metrics Analysis

---

## Dataset Description

The dataset (`zepto_data`) contains the following attributes:

* Product Name
* Category
* MRP
* Discount Percentage
* Discounted Selling Price
* Available Quantity
* Weight (in grams)
* Stock Status (In Stock / Out of Stock)

---

## Data Cleaning

* Checked for NULL values across all critical columns
* Removed products with invalid pricing (MRP or discounted selling price equal to zero)
* Converted pricing values from paise to rupees for consistency
* Identified duplicate product names and categories

---

## Analysis Performed

* Compared in-stock versus out-of-stock products
* Identified top 10 best-value products based on discounted selling price
* Analyzed high-MRP products with low discount percentages
* Calculated average discount percentage by category
* Determined price per gram for products above 100 grams
* Categorized products into Low, Medium, and Bulk based on weight
* Calculated total inventory weight per category
* Estimated category-wise revenue potential



-->How to Run the Project

1. Create and use the schema:

   ```sql
   CREATE SCHEMA zeptoanalysis;
   USE zeptoanalysis;
   ```
2. Import the `zepto_data` table
3. Execute the SQL queries sequentially



 -->Conclusion

This project demonstrates how SQL can be effectively used for data cleaning, exploration, and business analysis in an e-commerce context. It highlights strong SQL fundamentals and analytical thinking, making it suitable for data analyst and SQL developer portfolios.

