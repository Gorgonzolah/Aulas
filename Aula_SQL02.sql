-- Aula destinada a restricoes
-- criar banco de dados
create database Aula02; -- Cria o banco de dados aula

-- seleciona o BD 
use Aula02; -- Usa o banco de dados aula 

-- criar uma tabela dentro 
create table aluno(
    id int primary key, -- Cria como id a chave primaria da nossa tabela
    nome varchar(130) not null, -- Coloque que o campo nao deve ficar vazio 
    genero char(1) check (genero in('F', 'M')), -- Devera ser F ou M e o comando check faz a verificacao disso  
    renda decimal(10,2) default 0 -- Usado como 10 casas a esquerda separado por virgula e duas para a direira, o valor se nao informado sera sempre 0 por causa do default 
);

-- Mostra tudo que tem dentro da tabela 
describe aluno;