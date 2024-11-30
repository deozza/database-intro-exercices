DROP DATABASE IF EXISTS ecole_musique;

CREATE DATABASE ecole_musique;
USE ecole_musique;


CREATE TABLE Contact (
    identifiant INT PRIMARY KEY,
    sujet VARCHAR(255) NOT NULL,
    type_cours VARCHAR(255) NOT NULL,
    tranche_age VARCHAR(80) NOT NULL,
    age INT NOT NULL,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    tel INT NOT NULL,
    messages VARCHAR(255) NOT NULL,
    date_contact DATE NOT NULL
);