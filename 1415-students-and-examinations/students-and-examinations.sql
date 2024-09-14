# Write your MySQL query statement below

select S.STUDENT_ID,STUDENT_NAME,su.SUBJECT_NAME,COUNT(E.SUBJECT_NAME) attended_exams FROM Students S 
JOIN Subjects su 
LEFT JOIN Examinations E on E.STUDENT_ID = S.STUDENT_ID AND E.SUBJECT_NAME = su.SUBJECT_NAME
group by S.STUDENT_ID,su.subject_name
ORDER BY S.STUDENT_ID,su.subject_name;