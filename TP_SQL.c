--1)
  CREATE TABLE champion (
    champion_id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name VARCHAR(255) UNIQUE,              
    title VARCHAR(255),             
    lore TEXT,
	 gender_id INT,              
    resource_id INT,            
    year_id INT,
	 CONSTRAINT "0" FOREIGN KEY ("year_id") REFERENCES "years" ("year_id") ON UPDATE NO ACTION ON DELETE SET NULL,
	 CONSTRAINT "1" FOREIGN KEY ("resource_id") REFERENCES "resources" ("resource_id") ON UPDATE NO ACTION ON DELETE SET NULL,
	 CONSTRAINT "2" FOREIGN KEY ("gender_id") REFERENCES "genders" ("gender_id") ON UPDATE NO ACTION ON DELETE SET NULL      
);

--2)
ALTER TABLE champions ADD popularity INT;
--Rajoute la collonne popularity qui est un int a champions
  
--3)
INSERT INTO champions (name, lore, title, gender_id, resource_id, year_id, popularity)
VALUES ('Fiddlesticks', 'Something has awoken in Runeterra. Something ancient. Something terrible. The ageless horror known as Fiddlesticks stalks the edges of mortal society, drawn to areas thick with paranoia where it feeds upon terrorized victims. Wielding a jagged scythe, the haggard, makeshift creature reaps fear itself, shattering the minds of those unlucky enough to survive in its wake. Beware the sounding of the crow, or the whispering of the shape that appears almost human... Fiddlesticks has returned.', 'The Ancient Fear', 3, 1, 1, 5);
INSERT INTO champion_specie (champion_id, specie_id) VALUES (11, 9);
INSERT INTO champion_region (champion_id, region_id) VALUES (11, 14);
INSERT INTO champion_range (champion_id, range_id) VALUES (11, 2);
INSERT INTO champion_position (champion_id, position_id) VALUES (11, 2);

--Insertion des valeurs principal dans la classe champions directement puis dans chaque classe pivot les id correspondantes 

--4)
  SELECT * FROM champions ORDER BY name;

--5)
  SELECT * FROM champions WHERE name LIKE '%ar%';
--Le %ar% est utilisé ici pour que nimporte quelle caractére sopit utilisé avant et après

--6)
 UPDATE champions
 SET popularity = ABS(RANDOM() % 10) +1; 
--ABS est utilisé ici pour que le nombre sélectionné par random ne soit pas négatif et le % pour que le nombre ne soit pas un float

--7)
  DELETE FROM champions WHERE champion_id = 11;

--8)
  SELECT CH.name, GROUP_CONCAT(PO.name)
  FROM champions CH
  JOIN champion_position CP ON CH.champion_id = CP.champion_id
  JOIN positions PO ON CP.position_id = PO.position_id
  GROUP BY CH.name

--Le g
  
--9)
  SELECT RE.name AS resources, COUNT(CH.champion_id) AS champions
  FROM resources RE
  JOIN champions AS CH ON RE.resource_id = CH.resource_id
  GROUP BY RE.name

--10)
  SELECT * 
  FROM champions CH
  JOIN champion_region CR ON CH.champion_id = CR.champion_id
  JOIN regions RE ON RE.region_id = CR.region_id
  WHERE RE.name = "Freljord";

--11)
  SELECT CH.champion_id, CH.name, COUNT(CR.region_id) AS regions, RE.name
  FROM champions CH
  JOIN champion_region CR ON CH.champion_id = CR.champion_id
  JOIN regions RE ON RE.region_id = CR.region_id
  GROUP BY CH.champion_id, CH.name
  HAVING COUNT (CR.region_id) > 1;

--12)
  SELECT CH.champion_id, CH.name, COUNT(CP.position_id) AS positions, GROUP_CONCAT(PO.name)
  FROM champions CH
  JOIN champion_position CP ON CH.champion_id = CP.champion_id
  JOIN positions PO ON PO.position_id = CP.position_id
  GROUP BY CH.champion_id, CH.name
  HAVING COUNT (CP.position_id) >= 2;
