
SELECT firstname, lastname
FROM authors;

SELECT name
FROM editors
WHERE name LIKE '%,%';

SELECT loan_date, return_date, book_edition_isbn, member_id
FROM loans
WHERE is_returned = FALSE AND return_date < CURDATE();

SELECT title
FROM books
WHERE CHAR_LENGTH(title) < 50;