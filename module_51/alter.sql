SELECT * FROM person2;

ALTER TABLE person2
ADD COLUMN email VARCHAR(25) DEFAULT 'puuu' NOT NULL;

ALTER TABLE person2
ADD COLUMN email2 VARCHAR(25) DEFAULT 'default@email.com' NOT NULL;

INSERT INTO person2 values (7, 'test', 45)

INSERT INTO person2 values ( 7, 'test', 45, 'test@gmail.com' )

ALTER TABLE person2 DROP COLUMN email;

ALTER TABLE person2 RENAME COLUMN age to user_age;

ALTER COLUMN person2 ALTER COLUMN user_name TYPE VARCHAR(50);

-- adding a constraint
ALTER TABLE person2 ALTER COLUMN user_name SET NOT NULL;

ALTER TABLE person2 ALTER COLUMN user_name SET DEFAULT;

ALTER TABLE person2 ALTER COLUMN user_name SET UNIQUE;

-- removing a constraint
ALTER TABLE person2 ALTER COLUMN user_name DROP NOT NULL;

ALTER TABLE person2
ADD constraint unique_person2_user_age UNIQUE (age);

ALTER TABLE person2
ADD constraint pk_person2_user_age PRIMARY KEY (id);

DROP TABLE person2;

TRUNCATE TABLE person2;