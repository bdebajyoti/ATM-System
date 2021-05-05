-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2018 at 05:10 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atm_2018`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_detail`
--

CREATE TABLE `acc_detail` (
  `acc_type` varchar(200) NOT NULL,
  `card` varchar(200) NOT NULL,
  `pin` varchar(200) NOT NULL,
  `nom_name` varchar(200) NOT NULL,
  `relation` varchar(200) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acc_detail`
--

INSERT INTO `acc_detail` (`acc_type`, `card`, `pin`, `nom_name`, `relation`, `age`) VALUES
('Current Account', '4321', '111', 'dfsf', 'gdfgfg', 23),
('Savings Account', '7676', '777', 'dsfs', 'dsfsd', 12),
('Savings Account', '1234567891234567', '1,999', 'Rakesh ', 'Friend', 21);

-- --------------------------------------------------------

--
-- Table structure for table `customer_acc`
--

CREATE TABLE `customer_acc` (
  `card` varchar(200) DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `withdraw` double DEFAULT NULL,
  `bal` double DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `mode` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_acc`
--

INSERT INTO `customer_acc` (`card`, `deposit`, `withdraw`, `bal`, `date`, `mode`) VALUES
('1234', NULL, NULL, NULL, NULL, NULL),
(NULL, 10000, NULL, NULL, NULL, NULL),
(NULL, 10000, NULL, NULL, NULL, NULL),
(NULL, NULL, 2000, NULL, NULL, NULL),
('1234', NULL, NULL, NULL, NULL, NULL),
('4321', 100, 3000, 100, NULL, NULL),
('7676', NULL, 4000, NULL, NULL, NULL),
('1234567891234567', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mini_statement`
--

CREATE TABLE `mini_statement` (
  `deposit` varchar(250) NOT NULL,
  `withdrawal` varchar(250) NOT NULL,
  `dep_date` varchar(250) NOT NULL,
  `wit_date` varchar(250) NOT NULL,
  `card` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personal_detail`
--

CREATE TABLE `personal_detail` (
  `card` varchar(250) DEFAULT NULL,
  `name` varchar(110) NOT NULL,
  `father` varchar(110) NOT NULL,
  `date` varchar(110) NOT NULL,
  `month` varchar(110) NOT NULL,
  `year` varchar(110) NOT NULL,
  `gen` varchar(110) NOT NULL,
  `pn` varchar(110) NOT NULL,
  `adres` varchar(110) NOT NULL,
  `city` varchar(110) NOT NULL,
  `state` varchar(110) NOT NULL,
  `income` varchar(110) NOT NULL,
  `existing` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_detail`
--

INSERT INTO `personal_detail` (`card`, `name`, `father`, `date`, `month`, `year`, `gen`, `pn`, `adres`, `city`, `state`, `income`, `existing`) VALUES
(NULL, 'Mamta singha', 'Bhajahari singha', '9', 'Aug', '1999', 'Female', '8811907272', 'Tarpur', 'Silchar', 'Assam', 'Null', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` varchar(200) NOT NULL,
  `card` varchar(200) NOT NULL,
  `pin` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD UNIQUE KEY `card` (`card`),
  ADD UNIQUE KEY `pin` (`pin`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
