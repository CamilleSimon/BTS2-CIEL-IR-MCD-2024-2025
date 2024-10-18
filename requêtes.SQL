/*1) créer la table champion */
CREATE TABLE champion
(
	champion_id INT PRIMARY KEY NOT NULL,
	name VARCHAR(50) NOT NULL,
	title VARCHAR(50),
	lore TEXT,
	gender_id INTEGER,
	resource_id INTEGER,
	year_id INTEGER,
	FOREIGN KEY (gender_id) REFERENCES genders(gender_id)
	FOREIGN KEY (resource_id) REFERENCES resources(resource_id)
	FOREIGN KEY (year_id) REFERENCES years(year_id)
);

/*2) Ajoute la colone popularity a la table champions*/
ALTER TABLE champions
ADD popularity INT;

/*3) insère les données du champion Fiddlesticks dans la table champions et insère ces données d'espèce, porté, role et région dans les tables pivots champion_specie, champion_range, champion_position et champion_region*/
INSERT INTO champions VALUES ('Fiddlesticks','The Ancient Fear','Something has awoken in Runeterra. Something ancient. Something terrible. The ageless horror known as Fiddlesticks stalks the edges of mortal society, drawn to areas thick with paranoia where it feeds upon terrorized victims. Wielding a jagged scythe, the haggard, makeshift creature reaps fear itself, shattering the minds of those unlucky enough to survive in its wake. Beware the sounding of the crow, or the whispering of the shape that appears almost human... Fiddlesticks has returned.','3','1,'1','5');

INSERT INTO champion_specie VALUES ('11','9');

INSERT INTO champion_range VALUES ('11','2');

INSERT INTO champion_position VALUES ('11','2');

INSERT INTO champion_region VALUES ('11','14');

/*4) récupère les nom des champions dans la table champions*/
SELECT name FROM champions;

/*5) récupère les nom des champions contenant 'as' dans la table champions, LIKE permet de rechercher un modèle particulier, %as% ce modèle cible les données contenant 'as' n'importe où dans le nom du champion*/
SELECT name FROM champions WHERE name LIKE '%as%';

/*6) change la popularité des champions de la table champions en un chiffre alétoire entre 1 et 10, RAND() donne un nombre à virgule alétoire '* 9' définit l'intervale entre 0 et 9 round() arondi le nombre et '+1' passe l'intervale à 1 à 10*/
UPDATE champions SET popularity = ROUND( RAND() * 9 ) + 1;

/*7) supprime le champion de la table champions possédans le champion_id 1*/
DELETE FROM champions WHERE champion_id = 1;

/*8) */
SELECT champions.name, GROUP_CONCAT(positions.name)
FROM champions
JOIN champion_position champions ON champions.champion_id = champion_position.champion_id
JOIN positions ON champion_position.position_id = positions.position_id
GROUP BY champions.name;

/*9) */
