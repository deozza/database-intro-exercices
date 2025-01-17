SELECT firstname, lastname FROM authors;

SELECT name FROM editors WHERE name LIKE '%,%';

SELECT * FROM loans WHERE is_returned = FALSE;

SELECT title FROM books WHERE CHAR_LENGTH(title) < 50;
