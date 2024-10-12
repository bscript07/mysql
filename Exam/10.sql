CREATE FUNCTION udf_total_medals_count_by_country(country_name VARCHAR(40))
RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE total_medals INT;
  
  SELECT COUNT(m.id)
  INTO total_medals
  FROM medals AS m
    JOIN disciplines_athletes_medals AS dam ON dam.medal_id = m.id
    JOIN athletes AS a ON dam.athlete_id = a.id
    JOIN countries AS c ON a.country_id = c.id
  WHERE c.name = country_name;
  
  RETURN total_medals;
END