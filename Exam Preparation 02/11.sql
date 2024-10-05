CREATE PROCEDURE udp_find_school_by_car(brand VARCHAR(20))
BEGIN 
  SELECT ds.name, ds.average_lesson_price
  FROM driving_schools AS ds
    JOIN cars AS c ON ds.car_id = c.id
    WHERE c.brand = brand
    ORDER BY average_lesson_price DESC;
END