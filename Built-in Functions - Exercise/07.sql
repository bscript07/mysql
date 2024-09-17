SELECT *
FROM `towns`

WHERE `name` NOT REGEXP '^[RrBbDd]'
ORDER BY `name` ASC