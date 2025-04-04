-- 53-2 Exploring Subqueries
-- 4 April, 25

DROP TABLE employees;

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
)

INSERT INTO
    employees (
        employee_name,
        department_name,
        salary,
        hire_date
    )
VALUES (
        'Alice Johnson',
        'HR',
        55000.00,
        '2022-03-15'
    ),
    (
        'Bob Smith',
        'IT',
        62000.50,
        '2021-07-10'
    ),
    (
        'Charlie Brown',
        'Finance',
        48000.75,
        '2023-01-05'
    ),
    (
        'David Williams',
        'Marketing',
        75000.00,
        '2019-11-22'
    ),
    (
        'Emma Davis',
        'IT',
        67000.25,
        '2020-05-18'
    ),
    (
        'Frank Harris',
        'HR',
        54000.00,
        '2023-06-01'
    ),
    (
        'Grace Lee',
        'Finance',
        80000.80,
        '2018-09-30'
    ),
    (
        'Henry White',
        'Marketing',
        51000.90,
        '2024-02-10'
    ),
    (
        'Isabella Moore',
        'Sales',
        59000.00,
        '2022-08-14'
    ),
    (
        'Jack Taylor',
        'IT',
        61000.00,
        '2021-12-03'
    ),
    (
        'Karen Miller',
        'Finance',
        73000.45,
        '2017-10-28'
    ),
    (
        'Liam Brown',
        'HR',
        68000.60,
        '2019-06-14'
    ),
    (
        'Mia Anderson',
        'Sales',
        49000.00,
        '2023-03-21'
    ),
    (
        'Nathan Wilson',
        'IT',
        72000.35,
        '2020-09-19'
    ),
    (
        'Olivia Thomas',
        'Marketing',
        58000.20,
        '2021-11-11'
    ),
    (
        'Paul Scott',
        'Finance',
        63000.90,
        '2018-07-30'
    ),
    (
        'Quinn Adams',
        'Sales',
        47000.50,
        '2022-05-07'
    ),
    (
        'Rachel Green',
        'HR',
        52000.75,
        '2023-04-25'
    ),
    (
        'Samuel Carter',
        'IT',
        66000.30,
        '2019-02-14'
    ),
    (
        'Tina Martinez',
        'Marketing',
        60000.85,
        '2020-08-05'
    );

--

SELECT * FROM employees;

--! retrieve all employees whose salary is greater than the highest salary of the HR department.
SELECT * FROM employees WHERE salary > 68000;

SELECT * FROM employees WHERE department_name = 'HR';

SELECT max(salary) FROM employees WHERE department_name = 'HR';

SELECT *
FROM employees
WHERE
    salary > (
        SELECT max(salary)
        FROM employees
        WHERE
            department_name = 'HR'
    );

-- ? 53-3 Utilizing Subqueries in Different Clauses

SELECT department_name, sum(salary)
FROM employees
GROUP BY
    department_name;

SELECT *
FROM (
        SELECT department_name, sum(salary)
        FROM employees
        GROUP BY
            department_name
    ) AS sum_dept_salary;

SELECT
    employee_name,
    salary,
    department_name
FROM employees
WHERE
    department_name IN (
        SELECT department_name
        FROM employees
        WHERE
            department_name LIKE '%R%'
    );

SELECT department_name
FROM employees
WHERE
    department_name LIKE '%R%';