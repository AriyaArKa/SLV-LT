--
-- @lc app=leetcode id=570 lang=mysql
--
-- [570] Managers with at Least 5 Direct Reports
--

-- @lc code=start
# Write your MySQL query statement below

# Write your MySQL query statement below
SELECT a.name
FROM Employee AS a
JOIN Employee AS b
ON a.id = b.managerId
GROUP BY a.id
HAVING COUNT(b.id) >= 5;

-- @lc code=end

