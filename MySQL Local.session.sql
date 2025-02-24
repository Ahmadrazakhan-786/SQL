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
