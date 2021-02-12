-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2021 at 12:31 PM
-- Server version: 10.3.16-MariaDB-log
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ourlife`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `email` varchar(50) NOT NULL,
  `id` text NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL,
  `article` text NOT NULL,
  `title` varchar(500) NOT NULL,
  `star` tinyint(1) NOT NULL DEFAULT 0,
  `share` tinyint(1) NOT NULL DEFAULT 0,
  `nick` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`email`, `id`, `date`, `time`, `article`, `title`, `star`, `share`, `nick`) VALUES
('alpujiyantoj@gmail.com', '60266666695dc', '2021-02-12', '12:28:38pm', '<p>it hurts, all i do is just useless, why keep fighting when you have no future to fight for? no dream either?<br />\r\ni am stuck at a very dark tunnel where i can&#39;t see light anymore, my light has dimmed out lose to the darkness</p>\r\n', 'why', 0, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `email` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(25) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`email`, `date`, `time`, `ip`) VALUES
('alpujiyantoj@gmail.com', '2021-02-12', '12:16:55pm', '::1'),
('alpujiyantoj@gmail.com', '2021-02-12', '12:17:13pm', '::1'),
('alpujiyantoj@gmail.com', '2021-02-12', '12:23:28pm', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(25) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `age`, `gender`, `email`, `password`) VALUES
('Jiya', 21, 'M', 'alpujiyantoj@gmail.com', '722e2161fb11398af0635916fbb18660');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
