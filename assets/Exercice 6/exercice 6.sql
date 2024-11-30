1) SELECT * 
   FROM authors 
   WHERE date_of_death IS NULL;


2) SELECT * 
   FROM authors 
   WHERE country = 'France';


3) SELECT * 
   FROM books 
   WHERE year > 1980;


4) SELECT * 
   FROM authors
   WHERE firstname = 'Jean'
   AND country <> 'France';
