/* Only drop table if it exists */
DROP TABLE IF EXISTS person;

/* Create it again to work with it */
CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

/* Rename table to peoples */
ALTER TABLE person RENAME TO peoples;

/* Add a hatred column to peoples */
ALTER TABLE peoples ADD COLUMN hatred INTEGER;

/* Rename peoples back to person */
ALTER TABLE peoples RENAME TO person;

.schema person

/* Don't need table anymore */
DROP TABLE person