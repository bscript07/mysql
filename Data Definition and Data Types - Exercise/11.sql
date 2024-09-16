CREATE TABLE directors (
    id INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    director_name VARCHAR(100) NOT NULL,
    notes TEXT
);

CREATE TABLE genres (
    id INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(100) NOT NULL,
    notes TEXT
);

CREATE TABLE categories (
    id INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL,
    notes TEXT
);

CREATE TABLE movies (
    id INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    director_id INT,
    copyright_year DATE,
    length DOUBLE(10, 2),
    genre_id INT,
    category_id INT,
    rating DOUBLE(5, 2),
    notes TEXT
);

-- Insert data into 'directors' table
INSERT INTO directors (director_name, notes) VALUES
('Pesho', 'Mladost'),
('Gosho', 'Mladost'),
('Stamat', 'Mladost'),
('Ivan', 'Mladost'),
('Gogo', 'Mladost');

-- Insert data into 'genres' table
INSERT INTO genres (genre_name, notes) VALUES
('Sci-fi', 'Mladost'),
('Action', 'Mladost'),
('Thriller', 'Mladost'),
('Ivan', 'Mladost'),
('Gogo', 'Mladost');

-- Insert data into 'categories' table
INSERT INTO categories (category_name, notes) VALUES
('Above 18', 'Mladost'),
('Below 18', 'Mladost'),
('Stamat', 'Mladost'),
('Ivan', 'Mladost'),
('Gogo', 'Mladost');

-- Insert data into 'movies' table
INSERT INTO movies VALUES
(1, 'Harry Potter', 1, '2003-12-12', 2.30, 3, 2, 9.5, 'Potter'),
(2, 'Castle', 1, '2003-12-12', 2.30, 3, 2, 9.5, 'Potter'),
(3, 'Pod Prikritie', 1, '2003-12-12', 2.30, 3, 2, 9.5, 'Potter'),
(4, 'Listopad', 1, '2003-12-12', 2.30, 3, 2, 9.5, 'Potter'),
(5, 'Test', 1, '2003-12-12', 2.30, 3, 2, 9.5, 'Potter');