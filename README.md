# Database

![Image](./images/Syllabus.PNG)

**9 Oct, 24**

# 48-0 Welcome

- AWS, Docker, cse pipeline (rewards)

# 48-1 Understanding Data, Information and Database

- **DBMS (Database Management System)** & **POSTGRESQL**

- **POSTGRESQL** : a popular RDBMS

- **What is Database?** : a database is a structured collection of related data that represents some real world entities and are organized for efficient retrieval, storage, and management

- **What is Database?** : a computer -- contains a hard drive

- dram memory

- **what is data?** : data are facts that can be recorded

- **what is information?** : information is processed and organized data that provides meaningful context , insight or knowledge

- raw data --> process --> information

# 48-2 What is DBMS and Why

- a piece of software to manage database

- **draw back storing data using file system** :

1. unstructured data, multiple file format (.txt, .mp4, etc)
2. data redundancy
3. data inconsistency
4. no concurrency protocol
5. access complication
6. security issue

- file --> DBMS (a software) --> database
- SQL (structured query language) --> DBMS (a software) --> database

- **Popular DBMS** :

1. relational: MySQL, PostGRESQL, SQLite, Microsoft SQL Server etc are RDBMS
2. document: MongoDB, amazon dynamo etc are non-relation or NoSQL DBMS
3. kye value: redis

# 48-3 Different types of Database Model and Relational Model

- **Different types Database Model** :

1. Hierarchical
2. Network
3. Relational
4. Document
5. Key value

**12 Oct, 24**

# 48-4 Anatomy of a Table/Relation

**keywords/Terminologies**:

- column/ attribute
- constraint / domain
- degree -- all column at a time in a table (collection of column)
- row/tuples/records
- cardinality -- all row in a table

# 48-5 What is Key and Super Key

- **Key**: a key in a relational database is a field or a combination of fields that uniquely identifies a record in a table.
- super key, primary key, candidate key, alternate key, composite key, foreign key

- **super key**:

1. attribute or set of attribute by which we can identify each row uniquely
2. it could be a single attribute or a set of attribute
3. it could have null values in the set
4. it is actually a superset

# 48-6 Candidate, Primary, Alternate and Composite Key

- **candidate key**:

1. super key whose proper subset is not a super key
2. also called **Minimal Super key** whose cannot be broken more
3. **Potential primary key** : from the candidate keys, one is chosen as the primary key. However, all candidate keys are potential choices for the primary key.

- **primary key** :

1. from the candidate keys, one key is chosen as the primary key for the table. the primary key is a specific candidate key that is selected as the main identifier for the records in that table.
2. should be unique, not null and stable

- **alternate key**:

1. candidate keys which were not chosen as primary key

- **composite key**:

1. candidate keys which were not chosen as primary key

**example**:

- super key: {u_id}, {u_id, name}, {u_id, email}, {u_id, name, email, gender, age}, {name, email}, {name, gender}, ..., etc
- candidate key: {u_id}, {name, gender}
- primary key: {u_id}
- alternate key: {name, gender}
- composite key: {name, gender}

# 48-7 Explaining Foreign Keys

- **foreign key**:

1. primary key of another table

- **referential integrity** --> create a constraint --> we can only use the primary keys as foreign keys that are actually used as primary key in a table

# 48-8 Techniques to Design Database

- **software development life cycle (SDLC)**: planning (what, why, how we will make) --> analysis (requirement analysis, time or deadline analysis) --> system design (database design) --> building (practical task) --> testing (expected product or not) --> deployment

- **purpose of database design** : structured organization for efficient data management and retrieval for a **robust** system

- **techniques to design database**:

1. top-down
2. bottom-up
3. hybrid approaches (mixed of top-down and bottom-up)

# 48-9 Steps of Top-down Technique

- **Entity-Relationship (ER) diagram**: an entity-relationship (ER) diagram is a visual representation used in database design to illustrate the relationships between entities. it shows how different entities in a database relate to each other through various types of relationships like ont-to-one, one-to-many, or many-to-many

- **top-down steps**:

1. determining entities
2. determining attributes for each entity
3. relationships among entities

- **characteristics of entity**: for determining entities

1. entity will be place, or person, or thing
2. it must have properties or attributes
3. it must have an unique identifier
4. must have a singular name (its a conventions actually)
5. it should contain more than one instance of data

- **characteristics of attributes**: for determining attributes of an entity

1. should be related to the entity
2. should be atomic
3. should have keys

# 48-10 Relationship and Relationship Cardinality

- **Relationships among entities** : also called **relationship cardinality**
- **relationships** : connection between entity or tables
- **relationship cardinality**: it refers in databases specifies how many instances of one entity are associated with how many instances of another entity.

- **types of relationship cardinality**:

1. **one-to-one (1:1)** : a person has one passport and a passport belongs to only one person
2. **one-to-many (1:N)**: a university department has multiple students, but each student belongs to only one department.
3. **many-to-one (N:1)**: many employees work for one company, but each employee works for only one company
4. **many-to-many (N:N)**: students enroll in multiple courses and each course has multiple enrolled students.
5. **optional one-to-one (0..1 : 0..1)** : a person mey or may not have a driver's license, and a driver's license may or may not be associated with a person.
6. **optional one-to-many (0..1 : N)** : a department may or may not have employees but an employee must belong to a department.

# 48-11 Tooling for Er Diagram And Creating First Er Diagram

- **ER diagram draw tools**: [Click here](https://www.google.com/search?q=er+diagram+draw+tools&oq=er+diagram+draw+tools+&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIICAEQABgHGB4yCAgCEAAYCBgeMggIAxAAGAgYHjIICAQQABgIGB4yDQgFEAAYhgMYgAQYigUyDQgGEAAYhgMYgAQYigUyDQgHEAAYhgMYgAQYigUyDQgIEAAYhgMYgAQYigUyCggJEAAYgAQYogTSAQkxNTM2NmowajeoAgCwAgA&sourceid=chrome&ie=UTF-8)
- **Draw.io (ER diagram drawing tool)** : [Click here](https://app.diagrams.net/)
- **Lucidchart (ER diagram drawing tool)**:[Click here](https://lucid.app/lucidchart/c7217a11-ba8c-4ce9-acb6-f17de3034fc7/edit?page=0_0&invitationId=inv_3ff20e46-14f8-4a0a-911d-86f825c0ff22#)

- **Case Study**: [Medical Database](https://lily-plate-b6a.notion.site/Case-Study-082bcd700e034e0b85a54bf82ba590ab)

# Module 49

# 49-1 Understanding Anomalies

- **Anomalies** : anomalies in databases refer to inconsistencies or unexpected issues that can occur during data manipulation or retrieval

- **Types of Anomalies**:

1. update anomalies
2. delete anomalies
3. insert anomalies

# 49-2 Understanding Functional Dependency.

- **Normalization** :

1. **Functional Dependency**: Functional Dependency in simple terms means that the value of one attribute (or set of attributes) uniquely determines the value of another attribute(s)
   uniquely determines the value of another attribute(s) in a database table.

2. **Normal Forms**:

# 49-3 Normalization and 1st Normal Forms (1NF) -- watch again

- **Normal Forms**: a series of guidelines that help to ensure that the design of a database is efficient , organized and free from data anomalies.

1. **0NF** : totally not organized data
2. **1NF rules**:
   - atomic values
   - unique column names
   - positional Dependency
   - column should contain data that are of the same type
   - determine primary key

# 49-4 2nd Normal Forms and Partial Dependency (2NF). (watch again)

3. **2NF rules**:
   - must be in 1NF
   - must not contain any non-prime/non-key attribute that is functionally dependent
     on a proper subset of any candidate key of the relation.
   - **Partial Dependency**

- **lossy decomposition**: loss one important attribute because of splitting table
- **lossless decomposition**

# 49-5 3rd Normal Forms and Transitive Dependency (3NF) (watch again)

4. **3NF rules**:
   - Must be in 2NF
   - must not contain **transitive dependency**

- **transitive dependency**: if x depends on y, and y depends on z, then x depends on z.

# 49-6 Resolving Many to Many with Junction Table. (watch again)

- **Junction Table** : intermediate table

# 49-7 Completing The ER Diagram (watch again)

# 49-8 What is Postgres and Installing Postgres

- the world's most advanced open source relational database management system
- **why do we learn postgres?** :

  1. open source (world's experienced developer's fixing its bug, adding robust
     feature, giving support)
  2. RDBMS
  3. Modern
  4. ACID compliance
  5. advanced data types
  6. scalability
  7. indexing
  8. community support

- **PostGRESQL**: (https://www.postgresql.org/)

# 49-9 Exploring Data Flow in an Application and Exploring PSQL (watch again)

- **client server architecture**:
  client <--> server (localhost:3000) <--> DBMS(database management server (host=localhost, port=5432, in this case postgresql)) <--> databases
- password : 123456

**post shell commands:**

- select version();
- **\l** : to see all databases
- **\c template1** : connect to database
- **\c postgres** : connect to database
- **create table test_table(name varchar(50));**
- **\dn** : how to see schema
- **\! cls** : to clear shell
- **\d**:
- **\d+**:
- **\dt**:
- **\conninfo**: connection information

# 49-10 Module Summery and Practice Case Study

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

---

# Module 51

**15 Mar, 25**

## 51-1 Using the ALTER Keyword to Modify Tables and Setting Up PostgreSQL in VS Code

- `Alter` command use for:
  - rename a table
  - modify data type of a column
  - add/drop column
  - setting default value for a column
  - rename a column
  - add/drop constraint for a column
- `Syntax`: ALTER TABLE table_name action;

- install an extension in vscode : PostgreSQL --> wejjan chen (creator) --> connect it

**16 Mar, 25**

## 51-2 Expanding on the ALTER Keyword for Table Modification

- add and drop a column
- add constraint and type during adding a column
- changing an existing column name

## 51-3 Different Methods to Alter Tables For Primary key, Unique etc

- `DDL (Data Definition Language)` : CREATE, DROP, ALTER, TRUNCATE
- `DQL (Data Query Language)`: SELECT
- `SELECT`: the select statement is used to retrieve data from one or more tables and can be customized with conditions, sorting, and other clauses.
  <br> Clause that can be user with SELECT clause:
  - `SELECT`: Retrieve data from one or more tables.
  - `FROM`: Specifies the table from which to retrieve data.
  - `WHERE`: filters data based on specified conditions.
  - `ORDER BY`: sorts the result set based on specified columns.
  - `GROUP BY`: groups rows that have the same values in specified columns.
  - `HAVING`: filters the results of a group by clause based on specified conditions.
  - `JOIN`: combines rows from two or more tables based on a related column.
  - `DISTINCT`: returns unique values in the result set.
  - `LIMIT`: specifies the maximum number of rows to return.
  - `OFFSET`: specifies the number or rows to skip before starting to return rows.

## 51-4 Mastering SELECT Queries: Column Aliasing and Result Ordering in PostgreSQL

**17 Mar, 25**

## 51-5 Data Filtering: WHERE Clause, Logical Operators, and Comparison Operators

- data filtering

## 51-6 Exploring Scalar and Aggregate Functions in PostgreSQL

- there is 2 types functions in postgress: scalar and aggregate

- `scalar function`: scalar functions operate on a single value and return a single value. they perform an operation on each row's data independently.

- `aggregate function`: these functions operate on a set of values and return a single value summarizing that set. They perform an operation across multiple rows, often used with the GROUP BY clause.

**18 Mar, 25**

## 51-7 Logical Negation NOT, understanding NULL and the Null-Coalescing Operator in PostgreSQL

## 51-8 Exploring IN, BETWEEN, LIKE, and ILIKE Operators in PostgreSQL.

**21 Mar, 25**

## 51-9 Pagination with Limit Offset and Data Deletion in PostgreSQL

- limit and offset is required for pagination

## 51-10 Understanding and Using the UPDATE Operator in PostgreSQL

# Module 52 (21 Mar, 25 - 3 April, 25)

**21 Mar, 25**

## 52-1 Handling Date and Date Functions in PostgreSQL

## 52-2 Grouping and Filtering Data with GROUP BY and HAVING

- aggregate function follows split --> apply --> combine rule

## 52-3 Constructing Relationships with Foreign Key Constraints

## 52-4 Enforcing Referential Integrity: Behaviors During Data Insertion

- insertion constraint on INSERT posts:
  - attempting to insert a post with a user ID that does not exist.
  - Inserting a post with a valid user ID.
  - attempting to insert a post without specifying a user ID.

## 52-5 Enforcing Referential Integrity: Behaviors During Data Deletion

- deletion constraint on DELETE users2:
  - restrict deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (default)
  - cascading deletion -> ON DELETE CASCADE
  - setting null -> ON DELETE SET NULL
  - set default value -> ON DELETE SET DEFAULT

**22 Mar, 25**

**1 April, 25**

## 52-6 Joining Tables with Inner Join

- Query: Retrieve all posts title with their username.
  - given table : Post (id - (SERIAL), title - (TEXT), user_id); User (id - (SERIAL), username - (VARCHAR(25)));
  - result table: (title (TEXT), username)

## 52-7 Understanding Left and Right Joins

## 52-8 Exploring Full, Cross, and Natural Joins

**2 April, 25**

## 52-9 Query Practice: Part 1

**3 April, 25**

- inner join to retrieve employee and department information
- show department name with average salary

## 52-10 Query Practice: Part 2

- count employees in each department
- find the department name with the highest average salary
- count employees hired each year

# Module 55

**1 Mar, 25 - 6 Mar, 25**

---

- [Github Link](https://github.com/Apollo-Level2-Web-Dev/PrismaMastery)

**1 Mar, 25**

## 55-1 Introduction and Overview of Prisma

- library / framework (frontend) -- ORM (backend) -- increase productivity -- less use of manual method -- reduce time consumption

### What is Prisma?

- prisma is an open-source database toolkit that simplifies database access and management.
- prisma is next-generation ORM(object-relational-mapping).
- prisma is very powerful & industry standard.
- good for small and mid-level projects.

### Why Prisma?

- Prisma supports multiple popular databases like MySQL, SQLite, MSSQL, PostgreSQL, and also with mongoDB (NoSQL),
  providing developers with flexibility when choosing the database that best fits their project's requirements.

### Should you use Prisma?

- if you are building a server-side application that talks to database.
- you care about productivity and developer experience.
- you are working in a team.
- you want a tool that holistically covers your database workflows
- you value type-safety
- you want an ORM with a transparent development process, proper maintenance & support.
- you want to be part of an awesome community.

### Components of Prisma: 3 components

- prisma client: auto-generated and type-safe query builder for Node.js & typeScript
- Prisma Migrate: a migration system for managing changes to your database schema.
- prisma studio: a graphical user interface (GUI) for viewing and editing data in your database.

- prisma's main goal is to make application developers more productive when working with database. considering the
  tradeoff between productivity and control again, this is how prisma fits in:

### Limitations of Prisma

- might not perform well for complex quires, in that case we can use RAW SQL queries.
- serverless deployment is complex, as prisma ships with extra engines.
- doesn't use database level joins, instead uses multiple queries and joins the data in it's RUST engine.

**2 Mar, 24**

## 55-2 Project Setup for Prisma

- [Prisma.io](https://www.prisma.io/)
- (https://www.prisma.io/docs/getting-started)
- (https://www.prisma.io/docs/getting-started/setup-prisma/start-from-scratch/relational-databases-typescript-postgresql)

- steps:

  - create a directory
  - run the following commands:

    ```
    yarn init -y
    ```

    ```
    yarn add prisma typescript tsx @types/node --save-dev
    ```

    ```
    npx tsc --init
    ```

    <br> modify tsconfig.json file --- set root directory

    ```
    npx prisma
    ```

    <br> copy paste schema from Using Prisma Migrate to schema.prisma file

    ```
    npx prisma migrate dev --name init
    ```

    <br> it will convert this schema to query, a new folder `migrations` within prisma folder will be created.

## 55-3 Prisma Extension, Schema Establishment, and ts-node-dev installation

- create post schema in schema.prisma file

- to convert in SQL:

```
npx prisma migrate dev
```

- if you want you may delete migration folder and run command to get new migration folder

- [ts node dev](https://www.npmjs.com/package/ts-node-dev)

```
yarn add ts-node-dev --dev
```

**3 Mar, 25 & 4 Mar, 25**

## 55-4 Inserting Data into the Database and Retrieving All Records

- modify package.json file

- add as script in package.json file:

```
ts-node-dev --respawn --transpile-only server.ts
```

- package.json file dependencies:

```
npm install @prisma/client
```

- prisma client provides type safety

- prisma provides 3 components: prisma client (type safety), prisma studio (provides GUI to manage data), and prisma migrate (migration -- convert from model to query language)

```
npx prisma studio
```

- create and find operation in prisma

**4 Mar, 25**

## 55-5 Reading Records and Executing Queries

- to run the project:

```
yarn dev
```

```
npx prisma studio
```

- create find.ts
- modify package.json file script, dev property

<!--
{
  "name": "prismamastery",
  "version": "1.0.0",
  "main": "index.js",
  "license": "MIT",
  "scripts": {
    "dev": "ts-node-dev --respawn --transpile-only src/find.ts"
    // "dev": "ts-node-dev --respawn --transpile-only src/index.ts"
  },
  "dependencies": {
    "@prisma/client": "^6.4.1",
    "@types/node": "^22.13.8",
    "prisma": "^6.4.1",
    "tsx": "^4.19.3",
    "typescript": "^5.8.2"
  },
  "devDependencies": {
    "ts-node-dev": "^2.0.0"
  }
}

 -->

**6 Mar, 25**

## 55-6 Creating Multiple Records and Understanding Differences between create and createMany

- create create.ts
- modify package.json file script, dev property

## 55-7 Updating Records: Single and Multiple Record Updates and Their Distinctions

- create update.ts
- modify package.json file script, dev property

## 55-8 Deleting Records: Single and Multiple Deletion Operations and Their Variations

- create delete.ts
- modify package.json file script, dev property

## 55-9 Upsert Operations and Select Queries

- `upsert` : if data is available the update it, and if data is not available then delete it

## 55-10 Implementing Pagination and Sorting in Prisma

- `offset pagination`: offset pagination uses skip and take to skip a certain number of results and select a limited range.

- `Cursor based pagination`: cursor-based pagination uses cursor and take to return a limited set of results before or after a given cursor.

# Module 56 : Prisma Relational Mastery

[Github Link](https://github.com/Apollo-Level2-Web-Dev/PrismaMastery)

**6 Mar, 25**

## 56-1 Exploring Prisma Relations

- one-to-one
- one-to-many
- many-to-many

- creating model from table to schema.prisma
- model = schema
- given table : Post, User, Category, Profile
- Post table: id: int, title: string, content : string, published: boolean, authorId: int, createdAd: dateTime, updatedAt: dateTime.
- User Table: id: int, username: string, unique, email: string, role: enum(user, admin).
- Category Table: id: int, name: string.
- Profile: id: int, bio: string, userId: int.
- Relation:
  - each user can have one profile
  - each user can have multiple posts
  - each post can have multiple category and each category can have multiple post.

**7 Mar, 25**

## 56-2 Understanding One-to-One and One-to-Many / Many-to-One Relationships

- User and Profile table --> one-to-one relation
- Post and User table --> many-to-one relation or User and Post table --> one-to-many relation

## 56-3 Delving into Many-to-Many Relations

- Post and Category table --> many to many relation
- during many-to-many relationship, we have to take an intermediate table
- PostCategory table (intermediate table): postId, categoryId
- we require a composite key to make a intermediate table
- composite key -- more than one primary key of others table

```
npx prisma migrate dev
```

- Prisma, mongoose --> ORM

## 56-4 Inserting Data into the Database with Relationships

```
npx prisma studio
```

- work on create.ts file
- modify package.json file

```
yarn dev
```

- creating steps:
  - create user
  - then create profile for the user
  - then create category of the post
  - then create posts of different category

## 56-5 Executing Relation Queries

- `Fluent API`
- create relational-queries.ts file

## 56-6 Implementing Relation Filters

- make some post published status true for filtering

**8 Mar, 25**

## 56-7 Advanced Filtering with AND & OR Operators

- create filtering.ts file and modify package.json file

## 56-8 Utilizing startsWith and contains Filters

**9 Mar, 25**

## 56-9 Employing endsWith and equals Filters

## 56-10 Activating Logging for Enhanced Monitoring

- create logging.ts file and modify package.json
