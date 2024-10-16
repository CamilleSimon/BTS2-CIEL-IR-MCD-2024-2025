-- Réponse question 1 :
CREATE TABLE champions(
  champion_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  lore VARCHAR(50),
  FOREIGN KEY (gender_id) REFERENCES genders(gender_id),
  FOREIGN KEY (resource_id) REFERENCES resources(resource_id),
  FOREIGN KEY (year_id) REFERENCES years(year_id),
  
-- Réponse question 2 :
INSERT INTO champions
ADD popularity INT;

-- Réponse question 3 :
INSERT INTO champions(name,title,lore,gender_id,resource_id,year_id,popularity)
VALUES
('Fiddlesticks','The Ancient Fear','Something has awoken in Runeterra. Something ancient. Something terrible. The ageless horror known as Fiddlesticks stalks the edges of mortal society, drawn to areas thick with paranoia where it feeds upon terrorized victims. Wielding a jagged scythe, the haggard, makeshift creature reaps fear itself, shattering the minds of those unlucky enough to survive in its wake. Beware the sounding of the crow, or the whispering of the shape that appears almost human... Fiddlesticks has returned.','3','1','1','5');

INSERT INTO champion_position(champion_id,position_id)
VALUES
('11','2');

INSERT INTO champion_range(champion_id,range_id)
VALUES
('11','2');

INSERT INTO regions(name,lore)
VALUES
('Runeterra','');

INSERT INTO champion_region(champion_id,region_id)
VALUES
('11','14');

INSERT INTO champion_specie(champion_id,specie_id)
VALUES
('11','9');

-- Réponse question 4 :
SELECT * FROM champions order by name

-- Réponse question 5 :
SELECT * FROM champions WHERE name LIKE '%ar%';

-- Réponse question 6 :
UPDATE champions SET popularity = abs(RANDOM() % 10) +1;
  
-- Réponse question 7 :
DELETE FROM champions WHERE name = 'Rengar';

-- Réponse question 8 :
SELECT champions."name", group_concat(positions."name")
FROM champions
JOIN champion_position
ON champions.champion_id = champion_position.champion_id
JOIN positions
ON champion_position.position_id = positions.position_id
GROUP BY (champions."name")

-- Réponse question 9 :
SELECT distinct(resources."name")
FROM champions, resources
WHERE champions.resource_id = resources.resource_id
-- incomplet
