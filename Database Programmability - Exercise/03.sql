CREATE PROCEDURE usp_get_towns_starting_with(name_start TEXT)
BEGIN 
  SELECT t.name AS 'town_name'
  FROM towns AS t
  WHERE t.name LIKE CONCAT(name_start, '%')
  ORDER BY t.name;
END