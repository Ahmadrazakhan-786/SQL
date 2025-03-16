CREATE DATABASE JOINS;

SHOW DATABASES;

use JOINS;

CREATE TABLE student(
    id INT PRIMARY KEY,
    name varchar(50)
);

SHOW TABLES;

INSERT INTO student(id, name) VALUES
    (101, 'adam'),
    (102, 'bob'),
    (103, 'casey');

CREATE TABLE course(
    id INT PRIMARY KEY,
    course varchar(50)
);

INSERT INTO course(id, course) VALUES
    (102, 'english'),
    (105, 'maths'),
    (103, 'urdu'),
    (108, 'sst'),
    (107, 'science');

SELECT * FROM student;
SELECT * FROM course;

SELECT * FROM student  INNER JOIN course ON student.id = course.id;

SELECT * FROM student AS s INNER JOIN course AS c ON s.id = c.id;

-- NOTE: AS S OR AS C : it is an alias(alternate name)
-- INNER JOIN: it return records that have matching values in both table

-- LEFT JOIN: Returns all records from left table, and matched records from right table

SELECT * FROM student AS s LEFT JOIN course AS c ON s.id =  c.id;

-- RIGHT JOIN: Returns all records from right table, and matched records from left table

SELECT * FROM student AS s RIGHT JOIN course AS c ON s.id = c.id;

-- FULL JOIN: Returns all records when there is a match in either left or right table

SELECT * FROM student AS s LEFT JOIN course AS c ON s.id = c.id UNION SELECT * FROM student AS s RIGHT JOIN course AS c ON s.id = c.id;

-- LEFT EXCUSIVE JOIN: Only left portion with no common data

SELECT * FROM student AS a LEFT JOIN course AS b ON a.id = b.id WHERE b.id IS NULL;

-- RIGHT EXCLUSIVE JOIN: Only right portion with no common data

SELECT * FROM student AS a RIGHT JOIN course AS b ON a.id = b.id WHERE a.id IS NULL;

-- Full EXCLUSIVE JOIN: returns left and right portion with no common data

SELECT * FROM student AS a LEFT JOIN course AS b ON a.id = b.id WHERE b.id IS NULL UNION SELECT * FROM student AS a RIGHT JOIN course AS b ON a.id = b.id WHERE a.id IS NULL;


-- SELF JOIN: It is a regular join but the table is joined with itself

CREATE TABLE employee(
    id INT PRIMARY KEY,
    name varchar(50),
    manager_id INT
);

INSERT INTO employee(id, name, manager_id) VALUES
    (101, 'adam', 103),
    (102, 'bob', 104),
    (103, 'casey', NULL),
    (104, 'donald', 103);

SELECT * FROM employee;

SELECT a.name AS manager_name, b.name FROM employee AS a JOIN employee AS b ON a.id = b.manager_id;



-- UNION: It removes the duplicate values
-- UNION ALL: It includes the duplicate values

SELECT name FROM employee UNION SELECT name FROM employee;
SELECT name FROM employee UNION ALL SELECT name FROM employee;