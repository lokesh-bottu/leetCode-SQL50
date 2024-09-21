# Write your MySQL query statement below
SELECT x,y,z,CASE WHEN x+y > z and y+z > x and z+x >y then 'Yes' else 'No' end triangle from Triangle;