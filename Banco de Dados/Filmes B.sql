

create database Filmes;
use Filmes;

create table Filmes(
idFilme int primary key,
titulo varchar (50),
genero varchar (40),
diretor varchar (30)
);

select*from Filmes;

insert into Filmes (idFilme, titulo, genero, diretor) values
(01, "Batman: o cavaleiro das trevas", "ação", "Cristopher Nolan");

insert into Filmes (idFilme, titulo) values
(02, "Coringa");

insert into Filmes (titulo, idFilme) values
("Liga da Justiça", 03);

insert into Filmes (idFilme, titulo) values
(04, "Mulher Maravilha"),
(05, "Lanterna Verde"),
(06, "Superman"),
(07, "Aquaman");

select*from Filmes;

update Filmes
set diretor = 'Carls Magnus'
where idFilme = 05;

update Filmes
set diretor = 'George'
where idFilme = 11;

update Filmes
set genero = 'drama', diretor = 'Cristian'
where idFilme = 04; 

update Filmes
set genero = 'acao', diretor = 'Philip'
where idFilme = 09; 

update Filmes
set genero = 'suspense' 
where idFilme = 05; 

update Filmes
set genero = 'comedia'
where idFilme = 06; 

select * from Filmes;

update Filmes
set genero = 'historico'
where idFilme = 02; 


update Filmes
set genero = 'acao'
where idFilme = 11; 

update Filmes
set diretor = 'Mel_Gibson '
where idFilme = 02;

update Filmes
set genero = 'historico ', diretor = 'Kevin '
where idFilme = 03;

update Filmes
set genero = 'comedia ', diretor = 'Fernando'
where idFilme = 07;

update Filmes
set genero = 'drama ', diretor = 'Jon'
where idFilme = 08;

update Filmes
set genero = ' fantasia'
where idFilme = 10;

select * from Filmes;

delete from Filmes where idFilme like 06;

delete from Filmes where idFilme like 11;

delete from Filmes where idFilme like 05;

alter table Filmes
add ano char(4);

select * from Filmes;

alter table Filmes 
change titulo titulo 
varchar(50);

desc Filmes;

alter table Filmes
drop column ano;

select * from Filmes order by titulo;

select * from Filmes order by diretor;

select * from Filmes order by diretor desc, titulo desc;

 