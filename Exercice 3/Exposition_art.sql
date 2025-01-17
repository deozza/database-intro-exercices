Exposition_art

CREATE TABLE OEUVRES (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    date_acquisition DATE NOT NULL,
    numero_catalogue VARCHAR(50) NOT NULL
);


CREATE TABLE AUTEURS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL
);

CREATE TABLE OEUVRES_AUTEURS (
    oeuvre_id INT NOT NULL,
    auteur_id INT NOT NULL,
    FOREIGN KEY (oeuvre_id) REFERENCES OEUVRES(id),
    FOREIGN KEY (auteur_id) REFERENCES AUTEURS(id),
    PRIMARY KEY (oeuvre_id, auteur_id)
);

CREATE TABLE SALLES (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero INT NOT NULL,
    nom VARCHAR(255) NOT NULL,
    nb_oeuvres INT NOT NULL,
    type_eclairage VARCHAR(255) NOT NULL
);

CREATE TABLE OEUVRES_SALLES (
    oeuvre_id INT NOT NULL,
    salle_id INT NOT NULL,
    FOREIGN KEY (oeuvre_id) REFERENCES OEUVRES(id),
    FOREIGN KEY (salle_id) REFERENCES SALLES(id),
    PRIMARY KEY (oeuvre_id, salle_id)
);

CREATE TABLE EXPOSITIONS_EXTERNES (
    id INT AUTO_INCREMENT PRIMARY KEY,
    oeuvre_id INT NOT NULL,
    debut_pret DATE NOT NULL,
    duree_pret INT NOT NULL, 
    FOREIGN KEY (oeuvre_id) REFERENCES OEUVRES(id)
);

CREATE TABLE PRETS_PARTICULIERS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    oeuvre_id INT NOT NULL,
    titre_oeuvre VARCHAR(255) NOT NULL,
    nom_proprietaire VARCHAR(255) NOT NULL,
    prenom_proprietaire VARCHAR(255) NOT NULL,
    adresse_proprietaire VARCHAR(255) NOT NULL,
    debut_pret DATE NOT NULL,
    duree_pret INT NOT NULL, 
    FOREIGN KEY (oeuvre_id) REFERENCES OEUVRES(id)
);

CREATE TABLE ASSURANCES (
    id INT AUTO_INCREMENT PRIMARY KEY,
    oeuvre_id INT NOT NULL,
    prime_assurance DECIMAL(10, 2) NOT NULL,
    valeur_assuree DECIMAL(15, 2) NOT NULL,
    nom_compagnie VARCHAR(255) NOT NULL,
    adresse_compagnie VARCHAR(255) NOT NULL,
    FOREIGN KEY (oeuvre_id) REFERENCES OEUVRES(id)
);

CREATE TABLE TYPES_OEUVRES (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pret_particulier_id INT NOT NULL,
    type_oeuvre VARCHAR(255) NOT NULL,
    FOREIGN KEY (pret_particulier_id) REFERENCES PRETS_PARTICULIERS(id)
);
