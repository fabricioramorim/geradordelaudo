-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 29-Nov-2022 às 16:24
-- Versão do servidor: 5.7.23-23
-- versão do PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `vacivi36_app`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comercial_btb`
--

CREATE TABLE `comercial_btb` (
  `id` int(11) NOT NULL,
  `quantidade_colab` varchar(300) NOT NULL,
  `quantidade_doses` varchar(300) NOT NULL,
  `empresa` varchar(300) NOT NULL,
  `cnpj` varchar(300) NOT NULL,
  `nome` varchar(300) NOT NULL,
  `telefone` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `celular` varchar(300) NOT NULL,
  `cidade` varchar(300) NOT NULL,
  `usuario` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `comercial_btb`
--

INSERT INTO `comercial_btb` (`id`, `quantidade_colab`, `quantidade_doses`, `empresa`, `cnpj`, `nome`, `telefone`, `email`, `celular`, `cidade`, `usuario`) VALUES
(1, '10', '10', 'Vacivitta', '200022', 'Fabricio', '11953', 'webmaster@vacivitta.com.br', '11233', 'Salto', 'Fabricio'),
;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comercial_custo`
--

CREATE TABLE `comercial_custo` (
  `id` int(11) NOT NULL,
  `custo` varchar(300) NOT NULL,
  `imposto` varchar(300) NOT NULL,
  `mat_auxiliar` varchar(300) NOT NULL,
  `comissao` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comercial_limit`
--

CREATE TABLE `comercial_limit` (
  `id` int(11) NOT NULL,
  `f_1` varchar(30) NOT NULL,
  `f_2` varchar(30) NOT NULL,
  `f_3` varchar(30) NOT NULL,
  `f_4` varchar(30) NOT NULL,
  `f_5` varchar(30) NOT NULL,
  `meta` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `comercial_limit`
--

INSERT INTO `comercial_limit` (`id`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `meta`) VALUES
(1, '85', '80', '75', '70', '65', '200000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config_barra`
--

CREATE TABLE `config_barra` (
  `id` int(11) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `valores` varchar(300) NOT NULL,
  `valores2` varchar(300) NOT NULL,
  `porcentagem` varchar(300) NOT NULL,
  `endereco` varchar(300) NOT NULL,
  `telefone` varchar(300) NOT NULL,
  `celular` varchar(300) NOT NULL,
  `redessociais` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `config_barra`
--

INSERT INTO `config_barra` (`id`, `pacote`, `valores`, `valores2`, `porcentagem`, `endereco`, `telefone`, `celular`, `redessociais`) VALUES
(1, '2 A 6 MESES', '4520', '', '5', 'Av. Américas, Nº 4790/501 – Barra da Tijuca', '(21) 3145-5909', '(21) 99470-1253', '@vacivitta.barradatijuca'),
(2, '2 A 12 MESES', '5830', '', '5', 'Av. Américas, Nº 4790/501 – Barra da Tijuca', '(21) 3145-5909', '(21) 99470-1253', '@vacivitta.barradatijuca'),
(3, '9 A 18 MESES', '2845', '', '5', 'Av. Américas, Nº 4790/501 – Barra da Tijuca', '(21) 3145-5909', '(21) 99470-1253', '@vacivitta.barradatijuca'),
(4, 'HPV', '1860', '630', '5', 'Av. Américas, Nº 4790/501 – Barra da Tijuca', '(21) 3145-5909', '(21) 99470-1253', '@vacivitta.barradatijuca'),
(5, 'MENINGITES', '2060', '', '5', 'Av. Américas, Nº 4790/501 – Barra da Tijuca', '(21) 3145-5909', '(21) 99470-1253', '@vacivitta.barradatijuca');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config_bertioga`
--

CREATE TABLE `config_bertioga` (
  `id` int(11) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `valores` varchar(300) NOT NULL,
  `valores2` varchar(300) NOT NULL,
  `porcentagem` varchar(300) NOT NULL,
  `endereco` varchar(300) NOT NULL,
  `telefone` varchar(300) NOT NULL,
  `celular` varchar(300) NOT NULL,
  `redessociais` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `config_bertioga`
--

INSERT INTO `config_bertioga` (`id`, `pacote`, `valores`, `valores2`, `porcentagem`, `endereco`, `telefone`, `celular`, `redessociais`) VALUES
(1, '2 A 6 MESES', '4670', '', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(2, '2 A 12 MESES', '5830', '', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(3, '9 A 18 MESES', '2845', '', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(4, 'HPV', '1860', '1740', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(5, 'MENINGITES', '2060', '', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config_campinas`
--

CREATE TABLE `config_campinas` (
  `id` int(11) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `valores` varchar(300) NOT NULL,
  `valores2` varchar(300) NOT NULL,
  `porcentagem` varchar(300) NOT NULL,
  `endereco` varchar(300) NOT NULL,
  `telefone` varchar(300) NOT NULL,
  `celular` varchar(300) NOT NULL,
  `redessociais` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `config_campinas`
--

INSERT INTO `config_campinas` (`id`, `pacote`, `valores`, `valores2`, `porcentagem`, `endereco`, `telefone`, `celular`, `redessociais`) VALUES
(1, '2 A 6 MESES', '4670', '', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(2, '2 A 12 MESES', '5830', '', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(3, '9 A 18 MESES', '2845', '', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(4, 'HPV', '1860', '1740', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(5, 'MENINGITES', '2060', '', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config_doisvizinhos`
--

CREATE TABLE `config_doisvizinhos` (
  `id` int(11) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `valores` varchar(300) NOT NULL,
  `valores2` varchar(300) NOT NULL,
  `porcentagem` varchar(300) NOT NULL,
  `endereco` varchar(300) NOT NULL,
  `telefone` varchar(300) NOT NULL,
  `celular` varchar(300) NOT NULL,
  `redessociais` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `config_doisvizinhos`
--

INSERT INTO `config_doisvizinhos` (`id`, `pacote`, `valores`, `valores2`, `porcentagem`, `endereco`, `telefone`, `celular`, `redessociais`) VALUES
(1, '2 A 6 MESES', '4670', '', '5', 'Rua Wenceslau Braz, 525 – Sala 01', '(46) 3010-1469', '(46) 99924-1551', '@vacivitta.doisvizinhos'),
(2, '2 A 12 MESES', '5830', '', '5', 'Rua Wenceslau Braz, 525 – Sala 01', '(46) 3010-1469', '(46) 99924-1551', '@vacivitta.doisvizinhos'),
(3, '9 A 18 MESES', '2845', '', '5', 'Rua Wenceslau Braz, 525 – Sala 01', '(46) 3010-1469', '(46) 99924-1551', '@vacivitta.doisvizinhos'),
(4, 'HPV', '1860', '630', '5', 'Rua Wenceslau Braz, 525 – Sala 01', '(46) 3010-1469', '(46) 99924-1551', '@vacivitta.doisvizinhos'),
(5, 'MENINGITES', '2060', '', '5', 'Rua Wenceslau Braz, 525 – Sala 01', '(46) 3010-1469', '(46) 99924-1551', '@vacivitta.doisvizinhos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config_indaiatuba`
--

CREATE TABLE `config_indaiatuba` (
  `id` int(11) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `valores` varchar(300) NOT NULL,
  `valores2` varchar(300) NOT NULL,
  `porcentagem` varchar(300) NOT NULL,
  `endereco` varchar(300) NOT NULL,
  `telefone` varchar(300) NOT NULL,
  `celular` varchar(300) NOT NULL,
  `redessociais` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `config_indaiatuba`
--

INSERT INTO `config_indaiatuba` (`id`, `pacote`, `valores`, `valores2`, `porcentagem`, `endereco`, `telefone`, `celular`, `redessociais`) VALUES
(1, '2 A 6 MESES', '4670', '', '5', 'Avenida dos Trabalhadores, 116 , Sala 206 ', '(19) 3318-0311', '(19) 99252-1016', '@vacivitta.indaiatuba'),
(2, '2 A 12 MESES', '5380', '', '5', 'Avenida dos Trabalhadores, 116 , Sala 206 ', '(19) 3318-0311', '(19) 99252-1016', '@vacivitta.indaiatuba'),
(3, '9 A 18 MESES', '2845', '', '5', 'Avenida dos Trabalhadores, 116 , Sala 206 ', '(19) 3318-0311', '(19) 99252-1016', '@vacivitta.indaiatuba'),
(4, 'HPV', '1860', '630', '5', 'Avenida dos Trabalhadores, 116 , Sala 206 ', '(19) 3318-0311', '(19) 99252-1016', '@vacivitta.indaiatuba'),
(5, 'MENINGITES', '2845', '', '5', 'Avenida dos Trabalhadores, 116 , Sala 206 ', '(19) 3318-0311', '(19) 99252-1016', '@vacivitta.indaiatuba');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config_itanhaem`
--

CREATE TABLE `config_itanhaem` (
  `id` int(11) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `valores` varchar(300) NOT NULL,
  `valores2` varchar(300) NOT NULL,
  `porcentagem` varchar(300) NOT NULL,
  `endereco` varchar(300) NOT NULL,
  `telefone` varchar(300) NOT NULL,
  `celular` varchar(300) NOT NULL,
  `redessociais` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `config_itanhaem`
--

INSERT INTO `config_itanhaem` (`id`, `pacote`, `valores`, `valores2`, `porcentagem`, `endereco`, `telefone`, `celular`, `redessociais`) VALUES
(1, '2 A 6 MESES', '4670', '', '5', 'Rua Leopoldino de Araujo, nº39', '(13) 3366-3566', '(13) 99625-6832', '@vacivitta.itanhaem'),
(2, '2 A 12 MESES', '5830', '', '5', 'Rua Leopoldino de Araujo, nº39', '(13) 3366-3566', '(13) 99625-6832', '@vacivitta.itanhaem'),
(3, '9 A 18 MESES', '2845', '', '5', 'Rua Leopoldino de Araujo, nº39', '(13) 3366-3566', '(13) 99625-6832', '@vacivitta.itanhaem'),
(4, 'HPV', '1860', '630', '5', 'Rua Leopoldino de Araujo, nº39', '(13) 3366-3566', '(13) 99625-6832', '@vacivitta.itanhaem'),
(5, 'MENINGITES', '2060', '', '5', 'Rua Leopoldino de Araujo, nº39', '(13) 3366-3566', '(13) 99625-6832', '@vacivitta.itanhaem');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config_itu`
--

CREATE TABLE `config_itu` (
  `id` int(11) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `valores` varchar(300) NOT NULL,
  `valores2` varchar(300) NOT NULL,
  `porcentagem` varchar(300) NOT NULL,
  `endereco` varchar(300) NOT NULL,
  `telefone` varchar(300) NOT NULL,
  `celular` varchar(300) NOT NULL,
  `redessociais` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `config_itu`
--

INSERT INTO `config_itu` (`id`, `pacote`, `valores`, `valores2`, `porcentagem`, `endereco`, `telefone`, `celular`, `redessociais`) VALUES
(1, '2 A 6 MESES', '4670', '', '5', 'Avenida Plaza, 70 – Chácaras Primavera Itu/SP', '(11) 2429-2154', '(11) 94339-4444', '@vacivitta.saltoeitu'),
(2, '2 A 12 MESES', '5830', '', '5', 'Avenida Plaza, 70 – Chácaras Primavera Itu/SP', '(11) 2429-2154', '(11) 94339-4444', '@vacivitta.saltoeitu'),
(3, '9 A 18 MESES', '2845', '', '5', 'Avenida Plaza, 70 – Chácaras Primavera Itu/SP', '(11) 2429-2154', '(11) 94339-4444', '@vacivitta.saltoeitu'),
(4, 'HPV', '1860', '630', '5', 'Avenida Plaza, 70 – Chácaras Primavera Itu/SP', '(11) 2429-2154', '(11) 94339-4444', '@vacivitta.saltoeitu'),
(5, 'MENINGITES', '2060', '', '5', 'Avenida Plaza, 70 – Chácaras Primavera Itu/SP', '(11) 2429-2154', '(11) 94339-4444', '@vacivitta.saltoeitu');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config_jundiai`
--

CREATE TABLE `config_jundiai` (
  `id` int(11) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `valores` varchar(300) NOT NULL,
  `valores2` varchar(300) NOT NULL,
  `porcentagem` varchar(300) NOT NULL,
  `endereco` varchar(300) NOT NULL,
  `telefone` varchar(300) NOT NULL,
  `celular` varchar(300) NOT NULL,
  `redessociais` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `config_jundiai`
--

INSERT INTO `config_jundiai` (`id`, `pacote`, `valores`, `valores2`, `porcentagem`, `endereco`, `telefone`, `celular`, `redessociais`) VALUES
(1, '2 A 6 MESES', '4670', '', '5', 'Av. Benedito C. de Andrade, nº 1410 - Jundiai/SP', '(11) 4815-0853', '(11) 99383-3028', '@vacivitta.jundiai'),
(2, '2 A 12 MESES', '5830', '', '5', 'Av. Benedito C. de Andrade, nº 1410 - Jundiai/SP', '(11) 4815-0853', '(11) 99383-3028', '@vacivitta.jundiai'),
(3, '9 A 18 MESES', '2845', '', '5', 'Av. Benedito C. de Andrade, nº 1410 - Jundiai/SP', '(11) 4815-0853', '(11) 99383-3028', '@vacivitta.jundiai'),
(4, 'HPV', '1860', '630', '5', 'Av. Benedito C. de Andrade, nº 1410 - Jundiai/SP', '(11) 4815-0853', '(11) 99383-3028', '@vacivitta.jundiai'),
(5, 'MENINGITES', '2060', '', '5', 'Av. Benedito C. de Andrade, nº 1410 - Jundiai/SP', '(11) 4815-0853', '(11) 99383-3028', '@vacivitta.jundiai');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config_moema`
--

CREATE TABLE `config_moema` (
  `id` int(11) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `valores` varchar(300) NOT NULL,
  `valores2` varchar(300) NOT NULL,
  `porcentagem` varchar(300) NOT NULL,
  `endereco` varchar(300) NOT NULL,
  `telefone` varchar(300) NOT NULL,
  `celular` varchar(300) NOT NULL,
  `redessociais` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `config_moema`
--

INSERT INTO `config_moema` (`id`, `pacote`, `valores`, `valores2`, `porcentagem`, `endereco`, `telefone`, `celular`, `redessociais`) VALUES
(1, '2 A 6 MESES', '4670', '', '5', 'Av. Ministro Gabriel de Rezende Passos, nº500 Sala 1104', '(11) 2539-7896', '(11) 99376-6513', '@vacivitta.moema'),
(2, '2 A 12 MESES', '5830', '', '5', 'Av. Ministro Gabriel de Rezende Passos, nº500 Sala 1104', '(11) 2539-7896', '(11) 99376-6513', '@vacivitta.moema'),
(3, '9 A 18 MESES', '2845', '', '5', 'Av. Ministro Gabriel de Rezende Passos, nº500 Sala 1104', '(11) 2539-7896', '(11) 99376-6513', '@vacivitta.moema'),
(4, 'HPV', '1860', '630', '5', 'Av. Ministro Gabriel de Rezende Passos, nº500 Sala 1104', '(11) 2539-7896', '(11) 99376-6513', '@vacivitta.moema'),
(5, 'MENINGITES', '2060', '', '5', 'Av. Ministro Gabriel de Rezende Passos, nº500 Sala 1104', '(11) 2539-7896', '(11) 99376-6513', '@vacivitta.moema');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config_salto`
--

CREATE TABLE `config_salto` (
  `id` int(11) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `valores` varchar(300) NOT NULL,
  `valores2` varchar(300) NOT NULL,
  `porcentagem` varchar(300) NOT NULL,
  `endereco` varchar(300) NOT NULL,
  `telefone` varchar(300) NOT NULL,
  `celular` varchar(300) NOT NULL,
  `redessociais` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `config_salto`
--

INSERT INTO `config_salto` (`id`, `pacote`, `valores`, `valores2`, `porcentagem`, `endereco`, `telefone`, `celular`, `redessociais`) VALUES
(1, '2 A 6 MESES', '4850', '', '6', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(2, '2 A 12 MESES', '5830', '', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(3, '9 A 18 MESES', '2845', '', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(4, 'HPV', '1860', '630', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(5, 'MENINGITES', '2060', '', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config_santos`
--

CREATE TABLE `config_santos` (
  `id` int(11) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `valores` varchar(300) NOT NULL,
  `valores2` varchar(300) NOT NULL,
  `porcentagem` varchar(300) NOT NULL,
  `endereco` varchar(300) NOT NULL,
  `telefone` varchar(300) NOT NULL,
  `celular` varchar(300) NOT NULL,
  `redessociais` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `config_santos`
--

INSERT INTO `config_santos` (`id`, `pacote`, `valores`, `valores2`, `porcentagem`, `endereco`, `telefone`, `celular`, `redessociais`) VALUES
(1, '2 A 6 MESES', '4670', '', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(2, '2 A 12 MESES', '5830', '', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(3, '9 A 18 MESES', '2845', '', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(4, 'HPV', '1860', '1740', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(5, 'MENINGITES', '2060', '', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config_vilamariana`
--

CREATE TABLE `config_vilamariana` (
  `id` int(11) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `valores` varchar(300) NOT NULL,
  `valores2` varchar(300) NOT NULL,
  `porcentagem` varchar(300) NOT NULL,
  `endereco` varchar(300) NOT NULL,
  `telefone` varchar(300) NOT NULL,
  `celular` varchar(300) NOT NULL,
  `redessociais` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `config_vilamariana`
--

INSERT INTO `config_vilamariana` (`id`, `pacote`, `valores`, `valores2`, `porcentagem`, `endereco`, `telefone`, `celular`, `redessociais`) VALUES
(1, '2 A 6 MESES', '4670', '', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(2, '2 A 12 MESES', '5830', '', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(3, '9 A 18 MESES', '2845', '', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(4, 'HPV', '1860', '1740', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu'),
(5, 'MENINGITES', '2060', '', '5', 'Rua Benjamin Constant, 185 – Centro - Salto/SP', '(11) 4456-7060', '(11) 94179-7060', '@vacivitta.saltoeitu');

-- --------------------------------------------------------

--
-- Estrutura da tabela `laudo`
--

CREATE TABLE `laudo` (
  `id` int(11) NOT NULL,
  `nome` varchar(300) NOT NULL,
  `cpf` varchar(300) NOT NULL,
  `dtnasc` varchar(300) NOT NULL,
  `material` varchar(300) NOT NULL,
  `dtcoleta` varchar(300) NOT NULL,
  `horacoleta` varchar(300) NOT NULL,
  `resultado` varchar(300) NOT NULL,
  `marca` varchar(300) NOT NULL,
  `lote` varchar(300) NOT NULL,
  `validade` varchar(300) NOT NULL,
  `registro` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `laudo`
--

INSERT INTO `laudo` (`id`, `nome`, `cpf`, `dtnasc`, `material`, `dtcoleta`, `horacoleta`, `resultado`, `marca`, `lote`, `validade`, `registro`, `email`) VALUES
(1, 'Fabricio Roney de Amorim', '51308342837', '19/08/1998', 'Swab de nasofaringe', '2021-10-30', '22:01', '1', 'AdvaGen', 'Ac2180', '2021-10-30', '0185442', 'webmaster@vacivitta.com.br'),
(2, 'Fabricio Roney de Amorim', '51308342837', '19/08/1998', 'Swab de nasofaringe', '2021-10-30', '22:01', '1', 'AdvaGen', 'Ac2180', '2021-10-30', '0185442', 'webmaster@vacivitta.com.br'),
(3, 'Fabricio Roney de Amorim', '51308342837', '19/08/1998', 'Swab de nasofaringe', '2021-10-30', '22:01', '1', 'AdvaGen', 'Ac2180', '2021-10-30', '0185442', 'webmaster@vacivitta.com.br'),
(4, 'Fabricio Roney de Amorim', '51308342837', '19/08/1998', 'Swab de nasofaringe', '2021-10-30', '22:01', '1', 'AdvaGen', 'Ac2180', '2021-10-30', '0185442', 'webmaster@vacivitta.com.br'),
(5, 'Fabricio Roney de Amorim', '51308342837', '19/08/1998', 'Swab de nasofaringe', '2021-10-30', '22:01', '1', 'AdvaGen', 'Ac2180', '2021-10-30', '0185442', 'webmaster@vacivitta.com.br'),
(6, 'Edinete Rufino da Silva de Amorim', '30533332877', '02/04/1980', 'Swab de nasofaringe', '2021-10-30', '22:01', '1', 'AdvaGen', 'Ac2180', '2021-10-30', '0185442', 'webmaster@vacivitta.com.br'),
(7, 'Fabricio Roney de Amorim', '51308342837', '19/08/1998', 'Swab de nasofaringe', '2021-10-28', '22:31', '0', 'AdvaGen', 'Ac2180', '2021-10-30', '0185442', 'fabricioroney9@gmail.com'),
(0, 'Barbara Aparecida de Rezende Figueiredo', '10817974601', '30/03/1992', 'Swab de nasofaringe', '2021-10-27', '10:05', '0', 'AdvaGen', '645484', '2021-10-28', '568949849149', 'barbara.figueiredo@vacivitta.com.br'),
(0, 'Aline Stephanie Ribeiro de Lima', '60632811340', '27/01/2000', 'Swab de nasofaringe', '2021-10-28', '09:00', '0', 'AdvaGen', 'kskndsc', '2021-10-29', '', 'ailine.ribeiro@vacivitta.com.br'),
(0, 'Fabricio Roney de Amorim', '51308342837', '19/08/1998', 'Swab de nasofaringe', '2021-11-10', '20:49', '1', 'AdvaGen', 'Ac2180', '2021-11-01', '0185442', 'webmaster@vacivitta.com.br');

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade_barra`
--

CREATE TABLE `unidade_barra` (
  `id` int(11) NOT NULL,
  `nome` varchar(300) NOT NULL,
  `mes` varchar(300) NOT NULL,
  `contato` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `validade` varchar(300) NOT NULL,
  `desconto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `unidade_barra`
--

INSERT INTO `unidade_barra` (`id`, `nome`, `mes`, `contato`, `email`, `pacote`, `validade`, `desconto`) VALUES
(1, 'Edinete Silva', 'Outubro', '11953704921', 'fabricio.amorim@vacivitta.com.br', '2 A 6 MESES', '01/02/2022', ''),
(2, 'Kesia ', 'Janeiro', '21992759026', '', '2 A 6 MESES', '27/01/2022', ''),
(3, 'Kesia ', 'Janeiro', '21992759026', '', '2 A 6 MESES', '01/02/2022', ''),
(4, 'Bárbara Mosna Macedo', '', '', '', '2 A 6 MESES', '05/02/2022', ''),
(5, 'Carli', 'Janeiro ', '96414-3520', '', 'BRANCO', '09/02/2022', ''),
(6, 'Carli', 'Janeiro ', '96414-3520', '', '2 A 6 MESES', '09/02/2022', ''),
(7, 'Núbia', 'Janeiro ', '98824-5989', '', '2 A 6 MESES', '09/02/2022', ''),
(8, 'Núbia', 'Janeiro ', '98824-5989', '', 'MENINGITES', '09/02/2022', ''),
(9, '', '', '', '', '2 A 12 MESES', '13/02/2022', ''),
(10, '', '', '', '', '2 A 12 MESES', '14/02/2022', ''),
(11, 'Carolina ', '', '', '', 'MENINGITES', '15/02/2022', ''),
(12, 'Gabriel (Pai)', 'fevereiro ', '', '', '2 A 6 MESES', '28/02/2022', ''),
(13, '', '', '', '', 'BRANCO', '03/03/2022', ''),
(14, '', '', '', '', 'MENINGITES', '03/03/2022', ''),
(15, '', '', '', '', 'MENINGITES', '03/03/2022', ''),
(16, '', '', '', '', '2 A 6 MESES', '03/03/2022', ''),
(17, '', '', '', '', '2 A 6 MESES', '03/03/2022', ''),
(18, '', '', '', '', '2 A 12 MESES', '03/03/2022', ''),
(19, 'Laura Borges ', '', '', '', 'MENINGITES', '03/03/2022', ''),
(20, 'Laura Borges ', 'Fevereiro ', ' 21 97267-6807', '', 'MENINGITES', '03/03/2022', ''),
(21, '', '', '', '', '2 A 6 MESES', '04/03/2022', ''),
(22, 'Bárbara', 'maço', '', '', '2 A 6 MESES', '17/03/2022', ''),
(23, 'Bárbara', '', '', '', '9 A 18 MESES', '17/03/2022', ''),
(24, 'Bárbara ', '', '', '', '2 A 12 MESES', '17/03/2022', ''),
(25, 'priscila', 'março ', '', '', '2 A 6 MESES', '26/03/2022', ''),
(26, '', '', '', '', 'MENINGITES', '26/03/2022', ''),
(27, 'priscila', 'março ', '21970165287', '', '2 A 6 MESES', '26/03/2022', ''),
(28, 'Kesia ', 'Março', '21992759026', 'paivacarolina34@gmail.com', '9 A 18 MESES', '27/03/2022', ''),
(29, 'Carolina Paiva', 'Março', '21992759026', 'paivacarolina34@gmail.com', '2 A 6 MESES', '27/03/2022', ''),
(30, '', '', '', '', '2 A 6 MESES', '02/04/2022', ''),
(31, '', '', '', '', 'MENINGITES', '02/04/2022', ''),
(32, 'Edinete Rufino da Silva', 'Outubro', '11953704921', 'oggimrm@gmail.com', '2 A 6 MESES', '14/08/2022', ''),
(33, '', '', '', '', '2 A 6 MESES', '14/08/2022', ''),
(34, '', '', '', '', 'BRANCO', '14/08/2022', ''),
(35, '', '', '', '', '2 A 12 MESES', '14/08/2022', ''),
(36, '', '', '', '', '2 A 6 MESES', '14/08/2022', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade_bertioga`
--

CREATE TABLE `unidade_bertioga` (
  `id` int(11) NOT NULL,
  `nome` varchar(300) NOT NULL,
  `mes` varchar(300) NOT NULL,
  `contato` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `validade` varchar(300) NOT NULL,
  `desconto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade_campinas`
--

CREATE TABLE `unidade_campinas` (
  `id` int(11) NOT NULL,
  `nome` varchar(300) NOT NULL,
  `mes` varchar(300) NOT NULL,
  `contato` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `validade` varchar(300) NOT NULL,
  `desconto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `unidade_campinas`
--

INSERT INTO `unidade_campinas` (`id`, `nome`, `mes`, `contato`, `email`, `pacote`, `validade`, `desconto`) VALUES
(1, '', '', '', '', 'BRANCO', '26/05/2022', ''),
(2, '', '', '', '', '2 A 6 MESES', '26/05/2022', ''),
(3, '', '', '', '', '9 A 18 MESES', '26/05/2022', ''),
(4, '', '', '', '', 'HPV', '26/05/2022', ''),
(5, 'MAYARA', 'MAIO', '', '', 'BRANCO', '03/06/2022', ''),
(6, 'Carla', 'Agosto', '019 99251-3900', '', '2 A 12 MESES', '18/08/2022', ''),
(7, 'Carla', '', '', '', 'BRANCO', '18/08/2022', ''),
(8, 'Carla', 'Agosto', '', '', 'BRANCO', '18/08/2022', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade_doisvizinhos`
--

CREATE TABLE `unidade_doisvizinhos` (
  `id` int(11) NOT NULL,
  `nome` varchar(300) NOT NULL,
  `mes` varchar(300) NOT NULL,
  `contato` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `validade` varchar(300) NOT NULL,
  `desconto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `unidade_doisvizinhos`
--

INSERT INTO `unidade_doisvizinhos` (`id`, `nome`, `mes`, `contato`, `email`, `pacote`, `validade`, `desconto`) VALUES
(25, 'Larissa ', 'outubro ', '', '', '2 A 6 MESES', '28/10/2021', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade_indaiatuba`
--

CREATE TABLE `unidade_indaiatuba` (
  `id` int(11) NOT NULL,
  `nome` varchar(300) NOT NULL,
  `mes` varchar(300) NOT NULL,
  `contato` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `validade` varchar(300) NOT NULL,
  `desconto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `unidade_indaiatuba`
--

INSERT INTO `unidade_indaiatuba` (`id`, `nome`, `mes`, `contato`, `email`, `pacote`, `validade`, `desconto`) VALUES
(25, 'Edinete R S Amorim', 'Dezembro', '11 953704921', 'vacivittamkt@gmail.com', '2 A 12 MESES', '23/10/2021', ''),
(26, 'Edinete R S Amorim', 'Dezembro', '11 953704921', 'edinete@email.com', '2 A 6 MESES', '18/10/2021', ''),
(27, 'Maria Dalvanir', 'Maio', '11 953704921', 'fabricioroney@gmail.com', '9 A 18 MESES', '26/10/2021', ''),
(28, '', '', '', '', 'BRANCO', '21/10/2021', ''),
(29, 'Maria Dalvanir', 'Maio', '11 953704921', 'fabricioroney9@gmail.com', 'HPV', '24/10/2021', ''),
(30, '', '', '', '', 'MENINGITES', '24/10/2021', ''),
(31, '', '', '', '', 'MENINGITES', '24/10/2021', ''),
(32, 'Maria Dalvanir', 'Maio', '11953704921', 'vacivittamkt@gmail.com', 'HPV', '24/10/2021', ''),
(33, 'Maria Dalvanir', 'Maio', '11 953704921', 'vacivittamkt@gmail.com', 'MENINGITES', '24/10/2021', ''),
(34, '', '', '', '', '2 A 6 MESES', '14/08/2022', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade_itanhaem`
--

CREATE TABLE `unidade_itanhaem` (
  `id` int(11) NOT NULL,
  `nome` varchar(300) NOT NULL,
  `mes` varchar(300) NOT NULL,
  `contato` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `validade` varchar(300) NOT NULL,
  `desconto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `unidade_itanhaem`
--

INSERT INTO `unidade_itanhaem` (`id`, `nome`, `mes`, `contato`, `email`, `pacote`, `validade`, `desconto`) VALUES
(1, 'Edinete Silva', 'Agosto', '11953704921', 'fabricio.amorim@vacivitta.com.br', '2 A 6 MESES', '08/02/2022', ''),
(2, 'Sandra', 'janeiro 2022', '13997553129', '', 'BRANCO', '03/02/2022', ''),
(3, '', '', '', '', 'BRANCO', '03/02/2022', ''),
(4, 'RAIANE ', 'FEVEREIRO', '', '', 'BRANCO', '11/02/2022', ''),
(5, 'Caroline Sant’Anna Fernandes', 'FEVEREIRO', '', '', 'BRANCO', '11/02/2022', ''),
(6, 'Leticia', '08', '', '', 'MENINGITES', '14/08/2022', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade_itu`
--

CREATE TABLE `unidade_itu` (
  `id` int(11) NOT NULL,
  `nome` varchar(300) NOT NULL,
  `mes` varchar(300) NOT NULL,
  `contato` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `validade` varchar(300) NOT NULL,
  `desconto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `unidade_itu`
--

INSERT INTO `unidade_itu` (`id`, `nome`, `mes`, `contato`, `email`, `pacote`, `validade`, `desconto`) VALUES
(25, 'Edinete R S Amorim', 'Dezembro', '11 953704921', 'edinete@email.com', '2 A 6 MESES', '18/10/2021', ''),
(26, 'Rafael Domenice', 'Novembro', '11 97697-5235', '', '2 A 6 MESES', '28/10/2021', ''),
(27, 'Aline', 'Novembro', '11 97697-5235', '', 'BRANCO', '28/10/2021', ''),
(28, 'Rafael Domenice', 'Novembro', '11 97697-5235', '', '9 A 18 MESES', '28/10/2021', ''),
(29, 'DAVID', '', '11 971290717', '', 'HPV', '28/10/2021', ''),
(30, 'Samira', 'Novembro', '11948872415', '', 'BRANCO', '28/10/2021', ''),
(31, 'Laís', 'NOVEMBRO', '13 981935045', '', 'BRANCO', '15/11/2021', ''),
(32, 'Priscila', 'Novembro', '', '', '2 A 6 MESES', '19/11/2021', ''),
(33, 'WELLEN', 'NOVEMBRO', '', '', '2 A 6 MESES', '20/11/2021', ''),
(34, 'VETUSA', '', '984701806', '', '2 A 6 MESES', '20/11/2021', ''),
(35, 'CAMILA', 'Novembro', '', '', '2 A 6 MESES', '20/11/2021', ''),
(36, 'PRICILA', 'NOVEMBRO', '993508161', '', '2 A 6 MESES', '20/11/2021', ''),
(37, '', 'Novembro', '', '', '2 A 6 MESES', '21/11/2021', ''),
(38, '', 'Novembro', '', '', '9 A 18 MESES', '21/11/2021', ''),
(39, '', 'Novembro', '', '', '2 A 6 MESES', '21/11/2021', ''),
(40, 'LARISSA', 'Novembro', '', '', '2 A 6 MESES', '21/11/2021', ''),
(41, 'MICHELLE', 'Novembro', '', '', 'BRANCO', '21/11/2021', ''),
(42, 'VALÉRIA', 'Novembro', '11975475969', '', 'MENINGITES', '22/11/2021', ''),
(43, 'VIVIAN', 'Novembro', '', '', 'BRANCO', '22/11/2021', ''),
(44, 'MARIA JULIA YANAGUI PINHEIRO', 'NOVEMBRO', ' 11 92649418', '', 'BRANCO', '26/11/2021', ''),
(45, 'DÉBORA', 'Novembro', '11 98666-0676', '', 'MENINGITES', '26/11/2021', ''),
(46, 'YASMIM', 'NOVEMBRO', '15 991912779', '', 'MENINGITES', '26/11/2021', ''),
(47, 'MAITÊ', 'Novembro', '', '', '9 A 18 MESES', '27/11/2021', ''),
(48, 'ANTHONY', 'Novembro', '11986272701', '', '2 A 6 MESES', '27/11/2021', ''),
(49, 'MANUELA', 'Novembro', '', '', 'MENINGITES', '27/11/2021', ''),
(50, 'ISABELLA MOITAL', 'Novembro', '', '', '2 A 6 MESES', '27/11/2021', ''),
(51, 'ARIÁDNE', 'Novembro', '', '', '2 A 6 MESES', '27/11/2021', ''),
(52, 'ARIÁDNE', 'Novembro', '', '', '9 A 18 MESES', '27/11/2021', ''),
(53, 'ALICE MANHANI DE ALMEIDA', 'NOVEMBRO', '11 995346866', '', '9 A 18 MESES', '29/11/2021', ''),
(54, 'ISADORA DE ALMEIDA', 'Novembro', '', '', '2 A 6 MESES', '29/11/2021', ''),
(55, '', 'Novembro', '', '', '2 A 6 MESES', '29/11/2021', ''),
(56, '', 'Novembro', '', '', '9 A 18 MESES', '29/11/2021', ''),
(57, '', 'Novembro', '', '', 'BRANCO', '29/11/2021', ''),
(58, 'MARIA', 'Novembro', '', '', '9 A 18 MESES', '29/11/2021', ''),
(59, 'DAYANE', 'Novembro', '', '', '2 A 6 MESES', '02/12/2021', ''),
(60, 'FABIANA', 'Novembro', '', '', '2 A 6 MESES', '02/12/2021', ''),
(61, 'REGIANE', 'Novembro', '', '', '2 A 6 MESES', '03/12/2021', ''),
(62, 'DAYANE', 'Novembro', '', '', 'MENINGITES', '03/12/2021', ''),
(63, 'REGIANE', 'Novembro', '', '', '9 A 18 MESES', '03/12/2021', ''),
(64, 'AMANDA', 'NOVEMBRO', '', '', '2 A 6 MESES', '05/12/2021', ''),
(65, '', 'Novembro', '', '', '2 A 6 MESES', '05/12/2021', ''),
(66, 'STEPHANIE TAVARES', 'Novembro', '', '', '9 A 18 MESES', '06/12/2021', ''),
(67, 'BARBARA', 'NOVEMBRO', '', '', '9 A 18 MESES', '07/12/2021', ''),
(68, '', '', '', '', 'BRANCO', '09/12/2021', ''),
(69, 'DANIELA', 'NOVEMBRO', '', '', '2 A 6 MESES', '09/12/2021', ''),
(70, 'DANIELA', 'NOVEMBRO', '', '', '9 A 18 MESES', '09/12/2021', ''),
(71, 'BRUNA', 'NOVEMBRO', '', '', '2 A 6 MESES', '10/12/2021', ''),
(72, 'DANIELLE', 'Novembro', '', '', '2 A 6 MESES', '10/12/2021', ''),
(73, 'MARIA', 'NOVEMBRO', '', '', 'BRANCO', '10/12/2021', ''),
(74, 'MARIA', 'NOVEMBRO', '11 948872415', '', 'BRANCO', '10/12/2021', ''),
(75, 'PATRICIA', 'Novembro', '', '', 'BRANCO', '11/12/2021', ''),
(76, 'SIARA', 'Novembro', '', '', '9 A 18 MESES', '12/12/2021', ''),
(77, 'RENATA', 'DEZEMBRO', '11 98327-5532', '', '2 A 6 MESES', '13/12/2021', ''),
(78, 'RAQUEL', 'Novembro', '11 97621-6212', '', '9 A 18 MESES', '13/12/2021', ''),
(79, 'RAYANE', 'Novembro', '11 96374-6408', '', '9 A 18 MESES', '13/12/2021', ''),
(80, 'RAQUEL', 'Novembro', '11 976216212', '', '9 A 18 MESES', '13/12/2021', ''),
(81, 'KAREN', 'Novembro', '', '', '9 A 18 MESES', '16/12/2021', ''),
(82, 'ERICA', 'Novembro', '', '', '9 A 18 MESES', '16/12/2021', ''),
(83, 'PAULA CRISTIANE', 'Novembro', '', '', '9 A 18 MESES', '16/12/2021', ''),
(84, 'GISLAINE', 'Novembro', '11 988080286', '', '9 A 18 MESES', '17/12/2021', ''),
(85, 'JAQUELINE', 'Novembro', '11 989612902', '', 'MENINGITES', '17/12/2021', ''),
(86, 'THAIS GOMES', 'Novembro', '', '', '9 A 18 MESES', '17/12/2021', ''),
(87, 'JAQUELINE', 'DEZEMBRO', '11 973778370', '', '2 A 6 MESES', '18/12/2021', ''),
(88, 'PATRICIA', 'DEZEMBRO', '', '', '2 A 6 MESES', '18/12/2021', ''),
(89, 'camila', 'DEZEMBRO', '', '', '2 A 6 MESES', '18/12/2021', ''),
(90, 'CLAUDIA', 'Novembro', '', '', 'MENINGITES', '18/12/2021', ''),
(91, 'DENISE', 'DEZEMBRO', '', '', 'MENINGITES', '19/12/2021', ''),
(92, '', 'DEZEMBRO', '', '', '2 A 6 MESES', '19/12/2021', ''),
(93, 'FERNANDA', 'DEZEMBRO', '', '', '9 A 18 MESES', '19/12/2021', ''),
(94, 'BÁRBARA', 'Novembro', '11 98928-9417', '', '2 A 6 MESES', '23/12/2021', ''),
(95, 'MARILIA', 'DEZEMBRO', '', '', '2 A 6 MESES', '24/12/2021', ''),
(96, 'MARÍLIA', 'DEZEMBRO', '', '', '9 A 18 MESES', '24/12/2021', ''),
(97, 'KÁTIA', 'Novembro', '11 99885-6782', '', '9 A 18 MESES', '24/12/2021', ''),
(98, 'SUSANA', 'DEZEMBRO', '', '', '2 A 6 MESES', '24/12/2021', ''),
(99, 'AMANDA conde', 'Novembro', '', '', '2 A 6 MESES', '24/12/2021', ''),
(100, 'Marúsia Feitosa', 'DEZEMBRO', '', '', '2 A 6 MESES', '27/12/2021', ''),
(101, 'Marúsia Feitosa', 'DEZEMBRO', '', '', '9 A 18 MESES', '27/12/2021', ''),
(102, '', '', '', '', 'BRANCO', '28/12/2021', ''),
(103, 'LUMA', 'DEZEMBRO', '', '', '2 A 6 MESES', '30/12/2021', ''),
(104, 'ALINE', 'DEZEMBRO', '', '', '2 A 6 MESES', '30/12/2021', ''),
(105, 'MARIANA', 'DEZEMBRO', '', '', '9 A 18 MESES', '30/12/2021', ''),
(106, 'LIZ', 'Novembro', '', '', '2 A 6 MESES', '30/12/2021', ''),
(107, 'LIZ', 'Novembro', '', '', '2 A 12 MESES', '30/12/2021', ''),
(108, 'BEATRIZ', 'Novembro', '', '', '2 A 6 MESES', '30/12/2021', ''),
(109, 'DEBORA', 'Novembro', '', '', '2 A 6 MESES', '31/12/2021', ''),
(110, 'YONA', 'Novembro', '1194477-4723', '', '2 A 6 MESES', '01/01/2022', ''),
(111, 'YONA', 'Novembro', '1194477-4723', '', '9 A 18 MESES', '01/01/2022', ''),
(112, 'GABRIELA', 'Novembro', '', '', '2 A 6 MESES', '06/01/2022', ''),
(113, 'ERICA', 'Novembro', '', '', '9 A 18 MESES', '06/01/2022', ''),
(114, '', '', '', '', 'BRANCO', '08/01/2022', ''),
(115, 'ANA PAULA', 'Dezembro', '', '', '2 A 6 MESES', '09/01/2022', ''),
(116, 'LUMA', 'Dezembro', '3588285955', '', '2 A 6 MESES', '09/01/2022', ''),
(117, 'LUMA', 'Dezembro', '3588285955', '', '9 A 18 MESES', '09/01/2022', ''),
(118, '', '', '', '', '2 A 6 MESES', '10/01/2022', ''),
(119, '', '', '', '', '9 A 18 MESES', '10/01/2022', ''),
(120, 'KAREN', 'JANEIRO', '', '', '2 A 6 MESES', '13/01/2022', ''),
(121, '', '', '', '', '2 A 6 MESES', '13/01/2022', ''),
(122, 'EDILAINE', 'JANEIRO', '', '', '2 A 6 MESES', '14/01/2022', ''),
(123, 'RAFAELLY CRISTINA', 'JANEIRO', '', '', '2 A 6 MESES', '14/01/2022', ''),
(124, 'IRIS', 'JANEIRO', '', '', '9 A 18 MESES', '15/01/2022', ''),
(125, 'JULIANA ', 'JANEIRO', '', '', '2 A 6 MESES', '15/01/2022', ''),
(126, 'ERIKA', 'JANEIRO', '', '', '9 A 18 MESES', '16/01/2022', ''),
(127, 'BARBARA', 'JANEIRO', '11989289417', '', '2 A 6 MESES', '20/01/2022', ''),
(128, 'BARBARA', 'JANEIRO', '11989289417', '', '9 A 18 MESES', '20/01/2022', ''),
(129, 'MARA', 'JANEIRO', '11964856100', '', '2 A 6 MESES', '24/01/2022', ''),
(130, 'THAIS CRISTINA', 'JANEIRO', '', '', 'MENINGITES', '27/01/2022', ''),
(131, 'NATHALIA ', 'JANEIRO', '', '', '9 A 18 MESES', '27/01/2022', ''),
(132, 'KARINA', 'JANEIRO', '', '', 'MENINGITES', '27/01/2022', ''),
(133, 'CAMILLA CAMPOS', 'JANEIRO', '', '', '2 A 6 MESES', '28/01/2022', ''),
(134, 'ANA', 'JANEIRO', '', '', '2 A 6 MESES', '28/01/2022', ''),
(135, 'KARINA', 'JANEIRO', '', '', 'MENINGITES', '28/01/2022', ''),
(136, 'THAÍS CRISTINA ', 'JANEIRO', '', '', '2 A 6 MESES', '30/01/2022', ''),
(137, 'EDUARDA', 'JANEIRO', '', '', 'MENINGITES', '30/01/2022', ''),
(138, 'SIMONE', 'JANEIRO', '', '', 'MENINGITES', '30/01/2022', ''),
(139, 'RITA KARINA', 'JANEIRO', '', '', '2 A 6 MESES', '04/02/2022', ''),
(140, 'LAILA', 'JANEIRO', '', '', 'MENINGITES', '04/02/2022', ''),
(141, '', 'JANEIRO', '', '', '2 A 6 MESES', '04/02/2022', ''),
(142, '', 'JANEIRO', '', '', '2 A 6 MESES', '04/02/2022', ''),
(143, 'GREICE MARA', 'JANEIRO', '', '', '2 A 6 MESES', '05/02/2022', ''),
(144, 'GREICE MARA', 'JANEIRO', '', '', 'MENINGITES', '05/02/2022', ''),
(145, 'ALESSANDRA', 'JANEIRO', '', '', '2 A 6 MESES', '06/02/2022', ''),
(146, 'CAMILA CAROLINE', 'JANEIRO', '', '', '9 A 18 MESES', '06/02/2022', ''),
(147, '', 'JANEIRO', '', '', '2 A 6 MESES', '06/02/2022', ''),
(148, '', 'JANEIRO', '', '', '9 A 18 MESES', '06/02/2022', ''),
(149, 'KATIA', 'JANEIRO', '', '', '9 A 18 MESES', '11/02/2022', ''),
(150, 'RACHEL PECCHIO', 'JANEIRO', '', '', '9 A 18 MESES', '06/02/2022', ''),
(151, 'TATIANE', 'JANEIRO', '', '', 'BRANCO', '06/02/2022', ''),
(152, '', 'JANEIRO', '', '', '2 A 6 MESES', '07/02/2022', ''),
(153, '', 'JANEIRO', '', '', 'MENINGITES', '07/02/2022', ''),
(154, '', 'JANEIRO', '', '', '2 A 6 MESES', '10/02/2022', ''),
(155, '', 'JANEIRO', '', '', '2 A 6 MESES', '11/02/2022', ''),
(156, '', 'JANEIRO', '', '', '9 A 18 MESES', '11/02/2022', ''),
(157, 'ISABELA DE ALMEIDA', 'JANEIRO', '', '', '9 A 18 MESES', '11/02/2022', ''),
(158, '', '', '', '', '9 A 18 MESES', '13/02/2022', ''),
(159, '', '', '', '', 'BRANCO', '19/02/2022', ''),
(160, 'VANESSA', 'FEVEREIRO', '', '', '9 A 18 MESES', '19/02/2022', ''),
(161, '', '', '', '', 'BRANCO', '19/02/2022', ''),
(162, '', 'FEVEREIRO', '', '', '2 A 6 MESES', '20/02/2022', ''),
(163, '', 'FEVEREIRO', '', '', 'MENINGITES', '20/02/2022', ''),
(164, '', 'FEVEREIRO', '', '', '2 A 6 MESES', '20/02/2022', ''),
(165, '', 'FEVEREIRO', '', '', 'MENINGITES', '20/02/2022', ''),
(166, '', 'FEVEREIRO', '', '', '2 A 6 MESES', '20/02/2022', ''),
(167, 'STEPHANI NASCIMENTO', 'FEVEREIRO', '11 99987-4506', '', '2 A 6 MESES', '21/02/2022', ''),
(168, 'STEPHANI NASCIMENTO', 'FEVEREIRO', '11 99987-4506', '', '9 A 18 MESES', '21/02/2022', ''),
(169, 'STEPHANI NASCIMENTO', 'FEVEREIRO', '11 99987-4506', '', 'MENINGITES', '21/02/2022', ''),
(170, '', '', '', '', 'BRANCO', '03/03/2022', ''),
(171, 'MARIA CAROLINA', 'JANEIRO', '', '', '2 A 6 MESES', '04/03/2022', ''),
(172, '', '', '', '', 'BRANCO', '04/03/2022', ''),
(173, 'CAMILA', 'JANEIRO', '', '', '2 A 6 MESES', '05/03/2022', ''),
(174, 'CAMILA', 'FEVEREIRO', '', '', '2 A 6 MESES', '05/03/2022', ''),
(175, 'CAMILA', 'FEVEREIRO', '', '', '2 A 6 MESES', '05/03/2022', ''),
(176, 'SANDRA', 'FEVEREIRO', '', '', '9 A 18 MESES', '05/03/2022', ''),
(177, '', '', '', '', '2 A 6 MESES', '05/03/2022', ''),
(178, '', '', '', '', '9 A 18 MESES', '05/03/2022', ''),
(179, 'LETICIA', 'FEVEREIRO', '', '', '2 A 6 MESES', '06/03/2022', ''),
(180, 'SILVIA', 'FEVEREIRO', '', '', '9 A 18 MESES', '07/03/2022', ''),
(181, 'MAYARA', 'FEVEREIRO', '', '', '9 A 18 MESES', '10/03/2022', ''),
(182, 'NATHALIA', 'MARÇO', '', '', '2 A 6 MESES', '12/03/2022', ''),
(183, '', 'MARÇO', '', '', '2 A 6 MESES', '12/03/2022', ''),
(184, 'GRACIELE CRISTINA', 'MARÇO', '', '', 'MENINGITES', '14/03/2022', ''),
(185, 'GRACIELE CRISTINA', 'MARÇO', '', '', '2 A 6 MESES', '14/03/2022', ''),
(186, '', 'MARÇO', '', '', 'MENINGITES', '17/03/2022', ''),
(187, 'BIANCA', 'MARÇO', '', '', '2 A 6 MESES', '27/03/2022', ''),
(188, 'BIANCA', 'MARÇO', '', '', 'MENINGITES', '27/03/2022', ''),
(189, '', 'MARÇO', '', '', '2 A 6 MESES', '28/03/2022', ''),
(190, '', 'MARÇO', '', '', 'MENINGITES', '31/03/2022', ''),
(191, '', 'MARÇO', '', '', '9 A 18 MESES', '03/04/2022', ''),
(192, 'JESSICA', '', '', '', 'MENINGITES', '07/04/2022', ''),
(193, '', 'MARÇO', '', '', '2 A 6 MESES', '08/04/2022', ''),
(194, '', 'MARÇO', '', '', 'MENINGITES', '08/04/2022', ''),
(195, '', 'ABRIL', '', '', '2 A 6 MESES', '09/04/2022', ''),
(196, '', 'ABRIL', '', '', 'MENINGITES', '09/04/2022', ''),
(197, '', 'ABRIL', '', '', '9 A 18 MESES', '09/04/2022', ''),
(198, '', '', '', '', '2 A 12 MESES', '21/04/2022', ''),
(199, '', '', '', '', 'BRANCO', '23/04/2022', ''),
(200, '', 'MAIO/2022', '', '', '2 A 6 MESES', '09/05/2022', ''),
(201, '', 'MAIO/2022', '', '', 'MENINGITES', '09/05/2022', ''),
(202, 'LARISSA', 'MAIO', '', '', '2 A 6 MESES', '12/05/2022', ''),
(203, '', 'MAIO', '', '', '2 A 6 MESES', '17/05/2022', ''),
(204, '', 'MAIO', '', '', '9 A 18 MESES', '17/05/2022', ''),
(205, 'PAULA', 'MAIO', '', '', '9 A 18 MESES', '14/05/2022', ''),
(206, '', '', '', '', 'BRANCO', '14/05/2022', ''),
(207, '', 'MAIO', '', '', '2 A 6 MESES', '19/05/2022', ''),
(208, '', '', '', '', 'HPV', '21/05/2022', ''),
(209, '', '', '', '', '2 A 6 MESES', '22/05/2022', ''),
(210, '', '', '', '', 'BRANCO', '29/05/2022', ''),
(211, '', 'MAIO', '', '', 'MENINGITES', '03/06/2022', ''),
(212, '', 'MAIO', '', '', 'BRANCO', '06/06/2022', ''),
(213, '', 'JUNHO', '', '', '2 A 6 MESES', '06/06/2022', ''),
(214, '', 'JUNHO', '', '', '9 A 18 MESES', '06/06/2022', ''),
(215, '', '', '', '', 'MENINGITES', '06/06/2022', ''),
(216, '', 'JUNHO', '', '', 'MENINGITES', '21/06/2022', ''),
(217, '', 'JULHO', '', '', '2 A 6 MESES', '14/07/2022', ''),
(218, '', 'JULHO', '', '', '9 A 18 MESES', '14/07/2022', ''),
(219, '', 'JULHO', '', '', 'MENINGITES', '14/07/2022', ''),
(220, '', '', '', '', 'BRANCO', '14/07/2022', ''),
(221, '', 'AGOSTO', '', '', '2 A 6 MESES', '13/08/2022', ''),
(222, '', '', '', '', 'BRANCO', '13/08/2022', ''),
(223, '', '', '', '', 'BRANCO', '14/08/2022', ''),
(224, '', '', '', '', '2 A 6 MESES', '14/08/2022', ''),
(225, '', '', '', '', 'BRANCO', '14/08/2022', ''),
(226, '', '', '', '', '2 A 6 MESES', '29/08/2022', ''),
(227, '', '', '', '', '9 A 18 MESES', '29/08/2022', ''),
(228, '', '', '', '', 'MENINGITES', '29/08/2022', ''),
(229, '', '', '', '', 'BRANCO', '29/08/2022', ''),
(230, '', '', '', '', '2 A 6 MESES', '05/09/2022', ''),
(231, '', 'AGOSTO', '', '', '2 A 6 MESES', '08/09/2022', ''),
(232, 'Marta Saccaro', '08/2022', '11995109735', '', '2 A 12 MESES', '13/09/2022', ''),
(233, '', '', '', '', 'BRANCO', '09/09/2022', ''),
(234, '', '', '', '', 'BRANCO', '15/09/2022', ''),
(235, '', '', '', '', '2 A 6 MESES', '23/09/2022', ''),
(236, '', '', '', '', 'MENINGITES', '23/09/2022', ''),
(237, '', '', '', '', '2 A 12 MESES', '23/09/2022', ''),
(238, '', '', '', '', '9 A 18 MESES', '23/09/2022', ''),
(239, '', '2022', '', '', 'BRANCO', '02/10/2022', ''),
(240, '', '', '', '', 'BRANCO', '03/10/2022', ''),
(241, '', '', '', '', '2 A 6 MESES', '03/10/2022', ''),
(242, '', '', '', '', '9 A 18 MESES', '03/10/2022', ''),
(243, '', '', '', '', 'MENINGITES', '03/10/2022', ''),
(244, '', '', '', '', 'HPV', '03/10/2022', ''),
(245, '', '', '', '', '9 A 18 MESES', '03/10/2022', ''),
(246, '', '', '', '', 'BRANCO', '13/10/2022', ''),
(247, '', '', '', '', 'BRANCO', '25/10/2022', ''),
(248, '', '', '', '', 'BRANCO', '06/11/2022', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade_jundiai`
--

CREATE TABLE `unidade_jundiai` (
  `id` int(11) NOT NULL,
  `nome` varchar(300) NOT NULL,
  `mes` varchar(300) NOT NULL,
  `contato` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `validade` varchar(300) NOT NULL,
  `desconto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `unidade_jundiai`
--

INSERT INTO `unidade_jundiai` (`id`, `nome`, `mes`, `contato`, `email`, `pacote`, `validade`, `desconto`) VALUES
(25, '', '', '', '', '2 A 12 MESES', '21/10/2021', ''),
(26, 'Julia Letícia de Almeida Jesus', 'NOVEMBRO', '11 97442-1035', 'JUNDIAI@VACIVITTA.COM.BR', 'MENINGITES', '28/10/2021', ''),
(27, '', '', '', '', 'BRANCO', '12/05/2022', ''),
(28, '', '', '', '', '2 A 6 MESES', '12/05/2022', ''),
(29, '', '', '', '', 'MENINGITES', '12/05/2022', ''),
(30, '', '', '', '', '2 A 6 MESES', '14/08/2022', ''),
(31, '', '', '', '', 'MENINGITES', '14/08/2022', ''),
(32, '', '', '', '', 'HPV', '19/08/2022', ''),
(33, '', '', '', '', '9 A 18 MESES', '19/08/2022', ''),
(34, '', '', '', '', '9 A 18 MESES', '22/08/2022', ''),
(35, '', '', '', '', '2 A 6 MESES', '28/08/2022', ''),
(36, '', '', '', '', '2 A 6 MESES', '29/08/2022', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade_moema`
--

CREATE TABLE `unidade_moema` (
  `id` int(11) NOT NULL,
  `nome` varchar(300) NOT NULL,
  `mes` varchar(300) NOT NULL,
  `contato` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `validade` varchar(300) NOT NULL,
  `desconto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `unidade_moema`
--

INSERT INTO `unidade_moema` (`id`, `nome`, `mes`, `contato`, `email`, `pacote`, `validade`, `desconto`) VALUES
(1, '', '', '', '', 'BRANCO', '14/05/2022', ''),
(2, '', '', '', '', '2 A 6 MESES', '14/05/2022', ''),
(3, '', '', '', '', 'MENINGITES', '14/05/2022', ''),
(4, '', '', '', '', '9 A 18 MESES', '14/05/2022', ''),
(5, '', '', '', '', 'BRANCO', '14/05/2022', ''),
(6, '', '', '', '', 'BRANCO', '28/05/2022', ''),
(7, 'MAGDA', '', '', '', '2 A 6 MESES', '06/06/2022', ''),
(8, '', '', '', '', 'BRANCO', '06/06/2022', ''),
(9, '', '', '', '', '9 A 18 MESES', '06/06/2022', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade_salto`
--

CREATE TABLE `unidade_salto` (
  `id` int(11) NOT NULL,
  `nome` varchar(300) NOT NULL,
  `mes` varchar(300) NOT NULL,
  `contato` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `validade` varchar(300) NOT NULL,
  `desconto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `unidade_salto`
--

INSERT INTO `unidade_salto` (`id`, `nome`, `mes`, `contato`, `email`, `pacote`, `validade`, `desconto`) VALUES
(25, 'Edinete R S Amorim', 'Dezembro', '11 953704921', 'fabricio@email.com', '2 A 6 MESES', '18/10/2021', ''),
(26, 'Maria Dalvanir', 'Novembro', '11 953704921', 'fabricio.amorim@vacivitta.com.br', 'HPV', '29/10/2021', ''),
(27, 'Maria Dalvanir', 'Novembro', '11 953704921', 'fabricio.amorim@vacivitta.com.br', '2 A 6 MESES', '24/10/2021', ''),
(28, 'Maria Dalvanir', 'Novembro', '11 953704921', 'fabricio.amorim@vacivitta.com.br', 'HPV', '29/10/2021', ''),
(29, '', '', '', '', 'BRANCO', '24/10/2021', ''),
(30, 'Maria Dalvanir', 'Novembro', '11 953704921', 'fabricio.amorim@vacivitta.com.br', 'HPV', '30/10/2021', ''),
(31, 'tatiana', 'novembro', '11999250215', 'tatianacerqueirasantos@gmail.com', '2 A 6 MESES', '25/10/2021', ''),
(32, 'Bruna Maria', 'Novembro', '11 99559-2620', '', '2 A 6 MESES', '28/10/2021', ''),
(33, '', '', '', '', '2 A 6 MESES', '29/10/2021', ''),
(34, '', '', '', '', '2 A 12 MESES', '29/10/2021', ''),
(35, '', '', '', '', '9 A 18 MESES', '29/10/2021', ''),
(36, '', '', '', '', 'HPV', '29/10/2021', ''),
(37, '', '', '', '', 'MENINGITES', '29/10/2021', ''),
(38, 'Pai Danilo', 'novembro', '11 99600-8548', '', '2 A 6 MESES', '01/11/2021', ''),
(39, 'Sara Maria', 'novembro', '11970218287', '', '2 A 6 MESES', '09/12/2021', ''),
(40, 'MAYRA', 'NOVEMBRO', '11 98906-6976', '', 'BRANCO', '10/12/2021', ''),
(41, 'LEONARDO', 'DEZEMBRO', '11 98906-6976', '', 'BRANCO', '10/12/2021', ''),
(42, 'MAYRA', 'NOVEMBRO', '11 98906-6976', '', 'BRANCO', '10/12/2021', ''),
(43, 'Michelle Cristina', 'Novembro', '(11)99832-1147', '', 'BRANCO', '10/12/2021', ''),
(44, 'kkkkl', 'NOVEMBRO', '999999', '', 'BRANCO', '10/12/2021', ''),
(45, 'ALINE CALLADO', 'DEZEMBRO', '(11)98961-2363', '', '9 A 18 MESES', '11/12/2021', ''),
(46, 'Natália', 'DEZEMBRO', '(11)99977-6983', '', 'BRANCO', '12/12/2021', ''),
(47, 'Monalisa', 'DEZEMBRO', '(11)99782-1911', '', 'BRANCO', '16/12/2021', ''),
(48, 'MANUELA E ALÍCIA ARRUDA', 'DEZEMBRO', '(11) 99913-5133', '', 'BRANCO', '17/12/2021', ''),
(49, 'TALITA', 'DEZEMBRO', '(11) 96836-2911', '', 'BRANCO', '18/12/2021', ''),
(50, 'Pai Rogério', 'DEZEMBRO', '1999300-6213', '', 'MENINGITES', '20/12/2021', ''),
(51, 'JULIANA', 'DEZEMBRO', '11970218287', '', 'BRANCO', '25/12/2021', ''),
(52, 'HHHHHHHHHH', 'DEZEMBRO', '11 98906-6976', '', '2 A 6 MESES', '25/12/2021', ''),
(53, 'PAULA SOUZA', 'DEZEMBRO', '11 98478-3891', 'Bebê HELENA', '2 A 6 MESES', '31/12/2021', ''),
(54, 'Papai Felipe Padovani', 'DEZEMBRO', '11 97514-8239', '', '2 A 12 MESES', '01/01/2022', ''),
(55, 'LILIAN', 'DEZEMBRO', '11 98953-1757', '', 'BRANCO', '06/01/2022', ''),
(56, 'DAIANE', 'DEZEMBRO', '(11) 98896-1767', '', '2 A 6 MESES', '08/01/2022', ''),
(57, 'xx', 'JANEIRO', 'xx', '', 'BRANCO', '13/01/2022', ''),
(58, 'PATRÍCIA', 'JANEIRO', '(11)97618-6022', 'BEBÊ HENRIQUE', '2 A 6 MESES', '13/01/2022', ''),
(59, 'MARIA FERNANDA', 'JANEIRO', '(11)96866-5129', 'MARIA AMÁLIA ', '2 A 6 MESES', '16/01/2022', ''),
(60, 'GISELE', 'JANEIRO', '(11)98400-6684', '', '2 A 6 MESES', '20/01/2022', ''),
(61, 'RAMAIANE', 'JANEIRO', '(11)98761-7963', '', '2 A 6 MESES', '20/01/2022', ''),
(62, 'SR RICARDO', 'JANEIRO', '', '', 'BRANCO', '20/01/2022', ''),
(63, 'SARAH HELENA', 'JANEIRO', ' 11 94785-4214', '', '2 A 6 MESES', '29/01/2022', ''),
(64, 'regina lucia ramos ribeiro fernandes', '01', '11956577111', 'thiago_rfernandes@hotmail.com', '2 A 6 MESES', '04/02/2022', ''),
(65, '', '', '', '', 'BRANCO', '04/02/2022', ''),
(66, 'ANGELA', 'JANEIRO', '(11)99990-9258', '', '2 A 6 MESES', '10/02/2022', ''),
(67, 'Sara', 'Janeiro', '11 99833-1108', '', '2 A 6 MESES', '10/02/2022', ''),
(68, 'sara', '', '', '', '2 A 6 MESES', '10/02/2022', ''),
(69, 'Papai Carlos', 'Fevereiro/2022', '(19)98181-6697', '', '2 A 6 MESES', '11/02/2022', ''),
(70, 'Papai Adenilson', 'Fevereiro 2022', '19 99267-7249', '', '2 A 6 MESES', '11/02/2022', ''),
(71, '', '', '', '', 'BRANCO', '13/02/2022', ''),
(72, 'LUCIANA CAMPOS', 'Fevereiro/2022', '98349-7299', '', '2 A 6 MESES', '15/02/2022', ''),
(73, 'Priscila', 'Fevereiro/2022', '(11)98403-8914', '', '2 A 6 MESES', '17/02/2022', ''),
(74, 'CARLINHA', 'Fevereiro/2022', '(11)95906-3100', '', '2 A 6 MESES', '17/02/2022', ''),
(75, 'CAMILA RAFAELA DE GODOY ARAUJO', 'FEVEIREIRO', '(11) 959179550', '', '2 A 6 MESES', '19/02/2022', ''),
(76, 'Anna Júlia Santos', 'Fevereiro/2022', '(11)99851-4109', '', '2 A 6 MESES', '21/02/2022', ''),
(77, 'EGLY', 'Fevereiro/2022', '(11)94105-8154', '', '2 A 6 MESES', '24/02/2022', ''),
(78, 'GÉSSICA', 'FEVEREIRO/2022', '(11)98692-6405', '', '9 A 18 MESES', '26/02/2022', ''),
(79, 'Vanessa Beatriz', '22/02/2022', '', '', '2 A 6 MESES', '04/03/2022', ''),
(80, 'Vanessa Beatriz', '22/02/2022', '', '', '9 A 18 MESES', '04/03/2022', ''),
(81, '', '', '', '', 'MENINGITES', '06/03/2022', ''),
(82, '', '', '', '', 'BRANCO', '06/03/2022', ''),
(83, '', '', '', '', 'MENINGITES', '08/03/2022', ''),
(84, 'Rayra', '04/03/2022', '11974198545', '', 'BRANCO', '19/03/2022', ''),
(85, 'Rayra', '04/03/2022', '11974198545', '', '2 A 12 MESES', '19/03/2022', ''),
(86, 'Francieli Giertyas', '03', '11 93023-5102', '', 'MENINGITES', '14/03/2022', ''),
(87, 'Francieli Giertyas', '03', '11 93023-5102', '', '2 A 6 MESES', '14/03/2022', ''),
(88, '', '', '', '', '9 A 18 MESES', '19/03/2022', ''),
(89, '', '', '', '', '2 A 6 MESES', '19/03/2022', ''),
(90, '', '', '', '', '9 A 18 MESES', '20/03/2022', ''),
(91, 'Luciana', '14/03/2022', '', '', '2 A 6 MESES', '24/03/2022', ''),
(92, '', '', '', '', '2 A 6 MESES', '26/03/2022', ''),
(93, '', '', '', '', '2 A 6 MESES', '27/03/2022', ''),
(94, '', '', '', '', '9 A 18 MESES', '27/03/2022', ''),
(95, '', '', '', '', '2 A 6 MESES', '27/03/2022', ''),
(96, 'Isabella/Catarina /Juliana', '17/03', '', '', '2 A 6 MESES', '27/03/2022', ''),
(97, 'MIRELA EVELYN', '18/03', '', '', '9 A 18 MESES', '28/03/2022', ''),
(98, '', '', '', '', '2 A 6 MESES', '28/03/2022', ''),
(99, '', '', '', '', 'MENINGITES', '28/03/2022', ''),
(100, '', '', '', '', '2 A 6 MESES', '31/03/2022', ''),
(101, '', '', '', '', '2 A 6 MESES', '08/04/2022', ''),
(102, 'Karina', '05/04/2022', '11 97504-3687', '', 'BRANCO', '15/04/2022', ''),
(103, '', 'ABRIL/2022', '11 98200-4641', '', '2 A 12 MESES', '21/04/2022', ''),
(104, 'Mayra', 'Abril/2022', '(11) 98666-7181', '', '9 A 18 MESES', '24/04/2022', ''),
(105, 'RUBIA MINELLI', '26/04/2022', '(11) 97989-3541', '', '9 A 18 MESES', '06/05/2022', ''),
(106, 'JULIANA', '27/04/2022', '(11) 99605-3656', '', '2 A 6 MESES', '07/05/2022', ''),
(107, 'NATHÁLIA', '19/05/2022', '11 99654-8710', '', '2 A 6 MESES', '29/05/2022', ''),
(108, 'ELINE FERREIRA', '30/05/2022', '(11) 99824-3399', '', '2 A 6 MESES', '09/06/2022', ''),
(109, 'NANCI AVO', '01/06/2022', '(11) 99525-0055', '', '2 A 6 MESES', '11/06/2022', ''),
(110, '', '', '', '', '2 A 6 MESES', '01/07/2022', ''),
(111, '', '', '', '', '2 A 12 MESES', '01/07/2022', ''),
(112, '', '', '', '', '9 A 18 MESES', '01/07/2022', ''),
(113, '', '', '', '', 'HPV', '01/07/2022', ''),
(114, '', '', '', '', 'MENINGITES', '01/07/2022', ''),
(115, 'DEBORA CAROLINE', '21/06/2022', '(11)97678-3737', 'deboracaroline.oliveira2019@gmail.com', '2 A 6 MESES', '01/07/2022', ''),
(116, 'PAMELLA', '30/06/2022', '(11)98643-9995', '', '2 A 6 MESES', '09/07/2022', ''),
(117, 'Mayra/Rafael Boff', '04/04/2022', '11 97348-7943', '', '2 A 6 MESES', '14/07/2022', ''),
(118, 'Jéssica Prodocio', '11/07/2022', '(11)98442-4979', '', '2 A 6 MESES', '21/07/2022', ''),
(119, 'Bruna', '12/07/2022', '11 97516-7526', '', '2 A 6 MESES', '22/07/2022', ''),
(120, '', '', '', '', '2 A 6 MESES', '22/07/2022', ''),
(121, 'NATÁLIA CASARINI', '13/07/2022', '18 99727-1076', '', '2 A 6 MESES', '23/07/2022', ''),
(122, 'Edinete Rufino da Silva', 'Outubro', '11953704921', 'fabricio.amorim@vacivitta.com.br', '2 A 6 MESES', '03/08/2022', ''),
(123, 'ANDRÉA CONRADO', '26/07/2022', '11 99851-9503', '', '2 A 6 MESES', '05/08/2022', ''),
(124, 'DANIELA', '27/07/2022', '11 99560-7154', '', '2 A 6 MESES', '06/08/2022', ''),
(125, 'DANIELA', '27/07/2022', '11 99560-7154', '', '9 A 18 MESES', '06/08/2022', ''),
(126, 'DANIELA', '27/07/2022', '11 99560-7154', '', '2 A 12 MESES', '06/08/2022', ''),
(127, 'JESSICA', '28/07/2022', '', '', '2 A 6 MESES', '07/08/2022', ''),
(128, 'Isabella Bergamo', '28/07/2022', '11 97231-3848', '', '2 A 6 MESES', '07/08/2022', ''),
(129, 'Isabella Bergamo', '28/07/2022', '11 97231-3848', '', '2 A 12 MESES', '07/08/2022', ''),
(130, 'Pai: Gustavo Padovani', '28/07/2022', '11 97401-7444', '', '2 A 6 MESES', '07/08/2022', ''),
(131, 'Pai: Gustavo Padovani', '28/07/2022', '11 97401-7444', '', '2 A 12 MESES', '07/08/2022', ''),
(132, 'Vacivitta', '', '', '', '2 A 6 MESES', '07/08/2022', ''),
(133, 'Vacivitta', '', '', '', '2 A 12 MESES', '07/08/2022', ''),
(134, 'VACIVITTA', '', '', '', '9 A 18 MESES', '07/08/2022', ''),
(135, 'Luciana - Helena Sophia', '29/07/2022', '(15) 99622-0305', '', '2 A 6 MESES', '08/08/2022', ''),
(136, 'Crislaine - Lorena Omodei', '29/07/2022', '(11) 97223-4235', '', '2 A 6 MESES', '08/08/2022', ''),
(137, 'Rosemeire/Vinicius', '29/07/2022', '(11)973574439', '', '2 A 6 MESES', '08/08/2022', ''),
(138, 'Silvia - Leonardo de Quadros', '29/07/2022', '(11) 99847-7407', '', '2 A 6 MESES', '08/08/2022', ''),
(139, 'Camila - Clara Gianotto', '29/07/2022', '(11) 95302-5541', '', '2 A 6 MESES', '08/08/2022', ''),
(140, '', '', '', '', '9 A 18 MESES', '11/08/2022', ''),
(141, '', '', '', '', '9 A 18 MESES', '14/08/2022', ''),
(142, '', '', '', '', '2 A 6 MESES', '19/08/2022', ''),
(143, 'Maria Alice', '12/08/2022', '', '', '2 A 6 MESES', '22/08/2022', ''),
(144, '', '', '', '', '9 A 18 MESES', '22/08/2022', ''),
(145, '', '', '', '', 'HPV', '28/08/2022', ''),
(146, '', '', '', '', 'BRANCO', '28/08/2022', ''),
(147, '', '', '', '', '2 A 6 MESES', '28/08/2022', ''),
(148, '', '', '', '', 'MENINGITES', '01/09/2022', ''),
(149, '', '', '', '', '9 A 18 MESES', '02/09/2022', ''),
(150, '', '', '', '', '2 A 6 MESES', '04/09/2022', ''),
(151, 'CILEIA', '25/08/2022', '11 99575-8389', '', '2 A 12 MESES', '04/09/2022', ''),
(152, '', '', '', '', '9 A 18 MESES', '05/09/2022', ''),
(153, 'Marta Saccaro', '08/2022', '11995109735', '', '2 A 12 MESES', '08/09/2022', ''),
(154, 'Marta Saccaro', '08', '+55 11 99510-9735', '', '2 A 12 MESES', '08/09/2022', ''),
(155, 'Lais', '08', '+55 11 98939-8657', '', '2 A 12 MESES', '09/09/2022', ''),
(156, 'Julia Scivittaro', '08', '+55 11 97261-7579', '', '2 A 12 MESES', '09/09/2022', ''),
(157, 'Paola ', '', '11976384350', '', '2 A 6 MESES', '10/09/2022', ''),
(158, 'Júlia', 'Agosto', '11 97261-7579', '', 'BRANCO', '12/09/2022', ''),
(159, 'Isabella Mattar', 'Setembro', '11 95082-5090', '', 'MENINGITES', '15/09/2022', ''),
(160, '', '', '', '', 'MENINGITES', '16/09/2022', ''),
(161, 'Jéssica Milani', '09', '+55 11 97200-5892', '', '2 A 12 MESES', '22/09/2022', ''),
(162, 'Tiago Azzoni', '09', '+55 11 98345-6472', '', '2 A 6 MESES', '22/09/2022', ''),
(163, '', '', '', '', 'MENINGITES', '22/09/2022', ''),
(164, 'Zuzanna', '', '199923522447', '', 'MENINGITES', '23/09/2022', ''),
(165, 'Lidiane dos Santos Soares', '', '11974079187', '', '2 A 12 MESES', '23/09/2022', ''),
(166, 'Dani', '', '+55 11 95176-8317', '', '2 A 6 MESES', '26/09/2022', ''),
(167, 'Thamires Del Barco', '09', '+55 11 99859-6279', '', '2 A 12 MESES', '26/09/2022', ''),
(168, '', '', '', '', 'MENINGITES', '30/09/2022', ''),
(169, 'Luiz Phelipe', '', '+55 11 99618-5502', '', '2 A 12 MESES', '01/10/2022', ''),
(170, 'Bruna Wevellyn', '09', '+55 11 99779-0961', '', '2 A 12 MESES', '01/10/2022', ''),
(171, 'Simone', '09', '+55 11 95556-2109', '', '9 A 18 MESES', '02/10/2022', ''),
(172, 'Simone', '09', '+55 11 95556-2109', '', '2 A 12 MESES', '02/10/2022', ''),
(173, 'Simone', '09', '+55 11 95556-2109', '', '2 A 6 MESES', '02/10/2022', ''),
(174, 'Simone', '09', '+55 11 95556-2109', '', '9 A 18 MESES', '02/10/2022', ''),
(175, 'Danielle', '09', '+55 11 98261-8634', '', '2 A 6 MESES', '03/10/2022', ''),
(176, '', '', '', '', 'HPV', '07/10/2022', ''),
(177, 'Cintia', '09', '19982207093', '', '2 A 12 MESES', '10/10/2022', ''),
(178, 'Cintia', '09', '19982207093', '', '2 A 6 MESES', '10/10/2022', ''),
(179, '', '10', '+55 11 99669-8298 Paulo', '', '2 A 6 MESES', '13/10/2022', ''),
(180, '', '10', '+55 11 99669-8298 Paulo', '', '2 A 12 MESES', '13/10/2022', ''),
(181, '', '10', '11963512203 - Marlon ', '', '2 A 6 MESES', '15/10/2022', ''),
(182, 'Patricia', '', '11976186022', '', '9 A 18 MESES', '29/10/2022', ''),
(183, 'Giovana', '11', '11974186900', '', '2 A 6 MESES', '11/11/2022', ''),
(184, 'Edinete Rufino da Silva', 'Dezembro', '11 953704921', 'oggimrm@gmail.com', '2 A 6 MESES', '08/12/2022', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade_santos`
--

CREATE TABLE `unidade_santos` (
  `id` int(11) NOT NULL,
  `nome` varchar(300) NOT NULL,
  `mes` varchar(300) NOT NULL,
  `contato` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `validade` varchar(300) NOT NULL,
  `desconto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `unidade_santos`
--

INSERT INTO `unidade_santos` (`id`, `nome`, `mes`, `contato`, `email`, `pacote`, `validade`, `desconto`) VALUES
(1, '', '', '', '', 'MENINGITES', '14/08/2022', ''),
(2, '', '', '', '', 'BRANCO', '14/08/2022', ''),
(3, 'Débora', '08', '', '', '9 A 18 MESES', '20/08/2022', ''),
(4, 'Débora', '', '', '', 'BRANCO', '15/08/2022', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade_vilamariana`
--

CREATE TABLE `unidade_vilamariana` (
  `id` int(11) NOT NULL,
  `nome` varchar(300) NOT NULL,
  `mes` varchar(300) NOT NULL,
  `contato` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `pacote` varchar(300) NOT NULL,
  `validade` varchar(300) NOT NULL,
  `desconto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `email` varchar(520) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `niveis_acesso_id` varchar(300) NOT NULL,
  `unidade_acesso` varchar(300) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `niveis_acesso_id`, `unidade_acesso`, `created`, `modified`) VALUES
(11, 'Administrador Vacivitta Indaiatuba', 'indaiatuba.adm', '45e9c792c36956bc76ae23c05a7c4cf0', '2', 'indaiatuba', '2021-09-20 02:02:06', '2021-09-20 02:02:06'),
(12, 'Vacivitta Salto', 'salto', 'c35a4efd948f13b12147622fbd41285d', 'salto', 'salto', '2021-10-08 03:32:15', '2021-10-08 03:32:15'),
(13, 'Vacivitta Itu', 'itu', 'c35a4efd948f13b12147622fbd41285d', 'itu', 'itu', '2021-10-08 03:32:15', '2021-10-08 03:32:15'),
(14, 'Vacivitta Indaiatuba', 'indaiatuba', 'c35a4efd948f13b12147622fbd41285d', 'indaiatuba', 'indaiatuba', '2021-10-08 03:32:15', '2021-10-08 03:32:15'),
(18, 'Administrador Vacivitta Jundiaí', 'jundiai.adm', '45e9c792c36956bc76ae23c05a7c4cf0', '2', 'jundiai', '2021-10-08 03:32:15', '2021-10-08 03:32:15'),
(19, 'Vacivitta Jundiaí', 'jundiai', 'c35a4efd948f13b12147622fbd41285d', 'jundiai', 'jundiai', '2021-10-11 13:47:01', NULL),
(20, 'Master', 'master', 'c35a4efd948f13b12147622fbd41285d', '1', '', '2021-09-20 02:02:06', '2021-09-20 02:02:06'),
(21, 'Administrador Vacivitta Barra da Tijuca', 'barra.adm', '202cb962ac59075b964b07152d234b70', '2', 'barra', '2021-10-11 15:13:53', NULL),
(22, 'Administrador Vacivitta Salto', 'salto.adm', '45e9c792c36956bc76ae23c05a7c4cf0', '2', 'salto', '2021-10-14 16:11:59', NULL),
(23, 'Administrador Vacivitta Itu', 'itu.adm', 'c35a4efd948f13b12147622fbd41285d', '2', 'itu', '2021-10-14 16:13:33', NULL),
(24, 'Vacivitta Barra da Tijuca', 'barra', 'c35a4efd948f13b12147622fbd41285d', 'barra', 'barra', '2021-10-14 17:10:09', NULL),
(25, 'Administrador Vacivitta Itanhaém', 'itanhaem.adm', '04dde2e263466f600566f65809329b65', '2', 'itanhaem', '2021-10-14 17:11:14', NULL),
(26, 'Vacivitta Itanhaém', 'itanhaem', 'c35a4efd948f13b12147622fbd41285d', 'itanhaem', 'itanhaem', '2021-10-14 17:11:42', NULL),
(27, 'Administrador Vacivitta Dois Vizinhos', 'doisvizinhos.adm', '45e9c792c36956bc76ae23c05a7c4cf0', '2', 'doisvizinhos', '2021-10-14 17:12:34', NULL),
(28, 'Vacivitta Dois Vizinhos', 'doisvizinhos', 'c35a4efd948f13b12147622fbd41285d', 'doisvizinhos', 'doisvizinhos', '2021-10-14 17:12:59', NULL),
(29, 'Administrador Vacivitta Moema', 'moema.adm', '45e9c792c36956bc76ae23c05a7c4cf0', '2', 'moema', '2021-10-14 17:13:43', NULL),
(30, 'Vacivitta Moema', 'moema', 'c35a4efd948f13b12147622fbd41285d', 'moema', 'moema', '2021-10-14 17:14:02', NULL),
(31, 'Administrador Vacivitta Vila Mariana', 'vilamariana.adm', '45e9c792c36956bc76ae23c05a7c4cf0', '2', 'vilamariana', '2021-10-14 17:14:49', NULL),
(32, 'Vacivitta Vila Mariana', 'vilamariana', 'c35a4efd948f13b12147622fbd41285d', 'vilamariana', 'vilamariana', '2021-10-14 17:15:11', NULL),
(33, 'Administrador Vacivitta Campinas', 'campinas.adm', '45e9c792c36956bc76ae23c05a7c4cf0', '2', 'campinas', '2021-10-14 17:16:14', NULL),
(34, 'Vacivitta Campinas', 'campinas', 'c35a4efd948f13b12147622fbd41285d', 'campinas', 'campinas', '2021-10-14 17:16:39', NULL),
(35, 'Administrador Vacivitta Bertioga', 'bertioga.adm', '45e9c792c36956bc76ae23c05a7c4cf0', '2', 'bertioga', '2021-10-14 17:17:24', NULL),
(36, 'Vacivitta Bertioga', 'bertioga', 'c35a4efd948f13b12147622fbd41285d', 'bertioga', 'bertioga', '2021-10-14 17:17:47', NULL),
(37, 'Administrador Vacivitta Santos', 'santos.adm', '45e9c792c36956bc76ae23c05a7c4cf0', '2', 'santos', '2021-10-14 17:19:26', NULL),
(38, 'Vacivitta Santos', 'santos', 'c35a4efd948f13b12147622fbd41285d', 'santos', 'santos', '2021-10-14 17:19:53', NULL),
(39, 'Laudo', 'laudo', 'c35a4efd948f13b12147622fbd41285d', 'laudo', 'laudo', '2021-10-08 03:32:15', '2021-10-08 03:32:15'),
(40, 'Comercial', 'comercial', 'c35a4efd948f13b12147622fbd41285d', 'comercial', 'comercial', '2021-10-08 03:32:15', '2021-10-08 03:32:15'),
(41, 'Unidade Barra da Tijuca', 'barradatijuca', '01768f3cc73c597b053c7d9dec7ad964', 'barra', 'barra', '2022-01-17 10:02:13', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `config_barra`
--
ALTER TABLE `config_barra`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `config_bertioga`
--
ALTER TABLE `config_bertioga`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `config_campinas`
--
ALTER TABLE `config_campinas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `config_doisvizinhos`
--
ALTER TABLE `config_doisvizinhos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `config_indaiatuba`
--
ALTER TABLE `config_indaiatuba`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `config_itanhaem`
--
ALTER TABLE `config_itanhaem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `config_itu`
--
ALTER TABLE `config_itu`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `config_jundiai`
--
ALTER TABLE `config_jundiai`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `config_moema`
--
ALTER TABLE `config_moema`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `config_salto`
--
ALTER TABLE `config_salto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `config_santos`
--
ALTER TABLE `config_santos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `config_vilamariana`
--
ALTER TABLE `config_vilamariana`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `unidade_barra`
--
ALTER TABLE `unidade_barra`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `unidade_bertioga`
--
ALTER TABLE `unidade_bertioga`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `unidade_campinas`
--
ALTER TABLE `unidade_campinas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `unidade_doisvizinhos`
--
ALTER TABLE `unidade_doisvizinhos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `unidade_indaiatuba`
--
ALTER TABLE `unidade_indaiatuba`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `unidade_itanhaem`
--
ALTER TABLE `unidade_itanhaem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `unidade_itu`
--
ALTER TABLE `unidade_itu`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `unidade_jundiai`
--
ALTER TABLE `unidade_jundiai`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `unidade_moema`
--
ALTER TABLE `unidade_moema`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `unidade_salto`
--
ALTER TABLE `unidade_salto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `unidade_santos`
--
ALTER TABLE `unidade_santos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `unidade_vilamariana`
--
ALTER TABLE `unidade_vilamariana`
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
-- AUTO_INCREMENT de tabela `config_barra`
--
ALTER TABLE `config_barra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `config_bertioga`
--
ALTER TABLE `config_bertioga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `config_campinas`
--
ALTER TABLE `config_campinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `config_doisvizinhos`
--
ALTER TABLE `config_doisvizinhos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `config_indaiatuba`
--
ALTER TABLE `config_indaiatuba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `config_itanhaem`
--
ALTER TABLE `config_itanhaem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `config_itu`
--
ALTER TABLE `config_itu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `config_jundiai`
--
ALTER TABLE `config_jundiai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `config_moema`
--
ALTER TABLE `config_moema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `config_salto`
--
ALTER TABLE `config_salto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `config_santos`
--
ALTER TABLE `config_santos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `config_vilamariana`
--
ALTER TABLE `config_vilamariana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `unidade_barra`
--
ALTER TABLE `unidade_barra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `unidade_bertioga`
--
ALTER TABLE `unidade_bertioga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `unidade_campinas`
--
ALTER TABLE `unidade_campinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `unidade_doisvizinhos`
--
ALTER TABLE `unidade_doisvizinhos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `unidade_indaiatuba`
--
ALTER TABLE `unidade_indaiatuba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `unidade_itanhaem`
--
ALTER TABLE `unidade_itanhaem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `unidade_itu`
--
ALTER TABLE `unidade_itu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT de tabela `unidade_jundiai`
--
ALTER TABLE `unidade_jundiai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `unidade_moema`
--
ALTER TABLE `unidade_moema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `unidade_salto`
--
ALTER TABLE `unidade_salto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT de tabela `unidade_santos`
--
ALTER TABLE `unidade_santos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `unidade_vilamariana`
--
ALTER TABLE `unidade_vilamariana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
