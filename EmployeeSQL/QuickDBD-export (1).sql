﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "department" (
    "dept_no" varchar(30)   NOT NULL,
    "dept_name" varchar(30)   NOT NULL,
    CONSTRAINT "pk_department" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(12)   NOT NULL,
	PRIMARY KEY(emp_no,dept_no)
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(12)   NOT NULL,
    "emp_no" int   NOT NULL,
	PRIMARY KEY(dept_no,emp_no)
);

CREATE TABLE "employee" (
    "emp_no" int   NOT NULL,
    "emp_title_id" varchar(30)   NOT NULL,
    "birth_date" varchar(30)   NOT NULL,
    "first_name" varchar(30)   NOT NULL,
    "last_name" varchar(30)   NOT NULL,
    "sex" varchar(7)   NOT NULL,
    "hire_date" varchar(15)   NOT NULL,
    CONSTRAINT "pk_employee" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salaries" (
	"emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
	PRIMARY KEY(emp_no,salary));

CREATE TABLE "titles" (
    "title_id" varchar(30)   NOT NULL,
    "title" varchar(255)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employee" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "department" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "department" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employee" ("emp_no");

ALTER TABLE "employee" ADD CONSTRAINT "fk_employee_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employee" ("emp_no");

