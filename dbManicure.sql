-- Apagar banco de dados
drop database dbManicure;

-- Criar banco de dados
create database dbManicure;

-- Acessando o banco de dados
use dbManicure;

-- Visualizando o banco de dados
show databases;

-- Criando tabelas no banco de dados
create table tbProdutos(
    codProd int,
    descricao varchar(100),
    quantidade decimal(9,2),
    dataEntrada date,
    valorUnit decimal(9,2)
);

-- Visualizar as tabelas criadas
show tables;

-- Visualizar a estrutura da tabela
desc tbProdutos;

-- Inserindo registros na tabela
insert into tbProdutos(codProd,descricao,quantidade,dataEntrada,valorUnit) values(1,'Alicate de unha',10,'2023/08/01',5.50);

insert into tbProdutos(codProd,descricao,quantidade,dataEntrada,valorUnit) values(2,'Algodão',40,'2023/07/31',2.70);

insert into tbProdutos(codProd,descricao,quantidade,dataEntrada,valorUnit) values(3,'Esmalte',198,'2023/08/01',15.00);

insert into tbProdutos(codProd,descricao,quantidade,dataEntrada,valorUnit) values(4,'Acetona',129,'2023/08/01',3.50);

insert into tbProdutos(codProd,descricao,quantidade,dataEntrada,valorUnit) values(5,'Unha postiça',55,'2023/08/01',9.90);

insert into tbProdutos(codProd,descricao,quantidade,dataEntrada,valorUnit) values(6,'Unha',55,'2023/08/01',9.90);

insert into tbProdutos(codProd,descricao,quantidade,dataEntrada,valorUnit) values(7,'postiça',55,'2023/08/01',9.90);

-- Visualizar os registros inseridos na tabela
select * from tbProdutos;

-- Alterando registros das tabelas
update tbProdutos set descricao = 'Palito de unha', valorUnit = 1.35 where codProd = 6;

update tbProdutos set descricao = 'tesoura', valorUnit = 15 where codProd = 7;

--Visualizar os registros alterados
select * from tbProdutos;

-- Apagar registros das tabelas
delete from tbProdutos where codProd = 7;

--Visualizar os registros apagados
select * from tbProdutos;