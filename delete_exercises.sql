USE codeup_test_db;

SELECT 'RELEASE DATE AFTER 1991' AS 'ALBUMS WITH A';
DELETE FROM albums WHERE release_date > 1991;
SELECT 'THE DISCO GENRE' AS 'ALBUMS WITH';
DELETE FROM albums WHERE genre = 'disco';
SELECT 'ARTIST "Various artists"' AS 'ALBUMS BY THE';
DELETE FROM albums WHERE artist = 'Various artists';

SELECT * FROM albums;