--liquibase formatted sql logicalFilePath:path-independent

--changeset moglu:add-column-to-offices
alter table employees.offices add column office_location varchar(30);
--rollback alter table employees.offices drop column office_location;

--changeset moglu:create-table-test
create table test1 (
    id int primary key,
    name varchar(255)
);
--rollback drop table test1;

--changeset moglu:insert-to-test1
insert into test1 (id, name) values (1, 'sample1');
insert into test1 (id, name) values (2, 'sample2');
--rollback delete from test1 where id=1 or id=2;