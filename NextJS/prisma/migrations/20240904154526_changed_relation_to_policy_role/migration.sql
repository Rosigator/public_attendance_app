/*
  Warnings:

  - You are about to drop the column `profile_id` on the `policies` table. All the data in the column will be lost.
  - Added the required column `role_id` to the `policies` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "policies" DROP CONSTRAINT "policies_profile_id_fkey";

-- AlterTable
ALTER TABLE "policies" DROP COLUMN "profile_id",
ADD COLUMN     "role_id" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "policies" ADD CONSTRAINT "policies_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "roles"("id") ON DELETE CASCADE ON UPDATE CASCADE;
