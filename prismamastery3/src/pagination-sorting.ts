// ? 6 Mar, 25
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const paginationSorting = async () => {
  //   console.log("pagination sorting");
  //! offset pagination
  //   const offsetData = await prisma.post.findMany({
  //     skip: 2,
  //     take: 2,
  //   });
  //   ? version 2
  //   const offsetData = await prisma.post.findMany({
  //     skip: 2,
  //     take: 3,
  //   });
  //   ? version 1
  //   const offsetData = await prisma.post.findMany({});
  //   console.log("offset paginated data: ", offsetData);
  //! cursor based pagination
  //   const cursorData = await prisma.post.findMany({
  //     skip: 2,
  //     take: 2,
  //     cursor: {
  //       id: 25,
  //     },
  //   });
  //   console.log("cursor based paginated data: ", cursorData);
  //! sorting
  const sortedData = await prisma.post.findMany({
    orderBy: {
      id: "desc",
    },
    skip: 1,
    take: 1,
    where: {
      title: "Title 1",
    },
  });
  //   ? version 2
  //   const sortedData = await prisma.post.findMany({
  //     orderBy: {
  //       id: "desc",
  //     },
  //     where: {
  //       title: "Title 1",
  //     },
  //   });
  //   ? version 1
  //   const sortedData = await prisma.post.findMany({
  //     orderBy: {
  //       title: "asc",
  //     },
  //   });
  console.log("sorted data: ", sortedData);
};

paginationSorting();
