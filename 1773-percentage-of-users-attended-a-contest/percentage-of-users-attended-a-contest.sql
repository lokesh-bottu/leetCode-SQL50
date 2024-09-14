select contest_id,round((count(contest_id)/(select count(1) from Users))*100,2) percentage from Register r
inner join Users u on u.user_id = r.user_id
group by contest_id
order by percentage desc,contest_id asc;