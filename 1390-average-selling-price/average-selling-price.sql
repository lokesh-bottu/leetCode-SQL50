# Write your MySQL query statement below
-- select p.product_id,round(sum(u.units*p.price)) as average_price from Prices p,UnitsSold u where p.product_id=u.product_id group by p.product_id;
-- select * from Prices p,UnitsSold u where p.product_id=u.product_id;
-- select * from Prices p natural join UnitsSold u ;


select p.product_id,ifnull(round(sum(price*units)/sum(units),2),0) average_price from Prices p left join UnitsSold u on p.product_id=u.product_id and PURCHASE_DATE BETWEEN START_DATE AND END_DATE
group by p.product_id;