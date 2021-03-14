-- 
-- SQL Hotel Database
-- Reuben Clemens
-- Due: 3-12-21
-- 

-- Creates a new database name hotel.
CREATE DATABASE hotel;

-- Opens the hotel database for data to be put in.
USE hotel;

-- Creates a table named roomStatus.
CREATE TABLE roomStatus (
-- Defines id as an integer(also becomes the primary key) and then uses auto increments which will increment with each new entry.
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
-- defines field as either INTEGER or VARCHAR.
	RoomNumber INTEGER,
	Occupied VARCHAR(1),
	Housekeeping VARCHAR(1),
	Type VARCHAR(20));

-- Used to create index on table, retrieves data from database more quickly.
CREATE INDEX idx_roomStatus on roomStatus(RoomNumber);

-- Shows the structure of the table.
DESCRIBE roomStatus;

-- Inserts a record into the table. Uses the parameters in defined in the CREATE TABLE line.
INSERT INTO roomStatus (RoomNumber, Occupied, Housekeeping, Type)
-- Defines the values for the INSERT INTO.
	VALUES (300, 'Y', 'N', 'Suite'),
	(310, 'N', 'N', 'Suite'),
	(475, 'Y', 'Y', 'King'),
	(477, 'N', 'Y', 'Queen'),
	(578, 'Y', 'Y', 'Double'),
	(1200, 'Y', 'Y', 'Single'),
	(1201, 'Y', 'Y', 'Single'),
	(1000, 'N', 'N', 'Queen'),
	(1100, 'Y', 'Y', 'Double'),
	(344, 'Y', 'N', 'Suite'),
	(299, 'N', 'N', 'King'),
	(888, 'Y', 'Y', 'Queen'),
	(932, 'N', 'N', 'King'),
	(1501, 'Y', 'Y', 'Queen'),
	(399, 'N', 'Y', 'Suite'),
	(1700, 'Y', 'Y', 'King'),
	(1766, 'Y', 'Y', 'Double'),
	(1753, 'N', 'N', 'Double');

-- Display all Kings that are clean (room #, Type)
-- Displays RoomNumber and Type where the Type equals 'King' and Housekeeping equals 'Y'.
SELECT RoomNumber, Type FROM roomStatus WHERE Type = 'King' AND Housekeeping = 'Y';

-- Display all rooms that Occupied (room #, Type, housekeeping)
-- Displays RoomNumber, Type, and Housekeeping where Occupied equals 'Y'.
SELECT RoomNumber, Type, Housekeeping FROM roomStatus WHERE Occupied = 'y';

-- Display all dirty rooms (room #, Occupied, Type)
-- Displays RoomNumber, Occupied, and Type where Housekeeping equals 'Y'.
SELECT RoomNumber, Occupied, Type FROM roomStatus WHERE Housekeeping = 'N';

-- Display all suites (entire record except ID)
-- Displays RoomNumber, Occupied, Housekeeping, and Type where Type equals 'Suite'.
SELECT RoomNumber, Occupied, Housekeeping, Type FROM roomStatus WHERE Type = 'Suite';

-- Display all rooms sorted by room number and room Type (entire record except ID)
-- Displays RoomNumber, Occpied, Housekeeping, and Type orders RoomNumber and Type by ASC.
SELECT RoomNumber, Occupied, Housekeeping, Type FROM roomStatus ORDER BY RoomNumber, Type;

-- Display all unoccupied rooms that need cleaning (room #, Type)
-- Displays RoomNumber and Type where Occupied equals 'N' and Housekeeping equals 'N'.
SELECT RoomNumber, Type FROM roomStatus WHERE Occupied = 'N' AND Housekeeping = 'N';


-- Deletes the database named hotel.
DROP DATABASE hotel;