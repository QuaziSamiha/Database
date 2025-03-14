# Module 57

**9 Mar, 25**

## 57-1 Aggregation and Average Aggregation

- [prisma doc for aggregation](https://www.prisma.io/docs/orm/prisma-client/queries/aggregation-grouping-summarizing)

- add age field in user schema

```
npx prisma migrate dev
```

- add default value to `age` field
- create aggregates.ts file and modify package.json file

## 57-2 Sum, Count, Maximum, Minimum Aggregation

## 57-3 Group By and Filtering with Having Clause

- create groupBy.ts file and modify package.json file

**14 Mar, 25**

## 57-4 Introduction to Transaction API in Prisma

- `Transaction and Batch Queries in Prisma`

- `Transaction: ` A database transaction refers to a sequence of read/write operations that are guaranteed to a either succeed or fail as a whole.

- `Transaction: ` initial state --> transaction --> commit --> transaction succeed
- `Transaction: ` initial state --> transaction --> rollback --> transaction failed
- in prisma there is 2 ways to write transaction : batch (sequential) and interactive

## 57-5 Batch Transactions

```
yarn dev
```

```
npx prisma studio
```

## 57-6 Interactive Transactions

## 57-7 Executing Raw Queries

## 57-8 Essential Prisma Commands and Conclusion

```
npx prisma generate
```

```
npx prisma validate
```

```
npx prisma db pull --print
```

```
npx prisma db pull
```

```
npx prisma db push
```

```
npx prisma
```
