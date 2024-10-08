drop database dbMercadosab;

create database dbMercadosab;

use dbMercadosab;

create table tbFuncionarios(
    codFunc int not null auto_increment,
    nome varchar(100),
    email varchar(100),
    cpf char(14) unique,
    dNasc date,
    endereco varchar(100),
    cep char(9),
    numero char(10),
    bairro varchar(100),
    estado char(2),
    cidade varchar(100),
    primary key (codFunc)
);


-- insert into tbFuncionarios(nome, email, cpf, dNasc, endereco, cep, numero, bairro, estado, cidade) values();


-- busca por código
select * from tbFuncionarios where codFunc = 1;

--busca por nome
select * from tbFuncionarios where nome like '%a%';


-- inserir um campo de código não existente
select codFunc+1 from tbFuncionarios order by codFunc desc;

-- buscar funcionarios
select * from tbFuncionarios where nome = "@nome";