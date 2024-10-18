### 1. Création d'une table
```SQL
CREATE TABLE champion
(
	champion_id INTEGER PRIMARY KEY AUTOINCREMENT,
	name VARCHAR(50) NOT NULL,
	title VARCHAR(50),
	lore TEXT,
	gender_id INTEGER,
	resource_id INTEGER,
	year_id INTEGER,
	FOREIGN KEY (gender_id) REFERENCES genders(gender_id),
	FOREIGN KEY (resource_id) REFERENCES resources(resource_id),
	FOREIGN KEY (year_id) REFERENCES years(year_id),
);
```
Dans cette requete je crée la table champion, je lui donne toutes ses caractéristiques. Sa clé primaire est champion_id, ses clés étrangères sont gender_id, resource_id et year_id.

### 2. Modification d'une table
```SQL
ALTER TABLE champions ADD popularity INT
```
Dans cette requete j'ajoute à la table champions la colonne "popularity" de type INT.

### 3. Insertion de données
```SQL
INSERT INTO champions (name,title,lore,gender_id,resource_id,year_id,popularity) VALUES ('Fiddlesticks', 'The Ancient Fear', 'Something has awoken in Runeterra. Something ancient. Something terrible. The ageless horror known as Fiddlesticks stalks the edges of mortal society, drawn to areas thick with paranoia where it feeds upon terrorized victims. Wielding a jagged scythe, the haggard, makeshift creature reaps fear itself, shattering the minds of those unlucky enough to survive in its wake. Beware the sounding of the crow, or the whispering of the shape that appears almost human... Fiddlesticks has returned.',3,1,1,5);
INSERT INTO champion_position(champion_id, position_id) VALUES (11,2);
INSERT INTO champion_range(champion_id, range_id) VALUES (11,2);
INSERT INTO champion_region(champion_id, region_id) VALUES (11,14);
INSERT INTO champion_specie(champion_id, specie_id) VALUES (11,9);
```
Dans cette requete je crée une nouvelle ligne du champion Fiddlesticks avec ses caractéristiques : name,title,lore,gender_id,resource_id,year_id,popularity.
Puis j'ajoute le restant dans les quatres autres tables pivots pour la position la range la region et species. La première valeur ajouté est l'id du champion et la deuxieme
est l'id de la table où correspond la table pivot, par exemple pour sa position j'ai mis(11,2) pour dire que c'est le champion d'id 11 et que sa position est l'id 2 de position donc Jungle

### 4. Récupération de tous les champions
```SQL
SELECT name FROM champions ORDER BY name
```
Dans cette requete je selectionne tout les noms de champions dans la table champions, puis je les tries par ordre alphabétique (de A à Z) en utilisant "ORDER BY name"

### 5. Recherche de champions par nom
```SQL
SELECT name FROM champions WHERE name LIKE '%ar%'
```
Dans cette requete je selectionne tout les noms de champions qui contiennent la chaîne de caractère "ar" à l'aide de "LIKE", j'obtient à la fin 3 champions : Bard, Gnar et Rengar.

### 6. Modification d'un enregistrement
```SQL
UPDATE champions SET popularity = (ABS(RANDOM()) % 10 + 1) WHERE champion_id = 1;
UPDATE champions SET popularity = (ABS(RANDOM()) % 10 + 1) WHERE champion_id = 2;
UPDATE champions SET popularity = (ABS(RANDOM()) % 10 + 1) WHERE champion_id = 3;
UPDATE champions SET popularity = (ABS(RANDOM()) % 10 + 1) WHERE champion_id = 4;
UPDATE champions SET popularity = (ABS(RANDOM()) % 10 + 1) WHERE champion_id = 5;
UPDATE champions SET popularity = (ABS(RANDOM()) % 10 + 1) WHERE champion_id = 6;
UPDATE champions SET popularity = (ABS(RANDOM()) % 10 + 1) WHERE champion_id = 7;
UPDATE champions SET popularity = (ABS(RANDOM()) % 10 + 1) WHERE champion_id = 8;
UPDATE champions SET popularity = (ABS(RANDOM()) % 10 + 1) WHERE champion_id = 9;
UPDATE champions SET popularity = (ABS(RANDOM()) % 10 + 1) WHERE champion_id = 10;
UPDATE champions SET popularity = (ABS(RANDOM()) % 10 + 1) WHERE champion_id = 11;
```
Dans cette requete je met à jour la valeur popularity de la table champions de tout les champions, ABS() sert à ne pas avoir de nombre négatif, % 10 + 1 sert à avoir uniquement de 1 à 10.

### 7. Suppression d'un enregistrement
```SQL
DELETE FROM champions WHERE champion_id = 11
```
Dans cette requete je delete le champion Fiddlesticks (id de 11) dans la table champions, je peux mettre l'id de n'importe quel autre champion pour le supprimer

### 8. Jointure avec les positions
**Ne marche pas**
```SQL
SELECT champions.name, positions.name FROM champions,positions,champion_position WHERE champions.champion_id=champion_position.champion_id AND champion_position.position_id = positions.position_id
-- SELECT champions.name, GROUP_CONCAT(positions.name) FROM champions,positions INNER JOIN champion_position ON champions.champion_id = champion_position.champion_id AND champion_position.position_id=positions.position_id -- WHERE positions.position_id = champion_position.position_id AND champion_position.position_id = positions.position_id
```
Dans cette requete je selectionne le nom du champion ainsi que le nom de sa position dans la table champions, positions et champion_position où le champion_id de 
la table champions est égal au champion_id de la table champion_position (table pivot) et la position_id de la table champion_position (table pivot) est égal à la position_id de la table positions.
A la fin j'obtient chaque champion ainsi que sa position, si un champion a plusieurs positions il apparaitra plusieurs fois mais avec sa premiere ou deuxieme position.
**Ne marche pas**

### 9. Groupement par ressource
```SQL
SELECT resources.name,COUNT(resources.name) FROM resources, champions WHERE champions.resource_id = resources.resource_id GROUP BY resources.name
```
Dans cette requete je selectionne le nom de la ressource et le nombre de nom de ressource dans la table resources et champions où la resource_id de la table champions est 
égal à la ressource_id de la table resources. Puis on les ordonne par groupe pour chaque ressources, ainsi que le nombre de champion avec cette ressource.
