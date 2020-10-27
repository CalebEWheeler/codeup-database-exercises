USE codeup_test_db;

SELECT 'RELEASE DATE AFTER 1991' AS 'ALBUMS WITH A';
SELECT * FROM albums WHERE release_date > 1991;
SELECT 'THE DISCO GENRE' AS 'ALBUMS WITH';
SELECT * FROM albums WHERE genre = 'disco';
SELECT 'ARTIST "Various artists"' AS 'ALBUMS BY THE';
SELECT * FROM albums WHERE artist = 'Various artists';