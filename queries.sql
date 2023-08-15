/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name FROM animals WHERE neutered = TRUE AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = TRUE;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

-- Start a transaction
BEGIN;

-- Delete all animals born after Jan 1st, 2022
DELETE FROM animals WHERE date_of_birth > '2022-01-01';

-- Create a savepoint for the transaction
SAVEPOINT SP1;

-- Update all animals' weight to be their weight multiplied by -1
UPDATE animals
SET weight_kg = weight_kg * -1;

-- Rollback to the savepoint
ROLLBACK TO SP1;

-- Update all animals' weights that are negative to be their weight multiplied by -1
UPDATE animals
SET weight_kg = weight_kg * -1
WHERE weight_kg < 0;

-- Commit transaction
COMMIT;


-- Queries to answer specific questions

-- Count the total number of animals
SELECT COUNT(*) AS total_animals FROM animals;

-- Count the number of animals that have never tried to escape
SELECT COUNT(*) AS num_no_escape_attempts
FROM animals
WHERE escape_attempts = 0;

-- Calculate the average weight of animals
SELECT AVG(weight_kg) AS avg_weight FROM animals;

-- Find out who escapes the most, neutered or not neutered animals
SELECT neutered, SUM(escape_attempts) AS total_escape_attempts
FROM animals
GROUP BY neutered
ORDER BY total_escape_attempts DESC
LIMIT 1;

-- Find the minimum and maximum weight of each type of animal
SELECT species, MIN(weight_kg) AS min_weight, MAX(weight_kg) AS max_weight
FROM animals
GROUP BY species;

-- Calculate the average number of escape attempts per animal type of those born between 1990 and 2000
SELECT species, AVG(escape_attempts) AS avg_escape_attempts
FROM animals
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31'
GROUP BY species;