# Write your MySQL query statement below

SELECT PRODUCT_NAME,year,PRICE FROM Sales S 
INNER JOIN Product P ON P.PRODUCT_ID = S.PRODUCT_ID;