/* This should fail because 0 is already taken */
INSERT INTO person (id, first_name, last_name, age)
    VALUES (0, 'Frank', 'Smith', 100);

/* Force it by doing INSERT OR REPLACE */
INSERT OR REPLACE INTO person (id, first_name, last_name, age)
    VALUES (0, 'Frank', 'Smith', 100);

SELECT * FROM person;

/* Shorthand */
REPLACE INTO person (id, first_name, last_name, age)
    VALUES (0, 'Zed', 'Shaw', 37);

SELECT * FROM pet;

/* Replace unicorn with parrot */
REPLACE INTO pet (id, name, breed, age, dead)
    VALUES (0, 'Polly', 'Parrot', 5, 0);

SELECT * FROM person;
SELECT * FROM pet;