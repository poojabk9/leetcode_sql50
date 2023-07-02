-- 577. Employee Bonus --

DROP TABLE Employee

CREATE TABLE Employee
(
    empId INT,
    name VARCHAR(20),
    supervisor INT,
    salary INT
)

INSERT INTO Employee VALUES
(3, 'Brad', null, 4000),
(1, 'John', 3, 1000),
(2, 'Dan', 3, 2000),
(4, 'Thomas', 3, 4000)

DROP TABLE Bonus

CREATE TABLE Bonus
(
    empId INT,
    bonus INT
)

INSERT INTO Bonus VALUES
(2, 500),
(4, 2000)

SELECT *
FROM Employee

SELECT *
FROM Bonus

SELECT name, bonus
FROM Employee e 
LEFT JOIN Bonus b 
    ON e.empId = b.empId
WHERE bonus < 1000 OR bonus is NULL