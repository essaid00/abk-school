import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient()

export default defineEventHandler(async (event) => {
    let stagiaires = await prisma.stagiaires.findMany()
    return stagiaires
})