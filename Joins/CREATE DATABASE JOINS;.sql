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

