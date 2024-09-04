/*
  Warnings:

  - You are about to drop the column `active` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `company_id` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `identity_document` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `image_url` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `slug` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `surname` on the `users` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[slug]` on the table `profiles` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[identity_document]` on the table `profiles` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `active` to the `profiles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `company_id` to the `profiles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `identity_document` to the `profiles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `image_url` to the `profiles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `profiles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `slug` to the `profiles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `slug_number` to the `profiles` table without a default value. This is not possible if the table is not empty.
  - Added the required column `surname` to the `profiles` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "attendances" DROP CONSTRAINT "attendances_user_id_fkey";

-- DropForeignKey
ALTER TABLE "users" DROP CONSTRAINT "users_company_id_fkey";

-- DropIndex
DROP INDEX "users_identity_document_key";

-- DropIndex
DROP INDEX "users_slug_key";

-- AlterTable
ALTER TABLE "profiles" ADD COLUMN     "active" BOOLEAN NOT NULL,
ADD COLUMN     "company_id" INTEGER NOT NULL,
ADD COLUMN     "identity_document" TEXT NOT NULL,
ADD COLUMN     "image_url" TEXT NOT NULL,
ADD COLUMN     "name" TEXT NOT NULL,
ADD COLUMN     "slug" TEXT NOT NULL,
ADD COLUMN     "slug_number" INTEGER NOT NULL,
ADD COLUMN     "surname" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "users" DROP COLUMN "active",
DROP COLUMN "company_id",
DROP COLUMN "identity_document",
DROP COLUMN "image_url",
DROP COLUMN "name",
DROP COLUMN "slug",
DROP COLUMN "surname";

-- CreateTable
CREATE TABLE "_Supervision" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_Supervision_AB_unique" ON "_Supervision"("A", "B");

-- CreateIndex
CREATE INDEX "_Supervision_B_index" ON "_Supervision"("B");

-- CreateIndex
CREATE UNIQUE INDEX "profiles_slug_key" ON "profiles"("slug");

-- CreateIndex
CREATE UNIQUE INDEX "profiles_identity_document_key" ON "profiles"("identity_document");

-- AddForeignKey
ALTER TABLE "profiles" ADD CONSTRAINT "profiles_company_id_fkey" FOREIGN KEY ("company_id") REFERENCES "companies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "attendances" ADD CONSTRAINT "attendances_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "profiles"("user_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_Supervision" ADD CONSTRAINT "_Supervision_A_fkey" FOREIGN KEY ("A") REFERENCES "users"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_Supervision" ADD CONSTRAINT "_Supervision_B_fkey" FOREIGN KEY ("B") REFERENCES "users"("id") ON DELETE CASCADE ON UPDATE CASCADE;
