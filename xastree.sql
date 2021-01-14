-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Jan-2021 às 00:58
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `xastree`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `func`
--

CREATE TABLE `func` (
  `id` int(4) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `func`
--

INSERT INTO `func` (`id`, `email`, `fname`, `lname`) VALUES
(1, 'george.bluth@reqres.in', 'George', 'Bluth'),
(2, 'janet.weaver@reqres.in', 'Janet', 'Weaver'),
(3, 'emma.wong@reqres.in', 'Emma', 'Wong'),
(4, 'eve.holt@reqres.in', 'Eve', 'Holt'),
(5, 'charles.morris@reqres.in', 'Charles', 'Morris'),
(6, 'tracey.ramos@reqres.in', 'Tracey', 'Ramos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `invest`
--

CREATE TABLE `invest` (
  `func_id` int(4) NOT NULL,
  `prod_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `invest`
--

INSERT INTO `invest` (`func_id`, `prod_id`) VALUES
(4, 2),
(1, 3),
(2, 4),
(5, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `prod`
--

CREATE TABLE `prod` (
  `idprod` int(4) NOT NULL,
  `prodname` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `prod`
--

INSERT INTO `prod` (`idprod`, `prodname`) VALUES
(1, 'Caderneta de Poupança'),
(2, 'Títulos Publicos'),
(3, 'Certificados de Depósito '),
(4, 'Crédito Imobiliário'),
(5, 'Crédito do Agronegócio'),
(6, 'Fundos de Renda Fixa'),
(7, 'Debêntures');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `func`
--
ALTER TABLE `func`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `invest`
--
ALTER TABLE `invest`
  ADD PRIMARY KEY (`func_id`),
  ADD KEY `fk_idprod` (`prod_id`);

--
-- Índices para tabela `prod`
--
ALTER TABLE `prod`
  ADD PRIMARY KEY (`idprod`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `invest`
--
ALTER TABLE `invest`
  ADD CONSTRAINT `fk_idfunc` FOREIGN KEY (`func_id`) REFERENCES `func` (`id`),
  ADD CONSTRAINT `fk_idprod` FOREIGN KEY (`prod_id`) REFERENCES `prod` (`idprod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
