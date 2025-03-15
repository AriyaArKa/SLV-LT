use leet;

CREATE TABLE Weather (
    id INT PRIMARY KEY,
    recordDate DATE UNIQUE,
    temperature INT
);

INSERT INTO Weather (id, recordDate, temperature) VALUES 
(1, '2015-01-01', 10),
(2, '2015-01-02', 25),
(3, '2015-01-03', 20),
(4, '2015-01-04', 30);

select * from Weather;

select *
from Weather a,Weather b
where a.temperature > b.temparature; 

SELECT id
FROM (
    SELECT id, recordDate, temperature, 
           LAG(temperature) OVER (ORDER BY recordDate) AS prev_temp
    FROM Weather
) temp_data
WHERE temperature > prev_temp;


SELECT w1.id 
FROM Weather w1
JOIN Weather w2 
ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
WHERE w1.temperature > w2.temperature;


-- w1 (current day)	w1.recordDate	w1.temperature	w2 (previous day)	w2.recordDate	w2.temperature	Condition (w1.temp > w2.temp)	Match?
-- 2				2015-01-02			25					1			2015-01-01				10				✅ (25 > 10)			✅ Yes
-- 3				2015-01-03			20					2			2015-01-02				25				❌ (20 < 25)			❌ No
-- 4				2015-01-04			30					3			2015-01-03				20				✅ (30 > 20)			✅ Yes

