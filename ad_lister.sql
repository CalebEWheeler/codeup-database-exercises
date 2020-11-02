DROP DATABASE IF EXISTS adLister_app;
SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS adLister_app;
USE adLister_app;

CREATE TABLE user
(
    id    INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(50)  NOT NULL,
    pass  VARCHAR(20)  NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO user(email, pass)
VALUES ('caleb.example@gmail.com', 'calebPW'),
       ('ryan.example@gmail.com', 'ryanPW'),
       ('donelle.example@gmail.com', 'donellePW'),
       ('chris.example@gmail.com', 'chrisPW');

CREATE TABLE ad
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title       VARCHAR(50),
    description TEXT,
    ad_id INT UNSIGNED,
    PRIMARY KEY (id),
    FOREIGN KEY (ad_id) REFERENCES user(id)
);

INSERT INTO ad(title, description)
VALUES ('ASUS monitor', 'ASUS 24" gaming monitor'),
       ('5" custom exhaust tip', 'custom made powder-coated 5" exhaust tip with 4" inlet'),
       ('lawn mower', 'husquevarna lawn mower build date 2012 - lightly used'),
       ('weed eater', 'stihl battery operated weed eater'),
       ('Dyson V8', 'Dyson animal V8 - comes with all attachments and manufacturer information'),
       ('Hand Washing Set', 'lightly used hand washing drying rack with scrub brushes for tall glasses and a 6pack of steel wool'),
       ('Logitech Keyboard', 'Logitech gaming rgb keyboard'),
       ('Kenwood head unit', 'double din 2019 Kenwood stereo with touch screen');

CREATE TABLE category
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO category(`name`)
VALUES ('lawn equipment'),
       ('electronics'),
       ('auto parts'),
       ('home goods');

CREATE TABLE user_ad
(
    user_id INTEGER UNSIGNED NOT NULL,
    ad_id   INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user (id),
    FOREIGN KEY (ad_id) REFERENCES ad (id)
);

INSERT INTO user_ad
VALUES (1, 1),
       (1, 2),
       (2, 3),
       (2, 4),
       (4, 7),
       (4, 8),
       (3, 5),
       (3, 6);

CREATE TABLE ad_category
(
    ad_id       INTEGER UNSIGNED NOT NULL,
    category_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ad (id),
    FOREIGN KEY (category_id) REFERENCES category (id)
);

INSERT INTO ad_category(ad_id, category_id)
VALUES (1, 2),
       (2, 3),
       (3, 1),
       (4, 1),
       (4, 2),
       (5, 2),
       (5, 4),
       (6, 4),
       (7, 2),
       (8, 2),
       (8, 3);
