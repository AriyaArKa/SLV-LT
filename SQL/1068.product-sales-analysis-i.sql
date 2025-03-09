--
-- @lc app=leetcode id=1068 lang=mysql
--
-- [1068] Product Sales Analysis I
--

-- @lc code=start
# Write your MySQL query statement below
select p.product_name, s.year, s.price
from Sales s
inner join Product p
on s.product_id = p.product_id;
-- @lc code=end

