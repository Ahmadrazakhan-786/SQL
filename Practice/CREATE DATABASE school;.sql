CREATE DATABASE school;

use school;

CREATE TABLE data(
    roll_no INT PRIMARY KEY,
    name varchar(50),
    marks INT Not Null,
    grades varchar(1),
    city varchar(50)
);

SHOW TABLES;

INSERT INTO data(roll_no, name, marks, grades, city) VALUES
    (101, 'ahmad', 77, 'C', 'Muzaffarpur'),
    (102, 'ashir', 93, 'A', 'Mumbai'),
    (103, 'zaid', 85, 'B', 'Mumbai'),
    (104, 'ahshan', 96, 'A', 'Delhi'),
    (105, 'dhiraj', 82, 'B', 'Delhi'),
    (106, 'pritam', 12, 'F', 'Delhi');


SELECT name, marks from data;
SELECT * from data;

SELECT city from data;

SELECT DISTINCT city FROM data; -- returns unique city names


-- clauses:

SELECT * FROM data WHERE marks >= 80;
SELECT * FROM data WHERE city = "Mumbai";


SELECT * FROM data WHERE city = "Mumbai" AND  marks >80; -- both conditions should be true

SELECT * FROM data WHERE marks+10 >100; -- using opr in clause

SELECT * FROM data WHERE marks > 70 OR city = 'delhi'; -- one condition should be true

SELECT * FROM data WHERE marks BETWEEN 80 AND 90; -- selects for a given range (80,90 inclusive)

SELECT * FROM data WHERE city IN ('delhi', 'mumbai', 'goa'); -- matches the values in the list

SELECT * FROM data WHERE city NOT IN('delhi', 'mumbai');

SELECT * FROM data LIMIT 3; -- returns the data of only first 3