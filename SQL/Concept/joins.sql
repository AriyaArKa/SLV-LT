create database student;

use student;

create table Student_table(
	roll_no int primary key,
	name varchar(50),
    address varchar(30),
    phone VARCHAR(15) NOT NULL,
	age int not null
); 

drop table Student_table;
drop table Student_Course_table;

select * from Student_table;
select * from Student_Course_table;

insert into Student_table (roll_no,name,address,phone,age) 
values 
(1, 'HARSH', 'DELHI', 'XXXXXXXXXX', 18),
(2, 'PRATIK', 'BIHAR', 'XXXXXXXXXX', 19),
(3, 'RIYANKA', 'SILIGURI', 'XXXXXXXXXX', 20),
(4, 'DEEP', 'RAMNAGAR', 'XXXXXXXXXX', 18),
(5, 'SAPTARHI', 'KOLKATA', 'XXXXXXXXXX', 19),
(6, 'DHANRAJ', 'BARABAJAR', 'XXXXXXXXXX', 20),
(7, 'ROHIT', 'BALURGHAT', 'XXXXXXXXXX', 18),
(8, 'NIRAJ', 'ALIPUR', 'XXXXXXXXXX', 19);

CREATE TABLE Student_Course_table (
    roll_no INT,
    course_id INT,
    PRIMARY KEY (roll_no, course_id)
);

INSERT INTO Student_Course_table (course_id, roll_no) 
VALUES 
(121, 1),
(222, 2),
(222, 3),
(312, 4),
(121, 5),
(420, 9),
(516, 10),
(420, 11);


-- select s.roll_no,s.name,s.address,s.phone,s.age,sct.course_id
-- from Student_table s
-- inner join Student_Course_table sct on s.roll_no = sct.roll_no;

select s.roll_no,s.name,s.address,s.phone,s.age,sct.course_id
from Student_table s
join Student_Course_table sct on s.roll_no = sct.roll_no;

show tables;


-- left join
-- Returns all record from the left table and the matched records from the right table
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

INSERT INTO student (student_id, name) VALUES
(101, 'adam'),
(102, 'bob'),
(103, 'casey'),
(104,'arka');

CREATE TABLE course (
    student_id INT,
    course VARCHAR(50) NOT NULL
);

INSERT INTO course (student_id, course) VALUES
(102, 'english'),
(105, 'math'),
(103, 'science'),
(107, 'computer science');

SELECT * FROM student;
SELECT * FROM course;

select s.student_id,s.name,c.course
from student as s
left join course as c
on s.student_id = c.student_id;


-- Right join
-- Returns all record from the right table and the matched records from the left table
select c.student_id,c.course,s.name
from student as s
right join course as c
on s.student_id = c.student_id;


