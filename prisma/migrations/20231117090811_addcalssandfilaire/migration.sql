/*
  Warnings:

  - You are about to drop the column `Codefiliere` on the `stagiaires` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "stagiaires" DROP COLUMN "Codefiliere",
ADD COLUMN     "CodeFiliere" INTEGER;

-- CreateTable
CREATE TABLE "classes" (
    "numero" SERIAL NOT NULL,
    "classe" TEXT,

    CONSTRAINT "classes_pkey" PRIMARY KEY ("numero")
);

-- CreateTable
CREATE TABLE "filieres" (
    "numero" SERIAL NOT NULL,
    "filiere" TEXT,

    CONSTRAINT "filieres_pkey" PRIMARY KEY ("numero")
);

-- AddForeignKey
ALTER TABLE "stagiaires" ADD CONSTRAINT "stagiaires_codeClasse_fkey" FOREIGN KEY ("codeClasse") REFERENCES "classes"("numero") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "stagiaires" ADD CONSTRAINT "stagiaires_CodeFiliere_fkey" FOREIGN KEY ("CodeFiliere") REFERENCES "filieres"("numero") ON DELETE SET NULL ON UPDATE CASCADE;
