gestion stock
CREATE TABLE Fournisseurs (
    id_fournisseur INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    adresse VARCHAR(255) NOT NULL
);

-- Table des produits
CREATE TABLE Produits (
    code_produit INT PRIMARY KEY,
    designation VARCHAR(255) NOT NULL,
    prix_unitaire DECIMAL(10, 2) NOT NULL
);

-- Table de liaison entre produits et fournisseurs avec prix d'achat
CREATE TABLE Produits_Fournisseurs 
    id_fournisseur INT,
    code_produit INT,
    prix_achat DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (id_fournisseur, code_produit),
    FOREIGN KEY (id_fournisseur) REFERENCES Fournisseurs(id_fournisseur),
    FOREIGN KEY (code_produit) REFERENCES Produits(code_produit)