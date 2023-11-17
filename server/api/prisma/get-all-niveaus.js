import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient()

export default defineEventHandler(async (event) => {
    let niveaus = await prisma.niveaus.findMany()
   // console.Console(niveaus)
    return niveaus
})