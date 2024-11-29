CREATE DATABASE Ecole_musique; 

USE Ecole_musique;

CREATE TABLE contact (
id_contact VARCHAR(255) NOT NULL PRIMARY KEY,
type_cours VARCHAR(255) NOT NULL,
tranche_age VARCHAR(255) NOT NULL, 
nom VARCHAR (255) NOT NULL, 
prenom VARCHAR (255) NOT NULL, 
age int NOT NULL, 
email VARCHAR(255) NOT NULL, 
telephone int NOT NULL, 
sujet TEXT NOT NULL,
date_contact DATE NOT NULL

);
