USE codeup_test_db;

-- Write queries to find the following info, before each item output a caption explaining the results

-- name of albums by Pink Floyd
SELECT 'ALBUMS BY PINK FLOYD' AS 'INFO';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

-- year Sgt. Pepper's Lonely Hearts Club Band was released
-- SELECT 'SGT. PEPPERS LONELY HEART''S ClUB BAND' AS 'YEAR RELEASED';
-- SELECT release_date FROM albums WHERE `name` = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- genre for Nevermind
-- SELECT 'NEVERMIND' AS 'GENRE FOR';
-- SELECT genre FROM albums WHERE `name` = 'Nevermind';

-- albums released in 1990's
-- SELECT 'RELEASED' AS 'ALBUMS FROM 1990''s';
-- SELECT name FROM albums WHERE release_date > 1989 && release_date < 2000;

-- albums less than 20mill sales
-- SELECT 'LESS THAN 20 MILLION' AS 'ALBUM SALES';
-- SELECT name FROM albums WHERE sales < 20;

-- albums with genre "Rock"
-- SELECT 'Rock' AS 'Genre';
