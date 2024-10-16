TP MCD 

1) Nous cherchons a modéliser les champions

2) - son nom, role ,genre ,competence
   - la primary key
   - Le type sera un varchar()

3) les categories sont important sont le role, le genre, les competence, l'espece, la region ,l année de sortie ...

4) clé etrangère

5)  -un champion possède un seule genre et un genre peut etre possédé par plusieur champion
    -un champion possède un ou plusieur role et un role peut etre possédé par plusieur champion
    -un champion possède une ou plusieur éspece et une espèce peut etre posséder par plusieur champion
    -un champion possède une seule ressource et une ressource peut etre possédé par plusieur champion
    -un champion peut possèder plusieur portée et uneportée peut etre possédé par plusieur champion
    -un champion peut possèder plusieur région et une région peut etre possédé par plusieurs champion
    -un champion possède une année de sortie et une année de sortie peut etre possédé par plusieur champion

6) -ressource vers champion: (1,n)  \n
   -champion vers ressource : (1,1)
   -genre vers champion : (1,n)
   -champion vers genre : (1,1)
   -role vers champion : (1,n)
   -champion vers role : (1,n)
   -espece vers champion :(1,n)
   -champion vers espèce : (1,n)
   -portée vers champion : (1,n)
   -champion vers portée : (1,n)
   -région vers champion : (1,n)
   -champion vers région : (1,n)
   -année de sortie vers champion : (1,n)
   -champion vers année de sortie : (1,1)

   
