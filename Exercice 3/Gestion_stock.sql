Gestion_stock

CREATE TABLE PRODUITS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code_produit VARCHAR(50) NOT NULL UNIQUE,
    designation VARCHAR(255) NOT NULL,
    prix_unitaire DECIMAL(10, 2) NOT NULL
);

CREATE TABLE FOURNISSEURS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_fournisseur VARCHAR(50) NOT NULL UNIQUE,
    nom VARCHAR(255) NOT NULL,
    adresse VARCHAR(255) NOT NULL
);

CREATE TABLE PRODUITS_FOURNISSEURS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produit_id INT NOT NULL,
    fournisseur_id INT NOT NULL,
    prix_achat DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (produit_id) REFERENCES PRODUITS(id),
    FOREIGN KEY (fournisseur_id) REFERENCES FOURNISSEURS(id),
    UNIQUE (produit_id, fournisseur_id) 
);
