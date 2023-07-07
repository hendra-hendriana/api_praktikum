-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2023 at 12:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_praktikum`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `age`, `designation`, `created`) VALUES
(1, 'John Doe', 'johndoe@gmail.com', 32, 'Data Scientist', '2012-06-01 02:12:30'),
(2, 'David Costa', 'sam.mraz1996@yahoo.com', 29, 'Apparel Patternmaker', '2013-03-03 01:20:10'),
(3, 'Todd Martell', 'liliane_hirt@gmail.com', 36, 'Accountant', '2014-09-20 03:10:25'),
(4, 'Adela Marion', 'michael2004@yahoo.com', 40, 'Shipping Manager', '2023-07-03 22:47:58'),
(5, 'Matthew Popp', 'krystel_wol7@gmail.com', 48, 'Chief Sustainability Officer', '2016-01-04 05:20:30'),
(6, 'Alan Wallin', 'neva_gutman10@hotmail.com', 37, 'Chemical Technician', '0000-00-00 00:00:00'),
(7, 'Joyce Hinze', 'davonte.maye@yahoo.com', 44, 'Transportation Planner', '0000-00-00 00:00:00'),
(8, 'Donna Andrew', 'joesph.quitz@yahoo.com', 52, 'Wind Energy Engineer', '2023-07-03 22:47:46'),
(9, 'Andrew Best', 'jeramie_roh@hotmail.com', 51, 'Geneticist', '2019-01-02 02:20:30'),
(10, 'Joel Ogle', 'summer_shanah@hotmail.com', 45, 'Space Sciences Teacher', '0000-00-00 00:00:00'),
(11, 'Hendraaa', 'hndx77@gmail.com', 20, 'Programmer', '2023-07-03 21:41:57'),
(26, 'test', 'test@mail.c', 21, 'Programmer', '2023-06-26 08:29:07'),
(27, 'test', 'test@mail.c', 21, 'Programmer', '2023-06-26 08:29:11'),
(28, 'test', 'test@mail.c', 21, 'Programmer', '2023-06-26 08:29:15'),
(34, 'John Doefdsf', 'johndoe@gmail.com', 32, 'Data Scientist', '2023-07-03 19:50:25'),
(36, 'Hendra Hendriana', 'hndx77@gmail.com', 21, 'Fullstack Developer', '2023-07-05 02:13:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
