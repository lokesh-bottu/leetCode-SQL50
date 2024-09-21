# Write your MySQL query statement below
SELECT product_id,new_price price from Products 
where (product_id,change_date) in 
(select product_id,max(change_date) from Products 
where change_date <= '2019-08-16' 
group by product_id) 
union 
SELECT DISTINCT product_id,10 price from Products 
where Product_id not in (select PRODUCT_ID from Products where change_date <= '2019-08-16')