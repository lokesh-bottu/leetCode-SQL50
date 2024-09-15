# Write your MySQL query statement below
select TEACHER_ID,COUNT(DISTINCT SUBJECT_ID) cnt FROM Teacher 
group by teacher_id;