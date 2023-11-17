import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient()

export default defineEventHandler(async (event) => {
    const body = await readBody(event)
    
    const stagiaires = await prisma.stagiaires.create({
        data: {
              nom                    : body.nom,
            prenom                : body.prenom,
            dateNaissance         : body.dateNaissance,
            lieuNaissance        : body.lieuNaissance,
            cin                   : body.cin,
            adresse               : body.adresse,
            tel                   : body.tel,
            email               : body.email,
            dernierebodyation     : body.dernierebodyation,
            derniereDiplome     : body.derniereDiplome,
            dernierEtablissement  : body.dernierEtablissement,
            photoPath            : body.photoPath,
            codeClasse                 : body.codeClasse,
            CodeFiliere         : body.CodeFiliere,
            mnt_initial_scolarite   : body.mnt_initial_scolarite,
            codeVille             : body.codeVille,
            codeQuartie          : body.codeQuartie,
            mntInitialAppartement : body.mntInitialAppartement,
            codeAnnee            : body.codeAnnee,
            codeInternat          : body.codeInternat,
            codeAppartement        : body.codeAppartement,
            codeSuspension        : body.codeSuspension,
            motifSuspension      : body.motifSuspension,
            dateSuspension           : body.dateSuspension
        }
    })
    



    return stagiaires
})