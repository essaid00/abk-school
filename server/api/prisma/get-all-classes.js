import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient()

export default defineEventHandler(async (event) => {
    let classes = await prisma.classes.findMany()
   // console.Console(niveaus)
    return classes
})