-- Customer Preference

-- 6. Do customers prefer Low Fat or Regular products?
select item_fat_content, count(item_type) from blinkit
group by item_fat_content
-- 7. Which product category has the highest average rating?
SELECT outlet_type, avg(rating) as avg_rating
FROM blinkit
group by outlet_type
order by avg_rating desc
-- 8. Does higher visibility lead to higher sales?
select item_visibility , sum(sales)as total_sales
from blinkit
group by item_visibility
order by total_sales desc
-- 9. Which products consistently receive high ratings but low sales?
select item_type, rating, sum(sales) as total_sales
from blinkit
group by item_type, rating
order by rating desc, total_sales asc
