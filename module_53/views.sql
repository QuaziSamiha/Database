-- ? 53-4 Exploring Views in PostgreSQL
-- ? 4 April, 25

CREATE VIEW dept_avg_salary AS
SELECT department_name, avg(salary)
FROM employees
GROUP BY
    department_name;

SELECT * FROM dept_avg_salary;

CREATE VIEW test_view AS
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

SELECT * FROM test_view;