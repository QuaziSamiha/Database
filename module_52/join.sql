-- 1 April, 25
-- 52-6 Joining Tables with Inner Join

--  join = inner join

SELECT title, username
FROM posts
    JOIN users2 ON posts.user_id = users2.id;

SELECT title, username
FROM posts
    INNER JOIN users2 ON posts.user_id = users2.id;

SELECT * FROM posts JOIN users2 ON posts.user_id = users2.id;

-- it will show Ambiguous: as both table has id column
-- SELECT id FROM posts JOIN users2 ON posts.user_id = users2.id;

SELECT posts.id FROM posts JOIN users2 ON posts.user_id = users2.id;

-- denoting posts by p
SELECT p.id FROM posts p JOIN users2 ON p.user_id = users2.id;

SELECT users2.id FROM posts JOIN users2 ON posts.user_id = users2.id;
-- SELECT "user".id FROM posts JOIN users2 ON posts.user_id = users2.id;
-- SELECT "user".id FROM posts JOIN users2 ON posts.user_id = users2.id;

-- denoting table name by using short form
SELECT title, username
FROM posts p
    JOIN users2 u ON p.user_id = u.id;

SELECT p.title, u.username
FROM posts AS p
    JOIN users2 AS u ON p.user_id = u.id;

SELECT p.title, u.username, u.id
FROM posts p
    JOIN users2 u ON p.user_id = u.id;

-- user is a reserve Keyword, so we have to use double quotation
-- SELECT title, username
-- FROM posts
--     JOIN "user" ON posts.user_id = "user".id;

-- 52-7 Understanding Left and Right Joins

-- DETAILS ORDER WILL BE CHANGE
SELECT * FROM users2 JOIN posts ON posts.user_id = users2.id;

SELECT * FROM posts JOIN users2 ON posts.user_id = users2.id;

-- just for test
INSERT INTO
    posts (id, title, user_id)
VALUES (
        5,
        'This is a  test post title',
        NULL
    );

SELECT * FROM posts JOIN users2 ON posts.user_id = users2.id;

SELECT * FROM posts LEFT JOIN users2 ON posts.user_id = users2.id;

SELECT *
FROM posts
    LEFT OUTER JOIN users2 ON posts.user_id = users2.id;

SELECT * FROM posts RIGHT JOIN users2 ON posts.user_id = users2.id;

SELECT *
FROM posts
    RIGHT OUTER JOIN users2 ON posts.user_id = users2.id;

-- 52-8 Exploring Full, Cross, and Natural Joins

SELECT *
FROM posts
    FULL OUTER JOIN users2 ON posts.user_id = users2.id;

SELECT *
FROM posts
    FULL JOIN users2 ON posts.user_id = users2.id;