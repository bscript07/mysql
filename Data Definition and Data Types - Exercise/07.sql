CREATE TABLE users(
  id INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(30) NOT NULL,
  password VARCHAR(26) NOT NULL,
  profile_picture TEXT,
  last_login_time DATETIME,
  is_deleted BOOLEAN
);

INSERT INTO users(username, password, profile_picture, last_login_time, is_deleted) VALUES
('Lilyan', '123456', NULL, '2024-09-10 20:11:45', false),
('Sasho', '123456', NULL, '2024-09-10 20:11:45', false),
('Ico', '123456', NULL, '2024-09-10 20:11:45', false),
('Pesho', '123456', NULL, '2024-09-10 20:11:45', false),
('Diana', '123456', NULL, '2024-09-10 20:11:45', false);

SELECT * FROM users;