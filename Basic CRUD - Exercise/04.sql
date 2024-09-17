SELECT CONCAT_WS(' ', first_name, last_name) AS 'Full Name',

CASE 
 WHEN died IS NOT NULL THEN DATEDIFF(died, born)
 ELSE NULL
END AS 'Days Lived'
FROM authors;