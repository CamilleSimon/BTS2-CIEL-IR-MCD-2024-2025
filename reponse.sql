1)
 CREATE TABLE champion
(
	champion_id int PRIMARY KEY NOT NULL,
	name VARCHAR NOT NULL UNIQUE,
	title VARCHAR,
	lore TEXT,
	gender_id int,
	resource_id int,
	year_id int,
	created_at DATETIME,
	updated_at DATETIME,
	popularity int,
	FOREIGN KEY (gender_id) references genders(gender_id),
	FOREIGN KEY (year_id) references years(year_id),
	FOREIGN KEY (resource_id) references resources(resource_id)
	)--crée une table champion avec les attribut suivant

2)
  ALTER TABLE champions ADD popularity int; --ajoute une colonne popularity à la table champions
3)
  on rajoute la region runeterra a la table regions

  INSERT INTO regions (region_id,name) VALUES ('14','Runeterra');

INSERT INTO champions (name,title,lore,gender_id,resource_id,year_id,popularity) VALUES ('Fiddlesticks','The Ancient Fear','Something has awoken in Runeterra. Something ancient. Something terrible. The ageless horror known as Fiddlesticks stalks the edges of mortal society, drawn to areas thick with paranoia where it feeds upon terrorized victims. Wielding a jagged scythe, the haggard, makeshift creature reaps fear itself, shattering the minds of those unlucky enough to survive in its wake. Beware the sounding of the crow, or the whispering of the shape that appears almost human... Fiddlesticks has returned.',3,1,1,5);
INSERT INTO champion_specie (champion_species_id,champion_id,specie_id) VALUES (15,11,9);
INSERT INTO champion_range (champion_range_id,champion_id,range_id) VALUES (12,11,2);
INSERT INTO champion_region (champion_region_id,champion_id,region_id) VALUES (15,11,14);

4)

SELECT * FROM champions ORDER BY name
