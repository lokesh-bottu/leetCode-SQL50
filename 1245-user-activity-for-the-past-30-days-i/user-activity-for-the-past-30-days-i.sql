WITH CTE AS (SELECT * FROM Activity where ACTIVITY_TYPE not in ('open_session','end_session'))


# Write your MySQL query statement below
SELECT ACTIVITY_DATE DAY, COUNT(DISTINCT USER_ID) ACTIVE_USERS 
FROM Activity 
where datediff('2019-07-27',activity_date) < 30 and datediff('2019-07-27',activity_date) >= 0
group by activity_date;