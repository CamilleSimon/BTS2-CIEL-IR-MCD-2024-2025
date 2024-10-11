# TP MCD - Formula Branly

## Objectif
Créer un **Modèle Conceptuel de Données (MCD)** étendu pour représenter les **pilotes de F1** et leurs caractéristiques.

## Contexte
La **Formule 1** est un sport populaire avec de nombreux pilotes, chacun ayant des caractéristiques uniques. Votre tâche est de modéliser ces informations dans un **MCD**.

## Étapes et Questions de Réflexion

### 1. Identification des entités principales
   
Quel est l'élément central de la Formule 1 que nous cherchons à modéliser ?
   
- L'élément principal à modéliser est **le pilote de F1**. Il représente le cœur de notre modèle.

### 2. Définition des attributs
   
- Comment pouvez-vous représenter l'identifiant unique d'un pilote dans le modèle ?
   
- L'identifiant unique d'un pilote pourrait être un **ID Pilote** (un entier unique pour chaque pilote).

   
- Quelles informations sont uniques à un pilote ?
   
- Les informations uniques à un pilote incluent : 
  - **Nom** 
  - **Prénom**
  - **Nationalité**
  - **Numéro de course**
  - **Équipe actuelle**
  - **Date de naissance**

   
- Les informations non uniques seront alors des entités secondaires.
   
- D'autres informations non uniques, comme les résultats des courses ou les records de tour, seront modélisées comme des entités secondaires.

### 3. Identification des entités secondaires
   
Outre les pilotes, quelles autres catégories d'informations sont importantes dans la Formule 1 et pourront être modélisées sous forme d'entités ?
   
- Les entités secondaires importantes sont :
  - **Équipes de F1** (chaque pilote appartient à une équipe)
  - **Courses** (chaque pilote participe à plusieurs courses au cours d'une saison)
  - **Circuits** (les courses se déroulent sur différents circuits)
  - **Résultats** (les performances des pilotes dans chaque course)
  - **Voitures** (chaque équipe dispose de voitures spécifiques utilisées par les pilotes)

### 4. Définition des attributs pour les entités secondaires
   
Pour chaque entité secondaire que vous avez identifiée, quelles informations sont nécessaires pour la décrire ?
   
- **Équipe** : nom de l’équipe, sponsor, base (siège social).
- **Course** : nom de la course, date, pays.
- **Circuit** : nom du circuit, localisation, longueur du circuit.
- **Résultat** : position finale, temps de course, points marqués.
- **Voiture** : modèle de la voiture, année de fabrication, moteur utilisé.

### 5. Établissement des relations
   
- Quelles sont les connexions logiques entre l'entité principale (pilote) et les entités secondaires ?
   
- Un **pilote** est associé à une **équipe**.  
- Un **pilote** participe à plusieurs **courses**.  
- Une **course** se déroule sur un **circuit** spécifique.  
- Un **pilote** a des **résultats** spécifiques dans chaque **course**.  
- Une **équipe** possède plusieurs **voitures** utilisées par ses **pilotes**.

   
- Comment exprimeriez-vous ces connexions en termes de relations dans un MCD ?
   
- Un **pilote** appartient à une seule **équipe**, mais une **équipe** peut avoir plusieurs **pilotes** (relation 1,N).
- Un **pilote** participe à plusieurs **courses** et chaque **course** a plusieurs **pilotes** (relation N,N).
- Chaque **course** est organisée sur un seul **circuit**, mais un **circuit** peut accueillir plusieurs **courses** (relation 1,N).
- Chaque **pilote** peut obtenir plusieurs **résultats**, et chaque **résultat** correspond à une **course** spécifique (relation N,N).
- Une **équipe** possède plusieurs **voitures**, et une **voiture** peut être utilisée par un seul **pilote** pendant une saison (relation 1,N).

### 6. Détermination des cardinalités
   
- Pour chaque relation que vous avez identifiée, réfléchissez :
    - Un pilote peut-il avoir plusieurs instances de cette caractéristique ?
   
- Oui, un **pilote** peut participer à plusieurs **courses** au cours de la saison.

   
- Cette caractéristique peut-elle être partagée par plusieurs pilotes ?
   
- Oui, plusieurs **pilotes** peuvent participer à la même **course** et appartenir à la même **équipe**.

   
- Comment ces réponses se traduisent-elles en termes de cardinalités dans votre modèle ?
   
- **Équipe** à **Pilote** : 1,N (une équipe peut avoir plusieurs pilotes).
- **Course** à **Pilote** : N,N (chaque course a plusieurs pilotes et chaque pilote participe à plusieurs courses).
- **Course** à **Circuit** : 1,N (un circuit peut accueillir plusieurs courses).
- **Pilote** à **Résultat** : 1,N (un pilote peut obtenir plusieurs résultats, mais chaque résultat est associé à un pilote unique).
  
### 7. Création du diagramme
   
- Utilisez [draw.io](https://draw.io) pour créer votre diagramme.
   
- Vous allez utiliser des rectangles pour représenter les **entités** (Pilote, Équipe, Course, Circuit, Voiture, Résultat), des losanges pour les **relations** (participe, appartient, se déroule, obtient), et des traits pour les cardinalités (1,N, N,N).

   
- Quels symboles allez-vous utiliser pour représenter les différents éléments de votre MCD ?
   
- Entités : rectangles
- Relations : losanges
- Attributs : ovales
- Cardinalités : 1,N ou N,N représentées par les traits reliant les entités aux relations.

   
- Comment allez-vous organiser visuellement votre diagramme pour qu'il soit clair et facile à comprendre ?
   
- Placez les entités principales au centre (comme **Pilote**), les entités secondaires autour (comme **Course**, **Équipe**, **Voiture**), et reliez-les avec les relations logiques pour rendre le modèle intuitif.

## Conseils
   
Réfléchissez à la manière dont votre modèle pourrait être utilisé dans un système réel. Est-il complet ? Est-il trop complexe ?
   
- Assurez-vous que toutes les informations importantes pour gérer un championnat de F1 sont modélisées et qu'aucun lien crucial n'est manquant. Évitez d'ajouter des détails superflus qui compliqueraient inutilement le modèle.

## Rendu
   
À la fin du TP, vous devriez avoir un **diagramme entité-relation** complet représentant le modèle de données pour les pilotes de F1. Préparez-vous à expliquer vos choix de modélisation.

Une fois votre **MCD** réalisé, vous pouvez passer à l'intégration de la base dans le site web.
   
