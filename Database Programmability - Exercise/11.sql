CREATE FUNCTION ufn_calculate_future_value(initial_sum DECIMAL(12, 4), interest_rate DOUBLE, years INT)
RETURNS DECIMAL (12, 4)
NO SQL 
BEGIN 
  RETURN (SELECT initial_sum * POW((1 + interest_rate), years));
END;

CREATE PROCEDURE usp_calculate_future_value_for_account(acc_id INT, interest_rate DECIMAL(12, 4))
BEGIN
    SELECT a.id AS account_id, first_name, last_name, balance AS current_balance,
           ufn_calculate_future_value(balance, interest_rate, 5) AS balance_in_5_years
    FROM accounts AS a
		JOIN account_holders AS ac ON a.account_holder_id = ac.id
    WHERE a.id = acc_id;
END;