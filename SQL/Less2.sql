--1) Selected all columns from the 'browse' table, displaying only the first 10 records.

SELECT *
FROM browse
LIMIT 10;



-- Selected specific columns (column1, column2) from a table.

SELECT column1, column2
FROM Table_name
-- Selected the name and genre columns from the 'movies' table.

SELECT name, genre 
FROM movies;


-- Renamed the 'name' column to 'Titles' when selecting from the movies table.

SELECT name AS 'Titles'
FROM movies;

-- Selected the 'name' column and used an alias placeholder for renaming.

SELECT name AS '______'
FROM movies;


-- Selected all unique genres from the movies table using DISTINCT.
SELECT DISTINCT genre 
FROM movies;


SELECT DISTINCT year 
FROM movies;


-- Selected all movies released after 2014.
SELECT * 
FROM movies 
WHERE year > 2014;


-- Selected all movies with an IMDb rating lower than 5.
SELECT * 
FROM movies 
WHERE imdb_rating < 5;



-- =հավասար է
-- (!=հավասար չէ
-- >մեծ է, քան
-- <պակաս քան
-- >=մեծ կամ հավասար
-- <=փոքր կամ հավասար