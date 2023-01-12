-- SELECT cats.name, COUNT(toys.cat_id) AS toy_count, cats.id, birth_year
-- FROM cats
-- JOIN toys
-- ON cats.id = toys.cat_id
-- GROUP BY cats.id;

SELECT cats.name, COUNT(toys.cat_id) AS toy_count, cats.id, birth_year
FROM cats
JOIN toys
ON cats.id = toys.cat_id
WHERE cats.name = "Garfield";


-- SELECT toys.name
-- FROM toys
-- JOIN cats ON toys.cat_id = cats.id
-- WHERE cats.name = 'Garfield';
-- -- Cheetos


-- INSERT INTO toys (name, cat_id)
-- VALUES ('Pepperoni', (SELECT id FROM cats WHERE name = 'Garfield'));


-- SELECT toys.name
-- FROM toys
-- WHERE toys.cat_id = (SELECT id FROM cats WHERE name = 'Garfield');
-- -- Cheetos
-- -- Pepperoni


-- bonus: Give all cats born before the year 2013 a new toy named "Cat Bed" using a subquery.
INSERT INTO toys (cat_id, name) 
VALUES (
    (
        SELECT id
        FROM cats
        WHERE birth_year<2013
    ), 'Sardines'
);




-- INSERT INTO toys (name, cat_id)
-- SELECT 'Cat Bed', id
-- FROM cats
-- WHERE birth_year < 2013;


SELECT toys.name
FROM toys
WHERE toys.cat_id = (SELECT id FROM cats WHERE name = 'Garfield');
-- Cheetos
-- Pepperoni

-- SELECT cats.name, toys.name
-- FROM cats
-- JOIN toys ON cats.id = toys.cat_id
-- WHERE cats.name IN ('Tiger', 'Oscar', 'Garfield') AND toys.name = 'Cat Bed';

SELECT cats.name, toys.name
FROM cats
JOIN toys ON cats.id = toys.cat_id
WHERE cats.name IN ('Tiger', 'Oscar', 'Garfield') AND toys.name = 'Cat Bed';


CREATE TABLE cats_backup(id,name,cat_id)
SELECT id,name,birth_year
FROM cats

INSERT INTO cats_backup
SELECT * FROM cats;


CREATE TABLE toys_backup(id,name,cat_id)
SELECT id,name,birth_year
FROM toys

INSERT INTO toys_backup
SELECT * FROM toys;