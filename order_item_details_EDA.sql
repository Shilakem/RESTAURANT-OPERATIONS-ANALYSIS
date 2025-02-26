-- Combine menu_items and order_details tables into a single table
SELECT *
FROM menu_items;

SELECT *
FROM order_details;

CREATE TABLE order_item_details
SELECT *
FROM order_details AS od LEFT JOIN menu_items AS mi
	ON od.item_id =  mi.menu_item_id;
  
  -- checking for missing values
    SELECT *
FROM order_item_details 
WHERE menu_item_id IS NULL;

-- What were the least and most ordered items?What categories were they in?
SELECT item_name,category,COUNT(order_details_id) AS num_purchases 
FROM order_item_details 
GROUP BY item_name,category
ORDER BY num_purchases;

SELECT item_name,category,COUNT(order_details_id) AS num_purchases 
FROM order_item_details 
GROUP BY item_name,category
ORDER BY num_purchases DESC;


-- What were the top 5 orders that spent the most money?
SELECT order_id,SUM(price) AS total_spend
FROM order_item_details 
GROUP BY order_id
ORDER BY total_spend DESC
LIMIT 5;

-- View the details of the highest spend order. 
SELECT category,COUNT(item_id) AS num_items
FROM order_item_details 
WHERE order_id=440
GROUP BY category;

-- View the details of the top 5 highest spend orders. 
SELECT order_id,category,COUNT(item_id) AS num_items
FROM order_item_details 
WHERE order_id IN (440,2075,1957,330,2675)
GROUP BY order_id,category;

