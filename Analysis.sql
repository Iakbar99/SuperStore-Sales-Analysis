use store;
select * from superstore;

-- Total sales

select sum(Sales) as Total_Sales
from superstore;

-- Total profit
select sum(Profit) as Total_Profit
from superstore;

-- Total orders
select count(Order_ID) as Total_orders
from superstore


---Sales by region
select Region, sum(Sales) as reg_Sales
from superstore
group by Region;

-- Category by Quanity
select Category, Count(Quantity) as Total_supply
from superstore
group by Category;

-- ship Mode by sales
select Ship_Mode, sum(Sales) as Total_ship
from superstore
group by Ship_Mode

-- city by Sales
select City, sum(Sales) as city_Sales
from superstore
group by City;

-- top products
Select top 5 Sub_Category, sum(Sales) as total_sales
from superstore
group by Sub_Category
order by total_sales;


