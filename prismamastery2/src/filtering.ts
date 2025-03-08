// ? 8 Mar, 25
// ? 9 Mar, 25
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const filtering = async () => {
  // ! AND FILTERING
  //   ? 2nd Version
  //   const andFiltering = await prisma.post.findMany({
  //     where: {
  //       AND: [
  //         {
  //           title: { contains: "title 1" },
  //         },
  //         { published: true },
  //       ],
  //     },
  //   });
  //   ? 1st version
  //   const andFiltering = await prisma.post.findMany({
  //     where: {
  //       AND: [
  //         {
  //           title: "title 1",
  //           published: true,
  //         },
  //       ],
  //     },
  //   });
  //   console.log("And Filtering: ", andFiltering);
  // ! OR FILTERING
  //   const orFiltering = await prisma.post.findMany({
  //     where: {
  //       OR: [
  //         {
  //           title: {
  //             contains: "title",
  //           },
  //         },
  //         {
  //           published: true,
  //         },
  //       ],
  //     },
  //   });
  //   console.log("And Filtering: ", orFiltering);
  // ! NOT FILTERING
  //   const notFiltering = await prisma.post.findMany({
  //     where: {
  //       NOT: [
  //         {
  //           title: {
  //             contains: "title",
  //           },
  //         },
  //       ],
  //     },
  //   });
  //   console.log(notFiltering);
  // ! START WITH
  //   ? 1st version
  //   const startsWith = await prisma.user.findMany({
  //     where: {
  //       email: {
  //         startsWith: "user1@ph.com", // endsWith, contains, equals
  //       },
  //     },
  //   });
  //   console.log(startsWith);
  //   ! ENDS WITH
  //   const endsWith = await prisma.user.findMany({
  //     where: {
  //       email: {
  //         endsWith: "user1@ph.com", // endsWith, contains, equals
  //       },
  //     },
  //   });
  //   ! EQUAL
  //   const equalsWith = await prisma.user.findMany({
  //     where: {
  //       email: {
  //         equals: "user1@ph.com", // endsWith, contains, equals
  //       },
  //     },
  //   });
  //   ! ARRAY MANIPULATION
  //   ? 2nd version
  //   const userNameArray = ["user1", "user2", "user5"];
  //   const userNamesByArray = await prisma.user.findMany({
  //     where: {
  //       username: {
  //         in: userNameArray,
  //       },
  //     },
  //   });
  //   ? 1st version
  //   const userNamesByArray = await prisma.user.findMany({
  //     where: {
  //       username: "user1",
  //     },
  //   });
  //   console.log(userNamesByArray);
  // ! --------- NESTED
  //   ? 3rd version
  const inDepthData = await prisma.user.findUnique({
    where: {
      id: 3,
    },
    include: {
      post: {
        include: {
          postCategory: {
            include: {
              category: true,
            },
          },
        },
      },
    },
  });
  // ? 2nd version
  //   const inDepthData = await prisma.user.findUnique({
  //     where: {
  //       id: 3,
  //     },
  //     include: {
  //       post: {
  //         include: {
  //           postCategory: true,
  //         },
  //       },
  //     },
  //   });
  //   ? 1st version
  //   const inDepthData = await prisma.user.findUnique({
  //     where: {
  //       id: 3,
  //     },
  //   });
  console.log(inDepthData);
  console.dir(inDepthData, { depth: Infinity });
};

filtering();
