create table Jogos;
use Jogos;

create table times(
id_time int primary key auto_increment,
nome varchar (30),
regiao varchar (30),
num_jogadores int
check (num_jogadores >= 11),
valor_time decimal (7,2),
ano_criacao date
) auto_increment = 1;

select*from times;

insert into times values
(null, 'Corinthians', 'São paulo', 23, 80900.00, 1910-09-01),
(null, 'Santos', 'São Paulo', 28, 87169.00, 1927-8-31),
(null, 'Palmeiras', 'São Paulo', 22, 98376.00, 1987-6-12),
(null, 'Flamengo', 'Rio de Janeiro', 21, 79798.00, 1983-7-19);

create  table jogador(
id_jogador int primary key auto_increment,
nome varchar (20),
idade int
check (idade >=30),
altura_jog decimal (3,2),
nasc_jogador date,
fk_times int,
foreign key (fk_times) references times(id_times)
) auto_increment = 101;

select* from jogador;

insert into jogador values
(null, 'Jorge', 23, 1.68, 1973-12-04, 1),
(null, 'Igor', 21, 1.70, 2000-11-12, 3),
(null, 'João', 19, 1.77, 2002-03-13, 4),
(null, 'Thiago', 22, 1.73, 1998-04-06, 2);

create table seguidor(
id_seguidor int primary key,
nome_seguidor varchar (50),
num_jogos int,
ultimo_jogo date,
check (num_jogos >=5),
gasto decimal (3,2),
fk_jogador int,
foreign key (fk_jogador) references jogador(id_jogador)
) auto_increment = 201 ;

select*from seguidor;

insert into seguidor values
(null