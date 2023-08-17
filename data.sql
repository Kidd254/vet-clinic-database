/* Populate database with sample data. */

-- Animal: His name is Agumon.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Agumon', '2020-02-03', 0, TRUE, 10.23);

-- Animal: Her name is Gabumon.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Gabumon', '2018-11-15', 2, TRUE, 8.00);

-- Animal: His name is Pikachu.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Pikachu', '2021-01-07', 1, FALSE, 15.04);

-- Animal: Her name is Devimon.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Devimon', '2017-05-12', 5, TRUE, 11.00);

-- Animal: His name is Charmander.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species)
VALUES ('Charmander', '2020-02-08', 0, FALSE, -11.0);

-- Animal: Her name is Plantmon.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species)
VALUES ('Plantmon', '2021-11-15', 2, TRUE, -5.7);

-- Animal: His name is Squirtle.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species)
VALUES ('Squirtle', '1993-04-02', 3, FALSE, -12.13);

-- Animal: His name is Angemon.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species)
VALUES ('Angemon', '2005-06-12', 1, TRUE, -45.0);

-- Animal: His name is Boarmon.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species)
VALUES ('Boarmon', '2005-06-07', 7, TRUE, 20.4);

-- Animal: Her name is Blossom.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species)
VALUES ('Blossom', '1998-10-13', 3, TRUE, 17.0);

-- Animal: His name is Ditto.
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species)
VALUES ('Ditto', '2022-05-14', 4, TRUE, 22.0);


--Owners table--
INSERT INTO owners (full_name, age)
VALUES ('Sam Smith', 34),
       ('Jennifer Orwell', 19),
       ('Bob', 45),
       ('Melody Pond', 77),
       ('Dean Winchester', 14),
       ('Jodie Whittaker', 38);


       --species table--
       INSERT INTO species (name)
VALUES ('Pokemon'),
       ('Digimon');

       --insert data into vets table--
      
INSERT INTO vets (name, age, date_of_graduation)
VALUES ('William Tatcher', 45, '2000-04-23');


INSERT INTO vets (name, age, date_of_graduation)
VALUES ('Maisy Smith', 26, '2019-01-17');

INSERT INTO vets (name, age, date_of_graduation)
VALUES ('Stephanie Mendez', 64, '1981-05-04');

INSERT INTO vets (name, age, date_of_graduation)
VALUES ('Jack Harkness', 38, '2008-06-08');

--insert into specializations table--
-- Insert data for Vet William Tatcher's specialization
INSERT INTO specializations (vet_id, species_id)
VALUES (1, 1); -- Vet William Tatcher specializes in Pokemon

-- Insert data for Vet Stephanie Mendez's specializations
INSERT INTO specializations (vet_id, species_id)
VALUES (3, 1), -- Vet Stephanie Mendez specializes in Pokemon
       (3, 2); -- Vet Stephanie Mendez specializes in Digimon

-- Insert data for Vet Jack Harkness's specialization
INSERT INTO specializations (vet_id, species_id)
VALUES (4, 2); -- Vet Jack Harkness specializes in Digimon


--insertions to visits table--
INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES (1, 1, '2020-05-24'), -- Agumon visited William Tatcher
       (1, 3, '2020-07-22'); -- Agumon visited Stephanie Mendez

-- Insert data for Gabumon's visit
INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES (2, 4, '2021-02-02'); -- Gabumon visited Jack Harkness

-- Insert data for Pikachu's visits
INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES (3, 2, '2020-01-05'), -- Pikachu visited Maisy Smith
       (3, 2, '2020-03-08'), -- Pikachu visited Maisy Smith
       (3, 2, '2020-05-14'); -- Pikachu visited Maisy Smith

-- Insert data for Devimon's visit
INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES (4, 3, '2021-05-04'); -- Devimon visited Stephanie Mendez

-- Insert data for Charmander's visit
INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES (5, 4, '2021-02-24'); -- Charmander visited Jack Harkness

-- Insert data for Plantmon's visits
INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES (6, 2, '2019-12-21'), -- Plantmon visited Maisy Smith
       (6, 1, '2020-08-10'), -- Plantmon visited William Tatcher
       (6, 2, '2021-04-07'); -- Plantmon visited Maisy Smith

-- Insert data for Squirtle's visit
INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES (7, 3, '2019-09-29'); -- Squirtle visited Stephanie Mendez

-- Insert data for Angemon's visits
INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES (8, 4, '2020-10-03'), -- Angemon visited Jack Harkness
       (8, 4, '2020-11-04'); -- Angemon visited Jack Harkness

-- Insert data for Boarmon's visits
INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES (9, 2, '2019-01-24'), -- Boarmon visited Maisy Smith
       (9, 2, '2019-05-15'), -- Boarmon visited Maisy Smith
       (9, 2, '2020-02-27'), -- Boarmon visited Maisy Smith
       (9, 2, '2020-08-03'); -- Boarmon visited Maisy Smith

-- Insert data for Blossom's visits
INSERT INTO visits (animal_id, vet_id, visit_date)
VALUES (10, 3, '2020-05-24'), -- Blossom visited Stephanie Mendez
       (10, 1, '2021-01-11'); -- Blossom visited William Tatcher