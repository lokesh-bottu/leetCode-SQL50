# Write your MySQL query statement below
with cte as (SELECT person_name,SUM(WEIGHT) OVER (ORDER BY TURN) cum_weight 
FROM Queue)
select person_name FROM cte
where cum_weight <=1000 
order by cum_weight desc 
limit 1;