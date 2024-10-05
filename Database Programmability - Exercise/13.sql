CREATE PROCEDURE usp_withdraw_money(acc_id INT, money_amount DECIMAL(12, 4))
BEGIN
  START TRANSACTION;
  IF(money_amount <= 0 OR (SELECT COUNT(*) FROM accounts WHERE id = acc_id) = 0 OR
    (SELECT balance FROM accounts WHERE id = acc_id) < money_amount) THEN 
    ROLLBACK;
  ELSE 
      UPDATE accounts SET balance = balance - money_amount
      WHERE id = acc_id;
      COMMIT;
  END IF;
END 