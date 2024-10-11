# TP MCD - Formula Branly

### 1. Identification des entités principales
"""
Quel est l'élément central de la Formule 1 que nous cherchons à modéliser ?
"""
- L'élément principal à modéliser est **le pilote de F1**.

### 2. Définition des attributs
"""
- Comment pouvez-vous représenter l'identifiant unique d'un pilote dans le modèle ?
"""
- L'identifiant unique d'un pilote est son **ID Pilote**.

"""
- Quelles informations sont uniques à un pilote ?
"""
- Les informations uniques à un pilote incluent : 
  - **Nom** 
  - **Prénom**
  - **Nationalité**
  - **Numéro de voiture**
  - **Équipe actuelle**
  - **Date de naissance**

"""
- Les informations non uniques seront alors des entités secondaires.
"""
- D'autres informations non uniques, comme les résultats des courses ou les records de tour, seront modélisées comme des entités secondaires.

### 3. Identification des entités secondaires
"""
Outre les pilotes, quelles autres catégories d'informations sont importantes dans la Formule 1 et pourront être modélisées sous forme d'entités ?
"""
- Les entités secondaires importantes sont :
  - **Équipes de F1** (chaque pilote appartient à une équipe)
  - **Team Principal de chaque écurie** (chaque écurie possède un ou plusieurs team principals)
  - **Circuits** (les courses se déroulent sur différents circuits)
  - **Résultats de Qualification** (les performances des pilotes lors des qualifications pour chaque course)
  - **Résultats de Course** (les performances des pilotes lors de chaque course)
  - **Voitures** (chaque équipe dispose de voitures spécifiques utilisées par les pilotes)

### 4. Définition des attributs pour les entités secondaires
"""
Pour chaque entité secondaire que vous avez identifiée, quelles informations sont nécessaires pour la décrire ?
"""
- **Équipe** : nom de l’équipe,Nationalité , entrée en f1, sortie en f1 .
- **Team Principal** : nom, nationalité, nombre de tours, .
- **Circuit** : nom du circuit, localisation, longueur du circuit.
- **Résultat Qualification** : position sur la grille de départ, temps completé.
- **Résultat Course** : position finale, temps de course, points marqués, meilleur tour.
- **Voiture** : modèle de la voiture, chassis, moteur utilisé.

### 5. Établissement des relations
"""
- Quelles sont les connexions logiques entre l'entité principale (pilote) et les entités secondaires ?

"""

- Un **pilote** est associé à une **écurie**.
- Un **pilote** participe à plusieurs **courses**, et pour chaque course, il a un résultat de qualification et un résultat de course.
- Une **écurie** possède plusieurs **voitures**, et un ou plusieurs **team principals**.
- Une **course** se déroule sur un **circuit**.
- Les résultats de course et les résultats de qualification sont associés à des circuits.
- Un est pilote est associé au classement pilote
- Une écurie

> **Comment exprimeriez-vous ces connexions en termes de relations dans un MCD ?**

- Un **pilote** est dans une relation **1,N** avec **écurie**.
- Un **pilote** a une relation **N,N** avec les **résultats de qualification** et les **résultats de course** (chaque course a plusieurs pilotes, et chaque pilote a plusieurs résultats au fil des courses).
- Une **écurie** est en relation **1,N** avec les **voitures**.
- Une **écurie** est en relation **1,N** avec **team principal**.
- Les résultats de qualification et résultats de course sont associés à un **circuit** via une relation **1,N**.




"""




### 6. Détermination des cardinalités
"""
- Pour chaque relation que vous avez identifiée, réfléchissez :
    - Un pilote peut-il avoir plusieurs instances de cette caractéristique ?
"""
- Oui, un **pilote** peut participer à plusieurs **courses** au cours de la saison.

"""
- Cette caractéristique peut-elle être partagée par plusieurs pilotes ?
"""
- Oui, plusieurs **pilotes** peuvent participer à la même **course** et appartenir à la même **équipe**.

"""
- Comment ces réponses se traduisent-elles en termes de cardinalités dans votre modèle ?
"""
- **Équipe** à **Pilote** : 1,N (une équipe peut avoir plusieurs pilotes).
- **Team Principal** à **Équipe** : 1,N (un team principal peut superviser une ou plusieurs équipes).
- **Course** à **Pilote** : N,N (chaque course a plusieurs pilotes et chaque pilote participe à plusieurs courses).
- **Course** à **Circuit** : 1,N (un circuit peut accueillir plusieurs courses).
- **Pilote** à **Résultats de Qualification/Course** : 1,N (un pilote peut obtenir plusieurs résultats, mais chaque résultat est associé à un pilote unique).

### 7. Création du diagramme
"""
- Utilisez [draw.io](https://draw.io) pour créer votre diagramme.
"""
- Vous allez utiliser des rectangles pour représenter les **entités** (Pilote, Équipe, Team Principal, Course, Circuit, Voiture, Résultats de Qualification, Résultats de Course), des losanges pour les **relations** (participe, appartient, se déroule, obtient), et des traits pour les cardinalités (1,N, N,N).

"""
- Quels symboles allez-vous utiliser pour représenter les différents éléments de votre MCD ?
"""
- Entités : rectangles
- Relations : losanges
- Attributs : ovales
- Cardinalités : 1,N ou N,N représentées par les traits reliant les entités aux relations.

"""
- Comment allez-vous organiser visuellement votre diagramme pour qu'il soit clair et facile à comprendre ?
"""
- Placez les entités principales au centre (comme **Pilote**), les entités secondaires autour (comme **Course**, **Équipe**, **Voiture**, **Résultats**), et reliez-les avec les relations logiques pour rendre le modèle intuitif.

## Conseils
"""
Réfléchissez à la manière dont votre modèle pourrait être utilisé dans un système réel. Est-il complet ? Est-il trop complexe ?
"""
- Assurez-vous que toutes les informations importantes pour gérer un championnat de F1 sont modélisées et qu'aucun lien crucial n'est manquant. Évitez d'ajouter des détails superflus qui compliqueraient inutilement le modèle.

## Rendu
"""
À la fin du TP, vous devriez avoir un **diagramme entité-relation** complet représentant le modèle de données pour les pilotes de F1. Préparez-vous à expliquer vos choix de modélisation.

Une fois votre **MCD** réalisé, vous pouvez passer à l'intégration de la base dans le site web.
"""
