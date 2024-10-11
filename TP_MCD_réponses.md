# Reponces Questions

### Étapes et Questions de Réflexion

###Identification des entités principales
-Quel est l'élément central du jeu League of Legends que nous cherchons à modéliser ?

C'est le Champion qui centralise toutes les autres

### 2. Définition des attributs
- Comment pouvez-vous représenter l'identifiant unique d'un champion dans le modèle ?
  On peut le représenter avec une clef primaire 
- Quels informations sont uniques à un champion ? Les informations non uniques seront alors des entités secondaires.
  Les inforamtions unique au champion est son nom
### 3. Identification des entités secondaires
- Outre les champions, quelles autres catégories d'informations sont importantes dans League of Legends et pourront être modélisées sous forme d'entités ?
  Le genre, Role, Espèce, Resource, Type de portée, Region, Année de sortie.
### 4. Définition des attributs pour les entités secondaires
- Pour chaque entité secondaire que vous avez identifiée, quelles informations sont nécessaires pour la décrire ?
  si elle appartien a un seul Champions ou non
### 5. Établissement des relations
- Quelles sont les connexions logiques entre l'entité principale (champion) et les entités secondaires ?
- Comment exprimeriez-vous ces connexions en termes de relations dans un MCD ?
  Il y aura (1,n) : Un ou plusieurs et (1,1) : Exactement un.
### 6. Détermination des cardinalités
- Pour chaque relation que vous avez identifiée, réfléchissez :
  - Un champion peut-il avoir plusieurs instances de cette caractéristique ?
    oui pour les tables:
    Role, Types de portée, Région et Espèce
    
  - Cette caractéristique peut-elle être partagée par plusieurs champions ?
    oui pour les tables:
    Role, Types de portée, Région et Espèce
- Comment ces réponses se traduisent-elles en termes de cardinalités dans votre modèle ?
    il faut rajouter une table posséder
### 7. Création du diagramme
- Utilisez draw.io pour créer votre diagramme. Quels symboles allez-vous utiliser pour représenter les différents éléments de votre MCD ?
- Comment allez-vous organiser visuellement votre diagramme pour qu'il soit clair et facile à comprendre ?
