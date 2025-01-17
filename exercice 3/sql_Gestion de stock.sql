CREATE DATABASE Gestion_de_stock_Gcivil;
USE Gestion_de_stock_Gcivil;

CREATE TABLE Produit (
    CodeProduit INT AUTO_INCREMENT PRIMARY KEY,
    Designation VARCHAR(255) NOT NULL,
    PrixUnitaire float(6, 2) NOT NULL
);

CREATE TABLE Fournisseur (
    Num_Fournisseur INT AUTO_INCREMENT PRIMARY KEY,
    Nom_Fournisseur VARCHAR(255) NOT NULL,
    Adresse_Fournisseur TEXT NOT NULL
);

CREATE TABLE Fourniture (
    Id_Fourniture int PRIMARY key NOT null,
    C_Produit INT NOT NULL,
    Num_Fournisseur INT NOT NULL,
    PrixAchat float(10, 2) NOT NULL,
    FOREIGN KEY (C_Produit) REFERENCES Produit(CodeProduit),
    FOREIGN KEY (Num_Fournisseur) REFERENCES Fournisseur(Num_Fournisseur)
);
