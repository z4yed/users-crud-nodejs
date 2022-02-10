-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 10, 2022 at 03:35 PM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user-management`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `comments` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `comments`, `status`) VALUES
(1, 'Zayed', 'Hassan', 'zayed.cs3@gmail.com', '01511259999', 'OK', 'active'),
(2, 'Amanda', 'Nunes', 'anunes@ufc.com', '012345 678910', '', 'active'),
(3, 'Alexander', 'Volkanovski', 'avolkanovski@ufc.com', '012345 678910', '', 'active'),
(4, 'Khabib', 'Nurmagomedov', 'knurmagomedov@ufc.com', '012345 678910', 'New Value', 'active'),
(5, 'Kamaru', 'Usman', 'kusman@ufc.com', '012345 678910', '', 'active'),
(6, 'Israel', 'Adesanya', 'iadesanya@ufc.com', '012345 678910', '', 'inactive'),
(7, 'Henry', 'Cejudo', 'hcejudo@ufc.com', '012345 678910', '', 'active'),
(8, 'Valentina', 'Shevchenko', 'vshevchenko@ufc.com', '012345 678910', '', 'active'),
(9, 'Tyron', 'Woodley', 'twoodley@ufc.com', '012345 678910', '', 'active'),
(10, 'Rose', 'Namajunas ', 'rnamajunas@ufc.com', '012345 678910', '', 'active'),
(11, 'Tony', 'Ferguson ', 'tferguson@ufc.com', '012345 678910', '', 'active'),
(12, 'Jorge', 'Masvidal ', 'jmasvidal@ufc.com', '012345 678910', '', 'active'),
(13, 'Nate', 'Diaz ', 'ndiaz@ufc.com', '012345 678910', '', 'active'),
(14, 'Conor', 'McGregor ', 'cmcGregor@ufc.com', '012345 678910', '', 'active'),
(15, 'Cris', 'Cyborg ', 'ccyborg@ufc.com', '012345 678910', '', 'active'),
(16, 'Tecia', 'Torres ', 'ttorres@ufc.com', '012345 678910', '', 'active'),
(17, 'Ronda', 'Rousey ', 'rrousey@ufc.com', '012345 678910', '', 'active'),
(18, 'Holly', 'Holm ', 'hholm@ufc.com', '012345 678910', '', 'active'),
(19, 'Joanna', 'Jedrzejczyk ', 'jjedrzejczyk@ufc.com', '012345 678910', '', 'active'),
(20, 'Test', 'User', 'test@gmail.com', '1325123', 'test comment', 'active'),
(21, 'Test2', 'User', 'test2@gmail.com', '23412345', 'Test 2 comment', 'inactive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
