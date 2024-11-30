CREATE TABLE priseContact (
    identifiant INT AUTO_INCREMENT PRIMARY KEY,
    sujet VARCHAR(255) NOT NULL,
    type_cours VARCHAR(255) NOT NULL,
    tranche_age VARCHAR(255) NOT NULL,
    age INT(3) NOT NULL,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telephone VARCHAR(13) NOT NULL,
    message VARCHAR(MAX) NOT NULL,
    date_contact DATE NOT NULL DEFAULT CURRENT_TIMESTAMP
);
