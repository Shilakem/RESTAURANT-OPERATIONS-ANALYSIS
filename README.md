# RESTAURANT OPERATIONS ANALYSIS: Insights into Customer Preferences and Menu Performance at Taste of the World Café

## DESCRIPTION  
This project focuses on analyzing the performance of a newly launched menu at Taste of the World Café, a restaurant known for its diverse offerings and generous portions. By leveraging customer order data and menu details, the project aims to uncover actionable insights into customer preferences, popular dishes, and underperforming items.  

The analysis will utilize two key datasets:  
1. Menu Items Data: Information on the café's new menu, including categories, menu_items_id,item_name, and pricing.  
2. Order Details Data: Records of customer orders, including order_details_id,order_id,order_date,order_time, and item_id. 

By combining these datasets, the project will evaluate how customers are responding to the new menu, identify trends and patterns, and provide recommendations for menu optimization. The insights derived will help the café improve customer satisfaction, streamline operations, and maximize profitability.  

## PROJECT RATIONALE 
This project aims to provide critical insights into the performance of the new menu at Taste of the World Café. By analyzing customer data, we can:  

- Identify popular menu items and understand the factors driving their success.  
- Evaluate how different menu categories contribute to overall revenue.  
- Uncover customer preferences, especially those of high-value customers, to guide menu refinement.  
- Support data-driven decisions to improve customer satisfaction and maximize profitability.

## AIM OF THE PROJECT  
1. Determine the most popular menu items and analyze the factors contributing to their success.  
2. Assess the performance of menu categories to understand their revenue impact.  
3. Analyze the purchasing habits of high-value customers to tailor menu offerings effectively.  
4. Provide actionable recommendations to optimize the menu for enhanced customer satisfaction and increased profitability. 

## PROCESSES
### 1. DATA CLEANING AND TRANSFORMATION
TOOLS: MYSQL
I cleaned and transformed the dataset as follows:
1. Null Value Removal  
   Null values in the `item_id` column were removed, ensuring all orders had valid menu items.
2. Duplicate Removal
   Duplicate rows were eliminated from both tables to maintain data accuracy.
3. Data Validation
   Validated `menu_item_id` ranges (101–132), `order_date` format (`YYYY-MM-DD`), and price consistency.
4. Cleaning Results  
   Orders reduced from **5,370** to **5,343**, and items ordered decreased from **12,234** to **12,097** after cleaning.


 
