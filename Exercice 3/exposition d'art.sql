
CREATE DATABASE ExpoArt;
USE ExpoArt;

CREATE TABLE Oeuvre (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    date_acquisition DATE NOT NULL,
    numero_catalogue VARCHAR(50) NOT NULL UNIQUE
);


CREATE TABLE Auteur (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL
);


CREATE TABLE Oeuvre_Auteur (
    oeuvre_id INT NOT NULL,
    auteur_id INT NOT NULL,
    PRIMARY KEY (oeuvre_id, auteur_id),
    FOREIGN KEY (oeuvre_id) REFERENCES Oeuvre(id) ON DELETE CASCADE,
    FOREIGN KEY (auteur_id) REFERENCES Auteur(id) ON DELETE CASCADE
);


CREATE TABLE Salle (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero INT NOT NULL UNIQUE,
    nom VARCHAR(100) NOT NULL,
    nombre_oeuvres INT NOT NULL,
    type_eclairage VARCHAR(100) NOT NULL
);

CREATE TABLE Emprunt (
    id INT AUTO_INCREMENT PRIMARY KEY,
    oeuvre_id INT NOT NULL,
    proprietaire_nom VARCHAR(100) NOT NULL,
    proprietaire_prenom VARCHAR(100) NOT NULL,
    proprietaire_adresse VARCHAR(255) NOT NULL,
    date_debut DATE NOT NULL,
    duree INT NOT NULL, 
    FOREIGN KEY (oeuvre_id) REFERENCES Oeuvre(id) ON DELETE CASCADE
);


CREATE TABLE PretExposition (
    id INT AUTO_INCREMENT PRIMARY KEY,
    oeuvre_id INT NOT NULL,
    date_debut DATE NOT NULL,
    duree INT NOT NULL,
    FOREIGN KEY (oeuvre_id) REFERENCES Oeuvre(id) ON DELETE CASCADE
);


CREATE TABLE Assurance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    oeuvre_id INT NOT NULL,
    prime_assurance DECIMAL(10, 2) NOT NULL,
    valeur_assuree DECIMAL(10, 2) NOT NULL,
    compagnie_nom VARCHAR(100) NOT NULL,
    compagnie_adresse VARCHAR(255) NOT NULL,
    FOREIGN KEY (oeuvre_id) REFERENCES Oeuvre(id) ON DELETE CASCADE
);


CREATE TABLE TypeOeuvre (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE Proprietaire (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    adresse VARCHAR(255) NOT NULL
);

CREATE TABLE Proprietaire_TypeOeuvre (
    proprietaire_id INT NOT NULL,
    type_oeuvre_id INT NOT NULL,
    PRIMARY KEY (proprietaire_id, type_oeuvre_id),
    FOREIGN KEY (proprietaire_id) REFERENCES Proprietaire(id) ON DELETE CASCADE,
    FOREIGN KEY (type_oeuvre_id) REFERENCES TypeOeuvre(id) ON DELETE CASCADE
);


CREATE TABLE Oeuvre_Proprietaire (
    oeuvre_id INT NOT NULL,
    proprietaire_id INT NOT NULL,
    PRIMARY KEY (oeuvre_id, proprietaire_id),
    FOREIGN KEY (oeuvre_id) REFERENCES Oeuvre(id) ON DELETE CASCADE,
    FOREIGN KEY (proprietaire_id) REFERENCES Proprietaire(id) ON DELETE CASCADE
);


INSERT INTO TypeOeuvre (type) VALUES ('Art déco'), ('Art contemporain'), ('Antiquités'), ('Sculpture');
