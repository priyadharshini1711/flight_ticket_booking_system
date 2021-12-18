-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 18, 2021 at 06:00 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fms`
--

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
CREATE TABLE IF NOT EXISTS `flight` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `from_place` varchar(255) NOT NULL,
  `to_place` varchar(255) NOT NULL,
  `arrival` time NOT NULL,
  `departure` time NOT NULL,
  `seats` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`id`, `name`, `from_place`, `to_place`, `arrival`, `departure`, `seats`) VALUES
(123, 'abc', 'Madurai MDU', 'Chennai CHN', '06:00:00', '06:30:00', 60),
(234, 'def', 'Madurai MDU', 'Chennai CHN', '07:00:00', '07:30:00', 120),
(456, 'ghi', 'Madurai MDU', 'Coimbatore CBE', '09:00:00', '09:30:00', 180);

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

DROP TABLE IF EXISTS `place`;
CREATE TABLE IF NOT EXISTS `place` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`id`, `name`, `code`) VALUES
(1, 'Madurai', 'MDU'),
(3, 'Chennai', 'CHN'),
(4, 'Coimbatore', 'CBE');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` int NOT NULL,
  `country_code` int NOT NULL,
  `phone` varchar(25) NOT NULL,
  `address` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `age`, `country_code`, `phone`, `address`, `uname`, `password`) VALUES
(1, 'sample', 23, 91, '7395971053', 'xyz', 'sample', 'sample'),
(2, 'sample', 50, 91, '9884968804', 'sa', 'samplespace', 'sample');

-- --------------------------------------------------------

--
-- Table structure for table `user_history`
--

DROP TABLE IF EXISTS `user_history`;
CREATE TABLE IF NOT EXISTS `user_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `uname` varchar(255) NOT NULL,
  `fid` int NOT NULL,
  `fname` varchar(255) NOT NULL,
  `from_place` varchar(255) NOT NULL,
  `to_place` varchar(255) NOT NULL,
  `arrival` time NOT NULL,
  `departure` time NOT NULL,
  `seats` int NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_history`
--

INSERT INTO `user_history` (`id`, `uid`, `uname`, `fid`, `fname`, `from_place`, `to_place`, `arrival`, `departure`, `seats`, `created_at`) VALUES
(8, -1, 'sample', 123, 'abc', 'Madurai MDU', 'Chennai CHN', '06:00:00', '06:30:00', 10, '0000-00-00 00:00:00'),
(9, 1, 'sample', 123, 'abc', 'Madurai MDU', 'Chennai CHN', '06:00:00', '06:30:00', 10, '0000-00-00 00:00:00'),
(10, 1, 'sample', 123, 'abc', 'Madurai MDU', 'Chennai CHN', '06:00:00', '06:30:00', 10, '2021-12-18 14:39:51'),
(11, 1, 'sample', 123, 'abc', 'Madurai MDU', 'Chennai CHN', '06:00:00', '06:30:00', 18, '2021-12-18 17:54:05');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
