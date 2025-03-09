--
-- @lc app=leetcode id=1378 lang=mysql
--
-- [1378] Replace Employee ID With The Unique Identifier
--

-- @lc code=start
# Write your MySQL query statement below
-- SELECT e.name, eu.unique_id
-- FROM Employees e
-- LEFT JOIN EmployeeUNI eu
-- ON e.id = eu.id;

select name, unique_id
from Employees
left join EmployeeUNI using(id);


-- @lc code=end

