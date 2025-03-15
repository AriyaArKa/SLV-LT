create database leet;

use leet;

-- Creating the Visits table
CREATE TABLE Visits (
    visit_id INT PRIMARY KEY,
    customer_id INT
);

-- Inserting data into Visits table
INSERT INTO Visits (visit_id, customer_id) VALUES 
(1, 23),
(2, 9),
(4, 30),
(5, 54),
(6, 96),
(7, 54),
(8, 54);

-- Creating the Transactions table
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    visit_id INT,
    amount INT,
    FOREIGN KEY (visit_id) REFERENCES Visits(visit_id)
);

-- Inserting data into Transactions table
INSERT INTO Transactions (transaction_id, visit_id, amount) VALUES 
(2, 5, 310),
(3, 5, 300),
(9, 5, 200),
(12, 1, 910),
(13, 2, 970);

select * from Visits;

select v.customer_id

WITH NoTransactionVisits AS (
    SELECT v.customer_id
    FROM Visits v
    LEFT JOIN Transactions t ON v.visit_id = t.visit_id
    WHERE t.transaction_id IS NULL
)

SELECT customer_id, COUNT(*) AS count_no_trans
FROM NoTransactionVisits
GROUP BY customer_id
order by count_no_trans desc;



SELECT v.customer_id, COUNT(*) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id
order by count_no_trans desc;


SELECT *
FROM Visits v
LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL;



