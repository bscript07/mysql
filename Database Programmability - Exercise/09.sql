CREATE PROCEDURE usp_get_holders_with_balance_higher_than(target_balance DECIMAL(19, 4))
BEGIN
  SELECT first_name, last_name FROM account_holders as ac
  JOIN accounts AS a ON ac.id = a.account_holder_id
  GROUP BY ac.id
  HAVING SUM(balance) > target_balance
  ORDER BY ac.id;
END