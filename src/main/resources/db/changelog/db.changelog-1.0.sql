--liquibase formatted sql logicalFilePath:path-independent

--Changeset moglu:create-table-offices
CREATE TABLE employees.offices
( id INT NOT NULL,
 name VARCHAR(50) NOT NULL,
 active BIT(1) DEFAULT 1 NULL,
 CONSTRAINT PK_OFFICES PRIMARY KEY (id)
);
--rollback drop table employees.offices