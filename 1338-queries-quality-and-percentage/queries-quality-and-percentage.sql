# Write your MySQL query statement below
SELECT QUERY_NAME,round(sum(rating/position)/count(query_name),2) quality,
round(((SUM(case when rating < 3 then 1 else 0 end)/count(query_name))*100),2) poor_query_percentage
FROM Queries q where query_name is not null
group by query_name
;