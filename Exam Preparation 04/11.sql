CREATE PROCEDURE udp_happy_hour(type VARCHAR(50))
BEGIN 
  UPDATE products AS p
  SET price = p.price * 0.8 
  WHERE p.price >= 10 AND p.type = type;
END