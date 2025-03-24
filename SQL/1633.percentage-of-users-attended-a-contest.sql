--
-- @lc app=leetcode id=1633 lang=mysql
--
-- [1633] Percentage of Users Attended a Contest
--

-- @lc code=start
# Write your MySQL query statement below


select contest_id ,
round(count(DISTINCT user_id)*100 / (select count(user_id) from users),2) as percentage
from Register
group by contest_id
order by percentage desc,contest_id asc;

-- @lc code=end

