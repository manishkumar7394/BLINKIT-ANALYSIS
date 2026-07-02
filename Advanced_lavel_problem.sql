-- Advanced Level

-- 21. Rank products by sales within each Item_Type.

SELECT 
	item_type, 
	sales,
	RANK() OVER (PARTITION BY item_type Order by sales) as rnk
FROM Blinkit

-- 22. Find the top-selling product from each Outlet_Type.
SELECT 
	outlet_type,
	round(
	SUM(sales)::numeric,2) AS total_sales,
	RANK() OVER( order by SUM(sales) DESC) AS rnk
FROM blinkit
GROUP BY outlet_type
limit 1

--❌ 23. Calculate the percentage contribution of each Item_Type to total sales.

SELECT
    Item_Type,
    SUM(Sales) AS total_sales,
    ROUND(
        SUM(Sales) * 100.0 /
        (SELECT SUM(Sales) FROM blinkit),
        2
    ) AS percentage_contribution
FROM blinkit
GROUP BY Item_Type
ORDER BY percentage_contribution DESC
	

-- 24. Find outlets whose total sales are above the overall average outlet sales.
with outlet_sales as(
	SELECT 
		outlet_identifier,
		round(SUM(sales)::numeric,2) as total_sales
	FROM blinkit    
	GROUP BY outlet_identifier
	)
SELECT * FROM outlet_sales
WHERE Total_sales >(
	select AVG(Total_sales) avg_outlet_sales FROM outlet_sales
)
ORDER BY Total_sales desc




-- 25. Find products with sales higher than the average sales of their item type.
-- 26. Calculate cumulative sales ordered by establishment year.
-- 27. Find the second-highest selling product in each outlet.
-- 28. Identify products with the highest rating in each item category.
-- 29. Calculate year-wise growth in total sales.
-- 30. Find the top 3 products by sales for every outlet.

-- ⸻
