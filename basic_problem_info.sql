-- 1. Display all records from the blinkit table.
SELECT * FROM Blinkit;
-- 2. Find the total number of products.
SELECT count(* )
FROM blinkit
-- 3. List all unique Item_Type values.
SELECT DISTINCT(item_type) AS uniques 
FROM BLINKIT
-- 4. Find all unique Outlet_Type values.
SELECT DISTINCT(outlet_type) AS UNIQUES
FROM BLINKIT
-- 5. Display products with Sales greater than 150.
SELECT item_type, sales
FROM blinkit
 WHERE sales >150
-- 6. Find products whose Rating is greater than 4.
SELECT item_type, rating 
FROM blinkit
WHERE rating >4
ORDER BY rating 
-- 7. Count the number of products in each Item_Type.
SELECT Item_type, count(* ) as total_products
FROM blinkit 
GROUP BY item_type

-- 8. Find the average Sales of all products.
SELECT item_type, avg(sales) AS avg_sales
FROM blinkit
GROUP BY item_type 

-- 9. Find the minimum and maximum Item_Weight.
SELECT 
	min(Item_weight) as min_item_weight,
	max(Item_weight) as max_item_weight
FROM blinkit

-- 10. Display the top 10 highest-selling products.
SELECT Item_type, sales
FROM blinkit
ORDER BY SALES desc
limit 10
-- ⸻
