-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Bulan Mei 2020 pada 15.37
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `manpro`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `chart`
--

CREATE TABLE `chart` (
  `id` int(11) NOT NULL,
  `Userid` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Message` text NOT NULL,
  `Date` varchar(15) NOT NULL,
  `Time` time DEFAULT NULL,
  `Group_Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `chart`
--

INSERT INTO `chart` (`id`, `Userid`, `Name`, `Message`, `Date`, `Time`, `Group_Name`) VALUES
(1, '1234554321', 'Patrick', 'What do you think about javascrpt and php after seeing this demo?', '31/05/20', '14:58:00', ''),
(2, '1234554321', 'Patrick', 'Malawi is the warm heart of africa with beautiful lake and mountains', '31/05/20', '14:58:00', 'Malawi'),
(3, '1234554321', 'Patrick', 'test 123', '31/05/20', '14:59:00', ''),
(4, '1234554321', 'Patrick', 'aaa', '31/05/20', '15:34:00', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `Userid` varchar(30) NOT NULL,
  `GName` varchar(30) NOT NULL,
  `Members` text NOT NULL,
  `Date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `Userid`, `GName`, `Members`, `Date`) VALUES
(1, '1234554321', 'Malawi', '1', '31/05/20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profilepictures`
--

CREATE TABLE `profilepictures` (
  `id` int(11) NOT NULL,
  `ids` varchar(30) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `type` varchar(30) NOT NULL,
  `Size` decimal(10,0) NOT NULL,
  `content` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `profilepictures`
--

INSERT INTO `profilepictures` (`id`, `ids`, `Category`, `name`, `type`, `Size`, `content`) VALUES
(1, '1', 'User', 'IMG_0458.JPG', 'image/jpeg', '194348', 0x494d475f303435382e4a5047),
(2, '1', 'Group', '339264-Berserker.jpg', 'image/jpeg', '110920', 0x3333393236342d4265727365726b65722e6a7067);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sampah`
--

CREATE TABLE `sampah` (
  `id` int(11) NOT NULL,
  `namasampah` varchar(100) NOT NULL,
  `asal` varchar(100) NOT NULL,
  `jenis` varchar(15) NOT NULL,
  `daerah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sampah`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(300) NOT NULL,
  `Sirname` varchar(300) NOT NULL,
  `Mtitle` varchar(30) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `Email` varchar(300) NOT NULL,
  `Password` varchar(300) NOT NULL,
  `Online` varchar(300) NOT NULL,
  `Time` bigint(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `Firstname`, `Sirname`, `Mtitle`, `Phone`, `Email`, `Password`, `Online`, `Time`) VALUES
(1, 'Nana', '', '', '265999107724', 'nana@gmail.com', 'wwww', 'Offline', 1590932194);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `chart`
--
ALTER TABLE `chart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profilepictures`
--
ALTER TABLE `profilepictures`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sampah`
--
ALTER TABLE `sampah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `chart`
--
ALTER TABLE `chart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `profilepictures`
--
ALTER TABLE `profilepictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sampah`
--
ALTER TABLE `sampah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;
