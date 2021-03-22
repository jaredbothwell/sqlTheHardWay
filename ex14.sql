BEGIN

ALTER TABLE person ADD COLUMN dead INTEGER;
ALTER TABLE person ADD COLUMN phone_number TEXT;
ALTER TABLE person ADD COLUMN salary FLOAT;
ALTER TABLE person ADD COLUMN dob DATETIME;
ALTER TABLE pet ADD COLUMN dob DATETIME;
ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;
ALTER TABLE pet ADD COLUMN parent INTEGER;

UPDATE person SET dead=0 WHERE id=0;
UPDATE person SET phone_number='843-489-2384' WHERE id=0;
UPDATE person SET salary=104230 WHERE id=0;
UPDATE person SET dob='1983-11-14' WHERE id=0;

UPDATE pet SET dob='1021-01-01' WHERE id=0;
UPDATE pet SET dob='2020-02-15' WHERE id=1;
UPDATE pet SET parent=0 WHERE id=1;

UPDATE person_pet SET purchased_on='2021-03-18' WHERE pet_id=0;
UPDATE person_pet SET purchased_on='2021-03-18' WHERE pet_id=1;

SELECT * FROM person;
SELECT * FROM pet;
SELECT * FROM person_pet;

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
    VALUES (1, 'John', 'Smith', 43, 0, '239-439-2349', 85000, '1978-01-04');

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
    VALUES (2, 'Jake', 'Phillips', 20, 0, '239-439-4657', 25000, '2001-02-26');

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
    VALUES (3, 'Frank', 'Johnson', 51, 0, '239-439-6542', 180000, '1969-05-14');

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
    VALUES (4, 'Bob', 'Martin', 36, 0, '239-357-7318', 90000, '1984-09-23');

INSERT INTO pet (id, name, breed, age, dead, dob, parent)
    VALUES (2, 'Flynn', 'Cat', 1, 0, '2020-01-15', 3);

INSERT INTO pet (id, name, breed, age, dead, dob)
    VALUES (3, 'Fluff', 'Cat', 6, 0, '2014-01-15');

INSERT INTO pet (id, name, breed, age, dead, dob)
    VALUES (4, 'Max', 'Dog', 1, 0, '2020-01-15');

SELECT * FROM person;
SELECT * FROM pet;

COMMIT