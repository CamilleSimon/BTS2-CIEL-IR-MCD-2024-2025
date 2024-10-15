1. Création d'une table
Créez une table champions avec les colonnes appropriées basées sur le MCD fourni.

CREATE TABLE champions (
  id_chamipons INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  title VARCHAR(50),
  lore TEXT,
  gender_id INT,
  ressource_id INT,
  year_id INT,
  created_at DATE,
  updated_at DATE,
);

3. Modification d'une table
Ajoutez une nouvelle colonne popularity de type INT à la table champions.

ALTER TABLE champions
ADD popularity int;

4. Insertion de données
Insérez le champion Fiddlesticks dans la table champions avec les attributs suivants :

Nom : Fiddlesticks
Titre : The Ancient Fear
Lore : Something has awoken in Runeterra. Something ancient. Something terrible. The ageless horror known as Fiddlesticks stalks the edges of mortal society, drawn to areas thick with paranoia where it feeds upon terrorized victims. Wielding a jagged scythe, the haggard, makeshift creature reaps fear itself, shattering the minds of those unlucky enough to survive in its wake. Beware the sounding of the crow, or the whispering of the shape that appears almost human... Fiddlesticks has returned.
Genre : Autre
Espèce : Démon
Ressource : Mana
Portée : À distance
Région principale : Runeterra
Année de sortie : 2009
Popularité : 5 (sur une échelle de 1 à 10)
Assurez-vous d'insérer également les données nécessaires dans les tables pivots associées (comme champion_specie par exemple).

INSERT INTO CHAMPIONS (name, title, lore, gender_id, ressource_id, year_id, created_at, updated_at, popularity) VALUES (Fiddlesticks, The Ancient Fear, Something has awoken in Runeterra. Something ancient. Something terrible. The ageless horror known as Fiddlesticks stalks the edges of mortal society, drawn to areas thick with paranoia where it feeds upon terrorized victims. Wielding a jagged scythe, the haggard, makeshift creature reaps fear itself, shattering the minds of those unlucky enough to survive in its wake. Beware the sounding of the crow, or the whispering of the shape that appears almost human... Fiddlesticks has returned., Autre, Démon, Mana, À distance, Runeterra, 2009, 5);

4. Récupération de tous les champions
Écrivez une requête SQL pour récupérer tous les champions, triés par nom.

SELECT *
FROM champions
ORDER BY name

5. Recherche de champions par nom
Implémentez une requête qui permet de trouver des champions dont le nom contient une chaîne spécifique. On pourra tester avec la chaîne ar qui devra retourner trois noms : Bard, Rengar et Gnar.

SELECT *
FROM champions
WERE colonne LIKE %ar%

6. Modification d'un enregistrement
Mettez à jour la popularité des champions en leur attribuant une valeur aléatoire entre 1 et 10. Utilisez la fonction RANDOM() (RAND() sous MySQL et RANDOM() sous SQLite) pour générer cette valeur aléatoire.

Note : RANDOM() genère un nombre entre -9223372036854775808 et +9223372036854775807. Pour générer un nombre entre 1 et 10 vous pouvez vous appuyer sur ce que vous avez fait en co-intervention de maths sur la méthode d'approximation d'une intégrale par la méthode de Monté-Carlo.


7. Suppression d'un enregistrement
Supprimez un champion spécifique de la table.

DELETE FROM champions
WHERE 'name'= Fiddlesticks

8. Jointure avec les positions
Écrivez une requête qui récupère tous les champions avec leurs positions associées. Votre requête affichera deux colonnes :

Le nom des champions
La ou les noms des positions

