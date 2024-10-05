CREATE FUNCTION udf_average_salary_by_position_name(name VARCHAR(40)) 
RETURNS DECIMAL(19, 2)
DETERMINISTIC
BEGIN 
  RETURN (SELECT AVG(salary) FROM workers AS w
          JOIN positions AS p ON w.position_id = p.id
          WHERE p.name = name);
END