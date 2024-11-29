CREATE DATABASE Ecole_de_Musique;

USE Ecole_de_Musique;

CREATE TABLE Contact (
    id_Contact INT AUTO_INCREMENT PRIMARY KEY,
    sujet VARCHAR(255) NOT NULL,
    type_Cours VARCHAR(255) NOT NULL,
    tranche_Age VARCHAR(50) NOT NULL ,
    age INT NOT NULL,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telephone VARCHAR(20) not,
    message TEXT not NULL,
    date_Contact DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);