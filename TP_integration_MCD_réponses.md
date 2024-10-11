### Question : Pourquoi créons-nous des tables séparées pour champion_position, champion_region, champion_specie et champion_range ?
On crée ces tables pour les cardinalités many-to-many, car une position peut appartenir à plusieurs champions, specie et range de même. On le fait car on ne peut pas directement le mettre dans la table Champion
### Question : Quelles différences notez-vous entre la structure de la table champions et celle des autres tables ?
On observe que la table champion contient les clés étrangères alors que les autres non
### Question : Pourquoi utilisons-nous belongsToMany pour certaines relations et belongsTo pour d'autres ?
On utilise belongsToMany pour dire que l'entité appartient à plusieurs entités et belongTo pour dire que l'entité n'appartient qu'une seule fois à l'autre entité
### Question : Que se passe-t-il si vous exécutez cette commande plusieurs fois ?
Si on éxécute la commande plusieurs fois, le terminal nous indique qu'il n'y a rien à migrer de nouveau (jusqu'au prochain changement dans le code)
### Question finale : Comment pourriez-vous vérifier que votre structure de base de données a été correctement mise en place ?
On peut le vérifier à l'aide de HeidiSQL en actualisant la base de données, on peut observer que toutes les tables ont été incorporé :
![image](https://github.com/user-attachments/assets/be4c1c52-8370-4f90-b5bc-fe5ff9e04eb8)
