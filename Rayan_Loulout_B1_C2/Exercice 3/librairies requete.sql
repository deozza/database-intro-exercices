SELECT firstname, lastname FROM authors;

SELECT name FROM editors WHERE name LIKE '%,%';

SELECT l.id, l.book_edition_isbn, l.member_id, l.loan_date, l.return_date
FROM loans l
WHERE l.is_returned = FALSE AND l.return_date < CURDATE();

SELECT title FROM books WHERE LENGTH(title) < 50;