--liquibase formatted sql logicalFilePath:path-independent

--changeset moglu:create-table-warehouse endDelimiter:;
create table warehouse ( ID int not null, FNAME varchar(100) not null);
--rollback drop table warehouse;

--changeSet moglu:insert-table-warehouse
insert into warehouse values(1,'test');
--rollback delete from warehouse where id=1;


--changeSet moglu:insert-table-warehouse2
insert into warehouse values(2,'test');
--rollback delete from warehouse where id=2;
