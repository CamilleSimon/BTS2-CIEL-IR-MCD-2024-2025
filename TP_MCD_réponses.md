1) L'élément central du jeux sont les champions.
2) A l'aide d'une clé primaire, qui sera un champ de type entier dans la table champion.
L'information unique à chaque champion est son nom.
3) Les autres entitées importantes sont le genre, le(s) role(s), le(s) espèce(s), la ressource utilisé, le type de portée, la/les région(s), l'année de sortie et les compétences.
4) Les informations nécessaires sont leurs nom.

5/6)

a) Un champion possède un genre et un genre peut appartenir à plusieurs champion. 1:N

b) Un champion possède un ou plusieurs rôles et rôle peut appartenir à plusieurs champion. 1..N:N

c) Un champion possède une ou plusieurs espèces et une espèce peut appartenir à plusieurs champion. 1..N:N

d) Un champion possède une ressource et une ressource peut appartenir à plusieurs champion. 1:N

e) Un champion possède un type de portée et un type de portée peut appartenir à plusieurs champion. 1:N

f) Un champion possède une ou plusieurs région et une région peut appartenir à un ou plusieurs champion. 1..N:N

g) Un champion possède une année de sortie et une année de sortie peut appartenir à plusieurs champion. 1:N
