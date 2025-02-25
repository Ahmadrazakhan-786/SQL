CREATE DATABASE practice1;

use practice1;

CREATE TABLE payment(c_id INT primary key, customer varchar(50), mode varchar(50), city varchar(50));

SHOW tables;

INSERT INTO payment(c_id, customer, mode, city) values
    (101, 'Olivia Barret', 'Netbanking', 'Portland'),
    (102, 'Ethan Sinclair', 'Credit Card', 'Miami'),
    (103, 'Maya Hermandez', 'Credit Card', 'Seattle'),
    (104, 'Liam Donovan', 'Netbanking', 'Denver'),
    (105, 'Sophia Nguwen', 'Credit Card', 'New Orleans'),
    (106, 'Caleb Foster', 'Debit Card', 'Minnepolis'),
    (107, 'Ava Patel', 'Debit Card', 'Phoneix'),
    (108, 'Lucas Caster', 'Netbanking', 'Boston'),
    (109, 'Isabella Martinez', 'Netbanking', 'Nashville'),
    (110, 'Jackson Brooks', 'Credit Card', 'Boston');

    SELECT * from payment;

    -- q1. find the total payment a/c to each payment method

    SELECT mode, COUNT(customer) FROM payment GROUP BY mode;

    SELECT max(mode) from payment;
    