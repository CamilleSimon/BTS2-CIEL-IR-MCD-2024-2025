1) CREATE TABLE champion (
champion_id INTEGER PRIMARY KEY AUTOINCREMENT,
name VARCHAR(50) NOT NULL,
title VARCHAR (50),
lore TEXT,
gender_id INTEGER,
resource_id INTEGER,
year_id INTEGER,
FOREIGN KEY (gender_id) REFERENCES genders(gender_id),
FOREIGN KEY (resource_id) REFERENCES resources(resource_id),
FOREIGN KEY (year_id) REFERENCES years(year_id)
)

 2) ALTER TABLE champions
    ADD popularity INT



3) INSERT INTO champions (name , title , lore , gender_id , resource_id , year_id , popularity)
VALUES ( 'Fiddlesticks', 'The Ancient Fear', 'Something has awoken in Runeterra. Something ancient. Something terrible. The ageless horror known as Fiddlesticks stalks the edges of mortal society, drawn to areas thick with paranoia where it feeds upon terrorized victims. Wielding a jagged scythe, the haggard, makeshift creature reaps fear itself, shattering the minds of those unlucky enough to survive in its wake. Beware the sounding of the crow, or the whispering of the shape that appears almost human... Fiddlesticks has returned.', 'Autre', 'Mana', '2009', '5/10');


4) SELECT *
FROM champions
ORDER BY name
