
CREATE DATABASE GestionStock;
USE GestionStock;


CREATE TABLE Produit (
    code INT AUTO_INCREMENT PRIMARY KEY, 
    designation VARCHAR(255) NOT NULL,  
    prix_unitaire DECIMAL(10, 2) NOT NULL 
);


CREATE TABLE Fournisseur (
    numero INT AUTO_INCREMENT PRIMARY KEY, 
    nom VARCHAR(255) NOT NULL,            
    adresse VARCHAR(255) NOT NULL         
);


CREATE TABLE Produit_Fournisseur (
    produit_code INT NOT NULL,           
    fournisseur_numero INT NOT NULL,    
    prix_achat DECIMAL(10, 2) NOT NULL,  
    PRIMARY KEY (produit_code, fournisseur_numero), 
    FOREIGN KEY (produit_code) REFERENCES Produit(code) ON DELETE CASCADE,
    FOREIGN KEY (fournisseur_numero) REFERENCES Fournisseur(numero) ON DELETE CASCADE
);


INSERT INTO Produit (designation, prix_unitaire) VALUES
('Ciment', 25.50),
('Sable', 15.00),
('Gravier', 20.75);


INSERT INTO Fournisseur (nom, adresse) VALUES
('Fournisseur A', '10 rue des Entreprises, Paris'),
('Fournisseur B', '15 avenue du Commerce, Lyon'),
('Fournisseur C', '20 boulevard Industriel, Marseille');


INSERT INTO Produit_Fournisseur (produit_code, fournisseur_numero, prix_achat) VALUES
(1, 1, 23.00), 
(1, 2, 22.50), 
(2, 1, 14.00), 
(2, 3, 13.75), 
(3, 2, 19.50), 
(3, 3, 20.00);

