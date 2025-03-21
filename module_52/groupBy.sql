-- 21 Mar, 25
SELECT * FROM students;

SELECT country FROM students GROUP BY country;
-- SELECT country, age FROM students GROUP BY country; will show an error

SELECT country, count(*) FROM students GROUP BY country;

SELECT country, avg(age) FROM students GROUP BY country;

SELECT country, count(*), avg(age) FROM students GROUP BY country;

SELECT country, avg(age)
FROM students
GROUP BY
    country
HAVING
    avg(age) > 20;

-- count students born in each year
SELECT extract(
        year
        FROM dob
    ) as birth_year
FROM students
GROUP BY
    birth_year;

-- count students born in each year
SELECT extract(
        year
        FROM dob
    ) as birth_year, count(*)
FROM students
GROUP BY
    birth_year;