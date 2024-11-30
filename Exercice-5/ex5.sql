DROP DATABASE IF EXISTS ecole_musique;

CREATE DATABASE ecole_musique;

USE ecole_musique;

CREATE TABLE demandes_de_contact (
    id INT AUTO_INCREMENT PRIMARY KEY,
    age INT NOT NULL,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    mail VARCHAR(255) NOT NULL,
    telephone INT(13) NOT NULL,
    messages TEXT NOT NULL,
    sujet VARCHAR(255) NOT NULL,
    cours VARCHAR(255) NOT NULL,
    tranche_age VARCHAR(255) NOT NULL,
    date_contact DATE NOT NULL DEFAULT CURRENT_TIMESTAMP
);