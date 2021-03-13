-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2021 at 10:35 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basic bank system database`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(9, 'Aboli Metkari', 'Neha Nadaf', 5, '2021-03-12 13:46:45'),
(10, 'Smita Shinde', 'Rajveer Tambe', 5000, '2021-03-12 13:47:52'),
(11, 'Vishakha Roman', 'Smita Shinde', 50000, '2021-03-12 13:48:47'),
(12, 'Neha Nadaf', 'Jitesh Roman', 200, '2021-03-12 13:49:11'),
(13, 'vaibhav Roman', 'Vishakha Roman', 400, '2021-03-12 13:49:41'),
(14, 'Mayuresh Patil', 'Vishakha Roman', 5000, '2021-03-12 17:42:06'),
(15, 'Mayuresh Patil', 'Vishakha Roman', 100, '2021-03-13 14:03:08'),
(16, 'Aboli Metkari', 'Akanksha Kole', 1000, '2021-03-13 14:08:36'),
(17, 'Akanksha Kole', 'Smita Shinde', 2000, '2021-03-13 14:09:13'),
(18, 'Smita Shinde', 'Neha Nadaf', 4000, '2021-03-13 14:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Vishakha Roman', 'vishakharoman14@gmail.com', 5500),
(2, 'Smita Shinde', 'smitashinde1031@gmail.com', 78000),
(3, 'Aboli Metkari', 'metkariaboli@gmail.com', 39045),
(4, 'Aishwarya Biradar', 'aishwaryabb94@gmail.com', 48500),
(5, 'Neha Nadaf', 'nehanadaf27@gmail.com', 83805),
(6, 'Akanksha Kole', 'aakankshaanilkole@gmail.com', 29000),
(7, 'vaibhav Roman', 'vaibhavroman249@gmail.com', 2150),
(8, 'Rajveer Tambe', 'rajveertambe14@gmail.com', 41825),
(9, 'Mayuresh Patil', 'mayureshpatil@gmail.com', 84900),
(10, 'Jitesh Roman', 'jiteshroman143@gmail.com', 50296);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
