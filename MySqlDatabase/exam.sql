-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2019 at 07:10 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `version` bigint(20) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birth_date` datetime NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `member_type` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `version`, `phone`, `address`, `first_name`, `password`, `birth_date`, `last_name`, `member_type`, `email`) VALUES
(1, 0, '', '', 'Admin', '21232f297a57a5a743894a0e4a801fc3', '2019-11-19 13:45:39', 'User', 'ADMINISTRATOR', 'admin@localhost.local'),
(2, 0, '01779438972', 'khilkhet, Nikunjo 2, Road: 13', 'Mostafizur', '0dd6a7f7ea01a612d33e1003a46281db', '2019-11-19 13:49:15', 'Rahman', 'REGULAR_MEMBER', 'badhon.mostafizur@gmail.com'),
(3, 9, '01779438972', 'khilkhet, Nikunjo 2, Road: 13', 'Mostafizur', '0dd6a7f7ea01a612d33e1003a46281db', '1996-06-03 06:00:00', 'Rahman', 'REGULAR_MEMBER', 'mostafizur661@gmail.com'),
(4, 4, '01972552112', 'Uttora, Sector 3, Road: 5', 'Hamidur', 'e19081b10e39141eba29c76b28b16d0c', '1993-06-02 23:15:00', 'Rahman', 'REGULAR_MEMBER', 'hamidur.rahman@gmail.com'),
(5, 0, '01779123105', 'Test address', 'Test', '098f6bcd4621d373cade4e832627b4f6', '1971-01-19 18:00:00', 'User', 'REGULAR_MEMBER', 'test@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_mbmcqelty0fbrvxp1q58dn57t` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
