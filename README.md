# RESTAURANT OPERATIONS ANALYSIS: Insights into Customer Preferences and Menu Performance at Taste of the World Café

## DESCRIPTION  
This project analyzes the performance of a newly launched menu at Taste of the World Café, a restaurant known for its diverse offerings and generous portions. The project aims to uncover actionable insights into customer preferences, popular dishes, and underperforming items by leveraging customer order data and menu details.  

![RESTAURANT OPERATIONS ANALYSIS](https://github.com/user-attachments/assets/6c890c01-fe22-4a2f-911c-63c70bf142a7)

The analysis will utilize two key datasets:  
1. Menu Items Data: Information on the café's new menu, including categories, menu_items_id,item_name, and pricing.  
2. Order Details Data: Records of customer orders, including order_details_id,order_id,order_date,order_time, and item_id. 

By combining these datasets, the project will evaluate how customers respond to the new menu, identify trends and patterns, and provide recommendations for menu optimization. The insights derived will help the café improve customer satisfaction, streamline operations, and maximize profitability.  

## PROJECT RATIONALE 
This project aims to provide critical insights into the performance of the new menu at Taste of the World Café. By analyzing customer data, we can:  

- Identify popular menu items and understand the factors driving their success.  
- Evaluate how different menu categories contribute to overall revenue.  
- Uncover customer preferences, especially those of high-value customers, to guide menu refinement.  
- Support data-driven decisions to improve customer satisfaction and maximize profitability.

## AIM OF THE PROJECT  
#### 1. Determine the most popular menu items and analyze the factors contributing to their success.  
#### 2. Assess the performance of menu categories to understand their revenue impact.  
#### 3. Analyze the purchasing habits of high-value customers to tailor menu offerings effectively.  
#### 4. Provide actionable recommendations to optimize the menu for enhanced customer satisfaction and increased profitability. 

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
   Here’s the revised version of the insights and recommendations, free from potential plagiarism concerns.
5. Table Joining
- Performed a LEFT JOIN between the `Order_Details` table and the `Menu_Items` table using `menu_item_id` as the primary key.  
- Created a new table called `Order_Item_Details`, which consolidates data from both tables.  
- The `Order_Item_Details` table includes all necessary fields required for further analysis and visualization.  
   
### 2. ANALYSIS AND DASHBOARD CREATION
TOOLS: MYSQL, Power BI visualization features.

 I did Exploratory data analysis(EDA) IN MYSQL and I implemented the following visualization elements for presenting the data:

- Text Tool and Cards To display key metrics.
- Bar Charts for comparative data visualization.
- Slicers to enable interactive filtering.
- Line chart to visualize trend

## INSIGHTS

#### 1. Popular Menu Items
- **Overall Top Sellers by Revenue**:  
   - The *Korean Beef Bowl* ($10,554.60) and *Spaghetti & Meat Bowls* ($8,436.50) rank as the most popular dishes. Their high revenue could be attributed to customer preference, strong flavor profiles, or effective marketing.
  
- **Category Leaders**:
   - **Italian**: The *Spaghetti & Meat Bowls* and *Eggplant Parmesan* generate the most revenue, likely due to their popularity as classic Italian dishes.
   - **Asian**: The *Korean Beef Bowl* and *Tofu Pad Thai* cater to a variety of tastes, contributing to their strong performance.
   - **Mexican**: The *Steak Torta* and *Chicken Burrito* stand out, appealing to customers who enjoy traditional Mexican flavors.
   - **American**: The *Cheeseburger* and *Hamburger* dominate this category, showcasing their consistent demand as comfort food staples.

#### **2. Menu Category Performance**
- **Revenue Analysis**:  
   - Italian dishes bring in the highest sales ($49,426.70), closely followed by Asian ($46,720.65). Mexican ($34,796.80) and American ($28,237.75) are less dominant but still contribute significantly.
  
- **Pricing and Variety**:  
   - Italian dishes are priced highest on average ($16.78), while American dishes are the most affordable ($10.33). Italian and Mexican menus offer nine items each, Asian includes eight, and American has six.

#### **3. Buying Patterns of High-Value Customers**
- **Top Orders by Revenue**:  
   - The largest order ($192.15) included Italian (8 items), followed by Asian, Mexican, and American (2 items each). This suggests that high-spending customers lean heavily towards Italian dishes but appreciate variety.
   - Across the top 5 high-value orders, Italian consistently has the largest share of items, reinforcing its broad appeal among premium customers.

- **Diversity in Preferences**:  
   - High-value customers typically purchase from multiple categories, indicating that menu variety encourages larger transactions.

### RECOMMENDATIONS

1. **Leverage Best-Selling Dishes**:
   - Promote top items like the *Korean Beef Bowl* and *Spaghetti & Meat Bowls* through special deals or feature them as chef’s recommendations.
   - Create bundles featuring these dishes to increase their visibility and cross-sell opportunities.

2. **Reassess Menu Variety**:
   - Evaluate the potential for expanding the American menu, which has fewer items, to boost its competitiveness.
   - Introduce or test new Mexican dishes to match the variety offered in the Italian and Asian categories.

3. **Cater to Premium Customers**:
   - Develop tailored packages or multi-course meals combining Italian and other categories to capitalize on the preferences of high-value customers.
   - Offer exclusive perks for large orders, such as discounts or complimentary items.

4. **Improve Menu Appeal**:
   - Regularly collect customer feedback on less popular dishes and consider adjustments or replacements based on the data.
   - Introduce seasonal or limited-time items to maintain customer interest and refresh the menu.

5. **Refocus Marketing Strategies**:
   - Use data on top-performing dishes to design targeted advertising campaigns, emphasizing their quality and appeal.
   - Highlight the benefits of ordering from multiple categories, such as family-style meals or customizable combos.



