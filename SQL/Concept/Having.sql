-- similar to Where but used when we want to apply any condition after grouping 

use beginner;

select city,count(rollno)
from student
group by city
having max(marks) > 90;


select city
from student
where grade = "A"
group by city
having max(marks) > 90
order by city asc;