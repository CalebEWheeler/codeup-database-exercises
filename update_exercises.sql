USE codeup_test_db;

-- MAKE ALL ALBUMS 10X MORE POPULAR(sales * 10) --
-- SELECT 'ALL ALBUMS' AS 'IN TABLE';
-- SELECT name FROM albums;
-- SELECT * FROM albums;
-- UPDATE albums
-- SET sales = sales * 10;
-- SELECT 'SALES MULTIPLIED' AS 'BY 10';
-- SELECT * FROM albums;

-- MOVE ALL ALBUMS BEFORE 1980 BACK TO 1800'S --
-- SELECT 'ALBUMS RELEASED' AS 'BEFORE 1980';
SELECT name FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;
SELECT * FROM albums;

-- CHANGE 'Michael Jackson' to 'Peter Jackson' --
-- SELECT 'MICHAEL JACKSON' AS 'ALBUM LIST';
-- SELECT name FROM albums WHERE artist = 'Michael Jackson';
