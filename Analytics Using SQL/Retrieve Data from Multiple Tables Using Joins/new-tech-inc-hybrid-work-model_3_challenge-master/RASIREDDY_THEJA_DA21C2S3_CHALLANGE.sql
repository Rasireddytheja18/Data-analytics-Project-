use hr;

-- task1--
SELECT 
    *
FROM
    employees;
SELECT 
    *
FROM
    departments;
SELECT 
    *
FROM
    locations;
SELECT 
    locations.city,
    COUNT(employees.employee_id) AS 'count of employees'
FROM
    employees
        INNER JOIN
    departments ON employees.department_id = departments.department_id
        INNER JOIN
    locations ON departments.location_id = locations.location_id
GROUP BY locations.city
ORDER BY COUNT(employees.employee_id) DESC
LIMIT 5;

-- task2 --
SELECT 
    employees.first_name,
    employees.last_name,
    countries.country_name,
    locations.city,
    departments.department_name,
    employees.salary,
    COUNT(employees.employee_id) AS 'count of employees'
FROM
    employees
        INNER JOIN
    departments ON employees.department_id = departments.department_id
        INNER JOIN
    locations ON departments.location_id = locations.location_id
        INNER JOIN
    countries ON locations.country_id = countries.country_id
GROUP BY locations.city , employees.first_name , employees.last_name , countries.country_name , departments.department_name , employees.salary
HAVING COUNT(employees.employee_id)
LIMIT 5;
     
-- task3 --
SELECT 
    locations.city,
    COUNT(employees.employee_id) AS 'count of employees'
FROM
    employees
        INNER JOIN
    departments ON employees.department_id = departments.department_id
        INNER JOIN
    locations ON departments.location_id = locations.location_id
GROUP BY locations.city
HAVING COUNT(employees.employee_id) < 10
ORDER BY COUNT(employees.employee_id);