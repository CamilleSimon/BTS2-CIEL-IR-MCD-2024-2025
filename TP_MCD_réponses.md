1. Identification des entités principales
Quel est l'élément central du jeu League of Legends que nous cherchons à modéliser ?
1_a)Ce sont les Champions que nous cherchons à modeliser.

2. Définition des attributs
Quels types d'informations sont nécessaires pour décrire complètement un champion ?
2_a)Les rôles, les genres, les espèces, les ressources, les tpyes de portées, les régions et les années de sorties sont les informations qui définissent les Champions.

Comment pouvez-vous représenter l'identifiant unique d'un champion dans le modèle ?
2_b)On représente l'identifiant unique d'un champion avec une clé primaire.

Quels types de données seraient appropriés pour chaque attribut que vous avez identifié ?
2_c)varchar et date.
  
3. Identification des entités secondaires
Outre les champions, quelles autres catégories d'informations sont importantes dans League of Legends et pourront être modélisées sous forme d'entités ?
3_a)Toutes.

4. Définition des attributs pour les entités secondaires
Pour chaque entité secondaire que vous avez identifiée, quelles informations sont nécessaires pour la décrire ?
4_a)Un nom ou une date et l'id.
  
5. Établissement des relations
Quelles sont les connexions logiques entre l'entité principale (champion) et les entités secondaires ?
5_a)Ce sont les relations.

Comment exprimeriez-vous ces connexions en termes de relations dans un MCD ?
5_b)on exprime ces connexion avec des verbes.

6. Détermination des cardinalités
Pour chaque relation que vous avez identifiée, réfléchissez :
Un champion peut-il avoir plusieurs instances de cette caractéristique ?
6_a)Un champion peut avoir plusieurs regions, types de portées, espèces et rôles.

Cette caractéristique peut-elle être partagée par plusieurs champions ?
6_b)Oui toutes les caractéristiques sont partagées

Comment ces réponses se traduisent-elles en termes de cardinalités dans votre modèle ?
6_c)genre :           1,n - 1,1
    rôle :            1,n - 1,n
    espèce :          1,n - 1,n
    ressource :       1,n - 1,1
    type de portée :  1,n - 1,n
    région :          1,n - 1,n
    année de sortie : 1,n - 1,1

7. Création du diagramme
Utilisez draw.io pour créer votre diagramme. Quels symboles allez-vous utiliser pour représenter les différents éléments de votre MCD ?
7_a) 1,1 et 1,n

Comment allez-vous organiser visuellement votre diagramme pour qu'il soit clair et facile à comprendre ?
7_b)L'entité Champion au centre en bas et toutes les entités caractéristiques en haut autour de l'entité champion.

