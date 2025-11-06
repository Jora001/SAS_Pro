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



-- Selected all movies where the name matches the pattern 'Se_en' using LIKE.

SELECT * 
FROM movies
WHERE name LIKE 'Se_en';




-- Selected all movies where the name starts with 'A'.

SELECT * 
FROM movies
WHERE name LIKE 'A%';



-- Selected all movies where the name contains 'man' anywhere in the text.

SELECT * 
FROM movies
WHERE name LIKE '%man%';



-- Selected all movies where the name begins with 'The '.


SELECT * 
FROM movies 
WHERE name LIKE 'The %';



-- Selected movie names where the IMDb rating is not NULL.


-- Selected movie names where the IMDb rating is not NULL.

SELECT name
 FROM movies 
WHERE imdb_rating IS NOT NULL;



-- Selected movie names where the IMDb rating is NULL.
SELECT name 
FROM movies
 WHERE imdb_rating IS NULL;




-- Selected all movies released between 1990 and 1999 (inclusive).

SELECT *
FROM movies
WHERE year BETWEEN 1990 AND 1999;

-- Selected all movies whose names fall alphabetically between 'D' and 'G'.


SELECT *
FROM movies
WHERE name BETWEEN 'D' AND 'G';


-- Selected all movies released between 1970 and 1979.


SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979;



-- Selected romance movies released between 1990 and 1999.
SELECT * 
FROM movies
WHERE year BETWEEN 1990 AND 1999
   AND genre = 'romance';


-- Selected movies from the 1970s with an IMDb rating higher than 8.
SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979
  AND imdb_rating > 8;

-- Selected all horror movies released before 1985.


SELECT *
FROM movies
WHERE year < 1985
   AND genre = 'horror';


-- Selected all movies released after 2014 or belonging to the 'action' genre.
SELECT *
FROM movies
WHERE year > 2014
   OR genre = 'action';


-- Selected movies that are either in the 'romance' or 'comedy' genres.
SELECT *
FROM movies
WHERE genre = 'romance'
   OR genre = 'comedy';




-- Selected all columns from movies and sorted the results alphabetically by name.
 SELECT *
FROM movies
ORDER BY name;
-- Selected name and year columns from movies and sorted alphabetically by name.
  
SELECT name, year
FROM movies
ORDER BY name;


-- Selected name, year, and IMDb rating columns, sorting the results by IMDb rating in descending order.
SELECT name, year, imdb_rating
FROM movies
ORDER BY imdb_rating DESC;


-- Selected the first 10 movies from the table.
SELECT *
FROM movies
LIMIT 10;

-- Selected all movies and ordered them by IMDb rating in descending order.
SELECT *
FROM movies
ORDER BY imdb_rating DESC;

-- Selected the top 3 movies with the highest IMDb ratings.
 SELECT *
FROM movies
ORDER BY imdb_rating DESC
LIMIT 3;
