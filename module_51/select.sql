CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT check (age > 18),
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO
    students (
        student_id,
        first_name,
        last_name,
        age,
        grade,
        course,
        email,
        dob,
        blood_group,
        country,
    )
VALUES (
        'f1',
        'l1',
        22,
        'g1',
        'c1',
        'e1',
        '2004-01-01',
        'b+',
        'country1'
    ),
    (
        'f2',
        'l2',
        22,
        'g2',
        'c2',
        'e2',
        '2004-01-01',
        'b+',
        'country2'
    ),
    (
        'f3',
        'l3',
        22,
        'g3',
        'c3',
        'e3',
        '2004-01-01',
        'b+',
        'country3'
    ),
    (
        'f4',
        'l4',
        22,
        'g4',
        'c4',
        'e4',
        '2004-01-01',
        'b+',
        'country4'
    ),
    (
        'f5',
        'l5',
        22,
        'g5',
        'c5',
        'e5',
        '2004-01-01',
        'b+',
        'country5'
    ),
    (
        'f6',
        'l6',
        22,
        'g6',
        'c6',
        'e6',
        '2004-01-01',
        'b+',
        'country6'
    ),
    (
        'f7',
        'l7',
        22,
        'g7',
        'c7',
        'e7',
        '2004-01-01',
        'b+',
        'country7'
    ),
    (
        'f8',
        'l8',
        22,
        'g8',
        'c8',
        'e8',
        '2004-01-01',
        'b+',
        'country8'
    ),
    (
        'f9',
        'l9',
        22,
        'g9',
        'c9',
        'e9',
        '2004-01-01',
        'b+',
        'country9'
    ),
    (
        'f10',
        'l10',
        22,
        'g10',
        'c10',
        'e10',
        '2004-01-01',
        'b+',
        'country10'
    ),
    (
        'f11',
        'l1',
        22,
        'g1',
        'c1',
        'e1',
        '2004-01-01',
        'b+',
        'country11'
    ),
    (
        'f12',
        'l1',
        22,
        'g1',
        '2c1',
        'e12',
        '2004-01-01',
        'b+',
        'country12'
    ),
    (
        'f13',
        'l1',
        22,
        'g1',
        'c13',
        'e1',
        '2004-01-01',
        'b+',
        'country13'
    ),
SELECT *
FROM students;

SELECT email FROM students;

SELECT email, age FROM students;

SELECT email AS student_email FROM students;

SELECT email AS "Student Email" FROM students;

SELECT * FROM students ORDER BY first_name ASC;

SELECT * FROM students ORDER BY age DESC;

-- 17 Mar, 25
SELECT country FROM students ORDER BY country ASC;

SELECT DISTINCT country FROM students;

SELECT DISTINCT blood_group FROM students;

SELECT * FROM students WHERE country = 'USA';

SELECT * FROM students WHERE grade = 'A' AND course = 'Physics';

SELECT * FROM students WHERE blood_group = 'A+';

SELECT *
FROM students
WHERE
    country = 'USA'
    AND country = 'Australia';

SELECT *
FROM students
WHERE (
        country = 'USA'
        OR country = 'Australia'
    )
    AND age = 20;

SELECT *
FROM students
WHERE (
        country = 'USA'
        OR country = 'Australia'
    )
    AND age > 20;

SELECT upper(first_name) from students;

SELECT concat(first_name, ' ', last_name) from students;

SELECT length(first_name) from students;

SELECT avg(age) from students;

SELECT max(age) from students;

SELECT count(*) from students;

SELECT max(length(first_name)) from students;

-- 18 Mar, 25
-- 51-7 Logical Negation NOT, understanding NULL and the Null-Coalescing Operator in PostgreSQL

SELECT NULL = NULL;

SELECT NULL <> NULL;

SELECT NULL = 1;

SELECT * FROM students WHERE email !NULL;

SELECT * FROM students WHERE email = NULL;

SELECT * FROM students WHERE email IS NULL;

SELECT * FROM students WHERE email IS NOT NULL;

SELECT COALESCE(NULL, 5);

SELECT COALESCE(NULL, NULL, 5);

SELECT COALESCE(email, 5);

SELECT COALESCE( email, 'email is not provided' ) FROM students;

SELECT COALESCE(
        email, 'email is not provided'
    ), blood_group, age
FROM students;

SELECT COALESCE(
        email, 'email is not provided'
    ) AS "Email", blood_group, age
FROM students;

SELECT email FROM students;

-- 51-8 Exploring IN, BETWEEN, LIKE, and ILIKE Operators in PostgreSQL.

SELECT * FROM students WHERE country = 'USA' OR 'UK' OR 'Canada';

SELECT * FROM students WHERE country IN ('USA', 'UK', 'Canada');

SELECT * FROM students WHERE country NOT IN ('USA', 'UK', 'Canada');

SELECT * FROM students WHERE age BETWEEN 19 AND 22;

SELECT *
FROM students
WHERE
    dob BETWEEN '2000-01-01' AND '2005-01-01';

SELECT *
FROM students
WHERE
    dob BETWEEN '2000-01-01' AND '2005-01-01'
ORDER BY dob;

SELECT * FROM students WHERE first_name LIKE '%a';

SELECT * FROM students WHERE first_name LIKE 'a%';

SELECT * FROM students WHERE first_name LIKE 'a%';

SELECT * FROM students WHERE first_name LIKE '__a%';

SELECT * FROM students WHERE first_name LIKE '___a%';

SELECT * FROM students WHERE first_name LIKE '___a_';

-- case insensitive
SELECT * FROM students WHERE first_name ILIKE 'a%';

-- 21 Mar, 25

-- 51-9 Pagination with Limit Offset and Data Deletion in PostgreSQL

SELECT * FROM students;

SELECT * FROM students LIMIT 5;

SELECT *
FROM students
WHERE
    country NOT IN ('USA', 'UK', 'Canada')
LIMIT 5;

SELECT * FROM students LIMIT 5 OFFSET 2;

SELECT * FROM students LIMIT 5 OFFSET 5;

SELECT * FROM students LIMIT 5 OFFSET 5 * 0;

SELECT * FROM students LIMIT 5 OFFSET 5 * 1;

DELETE FROM students;

DELETE FROM students WHERE grade = 'B';

SELECT * FROM students WHERE country = 'USA';

DELETE FROM students WHERE grade = 'C' AND country = 'USA';

-- 51-10 Understanding and Using the UPDATE Operator in PostgreSQL

UPDATE students
SET
    email = 'default@gmail.com'
WHERE
    student_id = 45;

UPDATE students
SET
    email = 'default@gmail.com',
    age = 30
WHERE
    student_id = 45;

UPDATE students
SET
    email = 'default@gmail.com',
    age = 30,
    course = 'Pocha'
WHERE
    student_id = 45;