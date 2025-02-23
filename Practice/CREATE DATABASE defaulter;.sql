CREATE DATABASE defaulter;

use defaulter;

CREATE TABLE emp(id int, salary INT DEFAULT 25000);
SHOW TABLES;

INSERT INTO emp(id) VALUES(101); 
SELECT * FROM emp;


-- Note: we didnt insert salary into table but still it is showing 25k bcz we use default

--  alo=so if u want to use default constraints then follow line (8) queries