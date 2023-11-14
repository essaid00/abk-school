-- DropForeignKey
ALTER TABLE "stagiaires" DROP CONSTRAINT "stagiaires_codeNiveau_fkey";

-- AlterTable
ALTER TABLE "niveaus" ALTER COLUMN "niveau" DROP NOT NULL;

-- AlterTable
ALTER TABLE "stagiaires" ALTER COLUMN "lieuNaissance" DROP NOT NULL,
ALTER COLUMN "cin" DROP NOT NULL,
ALTER COLUMN "adresse" DROP NOT NULL,
ALTER COLUMN "tel" DROP NOT NULL,
ALTER COLUMN "email" DROP NOT NULL,
ALTER COLUMN "derniereFormation" DROP NOT NULL,
ALTER COLUMN "derniereDiplome" DROP NOT NULL,
ALTER COLUMN "dernierEtablissement" DROP NOT NULL,
ALTER COLUMN "photoPath" DROP NOT NULL,
ALTER COLUMN "codeNiveau" DROP NOT NULL,
ALTER COLUMN "codeClasse" DROP NOT NULL,
ALTER COLUMN "Codefiliere" DROP NOT NULL,
ALTER COLUMN "mnt_initial_scolarite" DROP NOT NULL,
ALTER COLUMN "codeVille" DROP NOT NULL,
ALTER COLUMN "codeQuartie" DROP NOT NULL,
ALTER COLUMN "mntInitialAppartement" DROP NOT NULL,
ALTER COLUMN "codeAnnee" DROP NOT NULL,
ALTER COLUMN "codeInternat" DROP NOT NULL,
ALTER COLUMN "codeAppartement" DROP NOT NULL,
ALTER COLUMN "motifSuspension" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "stagiaires" ADD CONSTRAINT "stagiaires_codeNiveau_fkey" FOREIGN KEY ("codeNiveau") REFERENCES "niveaus"("numero") ON DELETE SET NULL ON UPDATE CASCADE;
