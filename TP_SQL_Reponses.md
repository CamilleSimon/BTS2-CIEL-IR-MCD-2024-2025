CREATE TABLE "champion" (
	"champion_id" INTEGER NOT NULL,
	"name" VARCHAR NOT NULL,
	"title" VARCHAR,
	"lore" TEXT,
	"gender_id" INTEGER,
	"resource_id" INTEGER,
	"year_id" INTEGER,
	PRIMARY KEY ("champion_id"),
	FOREIGN KEY ("year_id") REFERENCES "years" ("year_id"),
	FOREIGN KEY ("resource_id") REFERENCES "resources" ("resource_id"),
	FOREIGN KEY ("gender_id") REFERENCES "genders" ("gender_id")
)
;
CREATE UNIQUE INDEX "champion_name_unique" ON "champion" ("name");
2)Ajout d'une colonne "popularity" à la table "champions"
ALTER TABLE "champions"
ADD "popularity" INTEGER; -- Permet de stocker une valeur de popularité pour chaque champion

3)-- Insertion des données pour le champion Fiddlesticks avec ses attributs
INSERT INTO "champions" 
("name", "title", "lore", "gender_id", "resource_id", "year_id", "popularity") 
VALUES 
('Fiddlesticks', 'The Ancient Fear', 
 'Something has awoken in Runeterra. Something ancient. Something terrible. The ageless horror known as Fiddlesticks stalks the edges of mortal society, drawn to areas thick with paranoia where it feeds upon terrorized victims. Wielding a jagged scythe, the haggard, makeshift creature reaps fear itself, shattering the minds of those unlucky enough to survive in its wake. Beware the sounding of the crow, or the whispering of the shape that appears almost human... Fiddlesticks has returned.', 
 (SELECT "gender_id" FROM "genders" WHERE "name" = 'Other'),
 (SELECT "resource_id" FROM "resources" WHERE "name" = 'Mana'),
 (SELECT "year_id" FROM "years" WHERE "year" = 2009), 
 5);

INSERT INTO "champion_specie" (champion_id, specie_id) VALUES (11, 9); 
INSERT INTO "champion_region" (champion_id, region_id) VALUES (11, 14); 
INSERT INTO "champion_range" (champion_id, range_id) VALUES (11, 2);    
INSERT INTO "champion_position" (champion_id, position_id) VALUES (11, 2);

4)Sélection de tous les champions, triés par nom
SELECT * FROM "champions" 
ORDER BY "name";-- Récupère tous les champions et les trie par nom

5)Sélection des champions dont le nom contient 'ar'
SELECT * FROM "champions" 
WHERE "name" LIKE '%ar%' -- Filtre les champions dont le nom contient la chaîne 'ar'

6)Ajout de popularité random pour chaque champion
UPDATE "champions" 
SET "popularity" = ABS(RANDOM() % 10) + 1  -- Fonction qui renvoie la valeur absolue d'un nombre.
WHERE champion_id BETWEEN 1 AND 10;

7)Suppression d'un champion, zoé en particulier parce qu'elle pénible à affronter au mid
DELETE  FROM "champions" 
WHERE "name" = "Zoe"

8)Sélection des noms de champions avec leurs positions
SELECT champions.name, positions.name
FROM champions
JOIN champion_position 		-- Lien entre champions et leur position
ON champions.champion_id = champion_position.champion_position_id
JOIN positions		-- Lien pour récupérer le nom de la position
ON champions.champion_id = positions.position_id
