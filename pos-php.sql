-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 16/04/2015 às 09:04
-- Versão do servidor: 5.6.23-1~exp1~ubuntu5
-- Versão do PHP: 5.6.4-4ubuntu5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `pos-php`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `invoices`
--

CREATE TABLE IF NOT EXISTS `invoices` (
`invoice_id` int(11) NOT NULL,
  `invoice_user_id` int(11) NOT NULL,
  `invoice_address` text COLLATE utf8_unicode_ci NOT NULL,
  `invoice_fiat` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_fiat_value` text COLLATE utf8_unicode_ci NOT NULL,
  `invoice_btc_value` text COLLATE utf8_unicode_ci NOT NULL,
  `invoice_paid` int(1) NOT NULL,
  `invoice_date` text COLLATE utf8_unicode_ci NOT NULL,
  `invoice_date_expiry` text COLLATE utf8_unicode_ci NOT NULL,
  `invoice_note` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `user_type` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(120) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `invoices`
--
ALTER TABLE `invoices`
 ADD PRIMARY KEY (`invoice_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `invoices`
--
ALTER TABLE `invoices`
MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
