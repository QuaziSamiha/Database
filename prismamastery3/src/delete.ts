// ? 6 Ma, 25
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const deleteData = async () => {
  //   const singleDelete = await prisma.post.delete({
  //     where: {
  //       id: 20,
  //     },
  //   });

  //   const deleteMany = await prisma.post.deleteMany({
  //     where: {
  //       published: false,
  //     },
  //   });
  const deleteMany = await prisma.post.deleteMany({}); // all data of the table

  //   console.log(singleDelete);
  console.log(deleteMany);
};

deleteData();
