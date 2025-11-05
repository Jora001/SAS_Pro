-- CREATE TABLE
-- Preview: Docs Creates a new table within a database.
-- ստեղծում է նոր աղյուսակ։
-- INSERT INTO
-- Նախադիտում. Փաստաթղթեր Բեռնվում է հղման նկարագրությունը
-- աղյուսակին նոր տող է ավելացնում։
-- SELECT
-- Նախադիտում. Փաստաթղթեր Բեռնվում է հղման նկարագրությունը
-- հարցումներ է կատարում աղյուսակից։
-- ALTER TABLE
-- Նախադիտում. Փաստաթղթեր Բեռնվում է հղման նկարագրությունը
-- փոփոխում է առկա աղյուսակը։
-- UPDATE
-- Նախադիտում. Փաստաթղթեր Բեռնվում է հղման նկարագրությունը
-- խմբագրում է աղյուսակի տողը։
-- DELETE FROM
-- Նախադիտում. Փաստաթղթեր Բեռնվում է հղման նկարագրությունը
-- ջնջում է տողերը աղյուսակից։



--1) selecting all rows and creating a sample table.

SELECT * FROM celebs;

CREATE TABLE table_name (
   column_1 data_type, 
   column_2 data_type, 
   column_3 data_type
);

--2) Created a table named 'celebs' with columns for ID, name, and age.

CREATE TABLE celebs (
   id INTEGER, 
   name TEXT, 
   age INTEGER
); 


--3) Inserted sample records into the 'celebs' table with ID, name, and age values.

INSERT INTO celebs (id, name, age)
VALUES (1, 'Justin Bieber', 29); 

INSERT INTO celebs (id, name, age)
VALUES (2, 'Beyonce Knowles', 42);


INSERT INTO celebs (id, name, age)
VALUES (3, 'Jeremy Lin', 35);

INSERT INTO celebs (id, name, age)
VALUES (4, 'Taylor Swift', 33);

--4) Added a new column 'twitter_handle' to the 'celebs' table and displayed all records.

ALTER TABLE celebs
ADD COLUMN twitter_handle TEXT;

SELECT * FROM celebs;

--5) Updated Taylor Swift's record by adding her Twitter handle, then displayed all records.

UPDATE celebs
SET twitter_handle = '@taylorswift13'
WHERE id = 4;
SELECT * FROM celebs; 

--6) Deleted all records where the Twitter handle is NULL, then displayed the remaining records.

DELETE FROM celebs
WHERE twitter_handle IS NULL;

SELECT * FROM celebs;


--7) Created an 'awards' table with an ID as the primary key, a required recipient name, and a default award name 'Grammy'.


CREATE TABLE awards (
  id INTEGER PRIMARY KEY,
  recipient TEXT NOT NULL,
  award_name TEXT DEFAULT 'Grammy'
);
