import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient({
  log: [
    {
      emit: "event",
      level: "query",
    },
  ],
})
prisma.$on("query", async (e) => {
  console.log(`${e.query} ${e.params}`)
});
export default defineEventHandler(async (event) => {
  const body = await readBody(event)
  console.log(`${body}`)
  const stagiaires = await prisma.stagiaires.create({
    data: {
      codeFiliere: body.codeFiliere,
      nom: body.nom,
      prenom: body.prenom,
      dateNaissance: body.dateNaissance,
      lieuNaissance: body.lieuNaissance,
      cin: body.cin,
      adresse: body.adresse,
      tel: body.tel,
      email: body.email,
      dernierebodyation: body.dernierebodyation,
      derniereDiplome: body.derniereDiplome,
      dernierEtablissement: body.dernierEtablissement,
      photoPath: body.photoPath,
      codeClasse: body.codeClasse,
      codeNiveau: body.codeNiveau,
      mnt_initial_scolarite: body.mnt_initial_scolarite,
      codeVille: body.codeVille,
      codeQuartie: body.codeQuartie,
      mntInitialAppartement: body.mntInitialAppartement,
      codeAnnee: 2023,
      codeInternat: body.codeInternat,
      codeAppartement: body.codeAppartement,
      codeSuspension: body.codeSuspension,
      motifSuspension: body.motifSuspension,
      dateSuspension: body.dateSuspension
    }
  })




  return stagiaires
})