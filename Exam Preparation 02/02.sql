INSERT INTO students (first_name, last_name, age, phone_number)
SELECT REVERSE(LOWER(first_name)), REVERSE(LOWER(last_name)),
age + CAST(LEFT(phone_number, 1) AS UNSIGNED),
CONCAT('1+', phone_number)
FROM students
WHERE age < 20;
SELECT * FROM students;