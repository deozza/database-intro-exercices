SELECT loans.id, loans.book_edition_isbn, loans.member_id, loans.loan_date, loans.return_date
FROM loans
WHERE return_date < CURDATE() AND is_returned = FALSE;
