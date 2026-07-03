-- Sales Analysis

-- 1. What is the total revenue generated?
SELECT 
round(
	SUM(sales)::numeric,2) AS total_revenue
FROM blinkit
-- 2. Which item category contributes the most revenue?
SELECT 
	item_type ,
	round(SUM(sales)::numeric,2) as total_revenue
FROM blinkit
GROUP BY item_type
ORDER BY Total_revenue desc

-- 3. Which outlet type generates the highest sales?
SELECT 
	outlet_type, 
	sum(sales) as Highest_sales,
	rank() over(order by sum(sales)desc) as rnk
FROM blinkit
GROUP BY  outlet_type

-- 4. Which outlet location performs the best?
SELECT 
	outlet_location_type, 
	SUM(sales) as revenue,
	rank() over(order by sum(sales)desc) as rnk
FROM blinkit
GROUP BY  outlet_location_type


-- 5. Which outlet size is most profitable?
SELECT
	outlet_size, 
	SUM(SALES) AS Revenue
from blinkit
group by outlet_size
order by revenue desc
