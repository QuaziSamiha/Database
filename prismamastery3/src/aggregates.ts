// ? 9 Mar, 25
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const aggregates = async () => {
  //! find average age
  //   const avgAge = await prisma.user.aggregate({
  //     _avg: {
  //       age: true,
  //     },
  //   });
  //! find sum of age
  //   const sumAge = await prisma.user.aggregate({
  //     _sum: {
  //       age: true,
  //     },
  //   });
  //! find count of age fields
  // const countAge = await prisma.post.aggregate({
  //     _count: {
  //         title: true
  //     },
  //     where: {
  //         published: true
  //     }
  // });
  //   ? 2nd version
  //   const countUsername = await prisma.user.aggregate({
  //     _count: {
  //       username: true,
  //     },
  //   });
  //   ? 1st version
  //   const countAge = await prisma.user.aggregate({
  //     _count: {
  //       age: true,
  //     },
  //   });
  //! find number of records
  //   const countData = await prisma.user.count();
  //   console.log(countData);
  // const countData = await prisma.user.count()
  //! find max age
  // const maxAge = await prisma.user.aggregate({
  //     _max: {
  //         age: true
  //     }
  // });
  //! find min age
  // const minAge = await prisma.user.aggregate({
  //     _min: {
  //         age: true
  //     }
  // });
  //   console.log(countAge);
};

aggregates();
