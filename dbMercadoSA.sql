drop database dbMercadoSA;

create database dbMercadoSA;

use dbMercadoSA;

create table tbFuncionarios(
    codFunc int not null auto_increment,
    nome varchar(100) not null,
    email varchar(100),
    cpf char(14) not null unique,
    salario decimal (9,2) default 0 check(salario >= 0),
    sexo char(1) default 'F' check(sexo in('F','M')),
    primary key(codFunc)
);
create table tbClientes(
    codCli int not null auto_increment,
    nome varchar(100) not null,
    email varchar(100),
    telCel char(10),
    primary key (codCli)
);
create table tbFornecedores(
    codForn int not null auto_increment,
    nome varchar(100) not null,
    email varchar(100),
    cnpj char(18) not null unique,
    primary key(codForn)
);
create table tbUsuarios(
    codUsu int not null auto_increment,
    nome varchar(50) not null,
    senha varchar(20) not null,
    codFunc int not null,
    primary key(codUsu),
    foreign key(codFunc) references tbFuncionarios(codFunc)
);
create table tbProdutos(
    codProd int not null auto_increment,
    descricao varchar(100),
    dataEntrada date,
    horaEntrada time,
    quantidade decimal(9,2),
    valorUnit decimal(9,2),
    codForn int not null,
    primary key(codProd),
    foreign key (codForn) references tbFornecedores(codForn)
);
create table tbVendas(
    codVenda int not null auto_increment,
    codUsu int not null,
    codCli int not null,
    codProd int not null,
    dataVenda date,
    quantidade decimal(9,2),
    valorTotal decimal(9,2),
    primary key(codVenda),
    foreign key(codUsu) references tbUsuarios(codUsu),
    foreign key(codCli) references tbClientes(codCli),
    foreign key(codProd) references tbProdutos(codProd)
);

desc tbFuncionarios;
desc tbClientes;
desc tbFornecedores;
desc tbUsuarios;
desc tbProdutos;
desc tbVendas;

-- Inserindo registros nas tabelas
insert into tbFuncionarios(nome,email,cpf,salario,sexo) values('Pedro Cleber','pedro.c@gmail.com','123.456.789-10',1500.00,'M');

insert into tbClientes(nome,email,telCel) values('Neymar Junior','neyjr@gmail.com','94002-8922');
insert into tbClientes(nome,email,telCel) values('Vinicius Junior','vinijr@gmail.com','94222-8922');
insert into tbClientes(nome,email,telCel) values('Rodrigo Goes','rodrigo@gmail.com','94332-8922');

insert into tbFornecedores(nome,email,cnpj) values('Microsoft','microsoft@gmail.com','22.222.111.0001/15');
insert into tbFornecedores(nome,email,cnpj) values('Apple','apple@gmail.com','22.111.111.0001/15');

insert into tbUsuarios(nome,senha,codFunc) values('pedro.cleber','123456',1);

insert into tbProdutos(descricao,dataEntrada,horaEntrada,quantidade,valorUnit,codForn) values('Banana','2023/08/10','16:53:53',10,5.50,2);
insert into tbProdutos(descricao,dataEntrada,horaEntrada,quantidade,valorUnit,codForn) values('Morango','2023/08/09','09:53:53',100,5.35,1);
insert into tbProdutos(descricao,dataEntrada,horaEntrada,quantidade,valorUnit,codForn) values('Bicicleta','2023/08/07','10:03:53',80,800,2);

insert into tbVendas(codUsu,codCli,codProd,dataVenda,quantidade,valorTotal) values(1,2,3,'2023/08/10',1,800.00);
insert into tbVendas(codUsu,codCli,codProd,dataVenda,quantidade,valorTotal) values(1,1,1,'2023/08/10',10,55.00);
insert into tbVendas(codUsu,codCli,codProd,dataVenda,quantidade,valorTotal) values(1,3,2,'2023/08/10',10,53.50);

select * from tbFuncionarios;
select * from tbClientes;
select * from tbFornecedores;
select * from tbUsuarios;
select * from tbProdutos;
select * from tbVendas;