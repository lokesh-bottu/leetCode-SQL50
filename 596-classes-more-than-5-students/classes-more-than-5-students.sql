# Write your MySQL query statement below
SELECT CLASS FROM Courses 
group by class having count(class) >=5;