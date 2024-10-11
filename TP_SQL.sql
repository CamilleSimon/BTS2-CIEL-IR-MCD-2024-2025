```SQL
-- 1. Récupération de tous les champions
SELECT * FROM champions ORDER BY name   -- Selectionne toutes les ID dans la table champions triés par nom (A à Z)
-- 2. Recherche de champions par nom
SELECT * FROM champions WHERE name LIKE '% (caractère ou chaîne de caractère à mettre) %' -- Selectionne tout les ID dans la table champions où la colonne "name" contient un caractère ou bien une chaîne de caractère
-- 3. Jointure avec les positions
SELECT champions.name, positions.name FROM champions,positions,champion_position WHERE champions.champion_id=champion_position.champion_id AND champion_position.position_id = positions.position_id -- Selectionne le nom du champion ainsi que le nom de sa position dans la table champions, positions et champion_position où le champion_id de la table champions est égal au champion_id de la table champion_position (table pivot) et la position_id de la table champion_position (table pivot) est égal à la position_id de la table positions
-- 4. Groupement par ressource
SELECT resources.name,COUNT(resources.name) FROM resources, champions WHERE champions.resource_id = resources.resource_id GROUP BY resources.name -- Selectionne le nom de la ressource et le nombre de nom de ressource dans la table resources et champions où la resource_id de la table champions est égal à la ressource_id de la table resources. Puis on les ordonne par groupe pour chaque ressources, ainsi que le nombre de champion avec cette ressource
-- 5. Champions par région
SELECT regions.name, champions.name FROM champions, regions, champion_region WHERE champions.champion_id = champion_region.champion_id AND champion_region.region_id = regions.region_id AND regions.region_id = 10 -- Selectionne le nom de la région et le nom du champion dans la table champions, regions et champion_region où l'id_champion de la table champion est égale à l'id_champion de champion_region (table pivot) et que l'id_region de la table champion_region (table pivot) est égale à l'id_region de la table regions et que l'id_region de la table regions est égale à 10 (pour la région Freljord par exemple)
  
  
  
  
  
  ```
