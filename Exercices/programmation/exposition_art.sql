DROP DATABASE IF EXISTS exposition_art;

CREATE DATABASE exposition_art;
USE exposition_art;

CREATE TABLE oeuvre (
    numero_catalogue INT PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    date_acquisition DATE NOT NULL,
);

CREATE TABLE auteur (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_oeuvre) REFERENCES oeuvre(numero_catalogue) NOT NULL,
);

CREATE TABLE assureur (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    adresse VARCHAR(255) NOT NULL,
);

CREATE TABLE assurance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    prime INT NOT NULL,
    valeur INT NOT NULL,
    FOREIGN KEY (id_oeuvre) REFERENCES oeuvre(numero_catalogue) NOT NULL,
    FOREIGN KEY (id_assureur) REFERENCES assureur(id) NOT NULL,
);

CREATE TABLE salle (
    numero INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    type_eclairage VARCHAR(255) NOT NULL,
);

CREATE TABLE particulier (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    adresse VARCHAR(255) NOT NULL
);

CREATE TABLE emprunt (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date_emprunt DATE NOT NULL,
    date_retour DATE NOT NULL,
    FOREIGN KEY (id_oeuvre) REFERENCES oeuvre(numero_catalogue),
    FOREIGN KEY (id_particulier) REFERENCES particulier(id),
    FOREIGN KEY (id_salle) REFERENCES salle(numero),
);

CREATE TABLE emprunt (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date_emprunt DATE NOT NULL,
    date_retour DATE NOT NULL,
    FOREIGN KEY (id_oeuvre) REFERENCES oeuvre(numero_catalogue),
    FOREIGN KEY (id_particulier) REFERENCES particulier(id),
);
