-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 12/12/2023 às 12:42
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `clinica_`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `Auxiliares`
--

CREATE TABLE `Auxiliares` (
  `id` int(11) NOT NULL,
  `formaçao` text NOT NULL,
  `nome` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `Auxiliares`
--

INSERT INTO `Auxiliares` (`id`, `formaçao`, `nome`) VALUES
(1, 'téc. enfermagem', 'Kelvin da Silva'),
(2, 'Téc. Enfermagem', 'Cecília Vieira'),
(3, 'Téc enfermagem', 'Paulina Bezerra'),
(4, 'Téc. Enfermagem', 'Ferdinando Alencar '),
(5, 'Téc.  Enfermagem', 'Olavo Bilac'),
(6, 'Téc. Enfermagem', 'Fernando Mingau'),
(7, 'Tec Enfermagem', 'Luís Tavares'),
(8, 'Tec Enfermagem', 'Mila Nunes'),
(9, 'Tec Enfermagem', 'Menezes Soares'),
(10, 'Tec Enfermagem', 'Ludmilla Soares');

-- --------------------------------------------------------

--
-- Estrutura para tabela `auxiliares_cadastro`
--

CREATE TABLE `auxiliares_cadastro` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `formacao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `auxiliares_cadastro`
--

INSERT INTO `auxiliares_cadastro` (`id`, `nome`, `formacao`) VALUES
(1, 'fgh5', 'h5yt');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro_dentista`
--

CREATE TABLE `cadastro_dentista` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `formacao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastro_dentista`
--

INSERT INTO `cadastro_dentista` (`id`, `nome`, `sobrenome`, `email`, `formacao`) VALUES
(1, '', '', '', ''),
(2, '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `destistas`
--

CREATE TABLE `destistas` (
  `id` int(11) NOT NULL,
  `atuacao` text NOT NULL,
  `horario` text NOT NULL,
  `nome` text NOT NULL,
  `mestre_em` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `destistas`
--

INSERT INTO `destistas` (`id`, `atuacao`, `horario`, `nome`, `mestre_em`) VALUES
(1, 'Odontologia Geral', '14h às 16h', 'Keli Fragoso', 'Saúde Coletiva'),
(2, 'Odontopediatria', '9h às 15h', 'Geilson torres', 'Ortodontia'),
(3, 'Harmonização Orofacial', '16h da tarde às 19h da noite', 'Ceilia Torres', 'Cirurgia e Traumatologia Bucomaxilofacial'),
(4, 'Dentística ', '8h da manhã às 12h da tarde', 'Bernardo Torres', 'Implantondontia'),
(5, 'Endodontia', '8h da manhã às 13h da tarde', 'Carlos Daniel Bracho', 'Prótese Dentária'),
(6, 'Odontologia Estética', '16h da manhã às 18h da noite', 'Celestina da Silva', 'Disfunção Temporomandibular'),
(7, 'Patologia Oral e Maxilo Facial', '18h da noite às 21h da noite', 'Flavio Menezes', 'Dentística '),
(8, 'Cirurgião Dentista', '14h da tarde às 18 da noite', 'Elysson do Vale', 'Cursando '),
(9, 'Implantodotia', '9h da manhã as 16h da tarde', 'Maria José da Luz', 'Saúde Coletiva'),
(10, 'Protese Bucomaxilofacial', '9h da manhã as 15h da tarde ', 'Erica Menezes', 'cursando');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `Auxiliares`
--
ALTER TABLE `Auxiliares`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `auxiliares_cadastro`
--
ALTER TABLE `auxiliares_cadastro`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cadastro_dentista`
--
ALTER TABLE `cadastro_dentista`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `destistas`
--
ALTER TABLE `destistas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Auxiliares`
--
ALTER TABLE `Auxiliares`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `auxiliares_cadastro`
--
ALTER TABLE `auxiliares_cadastro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cadastro_dentista`
--
ALTER TABLE `cadastro_dentista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `destistas`
--
ALTER TABLE `destistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
