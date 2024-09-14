# Write your MySQL query statement below
WITH CTE AS (
    SELECT *,ROW_NUMBER() OVER (PARTITION BY CUSTOMER_ID ORDER BY ORDER_DATE) RNK FROM Delivery 
) select round((sum(case when order_date = customer_pref_delivery_date then 1 else 0 end )/count(*)*100),2) immediate_percentage from CTE WHERE RNK = 1;