Create database practise;
use practise;

CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student (rollno, name, marks, grade, city)
VALUES
    (101, "anil", 78, "C", "Pune"),
    (102, "bhumika", 93, "A", "Mumbai"),
    (103, "chetan", 85, "B", "Mumbai"),
    (104, "dhruv", 96, "A", "Delhi"),
    (105, "emanuel", 92, "F", "Delhi"),
    (106, "farah", 82, "B", "Delhi");

SELECT * FROM student;

select avg(marks)
from student;

select name,marks
from student
where marks > 87.6667;


-- making dynamic
select name,marks
from student
where marks > (select avg(marks) from student);

select rollno,name
from student
where rollno % 2 = 0;


select rollno,name
from student
where rollno in (102,104,106);


select rollno,name
from student
where rollno in (select rollno from student where rollno % 2 = 0);


