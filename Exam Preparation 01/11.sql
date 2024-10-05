CREATE PROCEDURE udp_increase_salaries_by_country(country_name VARCHAR(40))
BEGIN
  UPDATE workers AS w
  JOIN preserves AS p ON w.preserve_id = p.id
  JOIN countries_preserves AS cp ON p.id = cp.preserve_id
  JOIN countries AS c ON cp.country_id = c.id
  SET salary = salary * 1.05
  WHERE c.name = country_name;
END