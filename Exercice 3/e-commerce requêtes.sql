librairie requêtes
SELECT firstname, lastname
FROM authors;

SELECT name
FROM editors
WHERE name LIKE '%,%';

SELECT loans.id, book_edition_isbn, member_id, loan_date, return_date
FROM loans
WHERE is_returned = FALSE AND return_date < CURDATE();

SELECT title
FROM books
WHERE CHAR_LENGTH(title) < 50;