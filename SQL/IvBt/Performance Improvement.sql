create database interVBT;
use interVBT;


SELECT TestID
FROM Tests t1
WHERE t1.Marks > (
        SELECT t2.Marks
        FROM Tests t2
        WHERE t2.TestID = t1.TestID - 1
    );