CREATE TABLE people(
  id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
  name VARCHAR(200) NOT NULL,
  picture TEXT,
  height DOUBLE(10, 2),
  weight DOUBLE(10, 2),
  gender CHAR(1) NOT NULL,
  birthdate DATE NOT NULL,
  biography TEXT
);

INSERT INTO people VALUES
(1, 'Nikolay', 'Test', 1.90, 90, 'm', '1990-01-01', '123'),
(2, 'Stamat', 'Test', 1.90, 90, 'm', '1990-01-01', '123'),
(3, 'Ivan', 'Test', 1.90, 90, 'm', '1990-01-01', '123'),
(4, 'Gosho', 'Test', 1.90, 90, 'm', '1990-01-01', '123'),
(5, 'Maria', 'Test', 1.90, 90, 'f', '1990-01-01', '123');

SELECT * FROM people;