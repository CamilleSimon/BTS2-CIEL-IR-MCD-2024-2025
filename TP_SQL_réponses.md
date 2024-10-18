question 1:

	CREATE TABLE "champion" (
	
		"champion_id" INTEGER NOT NULL,
	 
		"name" VARCHAR NOT NULL,
	 
		"title" VARCHAR NULL,
	 
		"lore" TEXT NULL,
	 
		"gender_id" INTEGER NULL,
	 
		"resource_id" INTEGER NULL,
	 
		"year_id" INTEGER NULL,
	 
		PRIMARY KEY ("champion_id"),
	 
		CONSTRAINT "0" FOREIGN KEY ("year_id") REFERENCES "years" ("year_id") ON UPDATE NO ACTION ON DELETE SET NULL,
	 
		CONSTRAINT "1" FOREIGN KEY ("resource_id") REFERENCES "resources" ("resource_id") ON UPDATE NO ACTION ON DELETE SET NULL,
	 
		CONSTRAINT "2" FOREIGN KEY ("gender_id") REFERENCES "genders" ("gender_id") ON UPDATE NO ACTION ON DELETE SET NULL
	 
	);

CREATE UNIQUE INDEX "champion_name_unique" ON "champion" ("name");

question 2:

ALTER TABLE champions

ADD "popularity" INTEGER NOT NULL

question 3:

INSERT INTO champions

(name,title,lore,gender_id,resource_id,year_id,popularity)

VALUES

('Fiddlesticks','The Ancient Fear','Something has awoken in Runeterra. Something ancient. Something terrible. The ageless horror known as Fiddlesticks stalks the edges of mortal society, drawn to areas thick with paranoia where it 
feeds upon terrorized victims. Wielding a jagged scythe, the haggard, makeshift creature reaps fear itself, shattering the minds of those unlucky enough to survive in its wake. Beware the sounding of the crow, or the whispering of 
the shape that appears almost human... Fiddlesticks has returned.'

,3,1,1,5)

INSERT INTO champion_position (champion_id,position_id)

VALUES (11,2)

INSERT INTO champion_range (champion_id,range_id)

VALUES (11,2)

INSERT INTO champion_region (champion_id,region_id)

VALUES (11,14)

INSERT INTO champion_specie (champion_id,specie_id)

VALUES (11,9)

question 4:

SELECT name FROM champions

question 5:

SELECT * FROM champions

WHERE name LIKE '%ar%'

ORDER BY name

question 6:

UPDATE champions

SET popularity = (ABS(RANDOM()) % 10) + 1

WHERE champion_id BETWEEN 1 AND 10;

question 7 :

DELETE FROM champions

WHERE champion_id=12

question 8:

SELECT champions.name, positions.name 

FROM champions, positions,champion_position

WHERE champions.champion_id=champion_position.champion_id AND champion_position.position_id=positions.position_id


question 9:

SELECT resources.name, COUNT(champions.resource_id)

FROM champions,resources

WHERE champions.resource_id=resources.resource_id

GROUP BY resources.name

question 10:

SELECT champions.name,regions.name

FROM champions,regions,champion_region

WHERE champions.champion_id=champion_region.champion_id AND champion_region.region_id= regions.region_id AND regions.name = 'Runeterra'
