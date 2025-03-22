-- 21 Mar, 25
CREATE Table users2 (
    id SERIAL PRIMARY KEY,
    userName VARCHAR(20) NOT NULL
)

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "users2" (id)
)

ALTER TABLE posts ALTER COLUMN user_id SET NOT NULL;

INSERT INTO
    "users2" (username)
VALUES ('akash'),
    ('batash'),
    ('sagor'),
    ('nodi');

SELECT * FROM users2;

INSERT INTO
    posts (title, user_id)
VALUES (
        'Enjoying a sunny day with Akash!',
        2
    ),
    (
        'Batash just shared an amazing recipe!',
        1
    ),
    (
        'Exploring adventures with Sagor',
        4
    ),
    (
        'Nodi''s wisdom always leaves me inspired',
        4
    );

SELECT * FROM posts;

-- INSERT INTO posts (title, user_id) VALUES ('test', 8); it will show an error

INSERT INTO posts (title, user_id) VALUES ('test', 1);

-- INSERT INTO posts (title, user_id) VALUES ('test', NULL); it will show an error

-- 22 Mar, 25

-- 52-5 Enforcing Referential Integrity: Behaviors During Data Deletion

-- restrict deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (default)
-- DELETE FROM "users2" WHERE id = 4; -- it will show an error

-- cascading deletion -> ON DELETE CASCADE
-- CREATE TABLE posts (
--     id SERIAL PRIMARY KEY,
--     title TEXT NOT NULL,
--     user_id INTEGER REFERENCES "users2" (id) ON DELETE CASCADE
-- )

-- alternative way
-- DROP TABLE posts

-- not practical way
-- setting null -> ON DELETE SET NULL
-- CREATE TABLE posts (
--     id SERIAL PRIMARY KEY,
--     title TEXT NOT NULL,
--     user_id INTEGER REFERENCES "users2" (id) ON DELETE SET NULL
-- )

-- set default value -> ON DELETE SET DEFAULT

-- CREATE TABLE posts (
--     id SERIAL PRIMARY KEY,
--     title TEXT NOT NULL,
--     user_id INTEGER REFERENCES "users2" (id) ON DELETE
--     SET DEFAULT DEFAULT 2
-- )