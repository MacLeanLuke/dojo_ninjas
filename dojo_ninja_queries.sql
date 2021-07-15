USE dojo_and_ninjas_db;

-- Query: Create 3 new dojos
-- INSERT INTO dojos (name) 
-- VALUES('Winnie');

-- INSERT INTO dojos (name) 
-- VALUES('Mammy');

-- INSERT INTO dojos (name) 
-- VALUES('Chance');

-- Query: Retrieve all the users
SELECT *
FROM dojos;

-- Query: Delete the 3 dojos you just created
-- SET SQL_SAFE_UPDATES = 0;
-- DELETE FROM dojos;

-- Query: Retrieve all the users
SELECT *
FROM dojos;

-- Query: Create 3 more dojos
-- INSERT INTO dojos (name) 
-- VALUES('Lucky');

-- INSERT INTO dojos (name) 
-- VALUES('Python');

-- INSERT INTO dojos (name) 
-- VALUES('Sharp');

-- Query: Retrieve all the users
SELECT *
FROM dojos;

-- Query: Create 3 ninjas that belong to the first dojo
-- INSERT INTO ninja (first_name, last_name, dojo_id) 
-- VALUES('Winnie', 'Bell', 4);

-- INSERT INTO ninja (first_name, last_name, dojo_id) 
-- VALUES('Mammy', 'MacDog', 5);

-- INSERT INTO ninja (first_name, last_name, dojo_id) 
-- VALUES('Chance', 'Dollin', 6);

-- Query: Retrieve all the users
SELECT *
FROM ninja;

-- Query: Create 3 ninjas that belong to the second dojo
-- Query: Create 3 ninjas that belong to the third dojo
-- INSERT INTO ninja (first_name, last_name, dojo_id) 
-- VALUES('chuck', 'tool', 4);

-- INSERT INTO ninja (first_name, last_name, dojo_id) 
-- VALUES('jim', 'Macjingle', 5);

-- INSERT INTO ninja (first_name, last_name, dojo_id) 
-- VALUES('jack', 'stack', 6);

-- INSERT INTO ninja (first_name, last_name, dojo_id) 
-- VALUES('daniel', 'feller', 4);

-- INSERT INTO ninja (first_name, last_name, dojo_id) 
-- VALUES('jenny', 'funlover', 5);

-- INSERT INTO ninja (first_name, last_name, dojo_id) 
-- VALUES('hancky', 'panky', 6);

-- Query: Retrieve all the users
SELECT *
FROM ninja;

-- Query: Retrieve all the ninjas from the first dojo
SELECT *
FROM ninja
WHERE dojo_id = 4;

-- Query: Retrieve all the ninjas from the last dojo
SELECT *
FROM ninja
WHERE dojo_id = 6;

-- Query: Retrieve the last ninja's dojo
SELECT ninja.first_name AS Ninja_Name, dojos.name AS Dojo_Name
FROM dojos
JOIN ninja ON dojos.id = ninja.dojo_id 
WHERE ninja.id = 10;









