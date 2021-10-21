create database Escola;
-- criação do banco de dados (schema) aluno
use Professores; -- seleciona o banco de dados Professores
create table Professores( -- criação da tabela aluno
ID int primary key, -- ID é a chave primária da tabela Profs
nome varchar (50),
materia varchar (40)
);

-- se criou uma tabela, com o nome Profs, como renomear?
alter table Profs rename to Professores; -- ou também é possivel excluir a tabela Profs e refazer o comando com o nome certo
drop table Profs; -- so execuatr a linha se quiser que o comando seja obedecido (Ctrl + Enter)

-- exibir os dados da tabela Professores (toda as colunas)
select*from Professores;
-- exibir apenas a coluna ID da tabela Professores
select ID from Professores;
-- exibir apenas a coluna nome da tabela Professores
select nome from Professores;