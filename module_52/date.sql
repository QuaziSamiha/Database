-- 21 Mar, 25

-- 52-1 Handling Date and Date Functions in PostgreSQL

SHOW timezone;

SELECT now();

CREATE TABLE timeZ (
    ts TIMESTAMP without time zone,
    tsz TIMESTAMP with time zone
);

INSERT INTO
    timeZ
VALUES (
        '2024-01-12 10:45:00',
        '2024-01-12 10:45:00'
    );

SELECT * FROM timeZ;

SELECT CURRENT_DATE;

-- date casting
SELECT now()::date;

-- time casting
SELECT now()::time;

SELECT to_char(now(), 'yyyy/mm/dd');

SELECT to_char(now(), 'dd/mm/yyyy');

SELECT CURRENT_DATE - INTERVAL '1 year';

SELECT CURRENT_DATE - INTERVAL '1 month';

SELECT CURRENT_DATE - INTERVAL '1 year 2 month';

SELECT age (CURRENT_DATE, '1996-07-29');

SELECT age (CURRENT_DATE, '1995-09-04');

SELECT *, age (CURRENT_DATE, dob) FROM students;

-- SELECT extract('2025-03-21');

SELECT extract( year FROM '2025-03-21'::date );

SELECT extract( day FROM '2025-03-21'::date );

-- type casting: converting string to date
SELECT extract( month FROM '2025-03-21'::date );

-- type casting: converting 1 to boolean
SELECT 1::BOOLEAN;

SELECT '0'::BOOLEAN;

SELECT 'y'::BOOLEAN;

SELECT 'n'::BOOLEAN;