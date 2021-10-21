-- Gabriela Noleto Costa RA:01212061
create database personal;

-- Gabriela Noleto Costa RA:01212061
use personal;

-- Gabriela Noleto Costa RA:01212061
create table personals(
id_personals int primary key auto_increment not null,
nome_perso varchar(10),
area_acad varchar(20),
tel_perso varchar (20),
valor_ha decimal (4,2) -- no caso o ha siginifica 'hora aula'
) auto_increment = 1;

-- Gabriela Noleto Costa RA:01212061
select*from personals;

-- Gabriela Noleto Costa RA:01212061
create table aluno(
id_aluno int primary key auto_increment not null,
nome_aluno varchar(10),
nasc_aluno date,
estciv_aluno varchar (2)
check (estciv_aluno = 'S' or estciv_aluno = 'C'),
bairro_aluno varchar (45),
fk_personals int,
foreign key (fk_personals) references personals (id_personals)
) auto_increment = 1000;

-- Gabriela Noleto Costa RA:01212061
select*from aluno;

-- Gabriela Noleto Costa RA:01212061
insert into personals (id_personals, nome_perso, area_acad, tel_perso, valor_ha) values
(1000,'Pedro', 'musculação', 11976587781, 85.00),
(1001,'Carlos', 'pilates', 11946527654, 70.00),
(1002, 'Marcia', 'zumba', 11987654545, 75.00),
(1003, 'Eduardo', 'boxe', 11987386648, 80.00);

-- Gabriela Noleto Costa RA:01212061
select*from personals;

-- Gabriela Noleto Costa RA:01212061
insert into aluno (id_aluno, nome_aluno, nasc_aluno, estciv_aluno, bairro_aluno, fk_personals) values
(1,'Gabriela', '1999-01-25', 'S', 'Vila Madalena, SP', 1003),
(2,'Renato', '1987-08-05', 'C', 'Higienopólis, SP', 1001),
(3,'João', '2003-03-13', 'S', 'Canhema, Diadema', 1000),
(4,'Monica', '2000-04-06', 'C', 'Jabaquara, SP', 1002),
(5,'Jorge', '1974-12-04', 'C', 'Vila Suiça, Santo André', 1000),
(6,'Inês', '1986-11-01', 'S', 'São Mateus, SP', 1002);


-- Gabriela Noleto Costa RA:01212061
select fk_personals from aluno;

-- Gabriela Noleto Costa RA:01212061
select round(avg(valor_ha),2) from personals;

-- Gabriela Noleto Costa RA:01212061
update personals
set nome_perso = 'Marcos', valor_ha = '65.00'
where id_personals = '1001';  

-- Gabriela Noleto Costa RA:01212061
select*from personals;

-- Gabriela Noleto Costa RA:01212061
select nome_perso, max(valor_ha) from personals;

-- Gabriela Noleto Costa RA:01212061
select novo valor e novo nome 
























































create database pet;
use pet;

create table cliente(
idcliente int primary key auto_increment,
nome varchar (50),
telefone varchar (30),
celular varchar (30),
endereço varchar (75)
);

insert into cliente (idcliente, nome, telefone, celular, endereço) values
(01, 'Fátima', '11998767567', '11987435568', 'Rua veiga filho 210 - Higienopolis'),
(02, 'Madalena', '1147987367', '1195375567', 'Rua Alceu da Cunha, 183 - Capao Redondo'),
(03, 'Lucas', '1145628747', '11973864866', 'Rua História da Carochinha, 2737 - LindaBar'),
(04, 'Rafael', '1146786579', '11987645538', 'Av. Liceu do Amaral, 8459 - Freguesia do Ó'),
(05, 'Akio', '11937653874','11973900476', 'Rua Mário de Andrade, 822 - Vila Madalena');

select*from cliente;

create table pet(
idpet int primary key auto_increment, 
nome varchar (50),
raca varchar (50),
nascpet date,
precopet decimal (10,2),
fk_cliente int,
tipopet varchar (50),
foreign key (fk_cliente) references cliente (idcliente)
) auto_increment 101;

insert into pet (idpet, nome, raca, nascpet, precopet, fk_cliente, tipopet) values
(null, 'Luna', 'Shitzu', '2018-05-28', 2000.00, '03', 'cachorro'),
(null, 'Hunter', 'Sphynx', '2016-06-17', 3500.00, '05', 'gato'),
(null, 'Bob', 'Golden', '2013-01-26', 3700.00, '02', 'cachorro'),
(null, 'Thor', 'Whippet', '2017-03-15', 2000.00, '04', 'furao'),
(null, 'Camélia', 'Pug', '2019-02-12', 3000.00, '01', 'cachorro');

select*from pet;
select* from cliente, pet;
select*from pet order by idpet desc;

select cliente.nome, pet.nome from cliente join pet on fk_cliente=idcliente;
select precopet, cliente.nome from pet join cliente on fk_cliente=idcliente where cliente.nome like 'A%'; -- where + = busa um nome especifico / where + like busca todos com um tipo especifico (comparativo)
select sum(precopet) from pet; -- soma todos os valores da coluna
select sum(precopet) from pet where tipopet = 'cachorro'; -- soma os preços de uma coluna onde o tipo é especifico
select avg(precopet) from pet; -- média aritmética
select round(precopet) from pet; -- arredondar
select min(precopet) from pet; -- mais barato
select max(precopet) from pet; -- mais caro
select count(precopet) from pet; -- número de ocorrencias
select round(avg(precopet),2) from pet; -- média arredondada
select truncate(precopet,2) from pet; -- define a quant. de casas decimais

insert into pet (idpet, nome, raca, nascpet, precopet, fk_cliente, tipopet) values
(null, 'Bolinha', 'Viralata', '2019-09-27', 00.00, 1, 'cachorro'),
(null, 'Teresa', 'Viralata', '2020-11-30', 00.00, 5, 'gato');

select*from pet;

create table agendamento (
idagendamento int auto_increment primary key, 
apontamento datetime,
fk_cliente int,
foreign key (fk_cliente) references cliente (idcliente)
);

insert into agendamento (idagendamento, apontamento, fk_cliente) values
(null, '2021-10-01 14:00:00', 5),
(null, '2021-10-01 16:00:00', 3),
(null, '2021-10-02 13:00:00', 2),
(null, '2021-10-04 10:00:00', 1),
(null, '2021-10-04 13:00:00', 4);

select*from agendamento;



