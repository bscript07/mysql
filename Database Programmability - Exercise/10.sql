CREATE FUNCTION ufn_calculate_future_value(initial_sum DECIMAL(12, 4), interest_rate DOUBLE, years INT)
RETURNS DECIMAL (12, 4)
NO SQL 
BEGIN 
  RETURN (SELECT initial_sum * POW((1 + interest_rate), years));
END