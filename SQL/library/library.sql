-- 
-- SQL Library Database
-- Reuben Clemens
-- Due: 3-18-21
-- 

-- Creates a new database name library.
CREATE DATABASE library;

-- Opens the library database for data to be put in.
USE library;



-- Creates a table named books.
CREATE TABLE books (
-- Defines id as an integer(also becomes the primary key) and then uses auto increments which will increment with each new entry.
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
-- defines field as either VARCHAR or DATETIME.
	Title VARCHAR(100),
	Author VARCHAR(100),
	FN VARCHAR(50),
	LN VARCHAR(50),
	CD DATETIME,
	DD DATETIME);

-- Shows the structure of the table.
DESCRIBE books;

-- Inserts a record into the table. Uses the parameters in defined in the CREATE TABLE line.
INSERT INTO books(Title, Author, FN, LN, CD, DD)
-- Defines the values for the INSERT INTO.
	VALUES ('The Accidental Hero', 'Matt Myklusch', 'Reuben', 'Clemens', NOW(), DATE_ADD(CD, INTERVAL 3 WEEK)),
	('Heart of a Samurai', 'Margi Preus', 'Giancarlo', 'Nophal', NOW(), DATE_ADD(CD, INTERVAL 3 WEEK)),
	('Beginning PHP 5.3', 'Matt Doyle', 'Anthony', 'Rignoli', NOW(), DATE_ADD(CD, INTERVAL 3 WEEK)),
	('Gregor and the Curse of the Warmbloods', 'Suzanne Collins', 'Ian', 'Fanfair', NOW(), DATE_ADD(CD, INTERVAL 3 WEEK)),
	('Challenger Deep', 'Neal Shusterman', 'Andrew', 'Luna', NOW(), DATE_ADD(CD, INTERVAL 3 WEEK)),
	('The Once and Future King', 'T.H. White', 'Joseph', 'Moran', NOW(), DATE_ADD(CD, INTERVAL 3 WEEK)),
	('The Lightning Thief', 'Rick Riordan', 'James', 'Sanders', NOW(), DATE_ADD(CD, INTERVAL 3 WEEK)),
	('The City of Ember', 'Jeane DuPrau', 'Alex', 'Vazquez', NOW(), DATE_ADD(CD, INTERVAL 3 WEEK)),
	('The People of Sparks', 'Jeanne DuPrau', 'Abraham', 'Torres', NOW(), DATE_ADD(CD, INTERVAL 3 WEEK)),
	('Schindlers List', 'Thomas Keneally', 'Mahmud', 'Kandawala', NOW(), DATE_ADD(CD, INTERVAL 3 WEEK));

-- 1. All books in the database.
-- Wanted to try using line breaks in with the concat, I believe it looks good, it just shows a lot more though.
SELECT CONCAT(Title, ' by ', Author, Char(10), 'Checkout by: ', FN, ' ', LN, Char(10), 'Checkout: ', DATE_FORMAT(CD, '%M %d, %Y'), Char(10), 'Due date: ', DATE_FORMAT(DD, '%M %d, %Y'), Char(10))
	AS 'Displays all books in the database' FROM books;

-- 2. All books titles that start with the letter B.
SELECT CONCAT(Title, ' by ', Author, ', checkout by ', FN, ' ', LN, ', Checkout: ', DATE_FORMAT(CD, '%M %d, %Y'), ', Due date: ', DATE_FORMAT(DD, '%M %d, %Y'))
	AS 'Displays all books that start with the letter B' FROM books WHERE Title LIKE 'B%';

-- 3. All books in alphabetical order by title.
SELECT CONCAT(Title, ' by ', Author, ', checkout by ', FN, ' ', LN, ', Checkout: ', DATE_FORMAT(CD, '%M %d, %Y'), ', Due date: ', DATE_FORMAT(DD, '%M %d, %Y'))
	AS 'Books displayed in alphabetical order by title' FROM books ORDER BY Title;

-- 4. All books in alphabetical order by Author.
SELECT CONCAT(Title, ' by ', Author, ', checkout by ', FN, ' ', LN, ', Checkout: ', DATE_FORMAT(CD, '%M %d, %Y'), ', Due date: ', DATE_FORMAT(DD, '%M %d, %Y'))
	AS 'Books displayed in alphabetical order by Author' FROM books ORDER BY Author;

-- Deletes the database library.
DROP DATABASE library;