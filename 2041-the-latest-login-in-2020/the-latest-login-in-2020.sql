# Write your MySQL query statement below
select user_id, max(time_stamp)as last_stamp 
from logins
where time_stamp > '2020-01-01' AND time_stamp < '2021-01-01'
group by user_id;