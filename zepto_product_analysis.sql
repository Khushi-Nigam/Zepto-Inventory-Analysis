
create table zepto(
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150) not null,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountedSellinPrice NUMERIC(8,2),
weightINGms INTEGER,
outOfStock BOOLEAN,

quantity INTEGER);

--DATA Exploration
--count of rows

SELECT COUNT(*) FROM Zepto;

--sample data

select * from zepto limit 20;

-- null values

select * from zepto 
where name is null or 
category is null or 
mrp is null or 
discountpercent is null or 
availablequantity is null or 
discountedSellinPrice is null or 

weightingms is null or 

outofstock is null or 

quantity is null ;

-- different product categories

select DISTINCT category from zepto
order by category;

--products instock vs out of stock
select outofstock,count(sku_id) from zepto
group by outofstock;

--product names present multiple times
select name,count(sku_id) "No. od SKUs " from zepto
group by name
having count(sku_id)>1
order by count(sku_id) desc;

---data cleaning

select * from zepto where mrp=0 or discountedsellinprice=0;

delete from zepto where mrp=0;

--convert paise to ruppe

update zepto
set mrp=mrp/100.0 ,
discountedsellinprice=discountedsellinprice/100.0;

select * from zepto;

--Found top 10 best-value products based on discount percentage

select distinct name,mrp,discountpercent from zepto 
order by discountpercent desc
limit 10;

--Identified high-MRP products that are currently out of stock

select distinct name,mrp from zepto
where outofstock=true and mrp>300
order by mrp desc;


-- Estimated potential revenue for each product category

select category ,sum(availablequantity*discountedsellinprice) as Total_revenue from zepto
group by category
order by Total_revenue;


-- Filtered expensive products (MRP > ₹500) with minimal discount 10 %

select * from zepto;

select name,mrp,discountpercent from zepto
where mrp>500 and discountpercent<10
order by mrp desc , discountpercent desc
;

--Ranked top 5 categories offering highest average discounts

select category ,round(avg(discountpercent),2)as average_disc from zepto
group by category
order by average_disc desc
limit 5;

-- Calculated price per gram to identify value-for-money products

select distinct name , weightingms,discountedsellinprice ,round(discountedsellinprice/weightingms,2) as pricepergram from zepto
where weightingms>=100 
order by pricepergram;


--Grouped products based on weight into Low, Medium, and Bulk categories

select distinct name, weightingms, 
case when weightingms<1000  then 'Low'
when weightingms<5000  then 'Medium' ELSE 'Bulk' end as Weight_Category from zepto;

-- Measured total inventory weight per product category

select category,sum(weightingms*availablequantity) as Total_weight from zepto
group by category
order by Total_weight;

