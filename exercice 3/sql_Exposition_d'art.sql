CREATE DATABASE Exposition;
USE Exposition;

CREATE TABLE Oeuvre (
    Titre VARCHAR(255) NOT NULL,
    Auteur TEXT NOT NULL,
    DateAcquisition DATE NOT NULL,
    NumeroCatalogue INT AUTO_INCREMENT PRIMARY KEY,
    Id_Salle INT,
    Id_Exposition INT,
    Id_ProprieteParticulier INT,
    Id_Assurance INT,
    FOREIGN KEY (Id_Salle) REFERENCES Salle(Num_Salle),
    FOREIGN KEY (Id_Exposition) REFERENCES Exposition(Id),
    FOREIGN KEY (Id_ProprieteParticulier) REFERENCES ProprieteParticulier(Id),
    FOREIGN KEY (Id_Assurance) REFERENCES Assurance(Id)
);

CREATE TABLE Salle (
    Num_Salle INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(255) NOT NULL,
    NombreOeuvres INT DEFAULT 0,
    TypeEclairage VARCHAR(255)
);

CREATE TABLE Exposition (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    DebutPrete DATE NOT NULL,
    DureePrete INT NOT NULL 
);

CREATE TABLE ProprieteParticulier (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(255) NOT NULL,
    Prenom VARCHAR(255) NOT NULL,
    Adresse TEXT NOT NULL
);

CREATE TABLE Assurance (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    MontantPrime DECIMAL(10, 2) NOT NULL,
    ValeurAssuree DECIMAL(10, 2) NOT NULL,
    NomCompagnie VARCHAR(255) NOT NULL,
    AdresseCompagnie TEXT NOT NULL
);
