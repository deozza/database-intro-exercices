{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 -- Table pour les fournisseurs\
CREATE TABLE fournisseurs (\
    id INT PRIMARY KEY,\
    nom VARCHAR(100),\
    adresse VARCHAR(255)\
);\
\
-- Table pour les produits\
CREATE TABLE produits (\
    code INT PRIMARY KEY,\
    designation VARCHAR(255),\
    prix_unitaire DECIMAL(10, 2)\
);\
\
-- Table pour relier les produits aux fournisseurs\
CREATE TABLE produits_fournisseurs (\
    code_produit INT,\
    id_fournisseur INT,\
    prix_achat DECIMAL(10, 2),\
    PRIMARY KEY (code_produit, id_fournisseur),\
    FOREIGN KEY (code_produit) REFERENCES produits(code),\
    FOREIGN KEY (id_fournisseur) REFERENCES fournisseurs(id)\
);\
\
}