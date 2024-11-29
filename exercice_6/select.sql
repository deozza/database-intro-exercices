select
FROM auteurs 
WHERE date_de_mort is NULL;

select
FROM auteurs 
WHERE pays = "france";

SELECT 
FROM livre 
WHERE annee > 1980;

SELECT
FROM auteurs 
WHERE prenom = "RAYANE" AND pays <> "france";