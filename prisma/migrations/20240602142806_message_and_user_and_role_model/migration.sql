-- CreateEnum
CREATE TYPE "Role" AS ENUM ('ADMIN', 'USER');

-- CreateTable
CREATE TABLE "user" (
    "id" TEXT NOT NULL,
    "nickname" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "date_naissance" TIMESTAMP(3) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "role" "Role" NOT NULL DEFAULT 'USER',
    "password" TEXT NOT NULL,

    CONSTRAINT "user_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "message" (
    "id" TEXT NOT NULL,
    "text" TEXT NOT NULL,
    "sent" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "message_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "user_email_key" ON "user"("email");

-- AddForeignKey
ALTER TABLE "message" ADD CONSTRAINT "message_id_fkey" FOREIGN KEY ("id") REFERENCES "user"("id") ON DELETE SET DEFAULT ON UPDATE CASCADE;
