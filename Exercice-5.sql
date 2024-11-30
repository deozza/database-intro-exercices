3. 
CREATE DATABASE bdd;

CREATE TABLE contact (
    id_contact INT PRIMARY KEY AUTO_INCREMENT,
    sujet VARCHAR (255) NOT NULL,
    type_cours VARCHAR (255) NOT NULL,
    tranche_age INT NOT NULL,
    age INT NOT NULL, 
    nom VARCHAR (255) NOT NULL,
    prenom VARCHAR (255) NOT NULL,
    email VARCHAR (255) NOT NULL UNIQUE,
    telephone INT (13) NOT NULL,
    message VARCHAR (255) NOT NULL,
    date_contact DATETIME NOT NULL
);
