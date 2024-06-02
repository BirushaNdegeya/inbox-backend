/*
  Warnings:

  - You are about to drop the column `sent` on the `message` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "message" DROP COLUMN "sent",
ADD COLUMN     "date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;
