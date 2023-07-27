-- Allan Sampaio Sousa

-- Apagando o banco de dados
drop database dbClinicaMedica;

-- Criando banco de dados
create database dbClinicaMedica;

-- Acessando o banco de dados
use dbClinicaMedica;

-- Visualizar o banco de dados
show databases;

-- Criando tabelas
create table tbMedico(
    idMedico int,
    nomeMedico varchar(45),
    telefoneMedico varchar(9)
);
create table tbConsulta(
    idConsulta int,
    dataConsulta datetime,
    Medico_idMedico int,
    Paciente_idPaciente int,
    ReceitaMedica_idReceitaMedico int
);
create table tbPaciente(
    idPaciente int,
    nomePaciente varchar(45),
    telefonePaciente varchar(9),
    convenio varchar(45)
);
create table tbReceitaMedica(
    idReceitaMedica int,
    descricao varchar(500)
);

-- Visualizar as tabelas criadas
show tables;

-- Visualizar a estrutura da tabelas
desc tbMedico;
desc tbConsulta;
desc tbPaciente;
desc tbReceitaMedica;