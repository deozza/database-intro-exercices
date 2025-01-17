1. SELECT nom, prenom
FROM auteurs;

2.SELECT nom
FROM editeurs
WHERE nom LIKE '%,%';

3. SELECT *
FROM emprunts
WHERE date_retour < CURDATE();

4. SELECT titre
FROM livres
WHERE LENGTH(titre) < 50;