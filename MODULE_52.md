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
