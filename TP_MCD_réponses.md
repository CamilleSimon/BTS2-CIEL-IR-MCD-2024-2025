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

2)ALTER TABLE champions /*permet d'apporter des modifications a la table champions ne se termine pas par une virgule pour pouvoir executer la commande suivante*/
ADD popularity INT; /*ajout de la colonne popularity dans la table champions*/

3)INSERT INTO champions (name, title, lore, gender_id, resource_id, year_id, created_at, updated_at, popularity) /*commande qui permet d'inserer dans la table champions des valeurs*/
VALUES (/*valeurs à ajouter à mettre dans l'ordre pour bien qu'ils soient ajouter*/
    'Fiddlesticks',
    'The Ancient Fear',
    'Something has awoken in Runeterra. Something ancient. Something terrible. The ageless horror known as Fiddlesticks stalks the edges of mortal society, drawn to areas thick with paranoia where it feeds upon terrorized victims. Wielding a jagged scythe, the haggard, makeshift creature reaps fear itself, shattering the minds of those unlucky enough to survive in its wake. Beware the sounding of the crow, or the whispering of the shape that appears almost human... Fiddlesticks has returned.',
    'Autre',
    'Mana',
    10,
    2009,
    0,
    5
);
