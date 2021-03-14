-- 
-- SQL Table Assignment #2
-- Reuben Clemens
-- Due: 12-18-20
-- 

-- Creates a new database name customer.
CREATE DATABASE customer;

-- Goes into customer database.
USE customer;

-- Creates the table
CREATE TABLE customerData (
-- defines id as an integer and primary key. Will auto increment the id value.
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
-- defines parameter(the ones inside brackets for insert) by either text or integer.
	LN VARCHAR(50),
	FN VARCHAR(50),
	Street VARCHAR(50),
	City VARCHAR(50),
	State VARCHAR(50),
	Zip VARCHAR(50),
	Birth_Date DATE,
	Telephone_Number VARCHAR(50));

-- Used to create index on table, retrieves data from database more quickly.
CREATE INDEX idx_LN on customerData(LN);
CREATE INDEX idx_State on customerData(State);

-- Shows the structure of the table.
DESCRIBE customerData;

-- Inserts a record into the table. Uses the previous parameters defined in the tables creation.
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
-- Defines the values for the records using the values placed in the brackets.
	VALUES ("Customer1", "Person1", "1 Street", "Blank City1", "Blank State1", "00011", "1981-02-02", "203-594-6421");
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
	VALUES ("Customer2", "Person2", "2 Street", "Blank City2", "Blank State2", "00022", "1981-04-24", "203-395-8325");
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
	VALUES ("Customer3", "Person3", "3 Street", "Blank City3", "Blank State3", "00033", "1982-03-09", "203-431-2851");
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
	VALUES ("Customer4", "Person4", "5 Street", "Blank City2", "Blank State1", "00021", "1982-12-30", "203-548-3984");
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
	VALUES ("Customer5", "Person5", "2 Street", "Blank City3", "Blank State2", "00032", "1983-08-08", "203-784-3624");
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
	VALUES ("Customer6", "Person6", "3 Street", "Blank City1", "Blank State1", "00011", "1985-04-05", "203-738-1386");
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
	VALUES ("Customer7", "Person7", "1 Street", "Blank City3", "Blank State3", "00033", "1986-05-02", "203-673-9364");
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
	VALUES ("Customer8", "Person8", "5 Street", "Blank City1", "Blank State2", "00012", "1986-05-26", "203-647-7593");
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
	VALUES ("Customer9", "Person9", "7 Street", "Blank City2", "Blank State3", "00023", "1987-10-19", "203-978-3185");
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
	VALUES ("Customer10", "Person10", "6 Street", "Blank City1", "Blank State1", "00011", "1988-02-09", "203-154-4978");
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
	VALUES ("Customer11", "Person11", "2 Street", "Blank City3", "Blank State2", "00032", "1988-08-16", "203-465-9438");
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
	VALUES ("Customer12", "Person12", "8 Street", "Blank City2", "Blank State1", "00021", "1989-12-18", "203-148-1268");
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
	VALUES ("Customer13", "Person13", "9 Street", "Blank City3", "Blank State3", "00033", "1990-04-18", "203-275-7952");
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
	VALUES ("Customer14", "Person14", "10 Street", "Blank City2", "Blank State1", "00021", "1991-02-04", "203-528-3782");
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
	VALUES ("Customer15", "Person15", "6 Street", "Blank City1", "Blank State2", "00011", "1992-11-16", "203-857-2719");
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
	VALUES ("Customer16", "Person16", "7 Street", "Blank City3", "Blank State3", "00033", "1997-03-11", "203-631-4812");
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
	VALUES ("Customer17", "Person17", "9 Street", "Blank City1", "Blank State1", "00011", "1997-09-15", "203-914-9816");
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
	VALUES ("Customer18", "Person18", "8 Street", "Blank City2", "Blank State1", "00021", "1998-12-23", "203-635-6285");
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
	VALUES ("Customer19", "Person19", "10 Street", "Blank City1", "Blank State2", "00012", "1999-05-24", "203-453-8724");
INSERT INTO customerData (LN, FN, Street, City, State, Zip, Birth_Date, Telephone_Number)
	VALUES ("Customer20", "Person20", "5 Street", "Blank City3", "Blank State2", "00032", "1999-06-02", "203-239-6941");

-- Selecting all the data from the database and displaying it.
SELECT * FROM customerData;

-- Deletes the customer DATABASE.
DROP DATABASE customer;