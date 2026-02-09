# SQL – Retail Sales Analysis

This project contains a collection of SQL queries used to explore and clean a retail sales dataset stored in the table `table1`, based on the dataset **"SQL – Retail Sales Analysis"**.

## 🗂️ Dataset Overview

The main working table is `table1`, derived from the **SQL – Retail Sales Analysis** dataset, with these key columns:

- `transactions_id`
- `sale_date`
- `sale_time`
- `customer_id`
- `gender`
- `age`
- `category`
- `quantity`
- `price_per_unit`
- `cogs` (cost of goods sold)
- `total_sale`

These fields are used for data cleaning, exploratory analysis, and business insights.

## 🧹 Data Cleaning & Preparation

The SQL script includes steps to:

- Display all records and count total rows.
- Find rows that contain any `NULL` values.
- Count how many rows have at least one missing value.
- Fill missing ages by:
  - Calculating average age by gender.
  - Updating `NULL` ages for male and female customers with the corresponding averages.
- Calculate average `quantity`, `price_per_unit`, `cogs`, and `total_sale` by `category`.
- Impute missing numeric values for specific `category` + `gender` combinations using pre‑computed averages.

This prepares the **SQL – Retail Sales Analysis** dataset for more accurate analysis.

## 📊 Analysis Levels

### Level 1 – Beginner Queries

Covers basic analysis tasks such as:

- Retrieve all sales on a specific date (e.g. `2022-02-02`).
- List all distinct product categories.
- Select transactions where `total_sale` is greater than 1000, ordered descending.
- Count unique customers.
- Count number of transactions by gender.
- Compare stored `total_sale` with `quantity * price_per_unit` to check data integrity.

### Level 2 – Intermediate Queries

Goes deeper into business questions:

- Total revenue grouped by gender.
- Average age of customers in a given category (e.g. `Beauty`).
- Monthly revenue using `MONTH(sale_date)` or month name via `DATE_FORMAT`.
- Net profit per category, where `Profit = total_sale - cogs`.
- Peak shopping hours using `HOUR(sale_time)`.
- Categories with total quantity sold above a threshold using `HAVING`.
- Shift analysis:
  - Morning (before 12:00)
  - Afternoon (12:00–17:00)
  - Evening (after 17:00)
- Top 5 customers by total spend.
- Categories with the highest total revenue.

## 🛠️ How to Use

1. Load the **SQL – Retail Sales Analysis** dataset into your SQL database and create the table `table1` with the listed columns.
2. Open the SQL script from this repository.
3. Run the cleaning and inspection queries first.
4. Execute Level 1 queries to understand the basic structure.
5. Run Level 2 queries to extract deeper retail insights.
6. Modify filters (dates, categories, limits) to match your own analysis needs.

## 🚀 Future Improvements

- Add parameterized scripts so users can pass dates, categories, or minimum revenue as inputs instead of editing queries manually.
- Include example outputs or result schemas (column descriptions) for key queries so users understand the shape of the results.
- Add indexes on frequently used filter and join columns (such as `sale_date`, `customer_id`, `category`) and document the performance improvements.
- Provide a database schema diagram (ERD) of the retail sales dataset, especially if you extend it with more tables like products, stores, or regions.
- Extend the project with advanced SQL features such as window functions (rank top customers per category, running totals), CTEs, and nested subqueries.
- Introduce time-based metrics such as week-over-week and month-over-month growth, customer retention, and repeat purchase behavior.
- Show how to export query results (to CSV or directly into BI tools) and use them to build dashboards in Power BI, Tableau, or similar tools.
- Create simple test queries that act like unit tests to verify that key KPIs (total revenue, total orders, number of customers) stay within expected ranges after data updates.
- Add a section demonstrating how this dataset and these queries can support specific business cases, such as:
  - Identifying VIP customers for loyalty programs.
  - Deciding which categories to discount.
  - Understanding which time of day to run promotions.

---
