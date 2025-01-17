expo dart 
CREATE TABLE Auteurs (
    id_auteur INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL
);

-- Table des œuvres
CREATE TABLE Oeuvres (
    id_oeuvre INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(255) NOT NULL,
    date_acquisition DATE,
    num_catalogue INT NOT NULL UNIQUE,
    id_auteur INT,
    id_salle INT,
    id_exposition INT,
    FOREIGN KEY (id_auteur) REFERENCES Auteurs(id_auteur),
    FOREIGN KEY (id_salle) REFERENCES Salles(id_salle),
    FOREIGN KEY (id_exposition) REFERENCES Expositions(id_exposition)
);

-- Table des salles d'exposition
CREATE TABLE Salles (
    id_salle INT PRIMARY KEY AUTO_INCREMENT,
    num_salle INT NOT NULL,
    nom_salle VARCHAR(255),
    nb_oeuvres INT,
    type_eclairage VARCHAR(255)
);

-- Table des expositions
CREATE TABLE Expositions (
    id_exposition INT PRIMARY KEY AUTO_INCREMENT,
    nom_exposition VARCHAR(255),
    date_debut DATE,
    date_fin DATE
);

-- Table des emprunts d'œuvres par des particuliers
CREATE TABLE Emprunts (
    id_emprunt INT PRIMARY KEY AUTO_INCREMENT,
    id_oeuvre INT,
    id_particulier INT,
    date_debut DATE,
    duree INT, -- Durée de l'emprunt en jours
    FOREIGN KEY (id_oeuvre) REFERENCES Oeuvres(id_oeuvre),
    FOREIGN KEY (id_particulier) REFERENCES Particuliers(id_particulier)
);

-- Table des assurances des œuvres
CREATE TABLE Assurances (
    id_oeuvre INT PRIMARY KEY,
    montant_prime DECIMAL(10, 2),
    valeur_assuree DECIMAL(10, 2),
    compagnie_nom VARCHAR(255),
    compagnie_adresse VARCHAR(255),
    FOREIGN KEY (id_oeuvre) REFERENCES Oeuvres(id_oeuvre)
);

-- Table des particuliers prêtant des œuvres
CREATE TABLE Particuliers (
    id_particulier INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    adresse VARCHAR(255) NOT NULL
);

-- Table des types d'œuvres des particuliers
CREATE TABLE Types_Oeuvres_Particuliers (
    id_particulier INT,
    type_oeuvre VARCHAR(255),
    PRIMARY KEY (id_particulier, type_oeuvre),
    FOREIGN KEY (id_particulier) REFERENCES Particuliers(id_particulier)
);

-- Exemple de requête pour afficher la liste des particuliers et les types d'œuvres qu'ils possèdent
SELECT 
    p.prenom, 
    p.nom, 
    p.adresse, 
    GROUP_CONCAT(t.type_oeuvre ORDER BY t.type_oeuvre) AS types_oeuvres
FROM 
    Particuliers p
JOIN 
    Types_Oeuvres_Particuliers t ON p.id_particulier = t.id_particulier
GROUP BY 
    p.id_particulier;