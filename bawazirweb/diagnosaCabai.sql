-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 14 Jun 2020 pada 09.22
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diagnosaCabai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `diagnosa`
--

CREATE TABLE `diagnosa` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `hasil` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `createdAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `diagnosa`
--

INSERT INTO `diagnosa` (`id`, `username`, `hasil`, `location`, `createdAt`) VALUES
(23, 'bagas', 'Damping off (Rebah Kecambah)', 'KEC PULAU BANYAK BARAT,KABUPATEN ACEH SINGKIL,PROVINSI ACEH', '1590546172227'),
(24, 'bawazir', 'Damping off (Rebah Kecambah)', 'KEC LAMONGAN,KABUPATEN LAMONGAN,PROVINSI JAWA TIMUR', '1591508150635'),
(25, 'kambeng123', 'Colletrichum (Antranoksa)', 'KEC LAMONGAN,KABUPATEN LAMONGAN,PROVINSI JAWA TIMUR', '1591598954070'),
(26, 'bawazir', 'Damping off (Rebah Kecambah)', 'KEC LAMONGAN,KABUPATEN LAMONGAN,PROVINSI JAWA TIMUR', '1591793497246'),
(27, 'bawazir', 'Damping off (Rebah Kecambah)', 'KEC SUKABANGUN,KABUPATEN TAPANULI TENGAH,PROVINSI SUMATERA UTARA', '1591883350032'),
(28, 'bawazir', 'Damping off (Rebah Kecambah)', 'KEC SIBABANGUN,KABUPATEN TAPANULI TENGAH,PROVINSI SUMATERA UTARA', '1591887368940'),
(29, 'bagasfadhil', 'Damping off (Rebah Kecambah)', 'KEC LAMONGAN,KABUPATEN LAMONGAN,PROVINSI JAWA TIMUR', '1591915992755'),
(30, 'bagasfadhil', 'Colletrichum (Antranoksa)', 'KEC SINGOSARI,KABUPATEN MALANG,PROVINSI JAWA TIMUR', '1591916190282');

-- --------------------------------------------------------

--
-- Struktur dari tabel `feed_back`
--

CREATE TABLE `feed_back` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `feedback` text NOT NULL,
  `createdAt` varchar(100) NOT NULL,
  `updatedAt` varchar(100) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `feed_back`
--

INSERT INTO `feed_back` (`id`, `username`, `feedback`, `createdAt`, `updatedAt`) VALUES
(26, 'bawazir', 'mantap\njh', '1591883446400', '1591887442693'),
(27, 'bagasfadhil', 'keren', '1591916085677', '1591916085677');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(20) NOT NULL,
  `createdAt` varchar(100) NOT NULL,
  `updatedAt` varchar(100) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `fullName`, `email`, `password`, `location`, `createdAt`, `updatedAt`) VALUES
('bagas', 'bagas', 'bagas@gmail.com', 'ee776a18253721efe8a62e4abd29dc47', 'malang', '1590545507831', '1590545507831'),
('bagasfadhil', 'bagas fadhil', 'bagasfadhil@gmail.com', 'ee776a18253721efe8a62e4abd29dc47', 'malang', '1591915780496', '1591915780496'),
('bawazir', 'bawazir fadhil m', 'bawazirfadhil@gmail.com', '7f6b9e26373371a3874c94469c7937e', 'malang', '1590545399338', '1590545399338'),
('kambeng123', 'kambenglucu', 'nabilboytube99@gmail.com', '70b5b96a12251163b722e460d926ee3f', 'lamongan', '1591598768846', '1591598768846'),
('tyo', 'tyo', 'tyo@gmail.com', '5bab541acd761a3093d7c4202b6e1da9', 'lamongan', '1591793392323', '1591793392323');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indeks untuk tabel `feed_back`
--
ALTER TABLE `feed_back`
  ADD PRIMARY KEY (`id`,`username`),
  ADD KEY `username` (`username`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `diagnosa`
--
ALTER TABLE `diagnosa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `feed_back`
--
ALTER TABLE `feed_back`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD CONSTRAINT `diagnosa_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `feed_back`
--
ALTER TABLE `feed_back`
  ADD CONSTRAINT `feed_back_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
