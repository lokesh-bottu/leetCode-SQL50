# Write your MySQL query statement below
SELECT s.USER_ID,ifnull(round(sum(case when action = 'confirmed' then 1 else 0 end)/count(action),2),0) confirmation_rate from Signups s
left join Confirmations c on s.user_id = c.user_id
group by s.user_id;