1. Identification des entités principales
Quel est l'élément central du jeu League of Legends que nous cherchons à modéliser ?
  L'élément central du jeu League of Legends sont les champions.

2. Définition des attributs
Comment pouvez-vous représenter l'identifiant unique d'un champion dans le modèle ?
   On peut représenter l'identifiant unique d'un champion avec une primary key

Quels informations sont uniques à un champion ? Les informations non uniques seront alors des entités secondaires.
  Ce sont les noms qui sont uniques à un champion.

3. Identification des entités secondaires
Outre les champions, quelles autres catégories d'informations sont importantes dans League of Legends et pourront être modélisées sous forme d'entités ?
  Le genre, role, espece, ressource, portee, region et date de sortie

4. Définition des attributs pour les entités secondaires
Pour chaque entité secondaire que vous avez identifiée, quelles informations sont nécessaires pour la décrire ?
  Les informations nécessaires pour les décrires sont leurs noms.

5. Établissement des relations
Quelles sont les connexions logiques entre l'entité principale (champion) et les entités secondaires ?
   le champion 'possède' les entités secondaires.

Comment exprimeriez-vous ces connexions en termes de relations dans un MCD ?
  On represente ces relations dans un MCD par une clé étrangère.

6. Détermination des cardinalités
Pour chaque relation que vous avez identifiée, réfléchissez :
Un champion peut-il avoir plusieurs instances de cette caractéristique ?
  Il est possible qu'un champion ai plusieurs instances de cette caractéristique
Cette caractéristique peut-elle être partagée par plusieurs champions ?
  Il est possible que plusieurs champions partagent cette caractéristique.
Comment ces réponses se traduisent-elles en termes de cardinalités dans votre modèle ?
  
  
  


8. Création du diagramme
Utilisez draw.io pour créer votre diagramme. Quels symboles allez-vous utiliser pour représenter les différents éléments de votre MCD ?
  des rectangles.
Comment allez-vous organiser visuellement votre diagramme pour qu'il soit clair et facile à comprendre ?
