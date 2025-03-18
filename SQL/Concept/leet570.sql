CREATE DATABASE IF NOT EXISTS leet2;
USE leet2;

-- Drop table if it already exists to avoid conflicts
DROP TABLE IF EXISTS Employee;

-- Create Employee Table
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    managerId INT
);

-- Insert Data
INSERT INTO Employee (id, name, department, managerId) VALUES
(101, 'John', 'A', NULL),
(102, 'Dan', 'A', 101),
(103, 'James', 'A', 101),
(104, 'Amy', 'A', 101),
(105, 'Anne', 'A', 101),
(106, 'Ron', 'B', 101);

-- Check the data
SELECT * FROM Employee;

-- Query to get managers and employees
SELECT a.name AS manager_name, b.name 
FROM Employee AS a
JOIN Employee AS b
ON a.id = b.managerId;


SELECT a.name AS manager_name, COUNT(b.id) AS report_count
FROM Employee AS a
JOIN Employee AS b
ON a.id = b.managerId
GROUP BY a.id
HAVING COUNT(b.id) >= 5;

SELECT a.name AS manager_name
FROM Employee AS a
JOIN Employee AS b
ON a.id = b.managerId
GROUP BY a.id
HAVING COUNT(b.id) >= 5;

# Write your MySQL query statement below
SELECT a.name
FROM Employee AS a
JOIN Employee AS b
ON a.id = b.managerId
GROUP BY a.id
HAVING COUNT(b.id) >= 5;
