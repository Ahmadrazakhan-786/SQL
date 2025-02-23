CREATE DATABASE khan;
SHOW DATABASES;

use khan;

CREATE TABLE dsp(name VARCHAR(25));
SHOW TABLES;

INSERT INTO dsp VALUES('Siraj');
SELECT * from dsp;

INSERT INTO dsp VALUES('pritam');
SELECT * from dsp;


INSERT INTO dsp (name)
VALUES ('ahmad');
SELECT * from dsp;

INSERT INTO dsp (name)
VALUES ('srk');

SELECT * FROM dsp;

INSERT INTO dsp VALUES('sahil');
SELECT * from dsp;

