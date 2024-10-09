CREATE PROCEDURE udp_special_offer(first_name VARCHAR(50))
BEGIN
  UPDATE property_offers AS po
  JOIN agents AS a ON a.id = po.agent_id
  SET po.price = po.price * 0.9
  WHERE a.first_name = first_name;
END