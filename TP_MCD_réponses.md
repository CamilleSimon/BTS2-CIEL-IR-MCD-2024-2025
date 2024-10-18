1)L'element principal est le champion

2)Avec une PK clé primaire  
Les informations uniques à un champion sont son ID, son nom, ses compétences

3)Les autres catégories d'informations qui sont importantes dans League of Legends et qui pourront être modélisées sous forme d'entités sont son role, son genre, son espece, ses ressources, son type de portée, sa region et son année de sortie

4)Les informations qui sont nécessaires pour les décrire sont leurs ID, leurs noms, la date, l'espece

5)Un champion possede plusieurs competence  
Une competence appartient a un champion  
Plusieurs champions peuvent avoir la meme especes  
Une espece peut appartenir a plusieurs champions  
Plusieurs champions peuvent avoir la meme region   
Une region peut appartenir a plusieurs champions  
Plusieurs champions peuvent avoir la meme année de sortie   
Une année de sortie peut appartenir a plusieurs champions  
Plusieurs champions peuvent avoir le meme role   
Un role peut appartenir a plusieurs champions  
Plusieurs champions peuvent avoir la meme ressource   
Une ressource peut appartenir a plusieurs champions  

Nous creons des tables séparées pour champion_position, champion_region, champion_specie et champion_range pour avoir des tables pivots

TP_SQL

1)CREATE TABLE champion (
	champion_id INTEGER PRIMARY KEY AUTOINCREMENT,
	name VARCHAR(50) NOT NULL,
	title VARCHAR(50),
	lore TEXT,
	gender_id INTEGER,
	resource_id INTEGER,
	year_id INTEGER,
	FOREIGN KEY (gender_id) REFERENCES genders(gender_id),
	FOREIGN KEY (resource_id) REFERENCES resources(resource_id),
	FOREIGN KEY (year_id) REFERENCES years(year_id)
);
