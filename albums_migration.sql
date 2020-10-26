DROP DATABASE IF EXISTS codeup_test_db;
CREATE DATABASE codeup_test_db;
USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
artist CHAR(50) NOT NULL,
name CHAR(100) NOT NULL,
release_date DATE,
sales DOUBLE,
genre CHAR(150) NOT NULL,
PRIMARY KEY (id)
)