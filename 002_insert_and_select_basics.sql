-- V tejto casti si ukazeme ako vieme pridavat data do tabulky a prezerat si stav tabulky

DROP TABLE IF EXISTS student;

CREATE TABLE student (
	student_id serial PRIMARY KEY,
	username VARCHAR (128) UNIQUE NOT NULL,
	password VARCHAR (128) NOT NULL,
	is_new BOOLEAN,
	year_born INTEGER NOT NULL,
	created_on TIMESTAMP NOT NULL,
    updated_on TIMESTAMP
)

-- Dokumentacia https://www.postgresql.org/docs/12/sql-insert.html
-- INSERT INTO table_name(column1, column2, …)
-- VALUES (value1, value2, …);

INSERT INTO student(username, "password", is_new, year_born, created_on, updated_on)
VALUES ('Michal', 'Heslo', TRUE, 1996, '2021-01-16 19:10:25-07', '2021-01-16 19:10:25-07')

-- Co ked chceme definovat vlastny kluc? 
INSERT INTO student(student_id, username, "password", is_new, year_born, created_on, updated_on)
VALUES (1, 'Michal', 'Heslo', TRUE, 1996, '2021-01-16 19:10:25-07', '2021-01-16 19:10:25-07')
-- Co ked definujeme rovnaky kluc pre viac zaznamov? 
INSERT INTO student(student_id, username, "password", is_new, year_born, created_on, updated_on)
VALUES (1, 'Michal', 'Heslo', TRUE, 1996, '2021-01-16 19:10:25-07', '2021-01-16 19:10:25-07')

DROP TABLE IF EXISTS student;


-- Co ked chceme vytvorit viac zaznamov naraz?
-- Vsimnite si posledny riadok constrain to je sposob akym sa da tiez definovat private key

DROP TABLE IF EXISTS "Employee" CASCADE;

CREATE TABLE "Employee"
(
    "EmployeeId" INT NOT NULL,
    "LastName" VARCHAR(20) NOT NULL,
    "FirstName" VARCHAR(20) NOT NULL,
    "Title" VARCHAR(30),
    "ReportsTo" INT,
    "BirthDate" TIMESTAMP,
    "HireDate" TIMESTAMP,
    "Address" VARCHAR(70),
    "City" VARCHAR(40),
    "State" VARCHAR(40),
    "Country" VARCHAR(40),
    "PostalCode" VARCHAR(10),
    "Phone" VARCHAR(24),
    "Fax" VARCHAR(24),
    "Email" VARCHAR(60),
    CONSTRAINT "PK_Employee" PRIMARY KEY  ("EmployeeId")
);

INSERT INTO "Employee" ("EmployeeId", "LastName", "FirstName", "Title", "BirthDate", "HireDate", "Address", "City", "State", "Country", "PostalCode", "Phone", "Fax", "Email") VALUES (1, N'Adams', N'Andrew', N'General Manager', '1962/2/18', '2002/8/14', N'11120 Jasper Ave NW', N'Edmonton', N'AB', N'Canada', N'T5K 2N1', N'+1 (780) 428-9482', N'+1 (780) 428-3457', N'andrew@chinookcorp.com');
INSERT INTO "Employee" ("EmployeeId", "LastName", "FirstName", "Title", "ReportsTo", "BirthDate", "HireDate", "Address", "City", "State", "Country", "PostalCode", "Phone", "Fax", "Email") VALUES (2, N'Edwards', N'Nancy', N'Sales Manager', 1, '1958/12/8', '2002/5/1', N'825 8 Ave SW', N'Calgary', N'AB', N'Canada', N'T2P 2T3', N'+1 (403) 262-3443', N'+1 (403) 262-3322', N'nancy@chinookcorp.com');
INSERT INTO "Employee" ("EmployeeId", "LastName", "FirstName", "Title", "ReportsTo", "BirthDate", "HireDate", "Address", "City", "State", "Country", "PostalCode", "Phone", "Fax", "Email") VALUES (3, N'Peacock', N'Jane', N'Sales Support Agent', 2, '1973/8/29', '2002/4/1', N'1111 6 Ave SW', N'Calgary', N'AB', N'Canada', N'T2P 5M5', N'+1 (403) 262-3443', N'+1 (403) 262-6712', N'jane@chinookcorp.com');
INSERT INTO "Employee" ("EmployeeId", "LastName", "FirstName", "Title", "ReportsTo", "BirthDate", "HireDate", "Address", "City", "State", "Country", "PostalCode", "Phone", "Fax", "Email") VALUES (4, N'Park', N'Margaret', N'Sales Support Agent', 2, '1947/9/19', '2003/5/3', N'683 10 Street SW', N'Calgary', N'AB', N'Canada', N'T2P 5G3', N'+1 (403) 263-4423', N'+1 (403) 263-4289', N'margaret@chinookcorp.com');
INSERT INTO "Employee" ("EmployeeId", "LastName", "FirstName", "Title", "ReportsTo", "BirthDate", "HireDate", "Address", "City", "State", "Country", "PostalCode", "Phone", "Fax", "Email") VALUES (5, N'Johnson', N'Steve', N'Sales Support Agent', 2, '1965/3/3', '2003/10/17', N'7727B 41 Ave', N'Calgary', N'AB', N'Canada', N'T3B 1Y7', N'1 (780) 836-9987', N'1 (780) 836-9543', N'steve@chinookcorp.com');
INSERT INTO "Employee" ("EmployeeId", "LastName", "FirstName", "Title", "ReportsTo", "BirthDate", "HireDate", "Address", "City", "State", "Country", "PostalCode", "Phone", "Fax", "Email") VALUES (6, N'Mitchell', N'Michael', N'IT Manager', 1, '1973/7/1', '2003/10/17', N'5827 Bowness Road NW', N'Calgary', N'AB', N'Canada', N'T3B 0C5', N'+1 (403) 246-9887', N'+1 (403) 246-9899', N'michael@chinookcorp.com');
INSERT INTO "Employee" ("EmployeeId", "LastName", "FirstName", "Title", "ReportsTo", "BirthDate", "HireDate", "Address", "City", "State", "Country", "PostalCode", "Phone", "Fax", "Email") VALUES (7, N'King', N'Robert', N'IT Staff', 6, '1970/5/29', '2004/1/2', N'590 Columbia Boulevard West', N'Lethbridge', N'AB', N'Canada', N'T1K 5N8', N'+1 (403) 456-9986', N'+1 (403) 456-8485', N'robert@chinookcorp.com');
INSERT INTO "Employee" ("EmployeeId", "LastName", "FirstName", "Title", "ReportsTo", "BirthDate", "HireDate", "Address", "City", "State", "Country", "PostalCode", "Phone", "Fax", "Email") VALUES (8, N'Callahan', N'Laura', N'IT Staff', 6, '1968/1/9', '2004/3/4', N'923 7 ST NW', N'Lethbridge', N'AB', N'Canada', N'T1H 1Y8', N'+1 (403) 467-3351', N'+1 (403) 467-8772', N'laura@chinookcorp.com');
-- N'' znamena ze je to takzvany national varchar ktory moze obsahovat unicode znaky (kludne si to predstavme ako obycajny string)

-- SELECT 
-- Nazriet do tabulky vieme cez graficke rozhranie
-- SELECT
--    select_list
-- FROM
--    table_name;
SELECT "FirstName", "LastName" FROM "Employee";
-- Casto vsak budeme pouzivat 
SELECT * 
FROM "Employee"
-- POZOR SNAZTE SA VYVAROVAT SELECT * V PRODUKCON KODE


DROP TABLE IF EXISTS "Employee";
DROP TABLE IF EXISTS student;









