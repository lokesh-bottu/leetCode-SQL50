# Write your MySQL query statement below
SELECT DISTINCT l1.num ConsecutiveNums FROM 
Logs l1
join Logs l2 on l1.id +1 = l2.id and l1.num = l2.num
join Logs l3 on l2.id +1 = l3.id and l3.num = l2.num;