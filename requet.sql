/*1. Création d'une table*/
INSERT INTO champions
(
	champion_id,
   name,
   title,
   lore,
   gender_id,
   resource_id,
   year_id,
   popularity
) 
VALUES 
(
	11,
   'Fiddlesticks',
   'The Ancient Fear',
   'Something has awoken in Runeterra. Something ancient. Something terrible. The ageless horror known as Fiddlesticks stalks the edges of mortal society, drawn to areas thick with paranoia where it feeds upon terrorized victims. Wielding a jagged scythe, the haggard, makeshift creature reaps fear itself, shattering the minds of those unlucky enough to survive in its wake. Beware the sounding of the crow, or the whispering of the shape that appears almost human... Fiddlesticks has returned.',
   3, 
   1, 
   1,
   5 
);

/*2. Modification d'une table*/
ALTER TABLE champions
add popularity INT;


/*3. Insertion de données*/
INSERT INTO champion_range
(
  champion_range_id,
  champion_id,
  range_id
)
VALUES 
(
	12,
	11,
	2
);

INSERT INTO regions
(
  name
  
)
VALUES 
(
	'Runeterra'
);



INSERT INTO champion_region
(
champion_region_id,
champion_id,
region_id
)
VALUES
(
15,
11,
15
);

INSERT INTO champion_position
(
champion_position_id,
champion_id,
position_id
)
VALUES
(
15,
11,
4
);

INSERT INTO champion_specie
(
champion_species_id,
champion_id,
specie_id
)
VALUES
(
15,
11,
9
);

/*4. Récupération de tous les champions*/
SELECT *
FROM champions
ORDER BY name ASC;

/*5. Recherche de champions par nom*/
SELECT *
FROM champions
WHERE name LIKE '%ar%';

/*6. Modification d'un enregistrement*/
UPDATE champions
SET popularity = ABS(RANDOM() % 10) + 1;

