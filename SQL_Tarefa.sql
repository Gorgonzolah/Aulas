create database Hamburgueria;
use Hamburgueria;

-- Estado
create table estado(
    id int primary key auto_increment,
    nome varchar(100) not null,
    sigla char(2) unique
);

-- Cidade
create table cidade(
    id int primary key auto_increment,
    nome varchar(100) not null,
    estadoID int,
    foreign key (estadoID) references estado(id)
    on delete no action on update no action
);

-- Cliente
create table cliente(
    id int primary key auto_increment,
    nome varchar(100) not null,
    email varchar(100) unique,
    dataNascimento date,
    genero char(1) check (genero in ('F', 'M')),
    estadoCivil char(1) default 'S',
    cidadeID int,
    foreign key (cidadeID) references cidade(id)
    on delete no action on update no action
);

-- Produto
create table produto(
    id int primary key auto_increment,
    nome varchar(100) not null,
    valor decimal(10,2) not null,
    ativo tinyint (1) default 1
);

-- Pedido
create table pedido(
    id int primary key auto_increment,
    clienteID int,
    data_hora datetime default current_timestamp,
    foreign key (clienteID) references cliente(id)
    on delete no action on update no action
);

-- Pedido Produto
create table pedido_produto(
    pedidoID int,
    produtoID int,
    quantidade int not null,
    valor_unitario decimal(10,2),
    primary key(pedidoID, produtoID),
    foreign key (pedidoID) references pedido(id)
    on delete no action on update no action,
    foreign key (produtoID) references produto(id)
    on delete no action on update no action
);

