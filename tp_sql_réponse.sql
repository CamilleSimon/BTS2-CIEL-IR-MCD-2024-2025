1)CREATE TABLE champion(/*creer une TABLE champion*/
champion_id INT_INCREMENT PRIMARY KEY,/*creer une clée primaire*/
name VARCHAR(50),/*creer une caractéristique name taille 50*/
lore VARCHAR(50),/*creer une caractéristique lore taille 50*/
gender_id INT,/*creer une clée étrangère type entier*/
ressource_id INT,/*creer une clée étrangère type entier*/
year_id INT/*creer une clée étrangère type entier*/
popularity INT/*creer une clée étrangère type entier*/
);


INSERT INTO champion (name,lore,gender_id,ressource_id,year_id,) VALUE ('Fiddlesticks','Something has awoken in Runeterra. Something ancient. Something terrible. The ageless horror known as Fiddlesticks stalks the edges of mortal society, drawn to areas thick with paranoia where it feeds upon terrorized victims. Wielding a jagged scythe, the haggard, makeshift creature reaps fear itself, shattering the minds of those unlucky enough to survive in its wake. Beware the sounding of the crow, or the whispering of the shape that appears almost human... Fiddlesticks has returned.','autre','mana','2009');

