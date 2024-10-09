1. Identification des entités principales
Quel est l'élément central nous cherchons à modéliser ?
  joueur

2. Définition des attributs
Comment pouvez-vous représenter l'identifiant unique d'un joueur dans le modèle ?
  clé primaire entier
Quels informations sont uniques à un champion ? Les informations non uniques seront alors des entités secondaires.


3. Identification des entités secondaires
Outre les champions, quelles autres catégories d'informations sont importantes dans League of Legends et pourront être modélisées sous forme d'entités ?
  poste, nation, chamionnat, club, date de naissance, taille, statistiques.

4. Définition des attributs pour les entités secondaires
Pour chaque entité secondaire que vous avez identifiée, quelles informations sont nécessaires pour la décrire ?
  poste: poste/ nation: nom, continent/ championnat: nom, pays, clubs/ club: nom, pays, championnat/ date de naissance: jour, mois, année/ taille: taille/ statistiques: matchs joués, buts, passes décisives

5. Établissement des relations
Quelles sont les connexions logiques entre l'entité principale (champion) et les entités secondaires ?
  Le joueur joue à un poste.
  Le joueur possède une nation.
  Le joueur joue dans un championnat.
  Le joueur joue pour un club.
  Le joueur possède une date de naissance.
  Le joueur possède une taille.
  Le joueur possède des statistiques.
Comment exprimeriez-vous ces connexions en termes de relations dans un MCD ?
  Le joueur joue à un poste et plusieurs joueurs peuvent jouer à un poste.
  Le joueur possède une nation et plusieurs joueur peuvent posséder la même nation.
  Le joueur joue dans un championnat et plusieurs joueurs peuvent jouer dans le même championnat.
  Le joueur joue pour un club et plusieurs joueurs peuvent jouer pour un même club.
  Le joueur possède une date de naissance et plusieurs joueurs peuvent posséder la même date de naissance.
  Le joueur possède une taille et plusieurs joueurs peuvent posséder la même taille.
  Le joueur possède des statistiques et plusieurs joueurs peuvent posséder les mêmes statistiques.

6. Détermination des cardinalités
Pour chaque relation que vous avez identifiée, réfléchissez :
Un champion peut-il avoir plusieurs instances de cette caractéristique ?
  poste: non/ nation: non/ championnat: non/ club: non/ Date de naissance: non/ taille: non/ statistiques: non
Cette caractéristique peut-elle être partagée par plusieurs champions ?
  poste: oui/ nation: oui/ championnat: oui/ club: oui/ Date de naissance: oui/ taille: oui/ statistiques: oui
Comment ces réponses se traduisent-elles en termes de cardinalités dans votre modèle ?
  poste: 1 : N/ nation: 1 : N/ championnat: 1 : N/ club: 0..1 : N/ Date de naissance: 1 : N/ taille: 1 : N / statistiques: 1..N : 1..N
7. Création du diagramme
Utilisez draw.io pour créer votre diagramme. Quels symboles allez-vous utiliser pour représenter les différents éléments de votre MCD ?
Comment allez-vous organiser visuellement votre diagramme pour qu'il soit clair et facile à comprendre ?
