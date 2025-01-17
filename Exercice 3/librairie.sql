SELECT firstname, lastname
FROM authors;

SELECT name
FROM editors
WHERE name LIKE %,%;

SELECT id, title, firstname, lastname, loan_date, return_date
FROM loans 
JOIN book_editions be ON book_edition_isbn 
JOIN books b ON book_id = id
JOIN members m ON member_id = id
WHERE return_date < CURDATE AND is_returned = FALSE;

SELECT title
FROM books
WHERE CHAR_LENGTH(title) < 50;
