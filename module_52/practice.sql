-- 2 April, 25
CREATE TABLE employees2 (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments2 (department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
)

CREATE TABLE departments2 (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
)

-- 3 April, 25

-- DROP TABLE employees;
-- DROP TABLE departments;

INSERT INTO
    departments2 (department_name)
VALUES ('HR'),
    ('Marketing'),
    ('Finance'),
    ('IT'),
    ('Sales'),
    ('Engineering'),
    ('Customer Support'),
    ('Administration'),
    ('Research'),
    ('Quality Assurance');

SELECT * FROM departments2;

INSERT INTO
    employees2 (
        employee_name,
        department_id,
        salary,
        hire_date
    )
VALUES (
        'Alice Johnson',
        1,
        55000.00,
        '2022-03-15'
    ),
    (
        'Bob Smith',
        2,
        62000.50,
        '2021-07-10'
    ),
    (
        'Charlie Brown',
        1,
        48000.75,
        '2023-01-05'
    ),
    (
        'David Williams',
        3,
        75000.00,
        '2019-11-22'
    ),
    (
        'Emma Davis',
        2,
        67000.25,
        '2020-05-18'
    ),
    (
        'Frank Harris',
        4,
        54000.00,
        '2023-06-01'
    ),
    (
        'Grace Lee',
        3,
        80000.80,
        '2018-09-30'
    ),
    (
        'Henry White',
        4,
        51000.90,
        '2024-02-10'
    ),
    (
        'Isabella Moore',
        1,
        59000.00,
        '2022-08-14'
    ),
    (
        'Jack Taylor',
        2,
        61000.00,
        '2021-12-03'
    );

SELECT * FROM employees2;

-- inner join to retrieve employee and department information

SELECT *
FROM employees2
    JOIN departments2 ON employees2.department_id = departments2.department_id;

SELECT * FROM employees2 JOIN departments2 USING (department_id);

-- show department name with average salary

SELECT department_name, round(avg(salary)) AS Avg_Salary
FROM employees2
    JOIN departments2 USING (department_id)
GROUP BY
    department_name;

-- count employees in each department

SELECT department_name, count(*)
FROM employees2
    JOIN departments2 USING (department_id)
GROUP BY
    department_name;

-- find the department name with the highest average salary

SELECT department_name, round(avg(salary)) AS avg_salary
FROM employees2
    JOIN departments2 USING (department_id)
GROUP BY
    department_name
ORDER BY avg_salary;

SELECT department_name, round(avg(salary)) AS avg_salary
FROM employees2
    JOIN departments2 USING (department_id)
GROUP BY
    department_name
ORDER BY avg_salary DESC
LIMIT 1;

-- count employees hired each year

SELECT extract( YEAR FROM hire_date ) FROM employees2;

SELECT extract(
        YEAR
        FROM hire_date
    ) AS hire_year
FROM employees2
GROUP BY
    hire_year;

SELECT extract(
        YEAR
        FROM hire_date
    ) AS hire_year, count(*)
FROM employees2
GROUP BY
    hire_year;