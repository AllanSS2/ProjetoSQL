-- Allan Sampaio Sousa

-- Apagando o banco de dados
drop database dbEscola;

-- Criando banco de dados
create database dbEscola;

-- Acessando o banco de dados
use dbEscola;

-- Visualizar o banco de dados
show databases;

-- Criando tabelas
create table tbRegistro(
    idAluno int,
    idTurma int,
    ausensia int,
    idRegistro int
);
create table tbAluno(
    matricula int,
    dataMatricula date,
    nome varchar(45),
    endereco varchar(45),
    telefone varchar(45),
    nascimento date,
    altura float,
    peso float,
    idTurma int
);
create table tbTurma(
    id int,
    quantAlunos int,
    horarioAula datetime,
    duracaoAula datetime,
    dataInicio date,
    dataFim date,
    atividade int,
    idInstrutor int,
    idMonitor int
);
create table tbAtividade(
    id int,
    atividade varchar(45)
);
create table tbMonitor(
    idAluno int
);
create table tbInstrutor(
    rg int,
    nome varchar(45),
    nascimento date,
    titulacao varchar(45),
    telefone varchar(45)
);

-- Visualizar as tabelas criadas
show tables;

-- Visualizar a estrutura da tabelas
desc tbRegistro;
desc tbAluno;
desc tbTurma;
desc tbAtividade;
desc tbMonitor;
desc tbInstrutor;