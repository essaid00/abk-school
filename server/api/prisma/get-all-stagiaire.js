import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient()

export default defineEventHandler(async (event) => {
    let stagiaires = await prisma.stagiaires.findMany(
        {
            include: {
                classe: true,
                filiere: true,
                niveau: true,
              },
        }
    )
    return stagiaires
})