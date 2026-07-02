-- 11. Calculate total sales for each Outlet_Type.
SELECT 
	outlet_type ,
	round(
	SUM(Sales)::numeric,2)  AS total_revenue
FROM blinkit
GROUP BY Outlet_type

-- 12. Find the average rating for each Item_Type.
SELECT 
	item_type, 
	AVG(rating) AS avg_rating
FROM blinkit
GROUP BY item_type
-- 13. Count products available in each Outlet_Size.
SELECT outlet_size, count(*) as total_products
FROM blinkit
GROUP BY outlet_size
ORDER BY outlet_size DESC
-- 14. Find the total sales for each Outlet_Location_Type.
SELECT 
	outlet_location_type,
	round( 
	SUM(Sales)::numeric,2) AS total_revenue
FROM blinkit
GROUP BY outlet_Location_type

-- 15. Which outlet has the highest total sales?
SELECT 
	outlet_type,
	Round(SUM(Sales)::numeric,2) AS total_sales
FROM BLINKIT
GROUP BY outlet_type
ORDER BY Total_sales DESC
-- 16. Find the average item visibility by Item_Type.
SELECT
	item_type,
	round(avg(item_visibility)::numeric,2) as avg_item_visibility
FROM blinkit
GROUP BY Item_type
-- 17. Find the number of products with Low Fat and Regular fat content.
SELECT 
	item_fat_content,
	COUNT(*) AS total_product
FROM blinkit
GROUP BY item_fat_content
-- 18. Calculate average sales by Outlet_Size.
SELECT 
	outlet_size, 
	round(AVG(sales)::numeric,2) AS avg_sales
FROM blinkit
GROUP BY outlet_size

-- 19. Find the top 5 item types based on total sales.

SELECT 
	item_type,
	round(
	SUM(Sales)::numeric,2) AS total_sales,
	rank() OVER( ORDER BY sum(sales) desc) as rnk
FROM  blinkit
GROUP BY item_type
limit 5

-- 20. Find the average sales for each establishment year.
SELECT 
	outlet_establishment_year,
	round(AVG(Sales)::numeric,2) AS Avg_sales
FROM blinkit
GROUP BY outlet_establishment_year
-- ⸻
