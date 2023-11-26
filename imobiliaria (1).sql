-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Nov-2023 às 01:47
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imobiliaria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `imoveis`
--

CREATE TABLE `imoveis` (
  `Id_imovel` int(11) NOT NULL,
  `Desc_imovel` varchar(150) NOT NULL,
  `preco_imovel` float NOT NULL,
  `Logradouro_imovel` varchar(150) NOT NULL,
  `Cidade_imovel` varchar(150) NOT NULL,
  `Estado_imovel` varchar(150) NOT NULL,
  `Bairro_imovel` varchar(150) NOT NULL,
  `Cep_imovel` int(11) NOT NULL,
  `Imagem` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `imoveis`
--

INSERT INTO `imoveis` (`Id_imovel`, `Desc_imovel`, `preco_imovel`, `Logradouro_imovel`, `Cidade_imovel`, `Estado_imovel`, `Bairro_imovel`, `Cep_imovel`, `Imagem`) VALUES
(7, 'Residencial Vila Ema', 250000, 'R. Uhland, 69', 'São Paulo', 'SP', 'Vila Ema', 3283000, '7_Vila Ema.jpeg'),
(8, 'Residencial Vila das Belezas', 150000, 'Rua Tenente Isaías Branco de Araújo, 325', 'São Paulo', 'SP', 'Vila das Belezas', 5841150, '8_Vila das Belezas.jpeg'),
(9, 'Residencial Urupema', 200000, 'Rua Eulina Rosa dos Santos', 'Mogi das Cruzes', 'SP', 'Vila Municipal', 8747010, '9_Urupema.jpeg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `nome` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `senha`, `nome`) VALUES
(1, 'THALLYS', '123', 'THALLYS VINICIUS'),
(2, 'JOAO', '1234', 'João Victor'),
(3, 'HILLARY', '123', 'Hillary Mie'),
(4, 'MATHEUS', '123', 'Matheus Silva');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `imoveis`
--
ALTER TABLE `imoveis`
  ADD PRIMARY KEY (`Id_imovel`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `imoveis`
--
ALTER TABLE `imoveis`
  MODIFY `Id_imovel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
