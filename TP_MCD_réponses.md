1. Identification des entités principales
Quel est l'élément central du jeu League of Legends que nous cherchons à modéliser ?

champion

2. Définition des attributs
Comment pouvez-vous représenter l'identifiant unique d'un champion dans le modèle ?
Quels informations sont uniques à un champion ? Les informations non uniques seront alors des entités secondaires.

id_champion clé primaire
nom char(30)

3. Identification des entités secondaires
Outre les champions, quelles autres catégories d'informations sont importantes dans League of Legends et pourront être modélisées sous forme d'entités ?

- Genre
- Rôle
- Région
- Année de sortie
- Ressource
- Type de portée
- Espèce

4. Définition des attributs pour les entités secondaires
Pour chaque entité secondaire que vous avez identifiée, quelles informations sont nécessaires pour la décrire ?

- Genre : id_Genre (identifiant unique), nom (nom du genre).
- Rôle : id_role (identifiant unique), nom (nom du rôle).
- Région : id_Region (identifiant unique), nom (nom de la région), description (description de la région).
- Année de sortie : id_Année_sortie (identifiant unique), data (date de sortie).
- Ressource : id_Ressource (identifiant unique), nom (nom de la ressource).
- Type de portée : id_Type_portée (identifiant unique), nom (nom du type de portée).
- Espèce : id_Espèce (identifiant unique), nom (nom de l’espèce).

5. Établissement des relations
Quelles sont les connexions logiques entre l'entité principale (champion) et les entités secondaires ?
Comment exprimeriez-vous ces connexions en termes de relations dans un MCD ?

apartien:
- Région
- genre
- Espèce

possède:
- Type de portée
- année de sortir
- ressource
- Rôle


6. Détermination des cardinalités
Pour chaque relation que vous avez identifiée, réfléchissez :
Un champion peut-il avoir plusieurs instances de cette caractéristique ?
Cette caractéristique peut-elle être partagée par plusieurs champions ?
Comment ces réponses se traduisent-elles en termes de cardinalités dans votre modèle ?

many to many:
- Rôle
- Région
- Type de portée
- Espèce

many to unique:
- Genre
- Année de sortie
- Ressource




7. Création du diagramme
Utilisez draw.io pour créer votre diagramme. Quels symboles allez-vous utiliser pour représenter les différents éléments de votre MCD ?
Comment allez-vous organiser visuellement votre diagramme pour qu'il soit clair et facile à comprendre ?


