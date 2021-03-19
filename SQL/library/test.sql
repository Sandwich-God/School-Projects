-- Creates a new database name library.
CREATE DATABASE library;

-- Opens the library database for data to be put in.
USE library;


-- Shows the structure of the table.
DESCRIBE books;

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
-- Title, ' by ', Author, Char(10), 'Checkout by: ', FN, ' ', LN, Char(10), 'Checkout: ', DATE_FORMAT(CD, '%M %d %Y'), Char(10), 'Due date: ', DATE_FORMAT(DD, '%M %d, %Y'), Char(10)

INSERT INTO books(Title, Author, FN, LN, CD, DD)
	VALUES ('The Accidental Hero', 'Matt Myklusch', 'Reuben', 'Clemens', null, null),
	('', '', '', '', null, null);

UPDATE books SET CD = NOW(), DD = DATE_ADD(CD, INTERVAL 3 WEEK) WHERE id = 1;

SELECT * FROM books;

DROP DATABASE library;