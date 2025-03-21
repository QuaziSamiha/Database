**4 Feb, 25**

## 50-1 Solving The First Case Study

### Case Study

A Medical Database System is needed to enhance the efficiency and effectiveness of healthcare services. This system will be able to seamlessly integrates the information of patients, doctors, appointments, medical records, and medical facilities.

**Entities:**

1. **Patients:**
   - Attributes: PatientID (Primary Key), FirstName, LastName, DateOfBirth, Gender, ContactNumber, Email
2. **Doctors:**
   - Attributes: DoctorID (Primary Key), FirstName, LastName, Specialization, ContactNumber, Email
3. **Appointments:**
   - Attributes: AppointmentID (Primary Key), PatientID (Foreign Key), DoctorID (Foreign Key), AppointmentDate, AppointmentTime, Status
4. **Medical Records:**
   - Attributes: RecordID (Primary Key), AppointmentID (Foreign Key), Diagnosis, Prescription, TestResults, createdAt
5. **Medical Facilities:**
   - Attributes: FacilityID (Primary Key), FacilityName, Location, ContactNumber

**Relationships:**

- Patients can have multiple appointments with different doctors.
- Doctors can have multiple appointments with different patients.
- Each appointment may have a corresponding medical record, and vice versa.
- A medical facility can have multiple doctors, and a doctor can work in multiple medical facilities. This relationship is represented through a junction table.

### Top-down Design Approach

1. find out core requirements
2. find out the entity
3. find out the attributes
4. find out the relationships

### Case study solution:

- doctor and medical facility --> many to many (creating relationship using another table)
- appointment and medical record --> one to one
- patient and appointment --> one to many
- doctor and appointment --> one to many
- so doctor and patient --> many to many (solving/merging using appointment table)

![Image](./images/case-study-medical.PNG)

**10 Feb, 25**

## 50-2 Exploring PSQL and its Default Behavior, Creating Database

- psql shell
  ![Image](./images/psql_server.PNG)
  ![Image](./images/psql_server2.PNG)

- to use windows shell, environment variable has to be fixed
- Steps:
  - windows button --> env --> go to 'Edit the system environment variable --> environment variable --> system variable --> new --> copy path ( go to c drive --> go to program files --> go to postgreSQL --> go to 17 --> go to bin and copy the path)
  - `C:\Program Files\PostgreSQL\17\bin`

![Image](./images/psql_server3.PNG)
![Image](./images/psql_server4.PNG)

- commands:
  - psql -U user_name
  - psql -U user_name -D database_name
    ![Image](./images/psql_server5.PNG)
    ![Image](./images/psql_server6.PNG)
    ![Image](./images/psql_server7.PNG)

**11 Feb, 25**

- google search: create database postgres with all options
- commands:
  - create database test_db2 with template template0

## 50-3 User, Role and Privilege Management in POSTGRES.

- commands:
  - \dn (to see if there is a schema within the database)
    ![Image](./images/psql_server8.PNG)
  - \! cls (to clear)
  - \du (to see my username)
    ![Image](./images/psql_server9.PNG)
    **12 Feb, 25**
  - create user user1 with login encrypted password '123454'
  - \du
  - create role role1 with login encrypted password '123454'
  - \du
  - create table test_table (name varchar(50))
  - \d
  - insert into test_table(name) values('vutu vai');
  - select \* from test_table;

**11 Feb, 25 & 24 Feb, 25**

## 50-4 Granting and Revoking Privileges

- commands:
  - \conninfo
  - psql -U user1 -D postgres `(creating user)`
  - select \* from test_table `(to see the new user)`
  - grant all privileges on table test_table to user1; `(giving all permission - read, write etc to user1 of table test_table)` -- output will be `GRANT`
  - select \* from test_table;
  - create user user2 with encrypted password '123456'
  - NEW TAB: psql -u user2 -- postgres and password `(access as user2)`
  - insert into test_table(name) values('putu vai');
  - select \* from test_table;
  - create user user2 with login encrypted password '123454'
  - select \* from test_table;
  - grant select on table test_table to user2; `(giving only view permission to the new user, data insertion permission is not giving to user2)`
  - insert into test_table(name) values('putu vai'); -- `test if we can insert` -- output will be `permission denied`
  - select \* from test_table;
  - revoke select on table test_table from user2; -- `taking back all granted permissions`
  - insert into test_table(name) values('putu vai'); -- `test if we can insert` -- output will be `permission denied`
  - grant all privileges on all tables; -- `granting permission to all table`
  - grant all privileges on all tables to user2; -- `granting permission to all table to user2` -- not good practice
  - grant all privileges on all tables in schema public to user2; -- `giving permission to public`
  - select \* from test_table;
  - \!cls -- `clear console`
  - insert into test_table(name) values('putu vai'); -- `test if we can insert` -- output will be `permission denied`
  - grant select on all tables in schema public to role1; -- `grant permission to role1 to read any table` -- output `GRANT`
  - create user user3 with encrypted password '123456' -- OUTPUT `CREATE ROLE`
  - grant role1 to user3 -- OUTPUT `all permission of role1 will be moved to user3`

**24 Feb, 25**

## 50-5 Structured Query Language (SQL)

- SQL is a declarative language
- language 2 types : declarative (only have to mention what to work) & imperative (have to mention what and how to work)
- types of SQL commands:

  - DDL(data definition language) (CREATE, DROP, ALTER, TRUNCATE)
  - DML(data manipulation language) (INSERT, UPDATE, DELETE)
  - DCL(data control language) (GRANT, REVOKE)
  - TCL(transaction control language) (COMMIT, ROLLBACK, SAVEPOINT)
  - DQL (SELECT)

- client --> (web app, desktop app, mobile app) --> SQL --> postgres/MySQL/Oracle(database Management system - a server) --> databases(db1, db2, db3)

**25 Feb, 25 & 26 Feb, 25 & 28 Feb, 25**

## 50-6 Exploring pgAdmin and Valentina Studio.

- pgAdmin 4 --> it is a GUI --> we can create database from its terminal --> we can run SQL commands from here --> like MongoDB Compass
- pgAdmin 4 configurations
  - postgres --> query tool --> we can run SQL commands from here
- a server can have multiple databases
- a database has schema --> under a schema there is default public schema --> a table there remains table
- we can see the created users to login
- Alternative UI for SQL:
  - [Data Grip](https://www.jetbrains.com/datagrip/)
  - [DBeaver Community](https://dbeaver.io/)
  - [Table Plus](https://tableplus.com/)
  - [Valentina Studio](https://www.valentina-db.com/en/download-valentina-studio/current)
    - cross platform (can be used mac, windows etc)
    - valentina studio win 64
    - we can work here by connect following database Postgres, MySQL, MongoDB, Oracle etc.

**28 Feb, 25**

## 50-7 Create, Update and Delete Database and Data Types in POSTGRES.mp4

- `Command to connect postgres database and user:` psql -U postgres -d postgres (run it to command prompt, password: 123456)
- `to see all database:` \l
- `clear console:` \!cls
- `To create a new database called 'test' :` create database test
- `Update database name using 'alter' : ` alter database test rename to ph
- `Delete database : ` drop database ph

- Why do we use data types in database columns?

  1. data consistency (convenience and functionality)
  2. performance (storage efficiency)
  3. constraint enforcement

- `data types in postgres`: boolean, numbers, binary, date/time, json, character, UUID, Array, XML, etc.
- boolean data type: true, false, null.
- integer data type: INT, BIGINT, SMALLINT, FLOAT4(Single precision), FLOAT8(Double precision), NUMERIC (precision, scale), Serial.

### Integers

- INT:
  - Range: -2,147,483,648 to 2,147,483,647
  - storage: 4 bytes
  - The INT data type is commonly used for integer values within the standard range.
- BIGINT:
  - range: -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807
  - storage: 8 bytes
  - BIGINT provides a larger range than INT and is suitable for storing very large integer values.
- SMALLINT:
  - range: -32,768, to 32,768
  - storage: 2 bytes
  - SMALLINT is suitable for storing small integer values within a more limited range.
- FLOAT4(Single Precision):
  - storage: 4 bytes
  - 6 digit precision
- FLOAT8(Double Precision):
  - storage: 8 bytes
  - 15 digit precision
- NUMERIC(precision, scale):
  - range: unlimited precision
  - storage: variable (depends on the input precision and scale values)
  - ex: NUMERIC(4,3)
- Serial:
  - range: like integers
  - auto-incrementing integer

### Characters

- CHAR:

  - CHAR is a fixed-length character type.
  - storage: The length is fixed and specified when defining the column.
  - if the actual string is shorter than the specified length, it is padded with spaces.
  - example: CHAR(10) means a fixed length string of 10 characters.

- VARCHAR:

  - VARCHAR is variable length character type.
  - storage: the length is not fixed and can vary up to the specified maximum length.
  - No padding with spaces is done, so it is more storage-efficient when dealing with variable-length string with a maximum length of 255 characters.

- TEXT:
  - TEXT is also a variable-length character type.
  - storage: similar to VARCHAR, it is not fixed in length.
  - Typically used for longer text strings where the exact length is not known or can vary widely.
  - Example: TEXT is often used for columns containing large amounts of text.

### Date

- TIME
  - HH:MM:SS
- TIMESTAMPTZ (TIMESTAMP WITH TIME TIME ZONE)
  - YYYY-MM-DD HH:MI:SS:00-08
- TIME STAMP WITHOUT TIME ZONE
  - YYYY-MM-DD HH:MI:SS

### UUID

- it is a data type in PostgreSQL used to store universally unique identifiers.
- storage: it is a 128-bit value, typically displayed as 32 hexadecimal characters separated by hyphens.
- ex: 3C0ab34f-51f4-4d7b-84ee-b197af61dcb3

## 50-8 Creating a Table with Multiple Columns and Different Data Types

- Commands:

```
CREATE DATABASE ph;
```

```
-- creating table

CREATE TABLE person (
	person_id SERIAL,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	age INTEGER,
	is_active BOOLEAN,
	dob DATE
)
```

```
ALTER TABLE person RENAME TO users;
```

```
DROP TABLE users;
```

## 50-9 Creating a Table with Multiple Columns and Column Constraints

- Column Constraint :

  - NOT NULL
  - UNIQUE (such as email)
  - PRIMARY KEY (NOT NULL + UNIQUE)
  - FOREIGN KEY
  - DEFAULT
  - CHECK (can provide custom validation)

- Command:

```
 -- creating table with constraint

CREATE TABLE person2 (
	id SERIAL NOT NULL,
	user_name VARCHAR(50) NOT NULL,
	age INTEGER CHECK (age >= 18),
	is_active BOOLEAN DEFAULT true
)
```

## 50-10 Different Methods to Define Constraints.

- we can add multiple constraint to a single column.
- composite key : combination of multiple columns.

```
CREATE TABLE person2 (
	user_id SERIAL,
	user_name VARCHAR(50) NOT NULL UNIQUE,
	age INTEGER CHECK (age >= 18),
	PRIMARY KEY(user_id)
)
```

```
CREATE TABLE person2 (
	user_id SERIAL,
	user_name VARCHAR(50) NOT NULL UNIQUE,
	age INTEGER CHECK (age >= 18),
	PRIMARY KEY(user_id, user_name)
)
```

```
CREATE TABLE person2 (
	user_id SERIAL,
	user_name VARCHAR(50) NOT NULL,
	age INTEGER CHECK (age >= 18),
	PRIMARY KEY(user_id),
  UNIQUE(user_name)
)
```

```
CREATE TABLE person2 (
	user_id SERIAL,
	user_name VARCHAR(50) NOT NULL,
	age INTEGER CHECK (age >= 18),
	PRIMARY KEY(user_id),
  UNIQUE(user_name, age)
)
```

## 50-11 Inserting Data into a Table and Checking Constraints

```
INSERT INTO person2 (id, user_name, age) VALUES(1, 'putu', 2);
```

```
INSERT INTO person2 (id, user_name, age) VALUES(1, 'putu', 2), (2, 'vutu', 5);
```
