CREATE VIEW view1 AS
SELECT * FROM cars
WHERE cost < 25000;

ALTER VIEW view1 AS
SELECT * FROM cars
WHERE cost < 30000;

CREATE VIEW view2 AS
SELECT * FROM cars
WHERE name IN ('Skoda', 'Audi');
