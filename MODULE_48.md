# Database Essentials & Relational Model

**9 Oct, 24** ----- **9 August, 25**

## 48-0 Welcome

- AWS, Docker, CSE Pipeline (Rewards)

## 48-1 Understanding Data, Information and Database

- **DBMS (Database Management System)** & **PostgreSQL**

- **PostgreSQL** : A popular RDBMS

- **What is Database?** : A database is a structured collection of related data that represents some real world entities and are organized for efficient retrieval, storage, and management.

- **What is Database?** : A computer -- contains a hard drive

- DRAM Memory

- **What is data?** : Data are facts that can be recorded.

- **What is information?** : Information is processed and organized data that provides meaningful context , insight or knowledge.

- raw data --> process --> information

## 48-2 What is DBMS and Why

- A piece of software to manage database.

- **Draw Back Storing Data Using File System** :

1. Unstructured data, multiple file format (.txt, .mp4, etc).
2. Data redundancy.
3. Data inconsistency.
4. No concurrency protocol.
5. Access complication.
6. Security issue.

- File --> DBMS (a software) --> Database
- SQL (structured query language) --> DBMS (a software) --> Database

- **Popular DBMS** :

1. Relational: MySQL, PostGRESQL, SQLite, Microsoft SQL Server etc are RDBMS.
2. Document: MongoDB, Amazon Dynamo etc are non-relation or NoSQL DBMS.
3. Kye Value: Redis.

## 48-3 Different types of Database Model and Relational Model

- **Different Types of Database Model** :

1. Hierarchical
2. Network
3. Relational
4. Document
5. Key value

**12 Oct, 24** ----- **9 August, 25**

## 48-4 Anatomy of a Table/Relation

**Keywords/Terminologies**:

- Column / Attribute
- Constraint / Domain
- Degree -- all column at a time in a table (collection of column)
- Row / Tuples / Records
- Cardinality -- all row in a table

## 48-5 What is Key and Super Key

- **Key**: A key in a relational database is a field or a combination of fields that uniquely identifies a record in a table.
- Super key, Primary key, Candidate key, Alternate key, Composite key, Foreign key

- **Super Key**:

1. Attribute or set of attribute by which we can identify each row uniquely.
2. It could be a single attribute or a set of attribute.
3. It could have null values in the set.
4. It is actually a superset.

## 48-6 Candidate, Primary, Alternate and Composite Key

- **Candidate Key**:

1. Super key whose proper subset is not a super key.
2. Also called **Minimal Super key** whose cannot be broken more.
3. **Potential primary key** : From the candidate keys, one is chosen as the primary key. However, all candidate keys are potential choices for the primary key.

- **Primary Key** :

1. From the candidate keys, one key is chosen as the primary key for the table. The primary key is a specific candidate key that is selected as the main identifier for the records in that table.
2. Should be unique, not null and stable.

- **Alternate Key**:

1. Candidate keys which were not chosen as primary key.

- **Composite key**:

1. Candidate keys which were not chosen as primary key

**Example**:

- super key: {u_id}, {u_id, name}, {u_id, email}, {u_id, name, email, gender, age}, {name, email}, {name, gender}, ..., etc
- candidate key: {u_id}, {name, gender}
- primary key: {u_id}
- alternate key: {name, gender}
- composite key: {name, gender}

## 48-7 Explaining Foreign Keys

- **Foreign key**:

1. Primary key of another table.

- **Referential Integrity** --> Create a Constraint --> We can only use the primary keys as foreign keys that are actually used as primary key in a table.

## 48-8 Techniques to Design Database

- **Software Development Life Cycle (SDLC)**: Planning (what, why, how we will make) --> analysis (requirement analysis, time or deadline analysis) --> system design (database design) --> building (practical task) --> testing (expected product or not) --> deployment

- **Purpose of Database Design** : Structured organization for efficient data management and retrieval for a **robust** system.

- **Techniques to Design Database**:

1. Top-Down
2. Bottom-Up
3. Hybrid Approaches (mixed of top-down and bottom-up)

## 48-9 Steps of Top-down Technique

- **Entity-Relationship (ER) diagram**: An entity-relationship diagram (ERD) is a visual representation used in database design to illustrate the relationships between entities. It shows how different entities in a database relate to each other through various types of relationships like `ont-to-one`, `one-to-many`, or `many-to-many`

- **Top-Down Steps**:

1. Determining entities.
2. Determining attributes for each entity.
3. Relationships among entities.

- **Characteristics of Entity**: for determining entities

1. Entity will be place, or person, or thing.
2. It must have properties or attributes.
3. It must have an unique identifier.
4. Must have a singular name (its a conventions actually).
5. It should contain more than one instance of data.

- **Characteristics of Attributes**: for determining attributes of an entity

1. Should be related to the entity.
2. Should be atomic.
3. Should have keys.

## 48-10 Relationship and Relationship Cardinality

- **Relationships Among Entities** : Also called `relationship cardinality`.
- **Relationships** : Connection between entity or tables.
- **Relationship Cardinality**: It refers in databases specifies how many instances of one entity are associated with how many instances of another entity.

- **Types of Relationship Cardinality**:

1. **One-to-One (1:1)** : A person has one passport and a passport belongs to only one person.
2. **One-to-Many (1:N)**: A university department has multiple students, but each student belongs to only one department.
3. **Many-to-One (N:1)**: many employees work for one company, but each employee works for only one company.
4. **Many-to-Many (N:N)**: Students enroll in multiple courses and each course has multiple enrolled students.
5. **Optional One-to-One (0..1 : 0..1)** : A person may or may not have a driver's license, and a driver's license may or may not be associated with a person.
6. **Optional One-to-Many (0..1 : N)** : A department may or may not have employees but an employee must belong to a department.

## 48-11 Tools for ER Diagram And Creating First ER Diagram

- **ER diagram draw tools**: [Click here](https://www.google.com/search?q=er+diagram+draw+tools&oq=er+diagram+draw+tools+&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIICAEQABgHGB4yCAgCEAAYCBgeMggIAxAAGAgYHjIICAQQABgIGB4yDQgFEAAYhgMYgAQYigUyDQgGEAAYhgMYgAQYigUyDQgHEAAYhgMYgAQYigUyDQgIEAAYhgMYgAQYigUyCggJEAAYgAQYogTSAQkxNTM2NmowajeoAgCwAgA&sourceid=chrome&ie=UTF-8)
- **Draw.io (ER diagram drawing tool)** : [Click here](https://app.diagrams.net/)
- **Lucidchart (ER diagram drawing tool)**: [Click here](https://lucid.app/lucidchart/c7217a11-ba8c-4ce9-acb6-f17de3034fc7/edit?page=0_0&invitationId=inv_3ff20e46-14f8-4a0a-911d-86f825c0ff22#)

- **Case Study**: [Medical Database](https://lily-plate-b6a.notion.site/Case-Study-082bcd700e034e0b85a54bf82ba590ab)
