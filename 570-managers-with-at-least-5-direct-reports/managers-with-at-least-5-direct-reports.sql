# Write your MySQL query statement below
select E2.NAME from Employee E
LEFT join Employee E2  ON E2.ID = E.MANAGERID
GROUP BY E2.id
HAVING COUNT(E2.id) >= 5;