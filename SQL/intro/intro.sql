-- 
-- SQL Introduction to Tables
-- Reuben Clemens
-- Due: 12/16/20
-- 

-- Creates a new database name intro.
CREATE DATABASE intro;

-- Goes into intro database.
USE intro;

-- Creates the table
CREATE TABLE locations (
-- defines id as an integer and primary key. Will auto increment the id value.
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
-- defines parameter(the ones inside brackets for insert) by either text or integer.
	FN TEXT,
	LN TEXT,
	Address TEXT,
	City TEXT,
	State TEXT,
	Zip INTEGER);

-- Inserts a record into the table. Uses the previous parameters defined in the tables creation.
INSERT INTO locations (FN, LN, Address, City, State, Zip)
-- Defines the values for the records using the values placed in the brackets.
	VALUES ("Stephen", "Angelella", "2788 Marion Street", "Bellmore", "NY", 11710);
INSERT INTO locations (FN, LN, Address, City, State, Zip)
	VALUES ("Allen", "Attaway", "PO Box 643", "Bellmore", "NJ", 08855);
INSERT INTO locations (FN, LN, Address, City, State, Zip)
	VALUES ("Baron", "Ballester", "186 Lexington Avenue", "Westwood", "NJ", 07675);
INSERT INTO locations (FN, LN, Address, City, State, Zip)
	VALUES ("George", "Bartels", "77 Allen Road", "Rockville Centre", "NY", 11570);
INSERT INTO locations (FN, LN, Address, City, State, Zip)
	VALUES ("Michael", "Bartolome", "228 South 17th Avenue", "Manville", "NJ", 08835);
INSERT INTO locations (FN, LN, Address, City, State, Zip)
	VALUES ("Hugh", "Bentley", "7 Holly Treee Lane", "East Islip", "NY", 11730);
INSERT INTO locations (FN, LN, Address, City, State, Zip)
	VALUES ("Robert", "Bielsky", "931 Peninsula Blvd", "Woodmere", "NY", 11598);
INSERT INTO locations (FN, LN, Address, City, State, Zip)
	VALUES ("George", "Botsch", "511 Rockaway Street", "West Islip", "NY", 11795);
INSERT INTO locations (FN, LN, Address, City, State, Zip)
	VALUES ("Duane", "Burrell", "22 Van Buskirk Rd", "Teaneck", "NJ", 07666);
INSERT INTO locations (FN, LN, Address, City, State, Zip)
	VALUES ("Michael", "Caldarella", "108 Kemah-Mecca Lake Road", "Newton", "NJ", 07860);

-- Selecting all the data from the database and displaying it.
SELECT * FROM locations;

-- Selecting all the data from the database and displaying it.
SELECT * FROM locations WHERE State = 'NY';

-- Deletes the customer DATABASE.
DROP DATABASE intro;