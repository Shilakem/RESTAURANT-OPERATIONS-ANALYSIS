USE restaurant_db;

-- View the menu_items table 
SELECT * 
FROM menu_items;

-- checking for missing values
SELECT * 
FROM menu_items
WHERE menu_item_id IS NULL 
   OR item_name IS NULL 
   OR category IS NULL 
   OR price IS NULL;
   
   -- checking for duplicate values
SELECT menu_item_id, COUNT(*) 
FROM menu_items
GROUP BY menu_item_id
HAVING COUNT(*) > 1;

-- find the number of items on the menu
SELECT COUNT(*)
FROM menu_items;

-- range of data validation
SELECT * 
FROM menu_items
WHERE menu_item_id < 101 OR menu_item_id > 132;

-- What are the least and most expensive items on the menu?
SELECT * 
FROM menu_items
ORDER BY price;

SELECT * 
FROM menu_items
ORDER BY price DESC;

-- How many dishes are in each category? 
SELECT category , COUNT(menu_item_ID) AS num_dishes
FROM menu_items
GROUP BY category;


-- What is the average dish price within each category?
SELECT category , AVG(Price) AS avg_price
FROM menu_items
GROUP BY category;


-- What are the least and most expensive Italian dishes on the menu?
SELECT *
FROM menu_items
WHERE Category='Italian'
ORDER BY price;

SELECT * 
FROM menu_items
WHERE Category = 'Italian'
ORDER BY price DESC;

-- What are the least and most expensive Mexican dishes on the menu?
SELECT * 
FROM menu_items
WHERE Category = 'Mexican'
ORDER BY price;

SELECT * 
FROM menu_items
WHERE Category = 'Mexican'
ORDER BY price DESC;

-- What are the least and most expensive Asian dishes on the menu?
SELECT * 
FROM menu_items
WHERE Category ='Asian'
ORDER BY price;

SELECT *
FROM menu_items
WHERE Category = 'Asian'
ORDER BY price DESC;

-- What are the least and most expensive American dishes on the menu?
SELECT * 
FROM menu_items
WHERE Category = 'American'
ORDER BY price;

SELECT *
FROM menu_items
WHERE Category = 'American'
ORDER BY price DESC;

