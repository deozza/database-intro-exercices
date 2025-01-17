CREATE TABLE OEUVRES (
    id_oeuvre INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(255) NOT NULL,
    date_acquisition DATE NOT NULL,
    num_catalogue INT NOT NULL
);

CREATE TABLE AUTEURS (
    id_auteur INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL
);

CREATE TABLE OEUVRES_AUTEURS (
    id_oeuvre INT NOT NULL,
    id_auteur INT NOT NULL,
    PRIMARY KEY (id_oeuvre, id_auteur),
    FOREIGN KEY (id_oeuvre) REFERENCES OEUVRES(id_oeuvre) ON DELETE CASCADE,
    FOREIGN KEY (id_auteur) REFERENCES AUTEURS(id_auteur) ON DELETE CASCADE
);

CREATE TABLE SALLES (
    id_salle INT PRIMARY KEY AUTO_INCREMENT,
    nom_salle VARCHAR(255) NOT NULL,
    nb_oeuvres INT NOT NULL,
    type_eclairage VARCHAR(255) NOT NULL
);

CREATE TABLE OEUVRES_EMPRUNTEES (
    id_oeuvre INT PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    nom_proprietaire VARCHAR(255) NOT NULL,
    prenom_proprietaire VARCHAR(255) NOT NULL,
    adresse_proprietaire TEXT NOT NULL,
    date_debut_emprunt DATE NOT NULL,
    duree_emprunt INT NOT NULL,
    FOREIGN KEY (id_oeuvre) REFERENCES OEUVRES(id_oeuvre) ON DELETE CASCADE
);

CREATE TABLE OEUVRES_PRETEES (
    id_oeuvre INT PRIMARY KEY,
    date_debut_pret DATE NOT NULL,
    duree_pret INT NOT NULL,
    FOREIGN KEY (id_oeuvre) REFERENCES OEUVRES(id_oeuvre) ON DELETE CASCADE
);

CREATE TABLE ASSURANCES (
    id_oeuvre INT PRIMARY KEY,
    montant_prime DECIMAL(10, 2) NOT NULL,
    valeur_assuree DECIMAL(10, 2) NOT NULL,
    nom_compagnie VARCHAR(255) NOT NULL,
    adresse_compagnie TEXT NOT NULL,
    FOREIGN KEY (id_oeuvre) REFERENCES OEUVRES_EMPRUNTEES(id_oeuvre) ON DELETE CASCADE
);

CREATE TABLE TYPES_OEUVRES (
    id_type INT PRIMARY KEY AUTO_INCREMENT,
    type_oeuvre VARCHAR(255) NOT NULL
);

CREATE TABLE PARTICULIERS_TYPES (
    id_proprietaire INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    adresse TEXT NOT NULL,
    id_type INT NOT NULL,
    FOREIGN KEY (id_type) REFERENCES TYPES_OEUVRES(id_type) ON DELETE CASCADE
);