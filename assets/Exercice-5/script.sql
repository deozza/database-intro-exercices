CREATE TABLE DemandeContact (
    id_contact INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    numero_telephone VARCHAR(15),
    message TEXT NOT NULL,
    tranche_age VARCHAR(10),
    age INT CHECK (age >= 0),
    type_cours VARCHAR(50),
    date_contact DATE NOT NULL
);
