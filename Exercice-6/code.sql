SELECT firstname, lastname 
FROM authors
WHERE date_of_death IS NULL;

SELECT firstname, lastname
FROM authors
WHERE country = "France";

SELECT title
FROM books
WHERE year > 1980;

SELECT firstname, lastname
FROM authors
WHERE country != "France"
AND firstname = "Jean";
