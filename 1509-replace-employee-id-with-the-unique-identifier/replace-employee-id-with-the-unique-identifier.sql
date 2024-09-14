# Write your MySQL query statement below
SELECT E1.UNIQUE_ID,NAME FROM Employees E
LEFT JOIN EmployeeUNI E1 ON E1.ID = E.ID; 