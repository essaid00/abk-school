/*
  Warnings:

  - You are about to drop the column `CodeFiliere` on the `stagiaires` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "stagiaires" DROP CONSTRAINT "stagiaires_CodeFiliere_fkey";

-- AlterTable
ALTER TABLE "stagiaires" DROP COLUMN "CodeFiliere",
ADD COLUMN     "codeFiliere" INTEGER;

-- AddForeignKey
ALTER TABLE "stagiaires" ADD CONSTRAINT "stagiaires_codeFiliere_fkey" FOREIGN KEY ("codeFiliere") REFERENCES "filieres"("numero") ON DELETE SET NULL ON UPDATE CASCADE;
