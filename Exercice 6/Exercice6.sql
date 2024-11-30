-- Exercice 6 --

-- Affiche tous les auteurs encore en vie -- 

SELECT * 
FROM authors
WHERE date_of_death IS NULL;

-- Affiche tous les auteurs français --

SELECT * 
FROM authors
WHERE country = 'France';

-- Affiche tous les livres écrits après 1980 --

SELECT * 
FROM books
WHERE year > 1980;

-- Affiche tous les auteurs qui s'appellent Jean mais qui ne sont pas français --

SELECT * 
FROM authors
WHERE firstname = 'Jean' AND country != 'France';



