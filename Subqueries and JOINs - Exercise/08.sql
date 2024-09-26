SELECT e.employee_id, e.first_name, 
IF(YEAR(p.start_date) >= 2005, NULL, p.name) AS 'project_name'
FROM employees AS e
JOIN employees_projects AS emp ON emp.employee_id = e.employee_id
JOIN projects AS p ON emp.project_id = p.project_id
WHERE e.employee_id = 24
ORDER BY p.name