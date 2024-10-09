1 - Quel est l'élément central du jeu League of Legends que nous cherchons à modéliser ?
Ce sont les champions de LOL que nous voulons chercher



2 - a) Quels types d'informations sont nécessaires pour décrire complètement un champion ?
Nous avons besoin de tout ses attributs : 
Année de sortie / Ressource / Region / Espece / Compétences / Skin / Genre / Champion

2 - b) Comment pouvez-vous représenter l'identifiant unique d'un champion dans le modèle ?
Avec une primary key d'un ID car ils sont uniques pour chaque champions avec un "Champion_id"

2- c) Quels types de données seraient appropriés pour chaque attribut que vous avez identifié ?
Tous les attributs avec des varchar() sauf pour les dates de sortie en type : Date et le prix des Skin en : Int

3- Outre les champions, quelles autres catégories d'informations sont importantes dans League of Legends et pourront être modélisées sous forme d'entités ?
Toutes

 4- Pour chaque entité secondaire que vous avez identifiée, quelles informations sont nécessaires pour la décrire ?
L'ID pour les différencier et leurs noms, date

 5- a) Quelles sont les connexions logiques entre l'entité principale (champion) et les entités secondaires ?
 Ce sont les Relations
 
 5- b) Comment exprimeriez-vous ces connexions en termes de relations dans un MCD ?
 Avec des verbes reliés par des flèches de l'entité principale : Champion , jusqu'aux autres entiés secondaires. 

 6 - a) Pour chaque relation que vous avez identifiée, réfléchissez :
 
Un champion peut-il avoir plusieurs instances de cette caractéristique ?
Il peut avoir plusieurs : Regions, Compétences, Skins, Espèces, Rôles.

b) Cette caractéristique peut-elle être partagée par plusieurs champions ?
Ces caractéristiques peuvent être commune aux champions : Date, Ressource, Region, Rôle, Espèce, Genre.

c) Comment ces réponses se traduisent-elles en termes de cardinalités dans votre modèle ?
Genre :            champ->Genre   1,1      Genre->champ : 1,n
Skin :             champ->Skin : 1,n       Skin->champ : 1,1
Compétences :      champ->comp : 1,n       comp->champ : 1,1 
Espèce :           champ->Espèce: 1,n      Espèce->champ : 1,n
Role  :            champ->Role:   1,n      Role->champ :  1,n
Region:            champ->Region:  1,n     Region->champ :  1,n
Ressource :        champ->Ressource 1,1    Ressource->champ  : 1,n
Année :            champ->Année : 1,1      Année->champ :   1,n

7 - a) Quels symboles allez-vous utiliser pour représenter les différents éléments de votre MCD ?
Des flèches avec plus un embout différents pour : 1,n  et 1,1

b) Comment allez-vous organiser visuellement votre diagramme pour qu'il soit clair et facile à comprendre ?
Toutes les entités secondaires seront reliées aux champions et l'entiés champions séparées des autres.


