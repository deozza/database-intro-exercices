CREATE TABLE PRODUITS (
    id_produit INT PRIMARY KEY AUTO_INCREMENT,
    code_produit VARCHAR(50) NOT NULL,
    designation VARCHAR(255) NOT NULL,
    prix_unitaire DECIMAL(10, 2) NOT NULL
);


CREATE TABLE FOURNISSEURS (
    id_fournisseur INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    adresse TEXT NOT NULL
);


CREATE TABLE FOURNISSEURS_PRODUITS (
    id_produit INT NOT NULL,
    id_fournisseur INT NOT NULL,
    prix_achat DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (id_produit, id_fournisseur),
    FOREIGN KEY (id_produit) REFERENCES PRODUITS(id_produit) ON DELETE CASCADE,
    FOREIGN KEY (id_fournisseur) REFERENCES FOURNISSEURS(id_fournisseur) ON DELETE CASCADE
);