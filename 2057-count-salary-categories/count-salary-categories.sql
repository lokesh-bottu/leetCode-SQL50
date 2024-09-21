SELECT 'Low Salary' AS category, 
       SUM(CASE WHEN INCOME <20000 THEN 1 ELSE 0 END)  AS accounts_count
FROM Accounts
UNION ALL
SELECT 'Average Salary', 
       SUM(CASE WHEN INCOME between 20000 and 50000 THEN 1 ELSE 0 END)
FROM Accounts
UNION ALL
SELECT 'High Salary', 
       SUM(CASE WHEN INCOME >50000 THEN 1 ELSE 0 END)
FROM Accounts;