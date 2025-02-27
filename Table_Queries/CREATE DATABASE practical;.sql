CREATE DATABASE practical;

use practical;

CREATE TABLE student(
    roll_no INT PRIMARY KEY,
    name varchar(50),
    marks INT Not Null,
    grades varchar(1),
    city varchar(50)
);

SHOW TABLES;

CREATE TABLE depts(
   id INT PRIMARY KEY,
   name varchar(50)
);

INSERT INTO depts(id , name) VALUES
    (101, 'English'),
    (102, 'IT');


SELECT * FROM depts;

UPDATE depts SET id = 103 WHERE id = 102;

CREATE TABLE teachers(
    id INT PRIMARY KEY,
    name varchar(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES depts(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

-- cascade means agr ek jagh change kiye to dusre place pe automatic change ho jaaegi

INSERT INTO teachers VALUES
    (101, 'adam', 101),
    (102, 'eve', 102);

SELECT * FROM teachers;