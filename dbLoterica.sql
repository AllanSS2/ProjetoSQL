-- Allan Sampaio Sousa


-- Apagar banco de dados
drop database dbLoterica;

-- Criar banco de dados
create database dbLoterica;

-- Acessar o banco de dados
use dbLoterica;

--Visualizar o banco de dados
show databases;

-- Criando tabelas no banco de dados
create table tbJogos(
    codJog int,
    nome varchar(100),
    valor decimal(9,2),
    data date
);

-- Visualizar tabelas criadas
show tables;

-- Visualizar a estrutura da tabela
desc tbJogos;

-- Inserindo registros na tabela
insert into tbJogos(codJog,nome,valor,data)values(1,'Mega-Sena',10,'2023/03/29');

insert into tbJogos(codJog,nome,valor,data)values(2,'Lotomania',7.50,'2023/03/29');

insert into tbJogos(codJog,nome,valor,data)values(3,'Lotofácil',5.25,'2022/06/03');

insert into tbJogos(codJog,nome,valor,data)values(4,'Dupla Sena',12,'2022/05/22');

insert into tbJogos(codJog,nome,valor,data)values(5,'Super sete',4.50,'2023/01/06');

insert into tbJogos(codJog,nome,valor,data)values(6,'Mega-Sena',10,'2023/03/29');

insert into tbJogos(codJog,nome,valor,data)values(7,'Mega-Sena',10,'2023/03/29');

insert into tbJogos(codJog,nome,valor,data)values(8,'Mega-Sena',10,'2023/03/29');

insert into tbJogos(codJog,nome,valor,data)values(9,'Mega-Sena',10,'2023/03/29');

insert into tbJogos(codJog,nome,valor,data)values(10,'Mega-Sena',10,'2023/03/29');

-- Vizualizar os registros inseridos na tabelas
select * from tbJogos;

--alterando registros das tabelas
update tbJogos set nome = 'Quina', valor = 9.50 where codJog = 6;

update tbJogos set nome = 'Dia de sorte', valor = 11.50 where codJog = 7;

-- Visualizar os registros alterados
select * from tbJogos;

-- Apagar registros das tabelas
delete from tbJogos where codJog = 8;
delete from tbJogos where codJog = 9;
delete from tbJogos where codJog = 10;

--Visualizar os registros apagados
select * from tbJogos;