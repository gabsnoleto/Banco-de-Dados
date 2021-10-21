create database aulajoin;
use aulajoin;

create table autor(
idautor int primary key,
nome varchar (30)
);



create table musica(
idmusica int not null,
titulo varchar (70),
fk_autor int,
primary key (idmusica),
constraint fk_autor foreign key (fk_autor)
references autor(idautor)
);

insert into autor (idautor, nome) values
(01, 'Metallica'),
(02, 'Bring me The Horizon'),
(03, 'Oliver Tree');

select*from autor;

insert into musica (idmusica, titulo, fk_autor) values
(101, 'Life goes on', 03),
(103, 'Can you feel my heart', 02),
(104, 'One', 01),
(107, 'Enter Sadman', 01),
(108, 'Throne', 02);

select*from musica inner join autor on musica.fk_autor = autor.idautor;

create table genero(
idtable int primary key,
genero varchar(100),
fk_musica int 
references musica(idmusica)
);

insert into genero (idtable, genero, fk_musica) values
(201, 'Rock', 01),
(202, 'Eletronica', 02),
(203, 'New Rock', 03);

select*from genero;

select*from genero inner join musica on genero.fk_musica = musica.idmusica;
