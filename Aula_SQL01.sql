-- criar banco de dados
create database Aula; -- Cria o banco de dados aula

-- seleciona o BD 
use Aula; -- Usa o banco de dados aula 

-- criar uma tabela dentro 
create table estado(
    id int primary key, -- Cria como id a chave primaria da nossa tabela
    descricao varchar(100), -- Define a quantidade de caracteres limite, se forem colocados 3 usara apenas 3 espacos
    sigla char(3) -- Define todos os espacos ocupados 
    unique
);

-- Inserir regirstro dentro 
insert into estado(id, descricao, sigla) -- Define quais campos vao ser preenchidos 
value (1, 'Parana', 'PR'); -- Insere os valores dentro dos campos selecionados

-- Confirmar insercao
select * from estado; -- Seleciona e mostra tudo que tem dentro da tabela 

-- Criar uma segunda tabela 
create table cliente(
    id int primary key, -- Cria como id a chave primaria da nossa tabela
    nome varchar(100), -- Define a quantidade de caracteras limite, se forem colocados 3 usara apenas 3 espacos
    idestado int, -- Define que o campo do idestado vai usar numeros
    constraint fkClienteEstado foreign key (idestado) -- Crio uma restricao para o idestado e digo que vai usar uma chave extrangeira para isso
    references estado(id) -- Digo que a referencia da restricao ( chave extrangeira ) vem da tabela estado e coluna ID 
);

-- Vamos inserir os valores dentro da segunda tabela de forma mais pratica sem colocar os parametros
insert into cliente values(1, 'Felipe', 1); -- Ja faco direto a atribuicao dentro dos proprios valores
insert into cliente values(2, 'Rubens', 10); -- Nesse segundo caso da erro porque nao temos um valor atribuido de Estado 10
