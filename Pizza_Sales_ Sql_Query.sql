SELECT SUM(total_price)AS Total_Revenue FROM pizza_sales

SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS Avg_Order_Value FROM pizza_sales

SELECT SUM(quantity) As Total_Pizza_Sold FROM pizza_sales

SELECT COUNT(DISTINCT order_id) As Total_Orders FROM pizza_sales

SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) /
COUNT(DISTINCT order_id) AS DECIMAL (10,2)) FROM pizza_sales

--DAILY TREND

SELECT DATENAME(DW,order_date) as Order_day, COUNT (DISTINCT order_id) as Total_Orders from pizza_sales
group by DATENAME(DW,order_date)

-- Hourly Trend

SELECT DATEPART(HOUR, order_time) AS Order_Hours, COUNT (DISTINCT order_id) as Total_Orders from pizza_sales
group by DATEPART(HOUR, order_time)
order by DATEPART(HOUR, order_time)

--Percentage of Sales

SELECT pizza_category, SUM(total_price) AS Total_Sales, SUM(total_price)*100/(SELECT SUM(total_price) from pizza_sales)AS PCT
from pizza_sales
group by pizza_category

--Percentage of Sales for January 

SELECT pizza_category, SUM(total_price) AS Total_Sales, SUM(total_price)*100/(SELECT SUM(total_price) from pizza_sales where MONTH(order_date)=1)AS PCT
from pizza_sales
where MONTH(order_date)=1
group by pizza_category

-- Percentage of Sales by Pizza Size

SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_Sales, CAST(SUM(total_price)*100/
(SELECT SUM(total_price) from pizza_sales WHERE DATEPART(quarter,order_date) =1)AS DECIMAL(10,2))AS PCT
from pizza_sales
WHERE DATEPART(quarter,order_date) =1
group by pizza_size
order by PCT DESC

-- Total Pizzas Sold by Pizza Category

SELECT pizza_category, SUM(quantity) as Total_Pizzas_Sold
from pizza_sales
group by pizza_category

-- Top 5 Best Sellers by Total pizzas sold

Select Top 5 pizza_name, Sum(quantity) As Total_Pizzas_Sold
from pizza_sales
group by pizza_name
order by Total_Pizzas_Sold DESC

-- Top 5 Worst Sellers by Total pizzas sold

Select Top 5 pizza_name, Sum(quantity) As Total_Pizzas_Sold
from pizza_sales
group by pizza_name
order by Total_Pizzas_Sold ASC