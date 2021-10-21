-- GABRIELA NOLETO COSTA - 1ºADSB --
-- Lista C - REFORÇO --
create database SuperFaculs;
use SuperFaculs;

create table Empresa(
ID int primary key,
nome varchar (50),
responsavel varchar (40)
);

alter table Empresa
change responsavel responsavel
varchar (50);

insert into Empresa (ID, nome, responsavel) values
(1, "Fleury", "Maria"),
(2, "C6", "Pedro"),
(3, "TIVIT", "Camila"),
(4, "Safra", "Natalia");

select*from Empresa;

select nome, responsavel from Empresa;
select*from Empresa order by nome;
select*from Empresa order by responsavel desc;

select*from Empresa where nome like '%r%';
select*from Empresa where nome like 'c%';
select*from Empresa where nome like '___r_%';

update Empresa
set responsavel = "Paulo"
where ID =2;

delete from Empresa where nome like 'TIVIT';

drop table Empresa;