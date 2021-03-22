/*UPDATE person SET first_name = 'Zed'
    WHERE id=0;

UPDATE pet SET name = 'Fancy Pants'
    WHERE id=0;
*/
UPDATE pet set dead = 1 WHERE id=1;
UPDATE pet set name = 'DECEASED' WHERE dead = 1;

SELECT * FROM person;
SELECT * FROM pet;
