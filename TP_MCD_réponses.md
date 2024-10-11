### 1) Identification des entités principales

- L'élement central du jeu est le Champion
  
### 2) Définition des attributs

- On peut représenter l'identifiant unique du Champion avec une clé primaire (champion_id)
- Seul le nom du champion est unique à chaque champion
  
### 3) Identification des entités secondaires
  
- Sans les champions nous avons besoin de : ses compétences, son genre, son rôle, son espèce, des ressources, son type de portée, sa région ainsi que sa date de sortie
  
### 4) Définition des attributs pour les entités secondaires
  
- Compétence : il nous faut une **clé primaire** (competence_id) ainsi que le **nom de la compétence** car elles sont unique pour chaque champion
- Genre : il nous faut une **clé primaire** (genre_id) ainsi que le **genre** du champion (masculin ou féminin)
- Rôle : il nous faut une **clé primaire** (role_id) ainsi que le **nom du rôle**
- Espèce : il nous faut une **clé primaire** (espece_id) ainsi que le **nom de l'espèce**
- Ressources : il nous faut une **clé primaire** (ressource_id) ainsi que le **nom de la ressource** 
- Type de portée : il nous faut une **clé primaire** (portee_id) ainsi que le **nom du type de portée**
- Région(s) : il nous faut une **clé primaire** (region_id) ainsi que le **nom des régions**
- Date de sortie : il nous faut une **clé primaire** (sortie_id) ainsi qu'un **entier pour l'année de sortie**
  
### 5) Etablissement des relations et 6) Détermination des cardinalités
  
- Un champion possède **une ou plusieurs** compétences, chaque compétence est **unique** au champion
- Un champion possède **un seul** genre, le genre peut être posséder par **plusieurs** champions
- Un champion possède **un ou plusieurs** rôle, les rôles peuvent être posséder par **un ou plusieurs** champions
- Un champion possède **une ou plusieurs** espèces, les espèces peuvent être posséder par **un ou plusieurs** champions
- Un champion possède **un seul** type de ressources, les types de ressources peuvent être posséder par **un ou plusieurs** champions
- Un champion possède **un ou plusieurs** type de portée, les types de portée peuvent être posséder par **un ou plusieurs** champions
- Un champion possède **une ou plusieurs** régions, les régions peuvent être posséder par **un ou plusieurs** champions
- Un champion possède **une seul** année de sortie, les année de sortie peuvent être posséder par **un ou plusieurs** champions

#### Cardinalités :

- Champion 1------1..N Competence
- Champion N------1 Genre
- Champion 1..N------1..N Rôle
- Champion 1..N------1..N Espèces
- Champion 1..N------1 Ressources
- Champion 1..N------1..N Type de Portée
- Champion 1..N------1..N Régions
- Champion 1..N------1 Année de sortie
  
### 7. Création du diagramme

- Je vais principalement utiliser les symbole :
- ![image](https://github.com/user-attachments/assets/8df64492-78e9-43d2-a502-e151fe5ad187) (un ou plusieurs)
- ![image](https://github.com/user-attachments/assets/35bffa1f-776b-4430-ab39-e58dd7210cc0) (un seul)
- ![image](https://github.com/user-attachments/assets/85b8ee45-1169-4306-a5ce-9952be21516c) (plusieurs)

- J'ai mis mon élement principal "Champion" au centre, en gros. J'ai par la suite mis les élements secondaires sur le côté, lié avec les cardinalités à mon élement "Champion"




  
