USE library;
SELECT firstname, lastname, country, date_of_birth, date_of_death 
FROM authors 
WHERE firstname = 'Jean' AND country != 'France';