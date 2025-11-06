
--  COUNT()-- : հաշվել տողերի քանակը
-- SUM()  սյունակում արժեքների գումարը
-- MAX() սյունակում ամենամեծ արժեքը
-- MIN() սյունակում ամենափոքր արժեքը
-- AVG()  սյունակում արժեքների միջին արժեքը
-- ROUND()  սյունակում թվերը կլորացնում է նշված տասնորդական տեղերի քանակով



-- Counted how many apps are free (price = 0).
SELECT COUNT(*)
 FROM fake_apps
  WHERE price = 0;

-- Calculated the total number of downloads across all apps.
SELECT SUM(downloads) FROM fake_apps;

-- Retrieved the minimum number of downloads from the fake_apps table.
SELECT MIN(downloads)

 FROM fake_apps;

-- Retrieved the maximum price from the fake_apps table.
SELECT MAX(price)
 FROM fake_apps;

-- Calculated the average number of downloads across all apps.
SELECT AVG(downloads)
FROM fake_apps;


-- Calculated the average price of all apps.
 SELECT AVG(price)
 FROM fake_apps;





 -- Selected app names and rounded their prices to the nearest whole number.
SELECT name, ROUND(price, 0)
FROM fake_apps;

-- Calculated the average price of all apps.
SELECT AVG(price)
FROM fake_apps;

-- Calculated the average price of all apps and rounded it to 2 decimal places.

SELECT ROUND(AVG(price), 2)
FROM fake_apps;



-- IMDb averages by year
SELECT AVG(imdb_rating) FROM movies WHERE year = 1999;
SELECT AVG(imdb_rating) FROM movies WHERE year = 2000;
SELECT AVG(imdb_rating) FROM movies WHERE year = 2001;

-- Group by year
SELECT year, AVG(imdb_rating)
FROM movies
GROUP BY year
ORDER BY year;

-- Group fake_apps by price
SELECT price, COUNT(*) 
FROM fake_apps
GROUP BY price;



SELECT price, COUNT(*) 
FROM fake_apps

WHERE downloads > 20000

GROUP BY price;



SELECT ROUND(imdb_rating),
   COUNT(name)
FROM movies
GROUP BY 1
ORDER BY 1;
SELECT category, 
   price,

   AVG(downloads)
FROM fake_apps
GROUP BY category, price;



-- Select price, average downloads (rounded), and count of apps for each price
-- ROUND(AVG(downloads)) rounds the average downloads to the nearest integer
-- COUNT(*) counts the number of apps for each price

SELECT price, 
       ROUND(AVG(downloads)),
       COUNT(*)
FROM fake_apps

GROUP BY price

HAVING COUNT(*) > 10;
