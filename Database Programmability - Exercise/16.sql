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

CREATE TABLE notification_emails(
  id INT PRIMARY KEY AUTO_INCREMENT,
  recipient INT,
  subject VARCHAR(255),
  body TEXT
);

CREATE TRIGGER tr_logs_insert
AFTER INSERT
ON logs 
FOR EACH ROW
INSERT INTO notification_emails(recipient, subject, body) VALUE
(new.account_id, 
CONCAT('Balance change for account: ', new.account_id),
CONCAT('On ', DATE_FORMAT(NOW(), '%b %d %Y'), ' at ',
DATE_FORMAT(NOW(), '%r'),' your balance was changed from ',
ROUND(new.old_sum, 0),' to ', ROUND(new.new_sum, 0),'.'));