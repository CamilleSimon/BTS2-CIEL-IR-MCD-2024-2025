CREATE TABLE "champion" (
	"champion_id" INTEGER NOT NULL,
	"name" VARCHAR NOT NULL,
	"title" VARCHAR NULL,
	"lore" TEXT NULL,
	"gender_id" INTEGER NULL,
	"resource_id" INTEGER NULL,
	"year_id" INTEGER NULL,
	PRIMARY KEY ("champion_id"),
	CONSTRAINT "0" FOREIGN KEY ("year_id") REFERENCES "years" ("year_id") ON UPDATE NO ACTION ON DELETE SET NULL,
	CONSTRAINT "1" FOREIGN KEY ("resource_id") REFERENCES "resources" ("resource_id") ON UPDATE NO ACTION ON DELETE SET NULL,
	CONSTRAINT "2" FOREIGN KEY ("gender_id") REFERENCES "genders" ("gender_id") ON UPDATE NO ACTION ON DELETE SET NULL
)
;
CREATE UNIQUE INDEX "champion_name_unique" ON "champion" ("name");
2)
ALTER TABLE "champion"
ADD "popularity" INTEGER;
