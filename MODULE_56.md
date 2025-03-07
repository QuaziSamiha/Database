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
