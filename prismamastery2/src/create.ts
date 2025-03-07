//? 7 Mar, 25
import { PrismaClient, UserRole } from "@prisma/client";

const prisma = new PrismaClient();

const main = async () => {
  // ! AT FIRST CREATING USER
  //? 2nd version
  // const createUser = await prisma.user.create({
  //   data: {
  //     username: "user2",
  //     email: "user2@ph.com",
  //     role: UserRole.user,
  //   },
  // });
  // ? 1st version
  // const createUser = await prisma.user.create({
  //   data: {
  //     username: "user1",
  //     email: "user1@ph.com",
  //     role: UserRole.user,
  //   },
  // });
  // console.log(createUser);
  // ! CREATING USER PROFILE, PROFILE IS OPTIONAL FOR AN USER
  // const createProfile = await prisma.profile.create({
  //   data: {
  //     bio: "this is bio...",
  //     userId: 1, //? id OF User table, foreign key
  //   },
  // });
  // ! CREATING A CATEGORY
  // const createCategory = await prisma.category.create({
  //   data: {
  //     name: "software engineering",
  //   },
  // });
  // ? 1st VERSION
  // const createCategory = await prisma.category.create({
  //   data: {
  //     name: "web dev",
  //   },
  // });
  // ! CREATING POST
  const createPost = await prisma.post.create({
    data: {
      title: "this is title 5",
      content: "this is content of the post. 5",
      authorId: 3,
      postCategory: {
        create: [
          {
            categoryId: 1,
          },
          {
            categoryId: 3,
          },
          {
            categoryId: 4,
          },
        ],
      },
    },
    include: {
      postCategory: true,
    },
  });
  // ? 3rd VERSION
  // const createPost = await prisma.post.create({
  //   data: {
  //     title: "this is title 1",
  //     content: "this is content of the post. 1",
  //     authorId: 3,
  //     postCategory: {
  //       create: [
  //         {
  //           category: {
  //             //? category = relation variable
  //             connect: {
  //               id: 2, //? id of Category table
  //             },
  //           },
  //         },
  //       ],
  //     },
  //   },
  //   include: {
  //     postCategory: true,
  //   },
  // });
  // ? 2nd VERSION
  // const createPost = await prisma.post.create({
  //   data: {
  //     title: "this is title 1",
  //     content: "this is content of the post. 1",
  //     authorId: 3,
  //     postCategory: {
  //       create: [
  //         {
  //           category: {
  //             //? category = relation variable
  //             connect: {
  //               id: 2, //? id of Category table
  //             },
  //           },
  //         },
  //       ],
  //     },
  //   },
  // });
  //? 1st VERSION
  // const createPost = await prisma.post.create({
  //   data: {
  //     title: "this is title 1",
  //     content: "this is content of the post. 1",
  //     authorId: 3,
  //   },
  // });
  console.log(createPost);
};

main();
