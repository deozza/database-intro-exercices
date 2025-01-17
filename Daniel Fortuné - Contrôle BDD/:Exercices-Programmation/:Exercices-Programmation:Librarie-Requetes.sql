1. afficher le nom et le prénom de tous les auteurs


SELECT firstname, lastname FROM authors;


2. afficher la liste des éditeurs qui ont une virgule dans leur nom


SELECT * FROM editors WHERE name LIKE '%,%';


3. afficher la liste des emprunts qui sont en retards de retour


SELECT 
    loans.id AS emprunt_id,
    books.title AS titre_du_livre,
    CONCAT(members.firstname, ' ', members.lastname) AS membre,
    loans.loan_date AS date_emprunt,
    loans.return_date AS date_retour,
    DATEDIFF(CURDATE(), loans.return_date) AS jours_de_retard
FROM 
    loans
JOIN 
    book_editions ON loans.book_edition_isbn = book_editions.isbn
JOIN 
    books ON book_editions.book_id = books.id
JOIN 
    members ON loans.member_id = members.id
WHERE 
    loans.is_returned = FALSE
    AND loans.return_date < CURDATE();


4. afficher le titre des livres dont le titre comporte moins de 50 caractères


SELECT title 
FROM books
WHERE LENGTH(title) < 50;

