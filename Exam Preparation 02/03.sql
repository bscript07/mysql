UPDATE driving_schools AS ds
JOIN cities AS c ON ds.city_id = c.id
SET ds.average_lesson_price = ds.average_lesson_price + 30
WHERE c.name = 'London' AND night_time_driving = 1;