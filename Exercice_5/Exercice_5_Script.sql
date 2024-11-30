

CREATE DATABASE ecole_musique; 

USE ecole_musique;

CREATE TABLE contact (
contact_id INT PRIMARY KEY NOT NULL,
nom VARCHAR(255) NOT NULL,
prenom VARCHAR(255) NOT NULL, 
email VARCHAR (255) NOT NULL, 
num_telephone INT NOT NULL, 
tranche_age VARCHAR (255) NOT NULL, 
age INT NOT NULL, 
date_contact DATE NOT NULL,
type_cours VARCHAR (255) NOT NULL

);