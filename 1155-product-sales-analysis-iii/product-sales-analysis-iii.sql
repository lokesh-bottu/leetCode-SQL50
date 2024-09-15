# Write your MySQL query statement below
SELECT product_id , year first_year  , quantity , price  FROM Sales 
where (product_id,year) in (SELECT product_id,min(year) from Sales group by product_id);
