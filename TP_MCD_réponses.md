1. Identification des entités principales
   -L'élément central du jeu sont les champions.
2. Définition des attributs
   -A l'aide d'une clé primaire sur le nom ou son id.
3. Identification des entités secondaires
   -Le noms, le genre, le position, l'espèce, les ressources, le type d'attaque, la région et la date de sortie peuvent-elles
   aussi être des entités.
4. Définition des attributs pour les entités secondaires
   Le nom de mes entités secondaires sont en anglais:
   name: name_id; name
   gender: gender_id; gender
   position: position_id; position
   specie: specie_id; specie
   resource: resource_id; resource
   range_type: range_type_id; range_type
   region: region_id; region
   release_year: release_year_id; release_year
5. Établissement des relations
   Les relations sont que le champion peut avoir un seul nom, genre, ressource et date de sortie mais peut avoir plusieurs
   positions, espèces, type de portée et régions.
   On exprime les connexions avec des cardinalités.
6. Détermination des cardinalités
   Un champion peut plusieurs instances dans les caractéristiques suivantes: positions, espèces, type de portée et régions.
   Toutes les caractéristiques suaf le nom peuvent être partagé par tous les champions.
   Ces relations sont représentés avec les ces cardinalités:
   ![image](https://github.com/user-attachments/assets/14bcebfc-0be8-48f6-aaed-917d7e21d8c5)




