# Write your MySQL query statement below
SELECT MAX(NUM) num FROM (
    select num from MyNumbers
    group by num having count(num)=1) a;