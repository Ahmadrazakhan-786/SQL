CREATE DATABASE Sub_Queries;

USE Sub_Queries;

CREATE TABLE students(
    roll_no INT PRIMARY KEY,
    name varchar(50),
    marks INT NOT NULL,
    grades varchar(1),
    city varchar(20)
);

SHOW TABLES;

INSERT INTO students(roll_no, name, marks, grades, city) values
    (101, 'anil', 78, 'C', 'pune'),
    (102, 'bhumika', 93, 'A', 'mumbai'),
    (103, 'chetan', 85, 'B', 'mumbai'),
    (104, 'dhruv', 96, 'A', 'delhi'),
    (105, 'emanuel', 92, 'F', 'delhi'),
    (106, 'anil', 82, 'B', 'delhi');

SELECT * FROM students;

SELECT AVG(marks) FROM students;

SELECT name, marks FROM students WHERE marks > 87.6667;

-- now we will use sub_queries that will combine above two syntax into one

SELECT name,marks FROM students WHERE marks > (SELECT AVG(marks) FROM students); -- Sub_queries


SELECT roll_no FROM students WHERE roll_no % 2 = 0;

SELECT name, roll_no FROM students WHERE roll_no IN (SELECT roll_no FROM students WHERE roll_no % 2 = 0);

SELECT * FROM students WHERE city = 'delhi';

SELECT MAX(marks) FROM (SELECT * FROM students WHERE city = 'delhi') AS temp;

-- VIEWS: virtual table
CREATE VIEW view1 AS SELECT roll_no, name, marks FROM students;

SELECT * FROM view1;