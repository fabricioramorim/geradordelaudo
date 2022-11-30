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
(1, '10', '10', 'Vacivitta', '200022', 'Fabricio', '11953', 'webmaster@teste.com.br', '11233', 'Salto', 'Fabricio'),
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
(1, '2 A 6 MESES', '4670', '', '5', 'Rua Teste Constant, 000 – Centro - Maringá/SP', '(11) 0000-7060', '(11) 0000-7060', '@teste.teste');

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
(1, 'Fulano Silva', '12345678989', '19/08/1898', 'Swab de nasofaringe', '2021-10-30', '22:01', '1', 'AdvaGen', 'Ac2180', '2021-10-30', '0185442', 'webmaster@email.com.br');
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
(1, 'Fulano Silva', 'Outubro', '11953704921', 'fulano@email.com.br', '2 A 6 MESES', '01/02/2022', '');

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
(1, '', '', '', '', 'BRANCO', '26/05/2022', '');
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
(1, 'Fulano R Silva', 'Dezembro', '11 953704921', 'email@gmail.com', '2 A 12 MESES', '23/10/2021', '');

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
(1, 'Fulano Silva', 'Agosto', '11953704921', 'fulano@email.com', '2 A 6 MESES', '08/02/2022', '');

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
(1, 'Fulano R Silva', 'Dezembro', '11 953704921', 'email@email.com', '2 A 6 MESES', '18/10/2021', '');

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
(1, '', '', '', '', '2 A 12 MESES', '21/10/2021', '');


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
(1, '', '', '', '', 'BRANCO', '14/05/2022', '');


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
(25, 'Fulano R Silva', 'Dezembro', '11 0000-0000', 'email@email.com', '2 A 6 MESES', '18/10/2021', '');

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
(1, '', '', '', '', 'MENINGITES', '14/08/2022', '');

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
(1, 'Laudo', 'laudo', 'c35a4efd948f13b12147622fbd41285d', 'laudo', 'laudo', '2021-10-08 03:32:15', '2021-10-08 03:32:15');

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
