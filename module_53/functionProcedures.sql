-- ? 53-5 Exploring Functions in PostgreSQL
-- ? 5 April, 25

SELECT * FROM employees;

CREATE Function emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
    SELECT count(*) FROM employees;
$$;

SELECT emp_count ();

CREATE Function delete_emp()
RETURNS void
LANGUAGE SQL
AS
$$
    DELETE FROM employees WHERE employee_id = 18;
$$;

SELECT delete_emp ();

CREATE OR REPLACE Function delete_emp2()
RETURNS void
LANGUAGE SQL
AS
$$
    DELETE FROM employees WHERE employee_id = 18;
$$;

CREATE OR REPLACE Function delete_emp_by_id(p_emp_id INT)
RETURNS void
LANGUAGE SQL
AS
$$
    DELETE FROM employees WHERE employee_id = p_emp_id;
$$;

SELECT delete_emp_by_id (13);