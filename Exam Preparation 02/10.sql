CREATE FUNCTION udf_average_lesson_price_by_city (name VARCHAR(40))
RETURNS DECIMAL(19, 2)
DETERMINISTIC
BEGIN
  RETURN (SELECT AVG(average_lesson_price) FROM driving_schools AS ds
		  JOIN cities AS c ON ds.city_id = c.id
          WHERE c.name = name);
END 