DROP DATABASE IF EXISTS expositionart;

CREATE DATABASE expositionart;
USE expositionart;

CREATE TABLE OEUVRES (
    num_de_catalogue INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    auteurs VARCHAR(255) NOT NULL,
    date_acquisition VARCHAR(255) NOT NULL,
);

CREATE TABLE SALLES (
    id_salle INT AUTO_INCREMENT PRIMARY KEY,
    numero_salle INT,
    nom_salle VARCHAR(100),
    nombre_oeuvres INT,
    type_eclairage VARCHAR(100)
);

CREATE TABLE EXPOSITIONS (
    id_exposition INT AUTO_INCREMENT PRIMARY KEY,
    debut DATE,
    duree_prêt INT
);

CREATE TABLE EMPRUNT (
    id_emprunt INT AUTO_INCREMENT PRIMARY KEY,
    titre_oeuvre VARCHAR(255),
    nom_proprietaire VARCHAR(100),
    prenom_proprietaire VARCHAR(100),
    adresse_proprietaire TEXT,
    date_debut DATE,
    duree_prêt INT
);

CREATE TABLE PROPRIETAIRE (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titre_oeuvre VARCHAR(255),
    nom VARCHAR(255),
    prenom VARCHAR(255),
    adresse VARCHAR(255),
    type_oeuvre VARCHAR(255)
);

CREATE TABLE ASSURANCE (
    id INT AUTO_INCREMENT PRIMARY KEY,
    montant FLOAT (100,41),
    valeur_assurer FLOAT (100,41),
    nom_campagnie VARCHAR(255),
    adresse_compagnie VARCHAR(255)
);

