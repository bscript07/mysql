CREATE TABLE logs(
  log_id INT PRIMARY KEY AUTO_INCREMENT,
  account_id INT,
  old_sum DECIMAL (19, 4),
  new_sum DECIMAL (19, 4)
);

CREATE TRIGGER tr_accounts_update
AFTER UPDATE
ON accounts
FOR EACH ROW
INSERT INTO logs(account_id, old_sum, new_sum) VALUE
(new.id, old.balance, new.balance);