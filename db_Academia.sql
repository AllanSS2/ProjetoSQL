-- Apagando o banco de dados 
drop database dbAcademia;

-- Criando banco de dados
create database dbAcademia;

-- Acessando o banco de dados
use dbAcademia;

-- Visualizar o banco de dados
show databases;

-- Criando tabelas
create table tbUsuarios(
codigo int,
nome varchar(50),
senha varchar(50)
);
create table tbFuncionarios(
codigo int,
nome varchar(100),
email varchar(100),
cpf char(14)
);
create table tbTelefones(
codigo int,
nome varchar(50),
telefone char(15)
);

-- Visualizar as tabelas criadas
show tables;

-- Visualizar a estrutura da tabelas
desc tbUsuarios;
desc tbFuncionarios;
desc tbTelefones;