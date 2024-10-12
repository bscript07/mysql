SELECT 
a.id,
a.first_name,
a.last_name,
COUNT(dam.medal_id) AS medals_count,
s.name AS sport
FROM athletes AS a
  JOIN disciplines_athletes_medals AS dam ON a.id = dam.athlete_id
  JOIN disciplines AS d ON dam.discipline_id = d.id
  JOIN sports AS s ON d.sport_id = s.id
GROUP BY a.id, a.first_name, a.last_name, s.name
ORDER BY medals_count DESC, a.first_name ASC
LIMIT 10