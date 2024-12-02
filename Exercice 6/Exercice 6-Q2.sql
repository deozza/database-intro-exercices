USE library;
SELECT firstname, lastname, date_of_birth, date_of_death 
FROM authors 
WHERE country = 'France';