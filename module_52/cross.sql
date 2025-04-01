-- 52-8 Exploring Full, Cross, and Natural Joins

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(25),
    dept_id INT
);

CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO employees VALUES (1, 'John Doe', 101);

INSERT INTO employees VALUES (2, 'Jane Smith', 102);

INSERT INTO departments VALUES (101, 'Marketing');

INSERT INTO departments VALUES (102, 'HR');

SELECT * FROM employees;

SELECT * FROM departments;

SELECT * FROM employees CROSS JOIN departments;

SELECT * FROM employees NATURAL JOIN departments;