CREATE DATABASE xyz;

use xyz;

CREATE TABLE IF NOT EXISTS employee(id INT primary key, name VARCHAR(50), salary INT NOT Null);
SHOW TABLES;

INSERT INTO employee VALUES(
    785,
    'asad',
    250000
);

INSERT INTO employee VALUES(
    786,
    'adam',
    240000
);

INSERT INTO employee VALUES(
    787,
    'bob',
    270000
);

SELECT * from employee;

