USE codeup_test_db;

-- SELECT 'ALL ALBUMS' AS 'IN TABLE';
-- SELECT name FROM albums;

-- SELECT 'ALBUMS RELEASED' AS 'BEFORE 1980';
-- SELECT name FROM albums WHERE release_date < 1980;

SELECT 'MICHAEL JACKSON' AS 'ALBUM LIST';
SELECT name FROM albums WHERE artist = 'Michael Jackson';
