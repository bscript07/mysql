SELECT a.id, a.first_name, a.last_name
FROM athletes AS a
  LEFT JOIN disciplines_athletes_medals AS dam ON a.id = dam.athlete_id
WHERE dam.medal_id IS NULL
ORDER BY a.id ASC