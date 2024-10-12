SELECT 
CONCAT(a.first_name, ' ', a.last_name) AS full_name,
a.age
FROM athletes AS a
 JOIN disciplines_athletes_medals AS dam ON a.id = dam.athlete_id 
ORDER BY a.age ASC, a.id ASC
LIMIT 2