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