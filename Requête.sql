/* Requête question 1 
Sélectionne tous les champions et les ordonne par nom.
*/
SELECT * FROM champions ORDER BY name; -- Sélectionne tous les enregistrements de la table champions et les trie par nom.

/* Requête question 2 
Sélectionne les champions dont le nom contient "Zoe".
*/
SELECT * FROM champions 
WHERE name LIKE '%Zoe%'; -- Filtre les champions dont le nom contient "Zoe".

/* Requête question 3 
Sélectionne les champions avec leur position associée.
*/
SELECT *
FROM champions, champion_position, positions
WHERE champions.champion_id = champion_position.champion_id 
AND positions.position_id = champion_position.position_id; -- Récupère les champions avec leurs positions correspondantes.

/* Sélectionne les champions associés à la région "Noxus". */
SELECT * 
FROM champions, champion_region, regions
WHERE champions.champion_id = champion_region.champion_id 
AND champion_region.region_id = regions.region_id 
AND regions.name LIKE '%Noxus%'; -- Filtre les champions liés à la région "Noxus".

/* Question 1 
Création de la table CHAMPION.
*/
CREATE TABLE CHAMPION (
    champion_id INTEGER PRIMARY KEY AUTOINCREMENT,    
    name VARCHAR(50) NOT NULL,                       
    lore TEXT,                                       
    title VARCHAR(50),                                
    gender_id INTEGER,                               
    resource_id INTEGER,                               
    year_id INTEGER,                                   
    FOREIGN KEY (gender_id) REFERENCES genders(gender_id), 
    FOREIGN KEY (resource_id) REFERENCES resources(resource_id), 
    FOREIGN KEY (year_id) REFERENCES years(year_id)   
);

/* Question 2 
Ajoute une colonne pour la popularité des champions.
*/
ALTER TABLE champions
ADD popularity INTEGER; -- Ajoute une colonne 'popularity' pour stocker la popularité des champions.

/* Question 3 
Insertion d'un champion avec ses caractéristiques.
*/

INSERT INTO champion (name, lore, title, gender_id, resource_id, year_id, popularity)
VALUES ('Fiddlesticks', 'Something has awoken in Runeterra. Something ancient. Something terrible. The ageless horror known as Fiddlesticks stalks the edges of mortal society, drawn to areas thick with paranoia where it feeds upon terrorized victims. Wielding a jagged scythe, the haggard, makeshift creature reaps fear itself, shattering the minds of those unlucky enough to survive in its wake. Beware the sounding of the crow, or the whispering of the shape that appears almost human... Fiddlesticks has returned.', 'The Ancient Fear', 3, 1, 1, 5);

/* Insertion des relations du champion dans différentes tables. */
INSERT INTO champion_specie (champion_id, specie_id) VALUES (11, 9); -- Associe Fiddlesticks à une espèce.
INSERT INTO champion_region (champion_id, region_id) VALUES (11, 14); -- Associe Fiddlesticks à une région.
INSERT INTO champion_range (champion_id, range_id) VALUES (11, 2); -- Associe Fiddlesticks à une portée.
INSERT INTO champion_position (champion_id, position_id) VALUES (11, 2); -- Associe Fiddlesticks à une position.

/* Question 4 
Sélectionne tous les champions et les ordonne par nom.
*/
SELECT * FROM champions
ORDER BY name; -- Sélectionne tous les champions et les trie par nom.

/* Question 5 
Sélectionne les champions dont le nom contient "ar".
*/
SELECT * FROM champions
WHERE name LIKE '%ar%'; -- Filtre les champions dont le nom contient "ar".

/* Question 6 
Mise à jour de la popularité des champions avec des valeurs aléatoires.
*/
UPDATE champions
SET popularity = (ABS(RANDOM()) % 10) + 1; -- Met à jour la popularité avec des valeurs aléatoires de 1 à 10.

/*

RANDOM() génère une valeur aléatoire qui peut être négative ou positive 
La fonction ABS() prend cette valeur et la convertit en un nombre positif. 
% 10 :

L'opérateur % est un opérateur de modulo qui calcule le reste de la division de ABS(RANDOM()) par 10.
Cela donne un résultat compris entre 0 et 9 
+ 1 
Cette partie ajoute 1 au résultat obtenu par (ABS(RANDOM()) % 10), décalant ainsi la plage de valeurs de 0-9 à 1-10.


/* Question 7 
Suppression d'un champion avec l'identifiant 12.
*/
DELETE FROM champions WHERE champion_id = 12; -- Supprime le champion ayant l'ID 12.

/* Question 8 
Sélectionne les noms de champions avec les noms de positions associées.
*/
SELECT c.name AS champion_name, GROUP_CONCAT(p.name) AS position_names
FROM champions AS c 
INNER JOIN champion_position AS pc ON c.champion_id = pc.champion_id 
INNER JOIN positions AS p ON pc.position_id = p.position_id
GROUP BY c.name; -- Récupère les noms de champions et leurs positions associées.

/* Question 9 
Sélectionne les ressources et le compte de champions associés.
*/
SELECT re.name AS resource_name, COUNT(c.champion_id) AS champion_count
FROM resources AS re
LEFT JOIN champions AS c ON re.resource_id = c.resource_id
GROUP BY re.name; -- Compte le nombre de champions pour chaque ressource.

/* Question 10 
Sélectionne tous les champions associés à la région "Freljord".
*/
SELECT * 
FROM champions AS c
INNER JOIN champion_region AS cp ON c.champion_id = cp.champion_id 
INNER JOIN regions AS r ON r.region_id = cp.region_id 
WHERE r.name = 'Freljord'; -- Récupère les champions de la région "Freljord".

/* Question 11 
Sélectionne les champions qui sont présents dans plus d'une région.
*/
SELECT c.champion_id, c.name, COUNT(cp.region_id) AS region_count, GROUP_CONCAT(r.name)
FROM champions AS c
INNER JOIN champion_region AS cp ON c.champion_id = cp.champion_id
INNER JOIN regions AS r ON r.region_id = cp.region_id 
GROUP BY c.champion_id, c.name
HAVING COUNT(cp.region_id) > 1; -- Filtre les champions présents dans plus d'une région.

/* Question 12 
Sélectionne les champions présents dans plusieurs positions.
*/
SELECT c.champion_id, c.name, COUNT(cp.position_id) AS position_count, GROUP_CONCAT(p.name) AS positions
FROM champions AS c
INNER JOIN champion_position AS cp ON c.champion_id = cp.champion_id
INNER JOIN positions AS p ON p.position_id = cp.position_id
GROUP BY c.champion_id, c.name
HAVING COUNT(cp.position_id) > 1; -- Filtre les champions ayant plusieurs positions associées.
