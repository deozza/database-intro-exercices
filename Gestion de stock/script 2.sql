DROP DATABASE IF EXISTS gcivil_stock;

CREATE DATABASE gcivil_stock;
USE gcivil_stock;

CREATE TABLE produits (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(50) NOT NULL UNIQUE,
    designation VARCHAR(255) NOT NULL,
    prix_unitaire DECIMAL(10, 2) NOT NULL
);

CREATE TABLE fournisseurs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(50) NOT NULL UNIQUE,
    nom VARCHAR(255) NOT NULL,
    adresse TEXT NOT NULL
);

CREATE TABLE produits_fournisseurs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produit_id INT NOT NULL,
    fournisseur_id INT NOT NULL,
    prix_achat DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (produit_id) REFERENCES produits(id),
    FOREIGN KEY (fournisseur_id) REFERENCES fournisseurs(id)
);
