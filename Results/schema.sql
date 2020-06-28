-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
CREATE TABLE "dep" (
    "dep_no" VARCHAR   NOT NULL,
    "dep_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_dep" PRIMARY KEY (
        "dep_no"
     )
);


CREATE TABLE "depemp" (
    "emp_no" INT   NOT NULL,
    "dep_no" VARCHAR   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_data" DATE   NOT NULL,
    CONSTRAINT "pk_depemp" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "depmng" (
    "dep_no" VARCHAR   NOT NULL,
    "emp_no" INT   NOT NULL,
    "from_data" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE "emp" (
    "emp_no" INT   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_emp" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salary_emp" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE "title_emp" (
    "emp_no" INT   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

ALTER TABLE "depemp" ADD CONSTRAINT "fk_depemp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "emp" ("emp_no");

ALTER TABLE "depemp" ADD CONSTRAINT "fk_depemp_dep_no" FOREIGN KEY("dep_no")
REFERENCES "dep" ("dep_no");

ALTER TABLE "depmng" ADD CONSTRAINT "fk_depmng_dep_no" FOREIGN KEY("dep_no")
REFERENCES "dep" ("dep_no");

ALTER TABLE "depmng" ADD CONSTRAINT "fk_depmng_emp_no" FOREIGN KEY("emp_no")
REFERENCES "emp" ("emp_no");

ALTER TABLE "salary_emp" ADD CONSTRAINT "fk_salary_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "emp" ("emp_no");

ALTER TABLE "title_emp" ADD CONSTRAINT "fk_title_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "emp" ("emp_no");

CREATE INDEX "idx_dep_dep_name"
ON "dep" ("dep_name");


