CREATE DATABASE IF NOT EXISTS ecole_musique;
USE ecole_musique;

CREATE TABLE Contact (
    id_contact INT AUTO_INCREMENT PRIMARY KEY,
    sujet VARCHAR(255) NOT NULL,
    type_cours VARCHAR(255) NOT NULL,
    tranche_age VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    nom VARCHAR(150) NOT NULL,
    prenom VARCHAR(150) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telephone VARCHAR(20) NOT NULL,
    message TEXT NOT NULL,
    date_contact DATE NOT NULL
); 
