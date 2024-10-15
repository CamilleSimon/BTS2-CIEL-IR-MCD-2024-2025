# TP SQL

## 1 :

CREATE TABLE championstest(
champion_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
lore VARCHAR(50),
FOREIGN KEY (gender_id) REFERENCES gender(gender_id),
FOREIGN KEY (resource_id) REFERENCES resource(resource_id),
FOREIGN KEY (year_id) REFERENCES year(year_id)
);

## 2 :

ALTER TABLE champions
ADD popularity INT;

## 3 :

INSERT INTO champions (name, title, lore, gender_id, resource_id, year_id, popularity)
VALUES ('Fiddlesticks', 'The Ancient Fear', 'Something has awoken in Runeterra. Something ancient. Something terrible. The ageless horror known as Fiddlesticks stalks the edges of mortal society, drawn to areas thick with paranoia where it feeds upon terrorized victims. Wielding a jagged scythe, the haggard, makeshift creature reaps fear itself, shattering the minds of those unlucky enough to survive in its wake. Beware the sounding of the crow, or the whispering of the shape that appears almost human... Fiddlesticks has returned.', 3, 1, 1, 5);

INSERT INTO champion_position (champion_id, position_id)
VALUES (11, 2);

INSERT INTO champion_range (champion_id, range_id)
VALUES (11, 2);

INSERT INTO regions (name, lore)
VALUES ('Runeterra', 'A meaning magic earth.');

INSERT INTO champion_region (champion_id, region_id)
VALUES (11, 14);

INSERT INTO champion_specie (champion_id, specie_id)
VALUES (11, 9);

## 4 :

SELECT * FROM champions;

## 5 :

SELECT * FROM champions WHERE name LIKE '%ar%';

## 6 :

UPDATE champions SET popularity = abs(RANDOM() % 10) +1;

## 7 :

DELETE FROM champions WHERE name = 'Fiddlesticks';

## 8 :

