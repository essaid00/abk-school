-- CreateTable
CREATE TABLE "stagiaires" (
    "numero" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,
    "prenom" TEXT NOT NULL,
    "dateNaissance" TIMESTAMPTZ(6),
    "lieuNaissance" TEXT NOT NULL,
    "cin" TEXT NOT NULL,
    "adresse" TEXT NOT NULL,
    "tel" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "derniereFormation" TEXT NOT NULL,
    "derniereDiplome" TEXT NOT NULL,
    "dernierEtablissement" TEXT NOT NULL,
    "photoPath" TEXT NOT NULL,
    "codeNiveau" INTEGER NOT NULL,
    "codeClasse" INTEGER NOT NULL,
    "Codefiliere" INTEGER NOT NULL,
    "mnt_initial_scolarite" INTEGER NOT NULL,
    "codeVille" TEXT NOT NULL,
    "codeQuartie" TEXT NOT NULL,
    "mntInitialAppartement" INTEGER NOT NULL,
    "codeAnnee" INTEGER NOT NULL,
    "codeInternat" INTEGER NOT NULL,
    "codeAppartement" INTEGER NOT NULL,
    "codeSuspension" INTEGER NOT NULL,
    "motifSuspension" TEXT NOT NULL,
    "dateSuspension" TIMESTAMPTZ(6),

    CONSTRAINT "stagiaires_pkey" PRIMARY KEY ("numero")
);

-- CreateTable
CREATE TABLE "niveaus" (
    "numero" SERIAL NOT NULL,
    "niveau" TEXT NOT NULL,

    CONSTRAINT "niveaus_pkey" PRIMARY KEY ("numero")
);

-- AddForeignKey
ALTER TABLE "stagiaires" ADD CONSTRAINT "stagiaires_codeNiveau_fkey" FOREIGN KEY ("codeNiveau") REFERENCES "niveaus"("numero") ON DELETE RESTRICT ON UPDATE CASCADE;
