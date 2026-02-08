create schema zeptoanalysis;
use zeptoanalysis;
select* from zepto_data limit 5 ;


#data exploration
#count of rows
select count(*) from zepto_data;

#checking NULL values
select*from zepto_data
where ï»¿Category is null
OR
 name is NULL
OR
 mrp is NUlL
OR
 discountPercent is NULL
OR
 availableQuantity is NULL
OR
 discountedSellingPrice is NULL
OR
weightInGms is NULL
OR
 outOfStock is NULL
OR
 outOfStock is NULL
OR
 quantity is NULL;

#SELECT products  CATEGORY:--to find duplicates
SELECT DISTINCT ï»¿Category
FROM ZEPTO_DATA
ORDER BY ï»¿Category;
#COUNT OF DUPLICATE CATEGORY;
select count(distinct ï»¿Category) from zepto_data;

#products in stock vs out of stock
select  outOfStock,name,count(name) from zepto_data
group  by name, outOfStock;
#CHECKING TOTAL NO. OF. ROWS
select count(*)from zepto_data

#product name present multiple times:
SELECT name,count(`ï»¿Category`)
 from zepto_data 
group by name 
having count(ï»¿Category)>1
order by name;

#product category presented multiple times:
select ï»¿Category,count(ï»¿Category)
from zepto_data
group by ï»¿Category
having count(ï»¿Category)>1;

#data cleaning
#PRODUCT PRICE WITH 0
SELECT * FROM zepto_data
WHERE mrp = 0  OR discountedSellingPrice = 0;
SELECT COUNT(*) FROM zepto_data
WHERE mrp = 0  OR discountedSellingPrice = 0;

#DELETE  OF DATA WHERE MRP OR DISCOUNTED SELLING PRICE IS 0
SET SQL_SAFE_UPDATES = 0;

DELETE FROM zepto_data
WHERE mrp = 0 OR discountedSellingPrice = 0;

SET SQL_SAFE_UPDATES = 1;

#CONVERTING PAISE INTO RUPEES
UPDATE ZEPTO_DATA SET MRP=MRP/100,discountedSellingPrice=discountedSellingPrice/100;


#find top 10 best -value products based on their discountsellingprice:
select*from zepto_data limit 5;

select name as bestproduct,mrp  ,discountedSellingPrice from zepto_data
order by discountedSellingPrice desc limit 10;

#what are the products with high mrp but out of stock
--name of products in out of stock:
select name,mrp,discountedSellingPrice,count(name)from zepto_data
group by discountedSellingPrice,name,mrp;
---CHECKING THE COUNT OF OUTOFSTOCK:
select distinct outOfStock from zepto_data;

select distinct ï»¿Category,name,mrp,outOfStock from zepto_data
where outOfStock='TRUE'
order by mrp desc;

#FIND ALL THE PRODUCTS WHERE MRP IS GREATER THAN 500 AND DISCOUNT IS LESS THAN 10%
SELECT NAME ,mrp,discountPercent FROM zepto_data
WHERE MRP>500 AND discountPercent<10
ORDER BY MRP DESC,discountPercent DESC;

#IDENTIFY THE TOP 5 CATEGORIES OFFERING THE HIGHEST AVERAGE DISCOUNT PERCENTAGE:
SELECT  DISTINCT ï»¿Category, AVG(discountPercent) AS AVGDISCPERC FROM zepto_data
GROUP BY ï»¿Category
 ORDER BY AVGDISCPERC DESC LIMIT 5 ;
 
 #IDENTIFY THE PRICE PER GRAM FOR PRODUCTS ABOVE 100G AND SORT BY BEST VALUES;
 SELECT distinct NAME,MRP,discountedSellingPrice/weightInGms as pricepergrm FROM zepto_data
 WHERE weightInGms>=100 
 ORDER BY pricepergrm DESC; 
 SELECT*FROM zepto_data;
 
 #group the products into medium,low,bulk based on weight in grms:
 select distinct name,weightInGms,
 case when weightInGms<1000 then 'low'
 when weightInGms<5000 then 'medium'
else 'bulk'
end as weightcatergory
from zepto_data;
 ;
 
 #what is the total inventory weight per grm:
 select * from zepto_data;
 select sum(weightInGms * availableQuantity) AS totalweight,ï»¿Category from zepto_data
 GROUP BY ï»¿Category
 ORDER BY totalweight ;
 
 #CALCULATE ESTIMATED REVENUE FOR EACH CATEGORY:
 SELECT category,
SUM(discountedSellingPrice * availableQuantity) AS total_revenue
FROM zepto
GROUP BY category
ORDER BY total_revenue;
 