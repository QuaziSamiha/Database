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