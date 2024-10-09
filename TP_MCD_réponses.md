1. Identification des entités principales

Quel est l'élément central du jeu League of Legends que nous cherchons à modéliser ?
Le champion est l'élément du jeu LOL que nous cherchons à modéliser

2. Définition des attributs

Quels types d'informations sont nécessaires pour décrire complètement un champion ?
le nom.
Comment pouvez-vous représenter l'identifiant unique d'un champion dans le modèle ?
avec la clé primaire
Quels types de données seraient appropriés pour chaque attribut que vous avez identifié ?
pour le nom: varchar est appropriés

3. Identification des entités secondaires
Outre les champions, quelles autres catégories d'informations sont importantes dans League of Legends et pourront être modélisées sous forme d'entités ?
le genre, le role, l'espéce, la ressource, le type de portée, régions

4. Définition des attributs pour les entités secondaires
Pour chaque entité secondaire que vous avez identifiée, quelles informations sont nécessaires pour la décrire ?
leur ID, leur type

5. Établissement des relations / 6. Détermination des cardinalités
Quelles sont les connexions logiques entre l'entité principale (champion) et les entités secondaires ?
Comment exprimeriez-vous ces connexions en termes de relations dans un MCD ?
Comment ces réponses se traduisent-elles en termes de cardinalités dans votre modèle ?

.un champion il a un genre (1,1), un genre appartient a plusieurs champion (1,n)

.un champion a plusieurs éspeces(1,n), un espéce appartient a plusieurs champion (1, n)

.un champion a plusieurs roles(1,n), un role appartient a plusiers champions (1, n)

.un champion a une ressourse(1,1), une ressourse appartient a plusieurs champions (1,n)

.un champion a plusieurs types de portées(1,n), un type de portée appartient a plusiers champions(1,n)

.un champion a plusiers régions(1,n), une région appartient à plusiers champions(1,n) 

