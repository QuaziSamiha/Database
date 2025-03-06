//? 6 Mar, 25
import { PrismaClient } from "@prisma/client";
// import { PrismaClient, UserRole } from "@prisma/client";

const prisma = new PrismaClient();

const main = async () => {
  // ! CREATE A SINGLE DATA INTO DB
  // ? ----- 1st step --------
  // const result = await prisma.post.create({
  // ? 2nd version
  // data: {
  //   title: "this is title 2",
  //   content: "This is content 2",
  //   author: "Samiha",
  //   authorName: "Tasnim",
  // },
  //? 1st version
  // data: {
  //   title: "this is title",
  //   content: "This is content",
  //   author: "Samiha",
  //   authorName: "Tasnim",
  // },
  // });
  // console.log(result);
  //   ? TESTING PRISMA
  //   console.log("Prisma 4 Mar, 25");

  const createMany = await prisma.post.createMany({
    data: [
      {
        title: "this is title 1",
        content: "This is content 1",
        author: "Samiha",
        authorName: "Tasnim",
      },
      {
        title: "this is title 2",
        content: "This is content 2",
        author: "Samiha",
        authorName: "Tasnim",
      },
      {
        title: "this is title 3",
        content: "This is content 3",
        author: "Samiha",
        authorName: "Tasnim",
      },
    ],
  });

  // const createProfile = await prisma.profile.create({
  //     data: {
  //         bio: "this is bio...",
  //         userId: 1
  //     }
  // })
  // const createCategory = await prisma.category.create({
  //     data: {
  //         name: "software engineering"
  //     }
  // })
  //   const createPost = await prisma.post.create({
  //     data: {
  //       title: "this is title 5",
  //       content: "this is content of the post. 5",
  //       authorId: 3,
  //       postCategory: {
  //         create: [
  //           {
  //             categoryId: 1,
  //           },
  //           {
  //             categoryId: 3,
  //           },
  //           {
  //             categoryId: 4,
  //           },
  //         ],
  //       },
  //     },
  //     include: {
  //       postCategory: true,
  //     },
  //   });
  //   console.log(createPost);
  console.log(createMany);
};

main();
