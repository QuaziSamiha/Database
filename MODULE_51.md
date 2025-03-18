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
