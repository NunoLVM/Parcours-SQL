CREATE DATABASE locovelo;

USE locovelo;

CREATE TABLE client (
    id_client INT AUTO_INCREMENT PRIMARY KEY,
    prenom VARCHAR(50) NOT NULL,
    nom VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    date_inscription DATE NOT NULL
);

CREATE TABLE typevelo (
    id_type INT AUTO_INCREMENT PRIMARY KEY,
    libelle VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE etatvelo (
    id_etat INT AUTO_INCREMENT PRIMARY KEY,
    libelle VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE velo (
    id_velo INT AUTO_INCREMENT PRIMARY KEY,
    marque VARCHAR(50) NOT NULL,
    taille VARCHAR(10) NOT NULL,
    tarif_horaire DECIMAL(5, 2) NOT NULL CHECK (tarif_horaire >= 0),
    disponibilite BOOLEAN NOT NULL DEFAULT TRUE,
    id_typevelo INT NOT NULL,
    id_etatvelo INT NOT NULL,
    FOREIGN KEY (id_typevelo) REFERENCES typevelo (id_type),
    FOREIGN KEY (id_etatvelo) REFERENCES etatvelo (id_etat)
);

CREATE TABLE location (
    id_location INT AUTO_INCREMENT PRIMARY KEY,
    date_heure_debut DATETIME NOT NULL,
    date_heure_fin DATETIME NOT NULL,
    montant_total DECIMAL(6, 2) NOT NULL CHECK (montant_total >= 0),
    id_client INT NOT NULL,
    id_velo INT NOT NULL,
    FOREIGN KEY (id_client) REFERENCES client (id_client),
    FOREIGN KEY (id_velo) REFERENCES velo (id_velo)
);