// ? 6 Mar, 25
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const updates = async () => {
  // ? version 2
  //   const singleUpdate = await prisma.post.update({
  //     where: {
  //       id: 9,
  //     },
  //     data: {
  //       title: "Title 5",
  //     },
  //   });
  //   ? version 1
  //   const singleUpdate = await prisma.post.update({
  //     where: {
  //       id: 8,
  //     },
  //     data: {
  //       title: "Title 4",
  //       content: "Content 4",
  //       authorName: "Author 4",
  //     },
  //   });

  //   const updateMany = await prisma.post.updateMany({
  //     where: {
  //       title: "this is title 3",
  //     },
  //     data: {
  //       //   published: true,
  //       author: "Author 3",
  //     },
  //   });
  //   ? version 1
  //   const updateMany = await prisma.post.updateMany({
  //     where: {
  //       id: 3,
  //     },
  //     data: {
  //       published: true,
  //     },
  //   });

  //   const updateMany = await prisma.post.updateMany({
  //     where: {
  //       title: "Title 2",
  //     },
  //     data: {
  //       published: true,
  //     },
  //   });

  // console.log(updateMany)

  const upsertData = await prisma.post.upsert({
    where: {
      id: 26,
    },
    update: {
      title: "update title",
      authorName: "Author 2",
    },
    create: {
      title: "Title 1",
      content: "content 1",
      author: "pupu",
    },
  });
  //   ? version 2
  //   const upsertData = await prisma.post.upsert({
  //     where: {
  //       id: 2,
  //     },
  //     update: {
  //       title: "update title",
  //     },
  //     create: {
  //       title: "Title 1",
  //       content: "content 1",
  //       author: "pupu",
  //     },
  //   });
  //   ? version 1
  //   const upsertData = await prisma.post.upsert({
  //     where: {
  //       id: 1,
  //     },
  //     update: {
  //       title: "update title",
  //     },
  //     create: {
  //       title: "Title 2",
  //       content: "content 2",
  //       authorName: "Fahim",
  //       author: "pupu",
  //     },
  //   });

  //   console.log(singleUpdate);
  //   console.log(updateMany);
  console.log(upsertData);
};

updates();
