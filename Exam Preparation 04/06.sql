SELECT first_name, last_name, birthdate, review
FROM clients
WHERE card IS NULL AND YEAR(birthdate) >= 1978 AND YEAR(birthdate) <= 1993 
ORDER BY last_name DESC, id ASC
LIMIT 5