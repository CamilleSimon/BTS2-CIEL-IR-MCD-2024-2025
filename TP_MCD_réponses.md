
1.Identification des entités principales
1)L'élement central qu'on cherche a modéliser est les personnage = "CHAMPION"
 
 2. Définition des attributs
 1)Nom,
 2)En lui associant un id avec le type int 
 3)avec le type varchar

 3. Identification des entités secondaires
 1)Genre,Rôle,Espèce,Ressource,Région(s),Année de sortie, portée

 4. Définition des attributs pour les entités secondaires
 1) leur type et un id
    
 5. Établissement des relations
1,2) Champion a 1 genre / un genre appartient a plusieurs champions
Champion peut avoir n role / un role appartient a plusieur champion
Champion peut avoir de 1 a 3 espece / une espece appartient a plusieur champion
Champion peut avoir une années de sortie / Une années de sortie peut avoir plusieur champion
Champion peut avoir n regions / Une regions peut avoir plusieur champion
Champion peut avoir n portée / Une portée peut avoir plusieur Champion
Champion peut avoir une ressource / une ressource peut avoir plusieur Champion

6. Détermination des cardinalités
1,2) Champion (1,1) Genre / Genre (1,n) Champion  -> Un ou plusieurs  de Genre vers Champion

   Champion (1,n) Role / Role (1,n) Champion -> Un ou plusieurs de Genre vers Champion et de Champion vers Genre double fleche
   
   Champion (1,3) Espece / Espece (1,n) Champion -> Un ou plusieurs de espece vers Champion et de Champion vers espece double fleche
   
   Champion (1,1) Années de sortie / Années de sortie (1,n) Champion -> Un ou plusieurs  de Année de srotie vers Champion
   
   Champion (1,n) Regions / Regions (1,n) Champion -> Un ou plusieurs de regions vers Champion et de Champion vers regions double fleche
   
  Champion (1,n) Portée / Portée (1,n) Champion -> Un ou plusieurs  de Portée vers Champion et de Champion vers Portée double fleche

  Champion (1,1) Ressource / Ressource (1,n) Champion -> Un ou plusieurs  de ressoruce vers Champion
7)

