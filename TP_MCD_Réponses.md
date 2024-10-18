1. Identification des entités principales

-Quel est l'élément central du jeu pokemon que nous cherchons à modéliser ?
Les pokemons 

-Quelles sont les caractéristiques uniques qui définissent cet élément ?
son nom, sa hauteur, son poids

2. Définition des attributs

-Quels types d'informations sont nécessaires pour décrire complètement un pokemon ?
son/ses types, sa/ses couleurs, son/ses habitats

-Comment pouvez-vous représenter l'identifiant unique d'un pokemon dans le modèle ?
son numéro

-Quels types de données seraient appropriés pour chaque attribut que vous avez identifié ?
Varchar(50), char(50), text(256)

3. Identification des entités secondaires

-Outre les pokemons, quelles autres catégories d'informations sont importantes dans pokemon ?
sa nature, son talent, sa capacité, son sexe.

-Y a-t-il des caractéristiques des pokemons qui pourraient être modélisées comme des entités séparées ? Pourquoi ?
son/ses types, son/ses habitats, sa/ses couleurs car il y en a plusieurs et qu'il faut donc faire des tables séparées

4. Définition des attributs pour les entités secondaires

-Pour chaque entité secondaire que vous avez identifiée, quelles informations sont nécessaires pour la décrire ?
le nom, la description

-Comment structureriez-vous ces informations en attributs ?
nom
description

5. Établissement des relations

-Quelles sont les connexions logiques entre l'entité principale (pokemon) et les entités secondaires ?
Ce sont des connexions 1..N:1..N pour les couleurs et les types et 1:1..N pour l'habitat

-Comment exprimeriez-vous ces connexions en termes de relations dans un MCD ?
Le pokemon peut avoir un ou plusieurs types,couleurs mais un seul habitat et en retour ces caractéristiques peuvent appartenir à un ou plusieurs pokemon

6. Détermination des cardinalités

-Pour chaque relation que vous avez identifiée, réfléchissez :

-Un pokemon peut-il avoir plusieurs instances de cette caractéristique ?
oui pour le type et la couleur mais non pour l'habitat

-Cette caractéristique peut-elle être partagée par plusieurs pokemons ?
oui

7. Création du diagramme

-Utilisez draw.io pour créer votre diagramme. Quels symboles allez-vous utiliser pour représenter les différents éléments de votre MCD ?
PK (primary key) et FK(foreign key)

-Comment allez-vous organiser visuellement votre diagramme pour qu'il soit clair et facile à comprendre ?
j'ai d'abord crée la table pokemon avec la PK "ID_pokemon" puis dans la table j'ai mis les cellules du nom,de la hauteur,du poids,du
nombre d'evolutions  et j'ai mis le type, les couleurs, et l'habitat en FK car ce sont des tables avec plusieurs valeurs

