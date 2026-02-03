-- Show all records from the table
SELECT * FROM table1;

-- Total records from the table
SELECT count(*) FROM table1;

-- Count total sales by gender
SELECT gender, COUNT(total_sale) AS Total_Sales
FROM table1 
GROUP BY gender;

-- Sum total sales by category and gender, sorted by category
SELECT category, gender, SUM(total_sale) AS Total_Sales
FROM table1 
GROUP BY category, gender
ORDER BY category;

-- Find all rows containing any NULL values
SELECT *
FROM table1
WHERE transactions_id IS NULL
   OR sale_date IS NULL
   OR sale_time IS NULL
   OR customer_id IS NULL
   OR gender IS NULL
   OR age IS NULL
   OR category IS NULL
   OR quantity IS NULL
   OR price_per_unit IS NULL
   OR cogs IS NULL
   OR total_sale IS NULL;

-- Count how many rows have at least one NULL value
SELECT COUNT(*)
FROM table1
WHERE transactions_id IS NULL
   OR sale_date IS NULL
   OR sale_time IS NULL
   OR customer_id IS NULL
   OR gender IS NULL
   OR age IS NULL
   OR category IS NULL
   OR quantity IS NULL
   OR price_per_unit IS NULL
   OR cogs IS NULL
   OR total_sale IS NULL;

-- Calculate average age by gender (rounded)
SELECT gender, ROUND(AVG(age), 0) AS avg_age
FROM table1
GROUP BY gender;

-- Update NULL ages for male records with the male average
UPDATE table1
SET age = 41
WHERE gender = "male"
  AND age IS NULL;

-- Verify no male rows still have NULL age
SELECT *
FROM table1
WHERE gender = "male"
  AND age IS NULL;

-- Update NULL ages for female records with the female average
UPDATE table1
SET age = 41
WHERE gender = "female"
  AND age IS NULL;

-- Verify no female rows still have NULL age
SELECT *
FROM table1
WHERE gender = "female"
  AND age IS NULL;

-- Calculate average values for quantity, price_per_unit, cogs, and total_sale by category
SELECT category,
       ROUND(AVG(quantity), 2) AS avg_quantity,
       ROUND(AVG(price_per_unit), 2) AS avg_price_per_unit,
       ROUND(AVG(cogs), 2) AS avg_cogs,
       ROUND(AVG(total_sale), 2) AS avg_total_sale
FROM table1
GROUP BY category;

-- Fill NULL values for a specific category + gender with computed averages
UPDATE table1
SET quantity = 3,
    price_per_unit = 174,
    cogs = 91.86,
    total_sale = 444
WHERE category = "Clothing"
  AND gender = "Female"
  AND quantity IS NULL
  AND price_per_unit IS NULL
  AND cogs IS NULL
  AND total_sale IS NULL;
  
UPDATE table1
SET quantity = 3,
    price_per_unit = 185,
    cogs = 91.86,
    total_sale = 469
WHERE category = "Clothing"
and gender ="Female"
and cogs = 91.86;



