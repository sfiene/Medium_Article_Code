DROP TABLE IF EXISTS employees;

CREATE TEMP TABLE employees (
    id BIGSERIAL, -- Postgres specific data type that auto increments
    first_name VARCHAR(25),
    last_name VARCHAR(50),
    school VARCHAR(50),
    hire_date DATE,
    salary NUMERIC
);

INSERT INTO employees (first_name, last_name, school, hire_date, salary) 
VALUES 
('Bill', 'Smith', 'East High School', '2011-10-30', 36200),
('Alice', 'Reynolds', 'East High School', '1993-05-22', 65000),
('Samuel', 'Durst', 'Midleston Middle School', '2005-08-01', 43500),
('Samantha', 'Roudebush', 'Midleston Middle School', '2011-10-30', 36200),
('Betty', 'Waterloo', 'Midleston Middle School', '2005-08-30', 43500),
('Joanna', 'Pickerton', 'East High School', '2010-10-22', 38500);

-- Prints to output
SELECT 'Hello World';

-- Select all from employee table
SELECT *
FROM employees;

-- Select certain columns from employees
SELECT first_name
    , last_name
    , salary
FROM employees;

-- Filter data using conditions
SELECT *
FROM employees
WHERE school = 'East High School';

-- Filter data using multiple conditions using AND
SELECT *
FROM employees
WHERE salary > 45000
    AND school = 'East High School';
	
-- Filter data using multiple conditions using OR
SELECT *
FROM employees
WHERE salary > 45000
    OR school = 'East High School';

-- Using LIKE to filter
SELECT *
FROM employees
WHERE school LIKE ('Mid%')
    OR first_name like ('Joann_');
	
-- Grouping data
SELECT school
    , sum(salary)
FROM employees
GROUP BY school;

-- Ordering data
SELECT school
    , sum(salary)
FROM employees
GROUP BY school
ORDER BY sum(salary);

SELECT school
    , sum(salary)
FROM employees
GROUP BY school
ORDER BY sum(salary) ASC;

SELECT school
    , sum(salary)
FROM employees
GROUP BY school
ORDER BY sum(salary) DESC;
	
	
	
	
	
	
	
	
	
	
