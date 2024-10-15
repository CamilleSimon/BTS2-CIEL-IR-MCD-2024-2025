1. Création d'une table

create table champions(
champions_id int AUTO_INCREMENT PRIMARY KEY,
name varchar(50),
lore varchar(50), 
FOREIGN KEY (gender_id) REFERENCES gender(gender_id),
FOREIGN KEY (resource_id) REFERENCES ressource(ressource_id) ,
FOREIGN KEY (year_id) REFERENCES year(year_id) 
);

2. Modification d'une table

alter table champion
add popularity INT;

Insertion de données
INSERT INTO champions (name, title, lore, gender_id ,resource_id, year_id, popularity)
VALUES ('Fiddlesticks', 'The Ancient Fear', 'Something has awoken in Runeterra.
Something ancient. Something terrible. The ageless horror known as Fiddlesticks stalks the edges of mortal society, 
drawn to areas thick with paranoia where it feeds upon terrorized victims. Wielding a jagged scythe, 
the haggard, makeshift creature reaps fear itself, shattering the minds of those unlucky enough to survive in its wake. 
Beware the sounding of the crow, or the whispering of the shape that appears almost human... Fiddlesticks has returned.', 3, 1, 1, 5); 

INSERT into regions(name, lore)
Values ('Runeterra', 'A meaning magic earth.');

INSERT INTO champion_range(champion_id,range_id)
Values (11,2);

INSERT INTO champion_position (champion_id, position_id)
VAlUES(11,2);

INSERT INTO champion_specie(champion_id, specie_id)
VALUES (11,9);

INSERT INTO champion_region(champion_id, region_id)
VALUES (11,14);

4. Récupération de tous les champions
   
Select * from champions;

5. Recherche de champions par nom

Select * from champions where name LIKE '%ar%';

6. Modification d'un enregistrement

UPDATE champions SET popularity = abs(RANDOM() % 10)+1

7. Suppression d'un enregistrement

DELETE from champions where name = 'Fiddlesticks ';

8. Jointure avec les positions

Select champions."name,position."name",
FROM champions ,
champion.position ,
position,
where
