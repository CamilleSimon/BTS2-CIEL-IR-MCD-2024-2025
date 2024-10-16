CREATE TABLE champion ( 
	champion_id INT PRIMARY KEY AUTOINCREMENT,
	name varchar(50) UNIQUE,
	lore TEXT,
	title varchar(50),
	popularity INT,
	gender_id INT,
	resource_id INT,
	year_id INT,champion
	FOREIGN KEY (gender_id) REFERENCES gender(gender_id),
	FOREIGN KEY (resource_id) REFERENCES resource(resource_id),
	FOREIGN KEY (year_id) REFERENCES year(year_id)
);


ALTER TABLE champions
ADD popularity INT

INSERT INTO champions(champion_id, name, title, lore, gender_id, resource_id, year_id, popularity) VALUES (11, 'Fiddlesticks','The Ancient Fear', 'Something has awoken in Runeterra. Something ancient. Something terrible.',3,1,1,5);
INSERT INTO regions (name) VALUES ('Runeterra');
INSERT INTO champion_range (champion_range_id, champion_id, range_id) VALUES (12,11,2);
INSERT INTO champion_region(champion_region_id, champion_id, region_id) VALUES (15,11,14);
INSERT INTO champion_position(champion_position_id, champion_id, position_id) VALUES (15, 11, 4);
INSERT INTO champion_specie(champion_species_id, champion_id, specie_id) VALUES (15, 11, 9);

SELECT * FROM champions ORDER BY name ASC;

SELECT * FROM champions WHERE NAME LIKE '%ar%';

UPDATE champions
SET popularity = ABS(RANDOM() % 10) + 1;
