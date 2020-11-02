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
    user_id INT UNSIGNED,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES user(id)
);

INSERT INTO ad(title, description, user_id)
VALUES ('ASUS monitor', 'ASUS 24" gaming monitor', 1),
       ('5" custom exhaust tip', 'custom made powder-coated 5" exhaust tip with 4" inlet', 1),
       ('lawn mower', 'husquevarna lawn mower build date 2012 - lightly used', 2),
       ('weed eater', 'stihl battery operated weed eater', 2),
       ('Dyson V8', 'Dyson animal V8 - comes with all attachments and manufacturer information', 4),
       ('Hand Washing Set', 'lightly used hand washing drying rack with scrub brushes for tall glasses and a 6pack of steel wool', 4),
       ('Logitech Keyboard', 'Logitech gaming rgb keyboard', 3),
       ('Kenwood head unit', 'double din 2019 Kenwood stereo with touch screen', 3);

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

SELECT email
FROM user AS u
JOIN ad ON ad.user_id = u.id
WHERE ad.id = '7';

SELECT name
FROM category AS c
JOIN ad_category AS adc ON adc.category_id = c.id
JOIN ad ON ad.id = adc.ad_id
WHERE ad.id = '4';

SELECT *
FROM ad
JOIN ad_category AS adc ON adc.ad_id = ad.id
JOIN category AS c ON c.id = adc.category_id
WHERE c.id = '4';


SELECT *
FROM ad
WHERE user_id = '2';
