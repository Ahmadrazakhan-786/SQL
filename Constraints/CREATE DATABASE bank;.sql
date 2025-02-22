CREATE DATABASE bank;

use bank;

CREATE TABLE bank123(emp_no INT primary key, emp_name varchar(25) Not Null, city varchar(25), Doj date);

SHOW TABLES;

DESCRIBE bank123;

INSERT INTO bank123 VALUES(
    '786',
    'rashid',
    'muz',
    '2005-05-15'
);

SELECT * from bank123;

INSERT INTO bank123 VALUES(
    '782',
    'ruchi',
    'muz',
    '2005-08-15'
);

SELECT * from bank123;




