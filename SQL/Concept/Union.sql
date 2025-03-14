create database demo;
use demo;
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    manager_id INT
);

INSERT INTO Employee (id, name, manager_id) VALUES
(101, 'adam', 103),
(102, 'bob', 104),
(103, 'casey', NULL),
(104, 'donald', 103);

SELECT * FROM Employee;

INSERT INTO Employee (id, name, manager_id) VALUES
(101, 'adam', 108);

select name from Employee
union
select name from Employee;
