// ? 9 Mar, 25
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const groupBy = async () => {
  const groupPost = await prisma.post.groupBy({
    by: ["published"],
    // by: "published",
    _count: {
      title: true,
    },
    having: {
      authorId: {
        _sum: {
          gt: 2,
        },
      },
    },
  });
  //   ? 4th version
  //   const groupPost = await prisma.post.groupBy({
  //     by: ["published"],
  //     _count: {
  //       title: true,
  //     },
  //     having: {
  //       published: true,
  //     },
  //   });
  //   ? 3rd version
  //   const groupPost = await prisma.post.groupBy({
  //     by: ["published"],
  //     _count: {
  //       title: true,
  //     },
  //   });
  //? 2nd version
  //   const groupPost = await prisma.post.groupBy({
  //     by: ["published", "authorId"],
  //   });
  //? 1st version
  //   const groupPost = await prisma.post.groupBy({
  //     by: ["published"],
  //     // by: "published",
  //   });

  console.log(groupPost);
};

groupBy();
