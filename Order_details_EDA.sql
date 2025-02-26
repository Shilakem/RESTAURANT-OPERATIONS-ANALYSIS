-- View the order_details table
SELECT *
FROM order_details;

-- checking for missing values
SELECT *
FROM order_details
WHERE order_details_id IS NULL
   OR order_id IS NULL
   OR order_date IS NULL
   OR order_time IS NULL
   OR item_id IS NULL;
   
   -- creating a backup table since we want to delete some data.
CREATE TABLE order_details_backup AS
SELECT * FROM order_details;

-- deleting data for which item_id is null.
DELETE FROM order_details
WHERE item_id IS NULL;

-- checking for duplicates
SELECT order_details_id, COUNT(*)
FROM order_details
GROUP BY order_details_id
HAVING COUNT(*) > 1;

-- date format validation
SELECT *
FROM order_details
WHERE order_date NOT LIKE '____-__-__'
   OR order_date < '2023-01-01';

-- checking for date format consistency
SELECT DISTINCT order_date
FROM order_details;

-- What is the date range of the table?
SELECT MIN(order_date) AS min_date, MAX(order_date) AS max_date
FROM order_details;

-- How many orders were made within this date range?
SELECT COUNT(DISTINCT  order_id) AS num_orders 
FROM order_details;

SELECT COUNT(DISTINCT  order_id) AS num_orders 
FROM order_details_backup;

-- How many items were ordered within this date range?
SELECT COUNT(*) AS total_order_items
FROM order_details;

SELECT COUNT(*) AS total_order_items
FROM order_details_backup;

-- Which orders had the most number of items?
SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;

-- How many orders had more than 12 items?
SELECT COUNT(*) 
FROM 
(SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
HAVING num_items>12) AS num_orders;



