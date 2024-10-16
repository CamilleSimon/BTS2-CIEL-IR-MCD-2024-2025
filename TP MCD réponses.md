# TP MCD Réponse - League of Branly

### 1.
On cherche à définir la table Champion avec comme caractéristiques unique son nom, ces citaions et ces skins.

### 2.  
Pour décrire complétement un champion il faut :
-Nom VARCHAT(100)
-Genre VARCHAR(100)
-Rôle VARCHAR(100)
-Espèce VARCHAR(100)
-Ressources VARCHAR(100)
-Type de portée VARCHAR(100)
-Région VARCHAR(100)
-Année de sortie VARCHAR(100)
-Citation VARCHAR(100)
-Compétence VARCHAR(100)
-Emoji VARCHAR(100)
-Skin VARCHAR(100)

On peut représenter l'identifiant unique d'un champion avec sa clée primaire qui est un int.

### 3.
Les autres catégories importantes sont :
-Genre
-Rôle
-Espèce
-Ressources
-Type de portée
-Région
-Année de sortie
-Emoji

Il y a des catégories qui peuvent etre modélisées dans des entités séparées comme :
-Genre 
-Rôle
-Espèce
-Ressources 
-Type de portée 
-Région
-Année de sortie 
-Citation 
-Compétence 
-Emoji
-Skin
Elles sont séparées car ce ne sont pas des informations uniques à un seul champion.

### 4.
Pour chaque entité secondaire il faut son nom et pour certaines une image.

### 5.
Champion a un Genre. 
Genre a un ou plusieurs Champion.

Champion a un ou plusieurs Rôle. 
Rôle a un ou plusieurs Champion.

Champion a une ou plusieurs Espèce. 
Espèce a un ou plusieurs Champion. 

Champion a une Ressource. 
Ressource a un ou plusieurs Champion.

Champion a un ou plusieurs Type de portée. 
Type de portée a un ou plusieurs Champion. 

Champion a un ou plusieurs Région. 
Région a un ou plusieurs Champion. 

Champion a une Année de sortie.
Année de sortie a un ou plusieurs Champion.

Champion a un ou plusieurs Citation.
Citaion a un Champion.

Champion a plusieurs Compétence.
Compétence a un Champion.

Champion a plusieurs Emoji.
Emoji a un ou plusieurs Champion.

Champion a un ou plusieurs Skin.
Skin a un Champion.

Ces connexions sont exprimées avec des cardinalités.

### 6.
Champion (1,1) Genre 
Genre (1,n) Champion 

Champion (1,n) Rôle 
Rôle (1,n) Champion 

Champion (1,n) Espèce 
Espèce (1,n) Champion 

Champion (1,1) Ressource 
Ressource (1,n) Champion 

Champion (1,n) Type de portée 
Type de portée (1,n) Champion 

Champion (1,n) Région 
Région (1,n) Champion 

Champion (1,1) Année de sortie 
Année de sortie (1,n) Champion 

Champion (1,n) Citation 
Citaion (1,1) Champion 

Champion (n,n) Compétence 
Compétence (1,1) Champion 

Champion (n,n) Emoji 
Emoji (1,n) Champion 

Champion (1,n) Skin 
Skin (1,1) Champion 

Ces réponse se traduisent dans le modèle via des relation(traits).
