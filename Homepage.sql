-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 14, 2018 at 12:13 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36
 
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
 
 
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
 
--
-- Database: `Homepage`
--
 
-- --------------------------------------------------------
 
--
-- Table structure for table `sampah`
--
 
CREATE TABLE `sampah` (
  `id` int(11) NOT NULL,
  `namasampah` varchar(100) NOT NULL,
  `asal` varchar(100) NOT NULL,
  `jenis` varchar(15) NOT NULL,
  `daerah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
--
-- Dumping data for table `sampah`
--
 
INSERT INTO `sampah` (`id`, `namasampah`, `asal`, `jenis`, `daerah`) VALUES
(1, 'Daun kering ', '11', 'organik', 'Sawangan'),
(2, 'Pecahan Kaca', '12', 'nonorganik', 'Sawangan'),
(3, 'ampas tahu', '13', 'organik', 'Bogor'),
(4, 'Kulit Kacang', '14', 'organik', 'Bogor'),
(5, 'Kulit Kerang', '15', 'organik', 'Depok'),
(6, 'Bungkus makanan', '16', 'nonorganik', 'Bogor'),
(7, 'Ampas kopi', '17', 'organik', 'Depok'),
(8, 'Ampas teh', '18', 'organik', 'Bogor'),
(9, 'Serbuk Kayu', '19', 'organik', 'Sawangan'),
(10, 'Kapas', '20', 'organik', 'Ciseeng'),
(11, 'Kulit buah', '21', 'organik', 'Ciseeng'),
(12, 'Kulit sayur', '22', 'organik', 'Bogor'),
(13, 'Botol', '23', 'nonorganik', 'Depok'),
(14, 'Kabel bekas', '24', 'nonorganik', 'Bogor'),
(15, 'Lampu', '25', 'nonorganik', 'Bogor'),
(16, 'Ban bekas', '26', 'nonorganik', 'Depok'),
(17, 'Kulit kerang', '27', 'organik', 'Depok'),
(18, 'Kulit kacang tanah', '28', 'orgnanik', 'Bogor'),
(19, 'Sterofom', '29', 'nonorganik', 'Depok'),
(20, 'jerami padi', '30', 'organik', 'Depok');
 
--
-- Indexes for dumped tables
--
 
--
-- Indexes for table `sampah``
--
ALTER TABLE `sampah`
  ADD PRIMARY KEY (`id`);
 
--
-- AUTO_INCREMENT for dumped tables
--
 
--
-- AUTO_INCREMENT for table `sampah`
--
ALTER TABLE `sampah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;
 
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;