-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/10/2023 às 22:07
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbmercadosab`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbFuncionarios`
--

CREATE TABLE `tbfuncionarios` (
  `codFunc` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cpf` char(14) DEFAULT NULL,
  `dNasc` date DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `cep` char(9) DEFAULT NULL,
  `numero` char(10) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbFuncionarios`
--

INSERT INTO `tbFuncionarios` (`codFunc`, `nome`, `email`, `cpf`, `dNasc`, `endereco`, `cep`, `numero`, `bairro`, `estado`, `cidade`) VALUES
(1, 'Allan', 'allansampa19@gmail.com', '409.510.748-06', '2005-03-29', 'Rua Concerto Italiano', '05833-060', '12', 'Jardim Vaz de Lima', 'SP', 'São Paulo'),
(2, 'Ryan ', 'ryangayzinho@gmail.com', '232.434.545-45', '2004-10-03', 'Avenida Dom Rodrigo Sanches', '05892-360', '525', 'Jardim Amália', 'SP', 'São Paulo'),
(3, 'Maria', 'madu@gmail.com', '132.432.424-42', '2006-09-06', 'Avenida Santo Amaro', '04555-000', '12', 'Brooklin Paulista', 'SP', 'São Paulo');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tbFuncionarios`
--
ALTER TABLE `tbFuncionarios`
  ADD PRIMARY KEY (`codFunc`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbFuncionarios`
--
ALTER TABLE `tbFuncionarios`
  MODIFY `codFunc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
