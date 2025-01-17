DROP DATABASE IF EXISTS gestion_stock;

CREATE DATABASE gestion_stock;
USE gestion_stock;

CREATE TABLE produit (
    code INT PRIMARY KEY,
    designation VARCHAR(255),
    prix VARCHAR(255) NOT NULL,
);

CREATE TABLE fournisseur (
    numero INT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    adreesse VARCHAR(255) NOT NULL,
);

CREATE TABLE approvisionnement (
    id INT AUTO_INCREMENT PRIMARY KEY,
    prix_achat INT NOT NULL,
    nb_produit INT NOT NULL,
    id_fournisseur INT NOT NULL,
    id_fournisseur INT NOT NULL,
    FOREIGN KEY (id_fournisseur) REFERENCES fournisseur(numero),
    FOREIGN KEY (id_produit) REFERENCES produit(code),
);

CREATE TABLE livraison (
    id INT AUTO_INCREMENT PRIMARY KEY,
    prix INT NOT NULL,
    id_approvisionnement INT NOT NULL,
    FOREIGN KEY (id_approvisionnement) REFERENCES approvisionnement(id),
);
