CREATE TABLE "countries" (
  "id" integer,
  "name" varchar,
  "abrev" varchar,
  "code" varchar,
  "created_at" timestamp,
  "updated_at" timestamp,
  "deleted_at" timestamp
);

CREATE TABLE "Departments" (
  "id" integer,
  "id_country" integer,
  "name" integer,
  "abrev" varchar,
  "code" varchar,
  "created_at" timestamp,
  "updated_at" timestamp,
  "deleted_at" timestamp
);

CREATE TABLE "cities" (
  "id" integer,
  "name" integer,
  "abrev" varchar,
  "id_departaments" integer,
  "code" varchar,
  "created_at" timestamp,
  "updated_at" timestamp,
  "deleted_at" timestamp
);

CREATE TABLE "users" (
  "id" integer PRIMARY KEY,
  "id_city" integer,
  "ident_number" integer,
  "firstname" varchar,
  "lastname" varchar,
  "address" varchar,
  "mobile_number" varchar,
  "email" varchar,
  "password" varchar,
  "status" boolean,
  "created_at" timestamp,
  "updated_at" timestamp,
  "deleted_at" timestamp
);

CREATE TABLE "posts" (
  "id" integer PRIMARY KEY,
  "title" varchar,
  "body" text,
  "user_id" integer NOT NULL,
  "status" varchar,
  "created_at" timestamp
);

COMMENT ON COLUMN "posts"."body" IS 'Content of the post';

ALTER TABLE "cities" ADD FOREIGN KEY ("id") REFERENCES "users" ("id_city");

ALTER TABLE "Departments" ADD FOREIGN KEY ("id") REFERENCES "cities" ("id_departaments");

ALTER TABLE "countries" ADD FOREIGN KEY ("id") REFERENCES "Departments" ("id_country");
