DROP DATABASE IF EXISTS exposition_art;

CREATE DATABASE exposition_art;
USE exposition_art;

CREATE TABLE oeuvres (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    date_acquisition DATE NOT NULL,
    numero_catalogue VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE auteurs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    prenom VARCHAR(255) NOT NULL,
    nom VARCHAR(255) NOT NULL
);

CREATE TABLE oeuvres_auteurs (
    oeuvre_id INT NOT NULL,
    auteur_id INT NOT NULL,
    PRIMARY KEY (oeuvre_id, auteur_id),
    FOREIGN KEY (oeuvre_id) REFERENCES oeuvres(id),
    FOREIGN KEY (auteur_id) REFERENCES auteurs(id)
);

CREATE TABLE salles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(50) NOT NULL UNIQUE,
    nom VARCHAR(255) NOT NULL,
    nombre_oeuvres INT NOT NULL,
    type_eclairage VARCHAR(255) NOT NULL
);

CREATE TABLE prets_expositions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    oeuvre_id INT NOT NULL,
    debut_pret DATE NOT NULL,
    duree_pret INT NOT NULL, -- Durée en jours
    FOREIGN KEY (oeuvre_id) REFERENCES oeuvres(id)
);

CREATE TABLE particuliers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    prenom VARCHAR(255) NOT NULL,
    nom VARCHAR(255) NOT NULL,
    adresse TEXT NOT NULL
);

CREATE TABLE oeuvres_pret_particuliers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    oeuvre_id INT NOT NULL,
    particulier_id INT NOT NULL,
    debut_pret DATE NOT NULL,
    duree_pret INT NOT NULL, -- Durée en jours
    FOREIGN KEY (oeuvre_id) REFERENCES oeuvres(id),
    FOREIGN KEY (particulier_id) REFERENCES particuliers(id)
);

CREATE TABLE assurances (
    id INT AUTO_INCREMENT PRIMARY KEY,
    oeuvre_id INT NOT NULL,
    montant_prime DECIMAL(10, 2) NOT NULL,
    valeur_assuree DECIMAL(10, 2) NOT NULL,
    nom_compagnie VARCHAR(255) NOT NULL,
    adresse_compagnie TEXT NOT NULL,
    FOREIGN KEY (oeuvre_id) REFERENCES oeuvres(id)
);

CREATE TABLE types_oeuvres (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(255) NOT NULL
);

CREATE TABLE particuliers_types_oeuvres (
    particulier_id INT NOT NULL,
    type_oeuvre_id INT NOT NULL,
    PRIMARY KEY (particulier_id, type_oeuvre_id),
    FOREIGN KEY (particulier_id) REFERENCES particuliers(id),
    FOREIGN KEY (type_oeuvre_id) REFERENCES types_oeuvres(id)
);
