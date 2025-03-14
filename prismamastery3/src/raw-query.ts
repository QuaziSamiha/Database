// ? 14 Mar, 25
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const rawQuery = async () => {
  // const posts = await prisma.$queryRaw`SELECT * FROM "posts"`;
  // const posts = await prisma.$queryRaw`SELECT * FROM "posts" WHERE true`;
  // console.log(posts);

  // delete users table data
  await prisma.$queryRaw`TRUNCATE TABLE "categories" CASCADE`;
};

rawQuery();
