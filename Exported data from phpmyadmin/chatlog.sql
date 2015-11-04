-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 07, 2014 at 07:30 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatlog`
--

CREATE TABLE IF NOT EXISTS `chatlog` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `message` varchar(8000) CHARACTER SET latin1 DEFAULT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=hp8 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `chatlog`
--

INSERT INTO `chatlog` (`id`, `name`, `message`, `datetime`) VALUES
(2, 'hugo', 'teste', '2014-11-24 14:30:56'),
(5, 'hugo', 'ola', '2014-11-24 14:31:05'),
(6, 'hugo', 'teste', '2014-11-24 14:31:19'),
(7, 'Hugo', 'teste', '2014-11-24 14:32:44'),
(9, 'Noe', 'Ola eu sou o noe', '2014-11-24 14:35:21'),
(10, 'Hugo', 'hola que tal?', '2014-11-24 16:39:30'),
(11, 'Jh4ck', 'si que passa tica', '2014-11-24 16:39:51'),
(12, 'Hugo', 'nada jh4ck, all cool. ', '2014-11-24 16:40:10'),
(14, 'Hugo', 'Tomanocu cebola', '2014-11-26 13:47:45'),
(15, 'Hugo', 'Oi talitinha', '2014-11-27 01:29:25'),
(16, 'Talitinha', 'Oi hugao', '2014-11-27 01:29:43'),
(17, 'Azis', 'hi buddy', '2014-12-01 11:38:28'),
(22, 'Cebola', 'Teste', '2014-12-01 12:08:02'),
(23, 'Cebola', 'teste', '2014-12-01 12:08:42'),
(24, 'Cebola', 'Teste', '2014-12-01 12:09:03'),
(25, 'Hugo Toffanelo', 'Test', '2014-12-01 12:09:27'),
(26, 'Hugo Toffanelo', 'Test', '2014-12-01 12:23:31'),
(32, 'Hugo Toffanelo', '', '2014-12-01 14:26:14'),
(39, 'Hugo Toffanelo', 'Test insert into database', '2014-12-01 15:33:31'),
(40, 'Hugo Toffanelo', 'Another test', '2014-12-01 15:33:38'),
(41, 'Hugo Toffanelo', 'test again', '2014-12-01 15:33:56'),
(42, 'Hugo Toffanelo', 'tessst', '2014-12-01 15:34:08'),
(43, 'Hugo Toffanelo', 'one more test', '2014-12-01 15:34:15'),
(44, 'Hugo Toffanelo', 'teeeeeessst', '2014-12-01 15:34:25'),
(45, 'Hugo Toffanelo', 'Final test ', '2014-12-01 16:13:30'),
(47, 'Hugo Toffanelo', 'sfdsf', '2014-12-03 15:40:54'),
(48, 'Hugo Toffanelo', 'sfdsf', '2014-12-03 15:40:55'),
(49, 'Hugo', 'test on click submit ', '2014-12-04 18:07:56'),
(50, 'Hugo Toffanelo', 'Test by pressing enter', '2014-12-04 19:07:10'),
(52, 'Hugo', 'test pressing enter', '2014-12-05 02:29:47'),
(53, 'Hugo', 'test', '2014-12-05 02:31:16'),
(54, 'Hugo Toffanelo', 'tes', '2014-12-05 02:40:52'),
(55, 'vitao', 'oiii', '2014-12-05 23:14:06'),
(56, 'Hugo Toffanelo', 'last test', '2014-12-07 19:25:38');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
