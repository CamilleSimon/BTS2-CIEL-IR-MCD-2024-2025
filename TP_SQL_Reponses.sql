// Réponse question 1 :
CREATE TABLE champions(
  champion_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  lore VARCHAR(50),
  FOREIGN KEY (gender_id) REFERENCES gender(gender_id),
  FOREIGN KEY (resource_id) REFERENCES resource(resource_id),
  FOREIGN KEY (year_id) REFERENCES year(year_id),
  
