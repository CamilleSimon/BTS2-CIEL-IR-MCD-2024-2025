1. Identification des entités principales
Quel est l'élément central du jeu League of Legends que nous cherchons à modéliser ?       Le champion nom

2. Définition des attributs
Quels types d'informations sont nécessaires pour décrire complètement un champion ?       Le genre , le nom ,le role ,l'espèce , la ressource,type de portée , Région(s),Année de sortie .
Comment pouvez-vous représenter l'identifiant unique d'un champion dans le modèle ?       avec la PK 
Quels types de données seraient appropriés pour chaque attribut que vous avez identifié ? type char

3. Identification des entités secondaires
Outre les champions, quelles autres catégories d'informations sont importantes dans League of Legends et pourront être modélisées sous forme d'entités ?
 Le genre , le nom ,le role ,l'espèce , la ressource,type de portée , Région(s),Année de sortie .

4. Définition des attributs pour les entités secondaires
 Pour chaque entité secondaire que vous avez identifiée, quelles informations sont nécessaires pour la décrire ? une FK clé etranger 
 
5. Établissement des relations
6. Ressource: chaque champion posséde 1 une ressource et chaque ressource peut etre posseder par different champion
7. type de portée : chaque champion peut posserder plusieur type de porter et chaque type de portée peut est posseder par different champion.
8. Role : chaque champion peut etre posserder par plusieur role et chaque role peut est posseder par different champion.
8. Genre : chaque Genre peut etre posserder par plusieur champion et chaque champion posseder un unique genre.
8. Compétence : chaque compétence peut etre posserder par un champion et chaque champion possede  differente Competence.
9. Région : chaque region peut posserder plusieur champion et chaque champion peut apartenir a plusieur region.
10.  Espèce : chaque Espèce peut etre posseder par plusieur champion et chaque champions peut etre posseder par plusieur Espéce.

6. Détermination des cardinalités
11.  Ressource: (1,1) et (1,n)
12.  type de portée :(1,n) et (1,n)
13.  Role :(1,n) et (1,n)
14.  Genre :(1,1) et (1,1)
15.  compétence (1,n)(1,1)
16.  Région (1,n)et (1,n)
17.  Espèce (1,n) et (1,n)

18.  Comment allez-vous organiser visuellement votre diagramme pour qu'il soit clair et facile à comprendre ? champion au centre les secondaires autour 
