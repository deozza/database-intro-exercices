DROP DATABASE IF EXISTS formulaire;

CREATE DATABASE formulaire;

USE formulaire;

CREATE TABLE visiteur(
	email VARCHAR(255) PRIMARY KEY,
	age int NOT NULL,
	nom VARCHAR(255) NOT NULL,
	prenom VARCHAR(255) NOT NULL,
	telephone int NOT NULL
);

CREATE TABLE contact(
	id_contact int AUTO_INCREMENT PRIMARY KEY,
	sujet VARCHAR(255) NOT NULL,
	type_cours VARCHAR(255) NOT NULL,
	message_contact int NOT NULL
);