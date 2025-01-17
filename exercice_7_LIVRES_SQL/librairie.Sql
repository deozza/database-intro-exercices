
SELECT firstname, lastname FROM authors; 

SELECT * FROM editors
WHERE name LIKE '%,%';

SELECT * FROM loans
WHERE return_date < curdate AND is_returned = FALSE; 

SELECT title 
FROM books
WHERE length (title) <50;