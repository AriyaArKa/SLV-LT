use leet;
CREATE TABLE Employee (
    empId INT PRIMARY KEY,
    name VARCHAR(50),
    supervisor INT,
    salary INT,
    FOREIGN KEY (supervisor) REFERENCES Employee(empId)
);

CREATE TABLE Bonus (
    empId INT PRIMARY KEY,
    bonus INT,
    FOREIGN KEY (empId) REFERENCES Employee(empId)
);

INSERT INTO Employee (empId, name, supervisor, salary) VALUES
(3, 'Brad', NULL, 4000),
(1, 'John', 3, 1000),
(2, 'Dan', 3, 2000),
(4, 'Thomas', 3, 4000);

INSERT INTO Bonus (empId, bonus) VALUES
(2, 500),
(4, 2000);

-- Query to display the Employee table
SELECT * FROM Employee;

-- Query to display the Bonus table
SELECT * FROM Bonus;


select e.name,b.bonus
from Employee e
left join Bonus b
on e.empId = b.empId
where b.bonus<1000 OR b.bonus IS NULL;
