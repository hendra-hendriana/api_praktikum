-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2023 at 11:29 AM
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
-- Database: `peminjaman_ruangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `namaruangan` varchar(20) NOT NULL,
  `peminjam` varchar(25) NOT NULL,
  `keterangan` varchar(35) NOT NULL,
  `waktupinjam` datetime NOT NULL,
  `selesaipinjam` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `namaruangan`, `peminjam`, `keterangan`, `waktupinjam`, `selesaipinjam`) VALUES
(1, 'Lab Kimia', 'Abdul', 'Pelatihan Penggunaan Mikroskop', '2023-06-01 08:00:00', '2023-06-01 10:00:00'),
(2, 'Lab Komputer', 'Hendra H', 'Belajar Pembuatan Web', '2023-06-01 10:00:00', '2023-06-01 12:00:00'),
(4, 'Kelas 02', 'John Doe', 'Pelatihan UI/UX', '2023-06-03 10:00:00', '2023-06-03 13:00:00'),
(5, 'Kelas 03', 'John Doe', 'Pelatihan UI/UX 2', '2023-06-02 13:00:00', '2023-06-02 15:00:00'),
(6, 'Kelas 04', 'Hendra H', 'Mengulas Teori Pemrograman', '2023-06-02 08:00:00', '2023-06-02 10:00:00'),
(7, 'Kelas 05', 'Hen', 'Pelatihan Database Server', '2023-06-05 08:00:00', '2023-06-05 15:00:00'),
(8, 'Kelas 06', 'Hendra', 'Pelatihan UI/UX 3', '2023-06-06 08:00:00', '2023-06-06 10:00:00');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
