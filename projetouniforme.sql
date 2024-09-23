-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 23-Set-2024 às 07:44
-- Versão do servidor: 8.0.33-0ubuntu0.20.04.2
-- versão do PHP: 7.4.3-4ubuntu2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetouniforme`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `Alunos`
--

CREATE TABLE `Alunos` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `sala` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16le;

--
-- Extraindo dados da tabela `Alunos`
--

INSERT INTO `Alunos` (`id`, `nome`, `sala`) VALUES
(9, 'MAtheus', '3 B'),
(10, 'Guilherme', ' 1 b'),
(11, '', ''),
(12, 'GOibada', '2 a'),
(13, '', ''),
(14, '', ''),
(15, 'Guilherme', '3 B'),
(16, '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16le;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`) VALUES
(5, 'anabell martinez', 'anabell.sosa@escola.pr.gov.br', 'mlkmlm,,ç'),
(6, 'aparecida', 'aparecida@gmail.com', 'asdfgh'),
(7, '', '', ''),
(8, 'BAbuino', 'babuinosembraso@gmail.com', 'asdfasdfsdgdsfgdfgdgdfg'),
(9, 'Guilherme', 'dfjguhhg@gmail.com', 'adasda3123');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `Alunos`
--
ALTER TABLE `Alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Alunos`
--
ALTER TABLE `Alunos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
