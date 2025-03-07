// ? 7 Mar, 25
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const relationalQueries = async () => {
  //! FLUENT API
  //   ? 4th version
  //   const result = await prisma.user
  //     .findUnique({
  //       where: {
  //         id: 3, //? this is user id
  //         // id: 1, //? this is user id
  //       },
  //     })
  //     .profile();
  //? 3rd version
  //   const result = await prisma.user.findUnique({
  //     where: {
  //       id: 3, //? this is user id
  //     },
  //     include: {
  //       post: true,
  //     },
  //   });
  // ? 2nd version
  //   const result = await prisma.user
  //     .findUnique({
  //       where: {
  //         id: 3, //? this is user id
  //       },
  //     })
  //     .post(); //? will get all posts of user id 3
  //? 1st version
  //   const result = await prisma.user.findUnique({
  //     where: {
  //       id: 3,
  //     },
  //   });
  //   console.log(result);
  //! RELATIONAL FILTER
  //?   2nd version
  const publishedPostUsers = await prisma.user.findMany({
    include: {
      post: {
        where: {
          published: true,
        },
      },
    },
  });
  //   ? 1st version
  //   const publishedPostUsers = await prisma.user.findMany({
  //     include: {
  //       post: true,
  //     },
  //   });
  //   console.log(publishedPostUsers);
  console.dir(publishedPostUsers, { depth: Infinity });
};

relationalQueries();
