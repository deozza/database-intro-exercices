{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- Table pour les auteurs\
CREATE TABLE auteurs (\
    id INT PRIMARY KEY,\
    nom VARCHAR(100),\
    prenom VARCHAR(100)\
);\
\
-- Table pour les \'9cuvres\
CREATE TABLE oeuvres (\
    id INT PRIMARY KEY,\
    titre VARCHAR(255),\
    date_acquisition DATE,\
    numero_catalogue VARCHAR(50)\
);\
\
-- Table pour relier les \'9cuvres aux auteurs\
CREATE TABLE oeuvre_auteur (\
    id_oeuvre INT,\
    id_auteur INT,\
    PRIMARY KEY (id_oeuvre, id_auteur),\
    FOREIGN KEY (id_oeuvre) REFERENCES oeuvres(id),\
    FOREIGN KEY (id_auteur) REFERENCES auteurs(id)\
);\
\
-- Table pour les salles\
CREATE TABLE salles (\
    id INT PRIMARY KEY,\
    numero INT,\
    nom VARCHAR(100),\
    type_eclairage VARCHAR(50)\
);\
\
-- Table pour les expositions\
CREATE TABLE expositions (\
    id INT PRIMARY KEY,\
    id_oeuvre INT,\
    date_debut DATE,\
    duree_pr\'eat INT,\
    FOREIGN KEY (id_oeuvre) REFERENCES oeuvres(id)\
);\
\
-- Table pour les particuliers\
CREATE TABLE particuliers (\
    id INT PRIMARY KEY,\
    nom VARCHAR(100),\
    prenom VARCHAR(100),\
    adresse VARCHAR(255)\
);\
\
-- Table pour les \'9cuvres pr\'eat\'e9es\
CREATE TABLE oeuvres_pretees (\
    id_oeuvre INT,\
    id_particulier INT,\
    date_debut_pr\'eat DATE,\
    duree_pr\'eat INT,\
    PRIMARY KEY (id_oeuvre, id_particulier),\
    FOREIGN KEY (id_oeuvre) REFERENCES oeuvres(id),\
    FOREIGN KEY (id_particulier) REFERENCES particuliers(id)\
);\
}