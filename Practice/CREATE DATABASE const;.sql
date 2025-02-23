CREATE DATABASE const;

use const;

CREATE TABLE temp(id INT,name VARCHAR(50), age INT, city VARCHAR(50), PRIMARY KEY(id,name));
SHOW TABLES;

INSERT INTO temp VALUES(
    1,
    "ahmad",
    21,
    "muz"
)

INSERT INTO temp VALUES(
    1,
    "raza",
    21,
    "muz"
)

INSERT INTO temp VALUES(
    3,
    "ahmad",
    21,
    "muz"
)

SELECT * from temp;



-- we have taken two cols in pri key but their combination will be unique


