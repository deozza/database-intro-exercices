SELECT firstname, lastname 
FROM authors
WHERE date_of_death IS NULL;

SELECT firstname, lastname
FROM authors
WHERE country = 'france';

SELECT title
FROM books
WHERE year > 1980;

SELECT firstname, lastname
FROM authors
WHERE firstname = 'Jean'
AND country != 'france';