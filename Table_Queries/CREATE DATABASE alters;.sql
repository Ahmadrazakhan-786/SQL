CREATE DATABASE alters;


use alters;

CREATE TABLE query(
    roll_no INT PRIMARY KEY,
    name varchar(50),
    marks INT Not Null,
    grades varchar(1),
    city varchar(50)
);

SHOW TABLES;

INSERT INTO query(roll_no, name, marks, grades, city) VALUES
    (101, 'ahmad', 77, 'C', 'Muzaffarpur'),
    (102, 'ashir', 93, 'A', 'Mumbai'),
    (103, 'zaid', 85, 'B', 'Mumbai'),
    (104, 'ahshan', 96, 'A', 'Delhi'),
    (105, 'dhiraj', 82, 'B', 'Delhi'),
    (106, 'pritam', 12, 'F', 'Delhi');


SELECT * FROM query;

ALTER TABLE query ADD COLUMN age INT; -- add a new column

ALTER TABLE query DROP COLUMN age; -- delete an existing column

ALTER TABLE query CHANGE COLUMN city new_city varchar(50); -- rename the column name

ALTER TABLE query MODIFY grades char(1); -- modify datatype/constraint

ALTER TABLE query RENAME TO stu_query; -- change the table name

SELECT * FROM stu_query;

ALTER TABLE stu_query ADD COLUMN age INT NOT NULL DEFAULT 19;

TRUNCATE TABLE stu_query;

-- Note: DROP: DELETE THE TABLE , TRUNCATE: DELETE TABLE'S DATA
