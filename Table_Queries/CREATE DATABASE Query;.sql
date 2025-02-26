CREATE DATABASE Query;

use Query;

CREATE TABLE new(
    roll_no INT PRIMARY KEY,
    name varchar(50),
    marks INT Not Null,
    grades varchar(1),
    city varchar(50)
);

SHOW TABLES;

INSERT INTO new(roll_no, name, marks, grades, city) VALUES
    (101, 'ahmad', 77, 'C', 'Muzaffarpur'),
    (102, 'ashir', 93, 'A', 'Mumbai'),
    (103, 'zaid', 85, 'B', 'Mumbai'),
    (104, 'ahshan', 96, 'A', 'Delhi'),
    (105, 'dhiraj', 82, 'B', 'Delhi'),
    (106, 'pritam', 12, 'F', 'Delhi');



-- UPDATE COMMAND:

UPDATE new SET grades = 'O' WHERE grades = 'A';

--Note: if above cmd doesnt run then write firstly 'SET SQL_SAFE_UPDATES = 0';

SELECT * from new;

UPDATE new SET marks = 97 where roll_no = 101;
UPDATE new SET marks = 82 where roll_no = 106;

SELECT * FROM new;

UPDATE new SET grades = 'A' WHERE marks BETWEEN 91 AND 100;
UPDATE new SET grades = 'B' WHERE marks BETWEEN 80 AND 90;

SELECT * FROM new;

UPDATE new SET marks = marks + 1;
SELECT * FROM new;


--DELETE COMMAND:

UPDATE new SET marks = 12 WHERE roll_no = 106;

DELETE FROM new WHERE marks < 33;
