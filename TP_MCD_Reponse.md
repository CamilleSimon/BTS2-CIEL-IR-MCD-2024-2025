## 1
Réponse 1 : Nouscherchons a modéliser des champions
Réponse 2 : Les caractéristiques uniques sont le nom, la réplique et les compétences
## 2
Réponse 3 : Nous avons besoin de son nom, son genre, son rôle, son espèce, sa ressource, son type de portée, sa région, son année de sortie, sa réplique, ses compétences et ses skins
Réponse 4 : Par une clé primaire étant un int
Réponse 5 : Pour le nom, le genre, le rôle, l'espèce, la ressource, la portée, la région, l'année et la réplique, il faut des VARCHAR et pour les compétences et les skins il faut des BASE64
## 3
Réponse 6 : Les autres informations importantes sont le rôle du champion, la ressource utilisée, la portée du champion, ses skins et ses répliques
Réponse 7 : Le rôle, le genre, l'espèce, la ressource, le type de portée, la région, l'année de sortie pourraient être des entitées séparées car plusieurs champions peuvent avoir les mêmes
## 4
Réponse 8 : Leur nom
## 5
Réponse 9 : Les connexions logiques sont possession et appartenance
## 6
Réponse 10 : Un champion peut avoir plusieurs rôles, un rôle peut être donné à plusieurs champions

             Un champion peut avoir un genre, un genre peut être donné à plusieurs champions
             
             Un champion peut avoir plusieurs espèces, une espèce peut être donnée à plusieurs champions
             
             Un champion peut avoir plusieurs types de portée, un type de portée peut être donné à plusieurs champions
             
             Un champion peut avoir plusieurs régions, une région peut être donnée à plusieurs champions
             
             Un champion peut avoir une seule année de sortie, une année de sortie peut être donnée à plusieurs champions
             
             Un champion peut avoir plusieurs répliques, une réplique est donnée à un seul champion
             
             Un champion peut avoir plusieurs compétences, une compétence est donnée à un seul champion
             
             Un champion peut avoir plusieurs skins, un skin est donné à un seul champion
             
Réponse 11 : Champion-Rôle : one-to-many ; one-to-many

             Champion-Genre : one-to-one ; one-to-many
             
             Champion-Espèce : one-to-many ; one-to-many
             
             Champion-Ressource : one-to-one ; one-to-many
             
             Champion-Type de portée : one-to-many ; one-to-many
             
             Champion-Région : one-to-many ; one-to-many
             
             Champion-Année de sortie : one-to-one ; one-to-many
             
             Champion-Réplique : one-to-many ; one-to-one
             
             Champion-Compétence : one-to-many ; one-to-one
             
             Champion-Skin : one-to-many ; one-to-one
