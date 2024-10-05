 SELECT ds.id, ds.name, c.brand
FROM driving_schools AS ds
LEFT JOIN instructors_driving_schools AS ids ON ds.id = driving_school_id
JOIN cars AS c ON ds.car_id = c.id
WHERE ids.instructor_id IS NULL
ORDER BY c.brand, ds.id
LIMIT 5