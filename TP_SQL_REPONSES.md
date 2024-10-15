1. Création d'une table
Créez une table champions avec les colonnes appropriées basées sur le MCD fourni.
CREATE TABLE cahmpions (
  id_chamipons INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  title VARCHAR(50),
  lore TEXT,
  gender_id INT,
  ressource_id INT,
  year_id INT,
  created_at DATE,
  updated_at DATE,

2. Modification d'une table
Ajoutez une nouvelle colonne popularity de type INT à la table champions.
