--1. Création d'une table

CREATE TABLE "champion" (
	"champion_id" INTEGER NOT NULL,
	"name" VARCHAR NOT NULL,
	"title" VARCHAR NULL,
	"lore" TEXT NULL,
	"gender_id" INTEGER NULL,
	"resource_id" INTEGER NULL,
	"year_id" INTEGER NULL,
	"created_at" DATETIME NULL,
	"updated_at" DATETIME NULL,
	PRIMARY KEY ("champion_id"),
	CONSTRAINT "0" FOREIGN KEY ("year_id") REFERENCES "years" ("year_id") ON UPDATE NO ACTION ON DELETE SET NULL,
	CONSTRAINT "1" FOREIGN KEY ("resource_id") REFERENCES "resources" ("resource_id") ON UPDATE NO ACTION ON DELETE SET NULL,
	CONSTRAINT "2" FOREIGN KEY ("gender_id") REFERENCES "genders" ("gender_id") ON UPDATE NO ACTION ON DELETE SET NULL
);

--2. Modification d'une table
ALTER TABLE "champion" # Alter la table champion
ADD COLUMN popularity INTEGER NULL; -- on precise que l'on veux ajouter une colonne et on spécifit son nom

--3. Insertion de données

INSERT INTO "champion" (name, title, lore, popularity) VALUES (
'Fiddlesticks',
'The Ancient Fear',
'Something has awoken in Runeterra. Something ancient. Something terrible. The ageless horror known as Fiddlesticks stalks the edges of mortal society, drawn to areas thick with paranoia where it feeds upon terrorized victims. Wielding a jagged scythe, the haggard, makeshift creature reaps fear itself, shattering the minds of those unlucky enough to survive in its wake. Beware the sounding of the crow, or the whispering of the shape that appears almost human... Fiddlesticks has returned.',
5,

);
INSERT INTO "genders" (gender) VALUES ('autre');

INSERT INTO "speaces" (specie) VALUES ('Démon');

INSERT INTO "resouces" (resource) VALUES ('mana');

INSERT INTO "range_types" (range_type) VALUES ('à distance');

INSERT INTO "positions" (position) VALUES ('Jungle');

INSERT INTO "regions" (region) VALUES ('Runeterra');

INSERT INTO "year" (year) VALUES (2009);

#4. Récupération de tous les champions
SELECT name FROM "champion" ORDER BY name; # Selectionne tout les noms des champions et les affiche par ordre aphabetique 

--5. Recherche de champions par nom
SELECT name FROM "champion" where name LIKE "%ar%"; 
--%  = * pour la recherche par nom sur windows
--permet de chercher un model de type ar dans la bdd

--6. Modification d'un enregistrement
UPDATE champions
SET popularite = ABS((RANDOM() % 10) + 1); 
--ABS => absolut pour que cela soit toujour positif
--random  random
--% reste division par 10 

--7. Suppression d'un enregistrement
DELETE FROM champions
WHERE name = 'Fiddlesticks';

--8. Jointure avec les positions
--Écrivez une requête qui récupère tous les champions avec leurs positions associées. Votre requête affichera deux colonnes :
--Le nom des champions
--La ou les noms des positions
SELECT champions.nom, positions.nom 
FROM "champions", "positions", "champion_position"
WHERE champions.nom = champion_id
AND positions.nom = position_id




































