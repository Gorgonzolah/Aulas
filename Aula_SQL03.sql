-- Aula destinada a alto incremento
create database Aula;
use Aula;
create table cidade(
    id int primary key auto_increment, -- Aqui e onde setamos para o proprio programa cuidar em colocar um numero sequencial na atribuicao
    nome varchar(100) not null,
    cepGeral int unsigned zerofill -- Valida para que nao tenha valores negativos e tambem preenche com 0 os lugares vazios 
);

alter table cidade -- Vai realizar um evento dentro da tabela selecionada
add dddd char(5);  -- vai adicionar a coluna dddd a tabela
describe cidade; -- vai mostrar oque tem dentro da tabela 
alter table cidade -- vai realizar um evento dentro da tabela selecionada
change  dddd ddd char(5); -- vai mudar o nome da coluna de dddd para ddd
alter table cidade -- vai realizar um evento dentro da tabela selecionada
modify ddd char(3); -- vai modificar o tamanho para 3 caracteres
alter table cidade
drop cepGeral; -- Apaga a coluna cepGeral
/*
A diferenca entre modify e change e que o modify nao permite voce mudar o nome da coluna
ele permite apenas mudar o tipo e o tamanho dela mas o nome nao
*/
