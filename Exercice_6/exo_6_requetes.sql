USE library;

SELECT *
FROM authors
WHERE date_of_death is NULL;

SELECT *
FROM authors
WHERE country = 'France';

SELECT *
FROM books
WHERE year > 1980;

SELECT *
FROM authors
WHERE firstname = 'Jean'
AND country != 'France';