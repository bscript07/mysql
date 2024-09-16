CREATE TABLE categories (
   id INT PRIMARY KEY AUTO_INCREMENT,
   category VARCHAR(100),
   daily_rate DOUBLE(10, 2),
   weekly_rate DOUBLE(10, 2),
   monthly_rate DOUBLE(10, 2),
   weekend_rate DOUBLE(10, 2)
);

CREATE TABLE cars (
   id INT PRIMARY KEY AUTO_INCREMENT,
   plate_number VARCHAR(10),
   make VARCHAR(50),
   model VARCHAR(50),
   car_year DATE,
   category_id INT,
   doors INT,
   picture BLOB,
   car_condition VARCHAR(50),
   available BOOLEAN
);

CREATE TABLE employees (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(60),
  last_name VARCHAR(60),
  title VARCHAR(100),
  notes TEXT
);

CREATE TABLE customers (
  id INT PRIMARY KEY AUTO_INCREMENT,
  driver_licence_number INT,
  full_name VARCHAR(200),
  address VARCHAR(255),
  city VARCHAR(60),
  zip_code INT,
  notes TEXT
);

CREATE TABLE rental_orders (
 id INT PRIMARY KEY AUTO_INCREMENT, 
 employee_id INT, 
 customer_id INT, 
 car_id INT, 
 car_condition VARCHAR(60), 
 tank_level DOUBLE(5, 2), 
 kilometrage_start INT, 
 kilometrage_end INT, 
 total_kilometrage INT, 
 start_date DATE, 
 end_date DATE, 
 total_days INT, 
 rate_applied DOUBLE(5, 2), 
 tax_rate DOUBLE(5, 2), 
 order_status VARCHAR(50), 
 notes TEXT
 );
 
 INSERT INTO categories (category, daily_rate, weekly_rate, monthly_rate, weekend_rate) VALUES
 ('SUV', 12, 25, 35, 40),
 ('Motorcycle', 12, 25, 35, 40),
 ('Yacht', 12, 25, 35, 40);
 
 INSERT INTO cars (plate_number, make, model, car_year, category_id, doors, picture, car_condition, available) VALUES
 ('SV1111', 'Toyota', 'Prius', '2014-12-31', 5, 4, NULL, 'NOT GOOD NOT BAD', true),
 ('SV2222', 'Toyota', 'Prius', '2014-12-31', 5, 4, NULL, 'NOT GOOD NOT BAD', true),
 ('SV3333', 'Toyota', 'Prius', '2014-12-31', 5, 4, NULL, 'NOT GOOD NOT BAD', true);
 
 INSERT INTO employees (first_name, last_name, title, notes) VALUES
 ('Gogo', 'Markov', 'Sales', 'Vacation'),
 ('Pesho', 'Markov', 'Sales', 'Vacation'),
 ('Ivan', 'Markov', 'Sales', 'Vacation');
 
 INSERT INTO customers (driver_licence_number, full_name, address, city, zip_code, notes) VALUES
 (123, 'Gogo Markov', 'jk-Oborishte-15', 'Sofia', 1000, 'Test'),
 (123, 'Aleks Markov', 'jk-Oborishte-15', 'Plovdiv', 1000, 'Test'),
 (123, 'Nakos Markov', 'jk-Oborishte-15', 'Varna', 1000, 'Test');
 
 INSERT INTO rental_orders (employee_id, customer_id, car_id, car_condition, tank_level, kilometrage_start, kilometrage_end, total_kilometrage, start_date, end_date, total_days, rate_applied, tax_rate, order_status, notes) VALUES
 (1, 1, 1, 'Good', 100, 50000, 60000, 10000, '2024-09-10', '2024-11-10', 1, 5.5, 10, 'Finished', 'Test'),
 (2, 1, 1, 'Good', 100, 50000, 60000, 10000, '2024-09-10', '2024-11-10', 1, 5.5, 10, 'Finished', 'Test'),
 (3, 1, 1, 'Good', 100, 50000, 60000, 10000, '2024-09-10', '2024-11-10', 1, 5.5, 10, 'Finished', 'Test');