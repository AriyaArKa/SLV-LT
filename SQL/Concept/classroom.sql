/*
create database temp1;
create database temp2;
create database college;

drop database temp1;
drop database temp2;
*/

-- use college;


/*
CREATE TABLE student(
	id int primary key,
	name varchar(50),
	age int not null
);

insert into student values(1,"aman",28);
insert into student values(2,"shraddha",23);

select *from student;
*/


-- DB RELATED QUERIES
/*
create database if not exists college2;
drop database if exists college2;

show databases;
show tables;
*/


-- TABLE RELATED QUERIES
/*
create table demo(
	roll_no int primary key,
	st_name varchar(50)
);
select * from demo;

insert into demo (roll_no,st_name) values (101,"karan"), (102,"arjun");

insert into demo (roll_no,st_name) values (103,"ram");
*/

-- practise 
/*
create table xyz(
	emp_id int primary key,
	emp_name varchar(50),
	emp_salary int
);

select *from xyz;
insert into xyz (emp_id,emp_name,emp_salary) values(1,"adam",25000),(2,"bob",30000),(3,"casey",40000);
*/

-- create table temp1(
-- 	id int unique,
--     roll int unique
-- );

-- select *from temp1;
-- insert into temp1 (id,roll) values(1,101),(2,102);
-- insert into temp1 (id,roll) values(56,9);

-- combination unique -> primary key
-- default 

select *from college;
-- show databases;


