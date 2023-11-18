/*
  Warnings:

  - You are about to drop the column `CodeFiliere1` on the `stagiaires` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "stagiaires" DROP CONSTRAINT "stagiaires_CodeFiliere1_fkey";

-- AlterTable
ALTER TABLE "stagiaires" DROP COLUMN "CodeFiliere1",
ADD COLUMN     "CodeFiliere" INTEGER;

-- AddForeignKey
ALTER TABLE "stagiaires" ADD CONSTRAINT "stagiaires_CodeFiliere_fkey" FOREIGN KEY ("CodeFiliere") REFERENCES "filieres"("numero") ON DELETE SET NULL ON UPDATE CASCADE;
