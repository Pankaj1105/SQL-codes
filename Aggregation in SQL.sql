-- View all employee records
SELECT *
FROM employees;

-- Aggregation: count of salaries (non-NULL)
SELECT COUNT(salary) AS total_salaries
FROM employees;

-- Aggregation: total sum of salaries
SELECT SUM(salary) AS total_salary
FROM employees;

-- Aggregation: highest salary
SELECT MAX(salary) AS max_salary
FROM employees;

-- Aggregation: lowest salary
SELECT MIN(salary) AS min_salary
FROM employees;

-- Aggregation: average salary
SELECT AVG(salary) AS avg_salary
FROM employees;

-- Minimum salary per department (sorted descending)
SELECT department, MIN(salary) AS min_salary
FROM employees
GROUP BY department
ORDER BY min_salary DESC;

-- Minimum salary for HR department only
SELECT department, MIN(salary) AS min_salary
FROM employees
WHERE department = 'HR'
GROUP BY department;
