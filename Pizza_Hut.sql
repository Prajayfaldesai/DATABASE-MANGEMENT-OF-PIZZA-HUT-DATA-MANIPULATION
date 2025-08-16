create database pizza;
select*from pizza_sales;
SELECT sum(total_price) AS Total_Revenue from pizza_sales;

SELECT sum(total_price)/count(distinct order_id)AS Average_value from pizza_sales;

SELECT sum(quantity)AS Total_pizza_sold from pizza_sales;

SELECT count(distinct order_id) AS Total_orders from pizza_sales;
 
SELECT cast(cast(SUM(quantity)AS decimal(10,2))/cast(count(distinct order_id)AS decimal(10,2)) AS decimal(10,2))AS average_pizza_per_order from pizza_sales;


#daily trend
select*from pizza_sales;
SELECT DATENAME(DW, order_date) as order_day ,count(distinct order_id)AS Total_orders from pizza_sales
GROUP BY DATENAME(DW, order_date);


SELECT 
  DAYOFWEEK(order_date) AS order_day,
    COUNT(DISTINCT order_id) AS Total_orders
FROM 
    pizza_sales
GROUP BY 
   DAYOFWEEK(order_date);

#hourly trend


SELECT 
    hour(order_time) AS year
    
FROM 
    pizza_sales;
