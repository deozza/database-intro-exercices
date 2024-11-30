1.
SELECT * 
FROM authors 
WHERE date_of_death = NULL;

2.
SELECT * 
FROM authors
WHERE country = "france";

3.
SELECT *
FROM books
WHERE year > 1980;

4.
SELECT * 
FROM authors 
WHERE firstname = 'Jean'
AND country != 'french';
