use beginner;

set SQL_SAFE_UPDATES = 0;

update student
set grade = "O"
where grade = "A";


update student
set marks = 8
where rollno = 105;


update student
set grade = "B"
where marks between 80 and 90;

update student
set marks = marks + 1;


-- Delete


delete from student
where marks < 40;

SELECT * FROM student;


alter table student
add column age int;


-- a. Change the column name from "name" to "full_name"
ALTER TABLE student RENAME COLUMN name TO full_name;

-- b. Delete all students who scored marks less than 80
DELETE FROM student WHERE marks < 80;

-- c. Delete the column for grades
ALTER TABLE student DROP COLUMN grade;

-- To verify the remaining data
SELECT * FROM student;

