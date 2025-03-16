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