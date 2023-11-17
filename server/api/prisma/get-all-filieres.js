import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient()

export default defineEventHandler(async (event) => {
    let filieres = await prisma.filieres.findMany()
   // console.Console(niveaus)
    return filieres
})