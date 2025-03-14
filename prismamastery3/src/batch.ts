// ? 14 Mar, 25
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const batchTransaction = async () => {
  const createUser = prisma.user.create({
    data: {
      username: "jhankar2",
      email: "jkr@ph.com",
    },
  });
  const updateUser = prisma.user.update({
    where: {
      id: 8,
    },
    data: {
      age: 35,
    },
  });
  const [userData, updateData] = await prisma.$transaction([
    createUser,
    updateUser,
  ]);

  console.log(userData, updateData);

  //   ? 1st version
  //   const createUser = await prisma.user.create({
  //     data: {
  //       username: "user3",
  //       email: "user3@ph.com",
  //     },
  //   });
  //   console.log(createUser);
  //   const updateUser = await prisma.user.update({
  //     where: {
  //       id: 100,
  //     },
  //     data: {
  //       age: 30,
  //     },
  //   });
  //   const updateUser = prisma.user.update({
  //     where: {
  //       id: 4,
  //     },
  //     data: {
  //       age: 30,
  //     },
  //   });
  //   console.log(updateUser);
};

batchTransaction();
