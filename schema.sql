/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY, 
    name VARCHAR(100) NOT NULL, 
    date_of_birth DATE NOT NULL,
    escape_attempts INT NOT NULL, 
    neutered BOOLEAN NOT NULL, 
    weight_kg DECIMAL(5, 2) NOT NULL,
);

-- Add a column 'species' of type string to the 'animals' table.
ALTER TABLE animals ADD COLUMN species VARCHAR(255);


CREATE TABLE owners (
    id INT GENERATED ALWAYS AS IDENTITY,
    full_name VARCHAR(255) NOT NULL,
    AGE INT NOT NULL
);

CREATE TABLE species ( 
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255) NOT NULL
);

ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD COLUMN species_id INT, CONSTRAINTS fk_species FOREIGN KEY (species_id) REFERENCES species(id);
ALTER TABLE animals ADD COLUMN owner_id INT, CONSTRAINTS fk_owners FOREIGN KEY (owner_id) REFERENCES owners(id);