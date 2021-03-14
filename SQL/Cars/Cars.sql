-- 
-- SQL Car Database
-- Reuben Clemens
-- Due: 1-25-21
-- 

-- Creates a new database name Cars.
CREATE DATABASE Cars;

-- Opens the Cars database for data to be put in.
USE Cars;

-- Creates a table named CarsData.
CREATE TABLE CarsData (
-- Defines id as an integer(also becomes the primary key) and then uses auto increments which will increment with each new entry.
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
-- defines field as either INTEGER, TEXT, VARCHAR, and DECIMAL.
	Year INTEGER,
	Make VARCHAR(30),
	Model VARCHAR(30),
	Cycl INTEGER,
	Engine DECIMAL,
	MPG INTEGER,
	Price INTEGER,
	Doors INTEGER);

-- Used to create index on table, retrieves data from database more quickly.
CREATE INDEX idx_Make on CarsData(Make);
CREATE INDEX idx_Model on CarsData(Model);

-- Shows the structure of the table.
DESCRIBE CarsData;

-- Inserts a record into the table. Uses the parameters in defined in the CREATE TABLE line.
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
-- Defines the values for the INSERT INTO.
	VALUES ("2012", "Nissan", "Versa", "4", "1.6", "31", "10990", "4");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2013", "Nissan", "Versa", "4", "1.6", "31", "11990", "4");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2013", "Chevrolet", "Spark", "4", "1.2", "35", "12185", "2");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2013", "Smart", "Fortwo", "3"," 1", "36", "12490", "2");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2012", "Hyundai", "Accent", "4", "1.6", "32", "12545", "4");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2013", "Ford", "Fiesta", "4", '1.6', "33", "13400", "4");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2012", "Kia", "Rio", "4", "1.6", "33", "13600", "4");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2012", "Kia", "Rio5", '4', "1.6", "33", "13600", "4");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2012", "Fiat", "500", '4', "1.4", "34", "15500", "2");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2012", "VW", "Jetta", "4", "2", "29", "15515", "4");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2013", "VW", "Jetta", "4", "2", "29", "15454", "4");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2012", "Mitsubishi", "Lancer", "4", "2", "29", "15695", "4");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2013", "Scion", "xD", "4", "1.8", "30", "15745", "4");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2013", "Dodge", "Grand Caravan", "6", "3.6", "21", "22030", "4");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2013", "Nissan", "Frontier", "6", "4", "19", "22030", "4");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2013", "Ford", "Mustang", "6", "3.7", "24", "22200", "2");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2012", "Ferrari", "California", '8', "4.3", "16", "195840", "2");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2013", "Ferrari", "California", "8", "4.3", "16", "198190", "2");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2013", "Mercedes", "SLS-AMG", "8", "6.2", "16", "199500", "2");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2012", "Ferrari", "458 Italia", "8", "4.5", "15", "229825", "2");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2012", "Bentley", "Mulsanne", "8", "6.8", "14", "290000", "4");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2013", "Nissan", "GT-R", "6", "3.8", "19", "96820", "2");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2012", "BMW", "ActiveHybrid 750", "6", "3.8", "19", "96820", "2");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2013", "BMW", "M6", "8", "4.4", "17", "108350", "2");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2013", "Audi", "S8", "8", "4", "20", "110000", "4");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2013", "Lexus", "LX 570", "8", "5.7", "14", "81530", "4");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2013", "BMW", "750", "8", "4.4", "21", "86800", "4");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2012", "BMW", "ActiveHybrid 5", "6", "3", "26", "60950", "4");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2012", "VW", "Touareg Hybrid", "6", "3", "22", "61995", "4");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2012", "Lotus", "Evora", "6", "3.5", "22", "66100", "2");
INSERT INTO CarsData (Year, Make, Model, Cycl, Engine, MPG, Price, Doors)
	VALUES ("2012", "Porsche", "Cayenne Hybrid", "6", "3", "22", "69000", "4"); 

-- 1. All cars that are American made.
-- Uses a Where statement for make and continues on the filter by using or.
SELECT * FROM CarsData WHERE Make = "Chevrolet" OR Make = "Ford" OR Make = "Scion" OR Make = "Dodge";

-- 2. All cars that are German made.
-- Uses a Where statement for make and continues on the filter by using or.
SELECT * FROM CarsData WHERE Make = "VW" OR Make = "Smart" OR Make = "Mercedes" OR Make = "BMW" OR Make = "Audi" OR Make = "Porsche";

-- 3. All cars with at least 20 MPG and sorted by price in ascending order.
-- Uses a Where statement for MPG where it finds the data with more or equal to 20 MPG. Orders by price ASC.
SELECT * FROM CarsData WHERE MPG >= 20 ORDER BY Price ASC;

-- 4. All cars that are priced > 10K and < 20K sorted by model name descending order.
-- Uses a Where statement for price where if it is over 10000. sorts by model in desc order.
SELECT * FROM CarsData WHERE Price > 10000 AND Price < 20000 ORDER BY Model DESC;

-- 5. All cars that are priced > 20K and < 30K sorted by price in ascending order.
-- Uses a Where statement for price where if it is over 10000. sorts by model in asc order.
SELECT * FROM CarsData WHERE Price > 20000 AND Price < 30000 ORDER BY Price ASC;

-- 6. All cars that priced > 30K sorted by MPG in ascending order.
--  Uses a Where statement where price is over 30000 and orders by MPG asc order.
SELECT * FROM CarsData WHERE Price > 30000 ORDER BY MPG ASC;

-- 7. All German cars sorted by make ascending order that is 6 cylinders.
-- Uses a Where statement where Cycle has to equal 6 and uses an and statement to combine the make = "" OR inside of the paranthesis. Orders make by asc.
SELECT * FROM CarsData WHERE Cycl = 6 AND (Make = "VW" OR Make = "Smart" OR Make = "Mercedes" OR Make = "BMW" OR Make = "Audi" OR Make = "Porsche") ORDER BY Make ASC;

-- 8. All cars that get over 30 MPG sorted by model descending order.
-- Uses a Where statement where MPG has to be higher than 30 and is ordered by model in desc order.
SELECT * FROM CarsData WHERE MPG > 30 ORDER BY Model DESC;

-- 9. All cars that get < 20 MPG sorted by price descending order.
-- Uses a Where statement where MPG is less than 20 and is ordered by price in desc order.
SELECT * FROM CarsData WHERE MPG < 20 ORDER BY Price DESC;

-- 10. All 8 cylinder cars sorted by make descending order.
-- Uses a Where statement where cycl has to equal 8 and is sorted by make in desc order.
SELECT * FROM CarsData WHERE Cycl = 8 ORDER BY make DESC;

-- 11. All cars sorted by make descending and model ascending order.
--  Uses a order by twice for make in desc, and mdoel in asc.
SELECT * FROM CarsData ORDER BY Make DESC, Model ASC;

DROP DATABASE Cars;