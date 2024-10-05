CREATE PROCEDURE usp_transfer_money(from_account_id INT, to_account_id INT, money_amount DECIMAL(12, 4))
BEGIN
  START TRANSACTION;
  IF(money_amount <= 0 OR
    (SELECT COUNT(*) FROM accounts WHERE id = from_account_id) = 0 OR
	(SELECT COUNT(*) FROM accounts WHERE id = to_account_id) = 0 OR
    (SELECT balance FROM accounts WHERE id = from_account_id) < money_amount) THEN 
    ROLLBACK;
  ELSE 
      UPDATE accounts SET balance = balance - money_amount
      WHERE id = from_account_id;
      
	  UPDATE accounts SET balance = balance + money_amount
      WHERE id = to_account_id;
      COMMIT;
  END IF;
END