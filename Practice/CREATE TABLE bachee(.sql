CREATE TABLE bachee(
    name VARCHAR(25),
    marks INT,
    grades VARCHAR(1)
);

SHOW TABLES;

INSERT INTO bachee(name, marks, grades) VALUES 
    ('ahmad', 95, 'A'),
    ('ashir', 80, 'B'),
    ('zaid', 81, 'B'),
    ('ahshan', 87, 'B');

SELECT * FROM bachee;

ALTER TABLE bachee CHANGE COLUMN name full_name VARCHAR(25);

DELETE FROM bachee WHERE marks<85;

ALTER TABLE bachee DROP COLUMN grades;

