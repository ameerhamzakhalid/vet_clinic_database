/*Queries that provide answers to the questions from all projects.*/

-- Find all animals whose name ends in "mon". */
SELECT * from animals WHERE name Like '%mon%';

-- List the name of all animals born between 2016 and 2019.
SELECT * from animals WHERE date_of_birth between TO_DATE('2016-01-01', 'YYYY-MM-DD') and TO_DATE('2019-12-31', 'YYYY-MM-DD');

-- List the name of all animals that are neutered and have less than 3 escape attempts.
SELECT * from animals WHERE neutered = true and escape_attempts < 3;

-- List the date of birth of all animals named either "Agumon" or "Pikachu".
SELECT * from animals WHERE name IN ('Agumon', 'Pikachu');
-- List name and escape attempts of animals that weigh more than 10.5kg.
SELECT name , escape_attempts from animals WHERE weight_kg > 10.5;
-- Find all animals that are neutered.
SELECT * from animals WHERE neutered = true;
-- Find all animals not named Gabumon.
SELECT * from animals WHERE name != 'Gabumon';
-- Find all animals with a weight between 10.4kg and 17.3kg (including the animals with the weights that equals precisely 10.4kg or 17.3kg)
SELECT * from animals WHERE weight_kg >= 10.4 and  weight_kg <= 17.3;