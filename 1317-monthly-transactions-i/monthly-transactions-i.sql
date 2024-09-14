# Write your MySQL query statement below
SELECT SUBSTRING(TRANS_DATE,1,7) MONTH,
COUNTRY, COUNT(STATE) TRANS_COUNT,
sum(CASE WHEN STATE = 'approved' then 1 else 0 end) approved_count,
sum(amount) trans_total_amount , sum(case when state='approved' then amount else 0 end) approved_total_amount
from Transactions group by month,country;