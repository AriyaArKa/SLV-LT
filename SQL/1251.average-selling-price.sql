--
-- @lc app=leetcode id=1251 lang=mysql
--
-- [1251] Average Selling Price
--

-- @lc code=start
# Write your MySQL query statement below

select p.product_id ,
ifnull(round(sum(p.price * u.units) / sum(u.units) ,2),0)as average_price
from prices p
left join unitssold u 
on p.product_id = u.product_id
and u.purchase_date between p.start_date and p.end_date
group by p.product_id

-- @lc code=end

