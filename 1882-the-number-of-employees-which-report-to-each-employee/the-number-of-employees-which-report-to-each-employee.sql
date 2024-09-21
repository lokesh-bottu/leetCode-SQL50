# Write your MySQL query statement below
SELECT e1.employee_id,e1.name,count(e2.employee_id) reports_count,
round(AVG(e2.age),0) average_age
FROM Employees e1 
join Employees e2 on e1.employee_id = e2.reports_to
group by e1.employee_id
order by e1.employee_id