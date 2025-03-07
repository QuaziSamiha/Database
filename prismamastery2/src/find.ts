// ? 4 Mar, 25
// ? 6 Mar, 25
// console.log("putu hero");

import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const main = async () => {
  // ? find unique or throw error
  const findUnique = await prisma.post.findUniqueOrThrow({
    where: {
      id: 23,
    },
    select: {
      title: true,
      content: true,
      authorName: true,
    },
  });

  // ? find unique or throw error
  // const findUnique = await prisma.post.findUniqueOrThrow({
  //   where: {
  //     id: 23,
  //   },
  // });

  //? find unique
  //   const findUnique = await prisma.post.findUnique({
  //     where: {
  //       id: 2,
  //     },
  //   });

  console.log({ findUnique });

  // !----------------------------------------
  //? find all
  const getAllFromDB = await prisma.post.findMany({
    select: {
      authorName: true,
    },
  });
  // ? version 1
  // const getAllFromDB = await prisma.post.findMany();
  console.log(getAllFromDB);

  // !----------------------------------------
  // ? find first and find first or throw
  //   const findFirst = await prisma.post.findFirstOrThrow({
  //     where: {
  //       published: true,
  //     },
  //   });
  //   const findFirst = await prisma.post.findFirst({
  //     where: {
  //       published: false,
  //     },
  //   });
  //   const findFirst = await prisma.post.findFirst({
  //     where: {
  //       id: 10,
  //     },
  //   });
  //   const findFirst = await prisma.post.findFirst({
  //     where: {
  //       id: 1,
  //     },
  //   });
  //   console.log(findFirst);
};

main();
