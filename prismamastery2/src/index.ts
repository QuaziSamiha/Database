// ? 4 Mar, 25
// console.log("putu hero");

import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const main = async () => {
  const getAllFromDB = await prisma.post.findMany();
  console.log(getAllFromDB);

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
  //   console.log("Prisma 4 Mar, 25");
};

main();
