# Projet LocoVelo


1. Modélisation conceptuelle

MCD avec les entités suivantes : `Client`, `Velo`, `Location`, `TypeVelo` et `EtatVelo`.


2. Création des tables

Le fichier `schema.sql` contient la création des tables avec :
- des `NOT NULL` pour éviter les champs vides
- une contrainte `UNIQUE` sur l’email du client
- des clés étrangères pour lier les tables
- une valeur par défaut pour la disponibilité d’un vélo


3. Insertion des données

Jeu de données dans les tables suivantes :

- `client` : 5 clients avec des prénoms, noms, emails et dates d’inscription 
- `velo` : 5 vélos avec des marques, tailles, types et états 
- `location` : 5 locations liées à des clients et à des vélos  
- `typevelo` : les différents types de vélo (ville, route, électrique)  
- `etatvelo` : les états possibles d’un vélo (bon, usé)

Toutes les données ont été ajoutées avec le fichier `data.sql`.


4. Requêtes SQL

Requêtes pour extraire des informations dans le fichier `requetes.sql` :

- afficher les vélos disponibles
- lister les locations faites par le client avec l’ID 1
- calculer le nombre total de locations
- calculer les revenus totaux
- afficher le revenu total par mois


5. Optimisation

J’ai ajouté des index

Le fichier `optimisation.sql` contient les commandes suivantes :

- `idx_client_nom_prenom` : facilite la recherche d’un client par nom ou prénom
- `idx_location_id_client` : accélère la recherche des locations par client