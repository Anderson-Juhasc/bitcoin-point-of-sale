-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 19/05/2015 às 23:07
-- Versão do servidor: 5.6.24-0ubuntu2
-- Versão do PHP: 5.6.4-4ubuntu6

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
-- Estrutura para tabela `config`
--

CREATE TABLE IF NOT EXISTS `config` (
`config_id` int(11) NOT NULL,
  `config_site_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_currency` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `config_address` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `config`
--

INSERT INTO `config` (`config_id`, `config_site_title`, `config_currency`, `config_address`) VALUES
(1, 'Point of Sale', 'USD', '19UvhEdjQbhnJrUtDcMLvpRN5nk3axBAJu');

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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `invoices`
--

INSERT INTO `invoices` (`invoice_id`, `invoice_user_id`, `invoice_address`, `invoice_fiat`, `invoice_fiat_value`, `invoice_btc_value`, `invoice_paid`, `invoice_date`, `invoice_date_expiry`, `invoice_note`) VALUES
(60, 1, '1P79cQoEUJY9JeuWoEQTb4YTBbNGqjLrfc', 'BRL', '565.00', '0.81034983', 0, 'Sun Apr 19 2015 02:22:33 -0300', 'Sun Apr 19 2015 02:37:33 -0300', ''),
(61, 1, '1A4jcPFCnvjy1fk1QHRypGKQuuT8spDZZq', 'EUR', '10.00', '0.04828996', 0, 'Sun Apr 19 2015 02:40:29 -0300', 'Sun Apr 19 2015 02:55:29 -0300', ''),
(62, 1, '1AdH9ZCuCXFjA5PB3YAR32xLa3UMPCTACJ', 'BRL', '680.02', '0.97540413', 0, 'Sun Apr 19 2015 02:42:46 -0300', 'Sun Apr 19 2015 02:57:46 -0300', ''),
(63, 1, '13JbBmfjJQiWAv8RH6qz8uk6UJf7TXgLsR', 'EUR', '89.00', '0.41589983', 0, 'Sun Apr 19 2015 11:37:53 -0300', 'Sun Apr 19 2015 11:52:53 -0300', ''),
(64, 1, '1BGmkXssxgCWAYry3z7y2dWpQ4mmpqeUAe', 'EUR', '89.00', '0.41589983', 0, 'Sun Apr 19 2015 11:37:56 -0300', 'Sun Apr 19 2015 11:52:56 -0300', ''),
(65, 1, '1WFvQR2TXtWNtdtU98hgLCmRNyPAdwQVV', 'BRL', '0.40', '0.00058435', 0, 'Sun Apr 19 2015 12:47:53 -0300', 'Sun Apr 19 2015 13:02:53 -0300', ''),
(66, 1, '1Hd74pWJ62aSxPBELiU3sezkCXY2KerDW1', 'BRL', '100.00', '0.14359797', 0, 'Sun Apr 19 2015 16:29:45 -0300', 'Sun Apr 19 2015 16:44:45 -0300', ''),
(67, 1, '1HnKvWz5LJfCB1SgHa6kLLrHVCtUNwHbPW', 'BRL', '212.00', '0.31075731', 0, 'Tue Apr 21 2015 12:40:21 -0300', 'Tue Apr 21 2015 12:55:21 -0300', ''),
(68, 1, '14FAbpLTyZqVw3GTUWjjkNcvcu5kW4chDr', 'EUR', '102.00', '0.48354388', 0, 'Tue Apr 21 2015 16:17:00 -0300', 'Tue Apr 21 2015 16:32:00 -0300', ''),
(69, 1, '1NnTwceAzHerUdTHQnDgUG62uaSjiwYX7h', 'BRL', '12.00', '0.01728079', 0, 'Sat Apr 25 2015 16:15:41 -0300', 'Sat Apr 25 2015 16:30:41 -0300', ''),
(70, 1, '17NmRT84qF6uWox6FXy1U4N1Jni2YSx4Xc', 'BRL', '100.00', '0.14499509', 0, 'Sat Apr 25 2015 18:17:07 -0300', 'Sat Apr 25 2015 18:32:07 -0300', ''),
(71, 1, '1bwtcUyscNZeSyBQfFexrCgaWccdE3Pkq', 'EUR', '10.00', '', 0, 'Sat Apr 25 2015 20:18:39 -0300', 'Sat Apr 25 2015 20:33:39 -0300', ''),
(72, 1, '1CDvHBG4eB3y4oxsHS96VyHeJtKWB2fYQd', 'EUR', '12.00', '', 0, 'Sat Apr 25 2015 20:19:51 -0300', 'Sat Apr 25 2015 20:34:51 -0300', ''),
(73, 1, '1EPDrFa6r6ZAXuVwcjqRDf52E6Q9SSmmed', 'BRL', '213.00', '0.31020622', 0, 'Sat Apr 25 2015 20:21:44 -0300', 'Sat Apr 25 2015 20:36:44 -0300', ''),
(74, 1, '1Mzas82JbZwTizGCqzEC8qwvegEkg5xv5N', 'BRL', '1,000.00', '1.35435289', 0, 'Tue May 12 2015 15:51:25 -0300', 'Tue May 12 2015 16:06:25 -0300', ''),
(75, 1, '19XUKoT6fCcb3r46kZux1nY34TDjNAMaFk', 'BRL', '1,000.00', '1.35435289', 0, 'Tue May 12 2015 15:52:26 -0300', 'Tue May 12 2015 16:07:26 -0300', ''),
(76, 1, '1NpoRGtckErdsUKRcs78eCnESmsZoQGkaz', 'BRL', '1,000.00', '1.35435289', 0, 'Tue May 12 2015 15:53:09 -0300', 'Tue May 12 2015 16:08:09 -0300', ''),
(77, 1, '154vuFmXYMeXQFZzrn1aJvbFLsWzpJ76cK', 'BRL', '1,212.00', '1.66978949', 0, 'Tue May 12 2015 15:53:54 -0300', 'Tue May 12 2015 16:08:54 -0300', ''),
(78, 1, '1GMfh7V3fEdFpuFKhBdVdbCt6FeGR6tWKB', 'BRL', '1,212.00', '1.66978949', 0, 'Tue May 12 2015 15:54:31 -0300', 'Tue May 12 2015 16:09:31 -0300', ''),
(79, 1, '15m5oRogyG2HgqztuKZJMbGCK9NaLoHTYX', 'BRL', '10.00', '0.01354518', 0, 'Tue May 12 2015 15:55:16 -0300', 'Tue May 12 2015 16:10:16 -0300', ''),
(80, 1, '19UL7NCQKVN3udJJ8c94oHLSQRBB8ZQPJe', 'BRL', '10.00', '0.01354518', 0, 'Tue May 12 2015 15:55:49 -0300', 'Tue May 12 2015 16:10:49 -0300', ''),
(81, 1, '1AyTDzFCC4rsu63gUDM6rvEz2QTtHEkVoS', 'BRL', '10.00', '0.01354518', 0, 'Tue May 12 2015 15:57:01 -0300', 'Tue May 12 2015 16:12:01 -0300', ''),
(82, 1, '1HCcLZjrW5GM8LZh7773U6SukFxGwRPvmj', 'BRL', '10.00', '0.01354518', 0, 'Tue May 12 2015 15:57:41 -0300', 'Tue May 12 2015 16:12:41 -0300', ''),
(83, 1, '1PdSgZXMby5PwY54Dv9UXRsWLY2p5YQ5jy', 'BRL', '10.00', '0.01354518', 0, 'Tue May 12 2015 15:58:08 -0300', 'Tue May 12 2015 16:13:08 -0300', ''),
(84, 1, '1FFdiau6JVgoQdT6rMyMFSzMWbJD9g93yN', 'BRL', '10.00', '0.01354518', 0, 'Tue May 12 2015 16:00:32 -0300', 'Tue May 12 2015 16:15:32 -0300', ''),
(85, 1, '1Ffa8QhTBe11oVKGwZnZ3wg6u2qYrM959m', 'BRL', '102.00', '0.13805238', 0, 'Tue May 12 2015 16:50:02 -0300', 'Tue May 12 2015 17:05:02 -0300', ''),
(86, 1, '12WrAEC9wKtAh4ChN58zGLuErAyhnBigYC', 'BRL', '102.00', '0.13805238', 0, 'Tue May 12 2015 16:52:12 -0300', 'Tue May 12 2015 17:07:12 -0300', ''),
(87, 1, '1BTaaem3Ko4g1CbaqpdLasR1H13J6CRn9h', 'BRL', '102.00', '0.13805238', 0, 'Tue May 12 2015 16:52:44 -0300', 'Tue May 12 2015 17:07:44 -0300', ''),
(88, 1, '1HutxK3GvS6nfxZHiBFXFcDT6dvQuNbm97', 'BRL', '102.00', '0.13805238', 0, 'Tue May 12 2015 16:53:50 -0300', 'Tue May 12 2015 17:08:50 -0300', ''),
(89, 1, '16AMg5p4qL9UmoJtVUrrkK3fXRr9n2kKS9', 'BRL', '1.00', '0.00135272', 0, 'Tue May 12 2015 18:20:40 -0300', 'Tue May 12 2015 18:35:40 -0300', ''),
(90, 1, '1Q61jPUD5DAT2v1TQrHbn8EFEK4d4syLAz', 'BRL', '12.00', '0.01654898', 0, 'Tue May 12 2015 18:29:46 -0300', 'Tue May 12 2015 18:44:46 -0300', ''),
(91, 1, '1JUu4xXWtuCjdWX5LnEp4F1Gy1MVmXCADU', 'BRL', '2.00', '0.00270845', 0, 'Tue May 12 2015 18:32:02 -0300', 'Tue May 12 2015 18:47:02 -0300', ''),
(92, 1, '1MbyuH5sd1aoRuBQVAXbco5mDFCHg5tyVB', 'BRL', '19.00', '0.02621232', 0, 'Tue May 12 2015 18:33:31 -0300', 'Tue May 12 2015 18:48:31 -0300', ''),
(93, 1, '1G3RPWY31Ypv3PEtYwsGgsy9nfbnk2Firy', 'BRL', '19.00', '0.02621232', 0, 'Tue May 12 2015 18:34:26 -0300', 'Tue May 12 2015 18:49:26 -0300', ''),
(94, 1, '1PPv5K5GdcYfQ4zfXpypW35yKnfxzYFGeW', 'BRL', '12.00', '0.01655515', 0, 'Tue May 12 2015 18:35:37 -0300', 'Tue May 12 2015 18:50:37 -0300', ''),
(95, 1, '1LuPXx1RN8zzqDYAbiTo4pudrqCXn6cZbW', 'BRL', '12.00', '0.01655515', 0, 'Tue May 12 2015 18:35:40 -0300', 'Tue May 12 2015 18:50:40 -0300', ''),
(96, 1, '186RiE6puXxn2azpK64kd38LYPxxRxqUub', 'BRL', '10.00', '0.01355179', 0, 'Tue May 12 2015 18:50:52 -0300', 'Tue May 12 2015 19:05:52 -0300', ''),
(97, 1, '1KkfDj6X7r82FyVfiYdWBwokVusVG1wKYJ', 'BRL', '1.00', '0.00135457', 0, 'Tue May 12 2015 18:54:14 -0300', 'Tue May 12 2015 19:09:14 -0300', ''),
(98, 1, '1GQyqymwN6TNGecGteivWCf4kUtD8idh6t', 'BRL', '10.00', '0.01379082', 0, 'Tue May 12 2015 18:55:40 -0300', 'Tue May 12 2015 19:10:40 -0300', ''),
(99, 1, '1PxmpDtxuJWt3Gyz5PKrss5pMs4Gq9zix7', 'BRL', '10.00', '0.01379082', 0, 'Tue May 12 2015 18:58:53 -0300', 'Tue May 12 2015 19:13:53 -0300', ''),
(100, 1, '17oMMS9isBRdfAcUEjFSXreKy7gWbgjhEj', 'BRL', '12.00', '0.01625488', 0, 'Tue May 12 2015 18:59:48 -0300', 'Tue May 12 2015 19:14:48 -0300', ''),
(101, 1, '1N4d466Pq5JVJFUw2QYkAQ1ahiZut3ab6Y', 'BRL', '12.00', '0.01625488', 0, 'Tue May 12 2015 19:00:42 -0300', 'Tue May 12 2015 19:15:42 -0300', ''),
(102, 1, '1GgzF98yAC3uBd2aGpHK6KYdNbVzvoWSX2', 'BRL', '1.00', '0.00137908', 0, 'Tue May 12 2015 19:02:45 -0300', 'Tue May 12 2015 19:17:45 -0300', ''),
(103, 1, '16ju6dMhsBDEjDb193rigE53TjVZebgcUj', 'BRL', '3.00', '0.00406372', 0, 'Tue May 12 2015 19:03:01 -0300', 'Tue May 12 2015 19:18:01 -0300', ''),
(104, 1, '1AAwGiSZbaRbxx8D1t2YTZS3AsMna34YjN', 'BRL', '3.00', '0.00406372', 0, 'Tue May 12 2015 19:03:29 -0300', 'Tue May 12 2015 19:18:29 -0300', ''),
(105, 1, '1HWpTkuns36bT732ywUcDJ5FLgBzvvQnyb', 'BRL', '3.00', '0.00406372', 0, 'Tue May 12 2015 19:03:46 -0300', 'Tue May 12 2015 19:18:46 -0300', ''),
(106, 1, '1E7vhqhdjNDVDJ4wp4Pgx992bzWRDBbjFD', 'BRL', '3.00', '0.00406372', 0, 'Tue May 12 2015 19:03:56 -0300', 'Tue May 12 2015 19:18:56 -0300', ''),
(107, 1, '1P6ZdJWzbS2DuMibSx47W9seRUrJ1KrMDY', 'BRL', '3.00', '0.00406372', 0, 'Tue May 12 2015 19:04:09 -0300', 'Tue May 12 2015 19:19:09 -0300', ''),
(108, 1, '169Z6mtuep1X4nk7qt5qgWSYDt2fvKHmbs', 'BRL', '12.00', '0.01625488', 0, 'Tue May 12 2015 19:08:56 -0300', 'Tue May 12 2015 19:23:56 -0300', ''),
(109, 1, '14o719vFBqXeCcotF5JtYePKSdPLUDUMJs', 'BRL', '12.00', '0.01656703', 0, 'Tue May 12 2015 19:10:28 -0300', 'Tue May 12 2015 19:25:28 -0300', ''),
(110, 1, '1L4FNmLyjYJA1BmMaYsmoTZermv9NKgu5L', 'BRL', '12.00', '0.01656703', 0, 'Tue May 12 2015 19:10:41 -0300', 'Tue May 12 2015 19:25:41 -0300', ''),
(111, 1, '184u6KuDMCdnVtYe4m8cWUdqz3MQgpHGxy', 'BRL', '1.00', '0.00137971', 0, 'Tue May 12 2015 19:12:15 -0300', 'Tue May 12 2015 19:27:15 -0300', ''),
(112, 1, '134wCYTkryoThiWiJyMTCTo6mqUY5oph4G', 'BRL', '1.00', '0.00137971', 0, 'Tue May 12 2015 19:12:30 -0300', 'Tue May 12 2015 19:27:30 -0300', ''),
(113, 1, '1H7pfivND8hKNC5DrJE4W3bBtrh2AvN4Lx', 'BRL', '10.00', '0.01354573', 0, 'Tue May 12 2015 19:19:50 -0300', 'Tue May 12 2015 19:34:50 -0300', ''),
(114, 1, '141YypDTkGF1Y1LZYppBDi74HeFWGxDdhn', 'BRL', '10.00', '0.01356024', 0, 'Tue May 12 2015 19:23:19 -0300', 'Tue May 12 2015 19:38:19 -0300', ''),
(115, 1, '1NsDRxWYoiPYND1hHwtoxHmZiCdShxim2n', 'BRL', '12.00', '0.01656703', 0, 'Tue May 12 2015 19:35:08 -0300', 'Tue May 12 2015 19:50:08 -0300', ''),
(116, 1, '1A31b6ThnA1gZb6ZgVwdDTTjDkP4dMprC9', 'BRL', '100.00', '0.13805862', 0, 'Tue May 12 2015 19:42:07 -0300', 'Tue May 12 2015 19:57:07 -0300', ''),
(117, 1, '1EAZ3ZxAS1dVLXfuHppvDmF5s5oC8fiNEH', 'BRL', '5.00', '0.00671366', 0, 'Wed May 13 2015 12:03:37 -0300', 'Wed May 13 2015 12:18:37 -0300', ''),
(118, 1, '1GRoRm8Rfguvn89fVNuaosi7qADspmYtir', 'BRL', '10.00', '0.01369338', 0, 'Wed May 13 2015 12:03:54 -0300', 'Wed May 13 2015 12:18:54 -0300', ''),
(119, 1, '1EmaKZMRUSYD2k1A6ewMVT16SsWP5bdbve', 'BRL', '10.00', '0.01369338', 0, 'Wed May 13 2015 12:03:56 -0300', 'Wed May 13 2015 12:18:56 -0300', ''),
(120, 1, '1JCUaGHqniwFQYyhG2sCQQxRAZ55hnHKEQ', 'BRL', '10.00', '0.01346040', 0, 'Wed May 13 2015 12:05:03 -0300', 'Wed May 13 2015 12:20:03 -0300', ''),
(121, 1, '1AbJkrFLaoSyKrJZCv6fAsiGrAx8vLYouh', 'BRL', '', '', 0, 'Thu May 14 2015 14:30:09 -0300', 'Thu May 14 2015 14:45:09 -0300', ''),
(122, 1, '19s1HvLDqGo1GBDb5kmd21iKUJwsiw6qtP', 'BRL', '150.00', '0.21131225', 0, 'Mon May 18 2015 20:45:08 +0200', 'Mon May 18 2015 21:00:08 +0200', ''),
(123, 1, '1JbGtzawbHMpQuCiJCDU11g6mhWFcZixAx', 'BRL', '121.00', '0.17045855', 0, 'Mon May 18 2015 20:49:05 +0200', 'Mon May 18 2015 21:04:05 +0200', ''),
(124, 1, '1K5n5P3tvYD9UCFiE2iPKQQvJg8nigA62i', 'BRL', '12.00', '0.05080440', 0, 'Mon May 18 2015 20:49:44 +0200', 'Mon May 18 2015 21:04:44 +0200', ''),
(125, 1, '1Kk1JtFrN4bhgyrgAVoySfppDe7SJM4Ern', 'BRL', '12.00', '0.05080440', 0, 'Mon May 18 2015 20:49:45 +0200', 'Mon May 18 2015 21:04:45 +0200', ''),
(126, 1, '1PXm2dWM7KVn5XL5ZyiyoZ2hFfFG7XmMYX', 'USD', '1.00', '0.00423370', 0, 'Mon May 18 2015 20:51:16 +0200', 'Mon May 18 2015 21:06:16 +0200', ''),
(127, 1, '1H5moeBf397XgUfBiic49WihaMRYJBv3Jt', 'BRL', '15.00', '0.02110684', 0, 'Mon May 18 2015 21:40:26 +0200', 'Mon May 18 2015 21:55:26 +0200', ''),
(128, 2, '1N1tfZ4Jyq2ZSYUUdD5ETPNTjxTJwaGy5B', 'USD', '12.00', '0.05158850', 0, 'Tue May 19 2015 15:37:53 +0200', 'Tue May 19 2015 15:52:53 +0200', ''),
(129, 1, '1FQDXNmEXn6Vq57WTSS6KgKFDMoVGq6YnP', 'USD', '100.00', '0.42914771', 0, 'Tue May 19 2015 19:06:40 +0200', 'Tue May 19 2015 19:21:40 +0200', ''),
(130, 1, '1JAajeaMetP17tcEBbdrff6HPg4PLKpJa9', 'USD', '50.00', '0.21474896', 0, 'Tue May 19 2015 21:03:49 +0200', 'Tue May 19 2015 21:18:49 +0200', ''),
(131, 1, '1NZZPQaxw1VDGooEDQwmBxFynLMnKKVLWS', 'USD', '5.00', '0.02146383', 0, 'Tue May 19 2015 21:16:08 +0200', 'Tue May 19 2015 21:31:08 +0200', 'testando'),
(132, 1, '1EyqqsyYydNbw6dCcBrL1c1jkQU9wy3EK8', 'USD', '1.00', '0.00429553', 0, 'Tue May 19 2015 21:45:21 +0200', 'Tue May 19 2015 22:00:21 +0200', ''),
(133, 1, '1BkkaGm1zUoKWLSmZJYq3uV7mJjPTveZWe', 'USD', '12.00', '0.05167959', 0, 'Wed May 20 2015 00:20:17 +0200', 'Wed May 20 2015 00:35:17 +0200', 'New'),
(134, 2, '16zy3zord8xJYgQbgyPRcUL7TAENDfFufK', 'USD', '132.00', '0.56889195', 0, 'Wed May 20 2015 00:32:43 +0200', 'Wed May 20 2015 00:47:43 +0200', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `user_type` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(120) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `users`
--

INSERT INTO `users` (`user_id`, `user_type`, `user_name`, `user_password`) VALUES
(1, 'admin', 'admin', 'd6b0ab7f1c8ab8f514db9a6d85de160a'),
(2, 'user', 'user', 'd6b0ab7f1c8ab8f514db9a6d85de160a');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
 ADD PRIMARY KEY (`config_id`);

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
-- AUTO_INCREMENT de tabela `config`
--
ALTER TABLE `config`
MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `invoices`
--
ALTER TABLE `invoices`
MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
