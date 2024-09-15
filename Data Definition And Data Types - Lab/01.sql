CREATE TABLE `employees` (
    `id` int NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(50) DEFAULT NULL,
    `last_name` VARCHAR(50) DEFAULT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE categories (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE `products` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `category_id` INT NOT NULL
);