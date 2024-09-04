/* Instancia única del ORM Prisma */
import { PrismaClient } from '@prisma/client';

console.log(process.env.NODE_ENV);

const prisma = new PrismaClient({
  datasources: {
    db: {
      url: process.env.NODE_ENV === 'test' ? process.env.DATABASE_URL_TEST : process.env.DATABASE_URL,
    },
  },
});

export default prisma;