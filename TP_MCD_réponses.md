TP MCD --------------------------------------

1.Identification des entités principales
1)L'élement central qu'on cherche a modéliser est les personnage = "CHAMPION"
 
 2. Définition des attributs
 1)Nom,
 2)En lui associant un id avec le type int 
 3)avec le type varchar

 3. Identification des entités secondaires
 1)Genre,Rôle,Espèce,Ressource,Région(s),Année de sortie, portée

 4. Définition des attributs pour les entités secondaires
 1) leur type et un id
    
 5. Établissement des relations
1,2) Champion a 1 genre / un genre appartient a plusieurs champions
Champion peut avoir n role / un role appartient a plusieur champion
Champion peut avoir de 1 a n espece / une espece appartient a plusieur champion
Champion peut avoir une années de sortie / Une années de sortie peut avoir plusieur champion
Champion peut avoir n regions / Une regions peut avoir plusieur champion
Champion peut avoir n portée / Une portée peut avoir plusieur Champion
Champion peut avoir une ressource / une ressource peut avoir plusieur Champion

6. Détermination des cardinalités
1,2) Champion (1,1) Genre / Genre (1,n) Champion  -> Un ou plusieurs  de Genre vers Champion

   Champion (1,n) Role / Role (1,n) Champion -> Un ou plusieurs de Genre vers Champion et de Champion vers Genre double fleche
   
   Champion (1,n) Espece / Espece (1,n) Champion -> Un ou plusieurs de espece vers Champion et de Champion vers espece double fleche
   
   Champion (1,1) Années de sortie / Années de sortie (1,n) Champion -> Un ou plusieurs  de Année de srotie vers Champion
   
   Champion (1,n) Regions / Regions (1,n) Champion -> Un ou plusieurs de regions vers Champion et de Champion vers regions double fleche
   
  Champion (1,n) Portée / Portée (1,n) Champion -> Un ou plusieurs  de Portée vers Champion et de Champion vers Portée double fleche

  Champion (1,1) Ressource / Ressource (1,n) Champion -> Un ou plusieurs  de ressoruce vers Champion
7)

TP SQL ----------------------------------------------

1. Création d'une table

CREATE TABLE champions
(champion_id INT PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL,
    lore VARCHAR(50),
    gender_id INT,
    resource_id INT,
    year_id INT
    FOREIGN KEY (gender_id)REFERENCES genders(gender_id),
    FOREIGN KEY (ressource_id) REFERENCES resources (ressource_id),
    FOREIGN KEY (year_id) REFERENCES years(year_id)
    );

2. Modification d'une table

ALTER TABLE champion
ADD popularity int ;

3. Insertion de données

ALTER TABLE champions
ADD champion_specie VARCHAR;

INSERT INTO champions (name,title,lore,gender_id,champion_specie,resource_id,popularity,year_id)
VALUES
('Fiddlesticks','The Ancient Fear','Something has awoken in Runeterra. Something ancient. Something terrible. The ageless horror known as Fiddlesticks stalks the edges of mortal society, drawn to areas thick with paranoia where it feeds upon terrorized victims. Wielding a jagged scythe, the haggard, makeshift creature reaps fear itself, shattering the minds of those unlucky enough to survive in its wake. Beware the sounding of the crow, or the whispering of the shape that appears almost human... Fiddlesticks has returned.','Autre','Démon','Mana',5,2009 )

INSERT INTO champion_range (champion_id,range_id)
VALUES
(11,'À distance');


INSERT INTO champion_region (champion_id,region_id)
VALUES
(11,'Runeterra');

4. Récupération de tous les champions

SELECT name FROM champions

5. Recherche de champions par nom

SELECT name FROM champions
WHERE  name LIKE '%ar%' ;

6. Modification d'un enregistrement

UPDATE champions  
SET popularity = abs(random()) % (10 - 1) + 1;

7. Suppression d'un enregistrement

DELETE FROM champions
WHERE champion_id =9

8. Jointure avec les positions

SELECT c.name, p.name AS position_name
FROM champions c
JOIN champion_position p ON c.champion_position_id = p.position_id;


9. Groupement par ressource

10. Champions par région
    
SELECT * FROM champions
WHERE region_id = 'Runeterra';


