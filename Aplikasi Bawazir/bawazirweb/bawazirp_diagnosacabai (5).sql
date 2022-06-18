-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2020 at 10:08 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bawazirp_diagnosacabai`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa`
--

CREATE TABLE `diagnosa` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `hasil` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `createdAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diagnosa`
--

INSERT INTO `diagnosa` (`id`, `username`, `hasil`, `location`, `createdAt`) VALUES
(23, 'bagas', 'Damping off (Rebah Kecambah)', 'KEC PULAU BANYAK BARAT,KABUPATEN ACEH SINGKIL,PROVINSI ACEH', '1590546172227'),
(24, 'bawazir', 'Damping off (Rebah Kecambah)', 'KEC LAMONGAN,KABUPATEN LAMONGAN,PROVINSI JAWA TIMUR', '1591508150635'),
(25, 'kambeng123', 'Colletrichum (Antranoksa)', 'KEC LAMONGAN,KABUPATEN LAMONGAN,PROVINSI JAWA TIMUR', '1591598954070'),
(26, 'bawazir', 'Damping off (Rebah Kecambah)', 'KEC LAMONGAN,KABUPATEN LAMONGAN,PROVINSI JAWA TIMUR', '1591793497246'),
(27, 'bawazir', 'Damping off (Rebah Kecambah)', 'KEC SUKABANGUN,KABUPATEN TAPANULI TENGAH,PROVINSI SUMATERA UTARA', '1591883350032'),
(28, 'bawazir', 'Damping off (Rebah Kecambah)', 'KEC SIBABANGUN,KABUPATEN TAPANULI TENGAH,PROVINSI SUMATERA UTARA', '1591887368940'),
(29, 'bagasfadhil', 'Damping off (Rebah Kecambah)', 'KEC LAMONGAN,KABUPATEN LAMONGAN,PROVINSI JAWA TIMUR', '1591915992755'),
(30, 'bagasfadhil', 'Colletrichum (Antranoksa)', 'KEC SINGOSARI,KABUPATEN MALANG,PROVINSI JAWA TIMUR', '1591916190282'),
(34, 'zulfikar', 'Damping off (Rebah Kecambah)', 'KEC LOWOKWARU,KOTA MALANG,PROVINSI JAWA TIMUR', '1593662312524'),
(35, 'bawazir', 'Damping off (Rebah Kecambah)', 'KEC DAMPIT,KABUPATEN MALANG,PROVINSI JAWA TIMUR', '1593694552562'),
(36, 'bawazirzulfikar', 'Damping off (Rebah Kecambah)', 'KEC DAMPIT,KABUPATEN MALANG,PROVINSI JAWA TIMUR', '1594016996430'),
(37, 'bayuhari', 'Damping off (Rebah Kecambah)', 'KEC AIRPURA,KABUPATEN PESISIR SELATAN,PROVINSI SUMATERA BARAT', '1594536763392');

-- --------------------------------------------------------

--
-- Table structure for table `feed_back`
--

CREATE TABLE `feed_back` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `feedback` text NOT NULL,
  `createdAt` varchar(100) NOT NULL,
  `updatedAt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feed_back`
--

INSERT INTO `feed_back` (`id`, `username`, `feedback`, `createdAt`, `updatedAt`) VALUES
(26, 'bawazir', 'bagus aplikasi', '1591883446400', '1593694614892'),
(27, 'bagasfadhil', 'keren', '1591916085677', '1591916085677'),
(28, 'zul', 'mantap', '1592378877593', '1592378877593'),
(30, 'bawazirzulfikar', 'polinema bagus', '1594017029238', '1594017046149'),
(31, 'bayuhari', 'asdasdaszczxc', '1594392043366', '1594392043366');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `kode` varchar(255) DEFAULT NULL,
  `gejala` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`kode`, `gejala`) VALUES
('G001', 'Semaian cabai gagal tumbuh'),
('G002', 'Biji yang sudah berkecambah\nmati tiba-tiba'),
('G003', 'Semaian kerdil'),
('G004', 'Semaian cabai sporadic\n(menyebar tidak beraturan)'),
('G005', 'Daun kekuningan dan layu yang dimulai dari daun bagian atas'),
('G006', 'Mati pucuk'),
('G007', 'Daun, ranting, dan cabang busuk kering berwarna coklat kehitam-hitaman'),
('G008', 'Buah timbul bercak lunak berwarna hitam dan busuk lunak'),
('G009', 'Pada batang acervuli cendawan terlihat berupa benjolan'),
('G010', 'Bercak dengan cepat menyebar pada luasan buah'),
('G011', 'Bercak bulat sirkuler berwarna abu-abu tua dan warna coklat di pinggirannya'),
('G012', 'Daun menjadi tua (menguning) sebelum waktunya'),
('G013', 'Bercak daun berukuran sekitar 0,25 cm'),
('G014', 'Sering terjadi sobekan dipusat daun'),
('G015', 'Leher batang busuk berwarna hijau setelah kering warna menjadi coklat/hitam'),
('G016', 'Kelayuan yang serentak dan tiba-tiba dari bagian tanaman lainnya'),
('G017', 'Busuk batang menjadi kering dan mengeras'),
('G018', 'Seluruh daun menjadi layu'),
('G019', 'Pada daun timbul bercak putih seperti tersiram air'),
('G020', 'Serangan pada akar mengakibatkan tanaman layu, mongering dan mati'),
('G021', 'Pucatnya tulang daun dan berwarna keputihan'),
('G022', 'Daun layu permanen tetapi tetap menempel pada batang'),
('G023', 'Pucuk daun berubah dari hijau muda menjadi coklat, membusuk dan hitam'),
('G024', 'Kebusukan merambat ke bagian bawah tanaman'),
('G025', 'Batang busuk kering dan mudah terkelupas'),
('G026', 'Kelembaban tinggi terbentuk bulu berwarna hitam'),
('G027', 'Timbul bintik putih yang dibatasi pinggiran warna hitam'),
('G028', 'Bercak pada batang dan tangkai daun berbentuk elips'),
('G029', 'Dibalik daun terdapat tepung berwarna putih keabu-abuan'),
('G030', 'Bagian bawah daun bercak berkembang menjadi jaringan nekrotik'),
('G031', 'Penyakit menjalar dari daun muda ke daun tua'),
('G032', 'Gejala awal tidak ada perubahan warna pada daun, tetapi setelah itu daun berubah menjadi kuning'),
('G033', 'Jaringan pada pangkal batang berwarna coklat dan membusuk'),
('G034', 'Benang benang cendawan berwarna putih terlihat pada pangkal batang'),
('G035', 'Bercak seperti tercelup air panas dengan warna hijau buram'),
('G036', 'Bercak basah pada buah berubah menjadi coklat kehitaman kemudian menjadi kering tetapi tetap menempel pada batang.');

-- --------------------------------------------------------

--
-- Table structure for table `gejalapenyakit`
--

CREATE TABLE `gejalapenyakit` (
  `id` int(11) NOT NULL,
  `kodepenyakit` varchar(255) DEFAULT NULL,
  `kodegejala` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gejalapenyakit`
--

INSERT INTO `gejalapenyakit` (`id`, `kodepenyakit`, `kodegejala`) VALUES
(4, 'P001', 'G001'),
(5, 'P001', 'G002'),
(6, 'P001', 'G003'),
(7, 'P001', 'G004'),
(8, 'P001', 'G005'),
(9, 'P002', 'G006'),
(10, 'P002', 'G007'),
(11, 'P002', 'G008'),
(12, 'P002', 'G009'),
(13, 'P002', 'G010'),
(14, 'P003', 'G011'),
(15, 'P003', 'G012'),
(16, 'P003', 'G013'),
(17, 'P003', 'G014'),
(18, 'P004', 'G004'),
(19, 'P004', 'G008'),
(20, 'P004', 'G015'),
(21, 'P004', 'G016'),
(22, 'P004', 'G017'),
(23, 'P004', 'G018'),
(24, 'P004', 'G019'),
(25, 'P004', 'G020'),
(26, 'P005', 'G005'),
(27, 'P005', 'G021'),
(28, 'P005', 'G022'),
(29, 'P006', 'G023'),
(30, 'P006', 'G024'),
(31, 'P006', 'G025'),
(32, 'P006', 'G026'),
(33, 'P007', 'G027'),
(34, 'P007', 'G028'),
(35, 'P007', 'G011'),
(36, 'P008', 'G005'),
(37, 'P008', 'G029'),
(38, 'P008', 'G030'),
(39, 'P008', 'G031'),
(40, 'P009', 'G032'),
(41, 'P009', 'G033'),
(42, 'P009', 'G034');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `kode` varchar(255) DEFAULT NULL,
  `penyakit` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) NOT NULL DEFAULT '',
  `gambar` varchar(255) NOT NULL DEFAULT '',
  `solusi` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`kode`, `penyakit`, `deskripsi`, `gambar`, `solusi`) VALUES
('P001', 'Damping off (Rebah Kecambah)', 'asdas', 'https://21994ae5e79a.ngrok.io/diagnosacabai/uploads/P001.jpg', 'dasdasd'),
('P002', 'Colletrichum (Antranoksa)', 'deskripsi2', 'https://21994ae5e79a.ngrok.io/diagnosacabai/uploads/P002.jpg', 'solusi2'),
('P003', 'Cercospora capsici (Bercak daun\nserkorpora)', '', '', ''),
('P004', 'Busuk daun Phytophthora (Busuk\ndaun fitoftora)', '', '', ''),
('P005', 'Fusarium oxysporum (Layu\nFusarium)', '', '', ''),
('P006', 'Busuk daun Choanephora', '', '', ''),
('P007', 'Bercak kelabu stemphylium', '', '', ''),
('P008', 'Embun tepung', '', '', ''),
('P009', 'Busuk pangkal akar', '', '', ''),
('P010', 'TEST', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`id`, `pertanyaan`) VALUES
(0, 'apakah Semaian cabai gagal tumbuh ?'),
(1, 'apakah \\\"Biji yang sudah berkecambah\\n\" + \"mati tiba-tiba\\\" ?'),
(2, 'apakah Semaian kerdil ?'),
(3, 'apakah \\\"Semaian cabai sporadic\\n\" + \"(menyebar tidak beraturan)\\\" ?'),
(4, 'apakah Daun kekuningan dan layu yang dimulai dari daun bagian atas ?'),
(5, 'apakah Mati pucuk ?'),
(6, 'apakah Daun, ranting, dan cabang busuk kering berwarna coklat kehitam-hitaman ?'),
(7, 'apakah Buah timbul bercak lunak berwarna hitam dan busuk lunak ?'),
(8, 'apakah Pada batang acervuli cendawan terlihat berupa benjolan ?'),
(9, 'apakah Bercak dengan cepat menyebar pada luasan buah ?'),
(10, 'apakah Bercak bulat sirkuler berwarna abu-abu tua dan warna coklat di pinggirannya ?'),
(11, 'apakah Daun menjadi tua (menguning) sebelum waktunya ?'),
(12, 'apakah Bercak daun berukuran sekitar 0,25 cm ?'),
(13, 'apakah Sering terjadi sobekan dipusat daun ?'),
(14, 'apakah Leher batang busuk berwarna hijau setelah kering warna menjadi coklat/hitam ?'),
(15, 'apakah Kelayuan yang serentak dan tiba-tiba dari bagian tanaman lainnya ?'),
(16, 'apakah Busuk batang menjadi kering dan mengeras ?'),
(17, 'apakah Seluruh daun menjadi layu ?'),
(18, 'apakah Pada daun timbul bercak putih seperti tersiram air ?'),
(19, 'apakah Serangan pada akar mengakibatkan tanaman layu, mongering dan mati ?'),
(20, 'apakah Pucatnya tulang daun dan berwarna keputihan ?'),
(21, 'apakah Daun layu permanen tetapi tetap menempel pada batang ?'),
(22, 'apakah Pucuk daun berubah dari hijau muda menjadi coklat, membusuk dan hitam ?'),
(23, 'apakah Kebusukan merambat ke bagian bawah tanaman ?'),
(24, 'apakah Batang busuk kering dan mudah terkelupas ?'),
(25, 'apakah Kelembaban tinggi terbentuk bulu berwarna hitam ?'),
(26, 'apakah Timbul bintik putih yang dibatasi pinggiran warna hitam ?'),
(27, 'apakah Bercak pada batang dan tangkai daun berbentuk elips ?'),
(28, 'apakah Dibalik daun terdapat tepung berwarna putih keabu-abuan ?'),
(29, 'apakah Bagian bawah daun bercak berkembang menjadi jaringan nekrotik ?'),
(30, 'apakah Penyakit menjalar dari daun muda ke daun tua ?'),
(31, 'apakah Gejala awal tidak ada perubahan warna pada daun, tetapi setelah itu daun berubah menjadi kuning ?'),
(32, 'apakah Jaringan pada pangkal batang berwarna coklat dan membusuk ?'),
(33, 'apakah Benang benang cendawan berwarna putih terlihat pada pangkal batang ?'),
(34, 'apakah Bercak seperti tercelup air panas dengan warna hijau buram ?'),
(35, 'apakah Bercak basah pada buah berubah menjadi coklat kehitaman kemudian menjadi kering tetapi tetap menempel pada batang ?\"');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaanpenyakit`
--

CREATE TABLE `pertanyaanpenyakit` (
  `id` int(11) NOT NULL,
  `idpertanyaan` int(11) DEFAULT NULL,
  `kodepenyakit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pertanyaanpenyakit`
--

INSERT INTO `pertanyaanpenyakit` (`id`, `idpertanyaan`, `kodepenyakit`) VALUES
(88, 0, 'P001'),
(89, 1, 'P001'),
(90, 2, 'P001'),
(91, 3, 'P001'),
(92, 4, 'P001'),
(93, 5, 'P002'),
(94, 6, 'P002'),
(95, 7, 'P002'),
(96, 8, 'P002'),
(97, 9, 'P002'),
(98, 10, 'P003'),
(99, 11, 'P003'),
(100, 12, 'P003'),
(101, 13, 'P003'),
(102, 3, 'P004'),
(103, 7, 'P004'),
(104, 14, 'P004'),
(105, 15, 'P004'),
(106, 16, 'P004'),
(107, 17, 'P004'),
(108, 18, 'P004'),
(109, 19, 'P004'),
(110, 4, 'P005'),
(111, 20, 'P005'),
(112, 21, 'P005'),
(113, 22, 'P006'),
(114, 23, 'P006'),
(115, 24, 'P006'),
(116, 25, 'P006'),
(117, 26, 'P007'),
(118, 27, 'P007'),
(119, 10, 'P007'),
(120, 4, 'P008'),
(121, 28, 'P008'),
(122, 29, 'P008'),
(123, 30, 'P008'),
(124, 31, 'P009'),
(125, 32, 'P009'),
(126, 33, 'P009'),
(127, 7, 'P010'),
(128, 9, 'P010'),
(129, 34, 'P010'),
(130, 35, 'P010');

-- --------------------------------------------------------

--
-- Table structure for table `user`
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
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `fullName`, `email`, `password`, `location`, `createdAt`, `updatedAt`) VALUES
('agung', 'Agung N', 'agung.pramudhita@gmail.com', 'd8578edf8458ce6fbc5bb76a58c5ca4', 'malang', '1592830544555', '1592830544555'),
('bagas', 'bagas', 'bagas@gmail.com', 'ee776a18253721efe8a62e4abd29dc47', 'malang', '1590545507831', '1590545507831'),
('bagasfadhil', 'bagas fadhil', 'bagasfadhil@gmail.com', 'ee776a18253721efe8a62e4abd29dc47', 'malang', '1591915780496', '1591915780496'),
('bawazir', 'bawazir fadhil m', 'bawazirfadhil@gmail.com', '7f6b9e26373371a3874c94469c7937e', 'malang', '1590545399338', '1590545399338'),
('bawazirfadhil', 'bawazirfadhil', 'bawazirf@gmail.com', '7f6b9e26373371a3874c94469c7937e', 'malang', '1593694226606', '1593694226606'),
('bawazirzulfikar', 'bawazir zulfikar', 'bawazirzulfikar@gmail.com', '7f6b9e26373371a3874c94469c7937e', 'malang', '1594016823428', '1594016823428'),
('bayuhari', 'bayuyuy', '24213432', '4297f44b13955235245b2497399d7a93', 'zxcxzcxzc', '1594391623726', '1594391623726'),
('kambeng123', 'kambenglucu', 'nabilboytube99@gmail.com', '70b5b96a12251163b722e460d926ee3f', 'lamongan', '1591598768846', '1591598768846'),
('tyo', 'tyo', 'tyo@gmail.com', '5bab541acd761a3093d7c4202b6e1da9', 'lamongan', '1591793392323', '1591793392323'),
('zul', 'zul', 'zul@gmail.com', '6911ceb67e45660207aa3fdf9f412c2', 'Lamongan', '1592378847333', '1592378847333'),
('zulfikar', 'Ahmad Zulfikar Rizaldi', 'zulfikar@gmail.com', '6672539d2b752e92c4efaab6881ad523', 'Malang', '1593662236309', '1593662236309');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `feed_back`
--
ALTER TABLE `feed_back`
  ADD PRIMARY KEY (`id`,`username`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD UNIQUE KEY `kode` (`kode`) USING BTREE;

--
-- Indexes for table `gejalapenyakit`
--
ALTER TABLE `gejalapenyakit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kodepenyakit` (`kodepenyakit`),
  ADD KEY `kodegejala` (`kodegejala`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD UNIQUE KEY `kode` (`kode`) USING BTREE;

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pertanyaanpenyakit`
--
ALTER TABLE `pertanyaanpenyakit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idpertanyaan` (`idpertanyaan`),
  ADD KEY `kodepenyakit` (`kodepenyakit`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `diagnosa`
--
ALTER TABLE `diagnosa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `feed_back`
--
ALTER TABLE `feed_back`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `gejalapenyakit`
--
ALTER TABLE `gejalapenyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `pertanyaanpenyakit`
--
ALTER TABLE `pertanyaanpenyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD CONSTRAINT `diagnosa_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feed_back`
--
ALTER TABLE `feed_back`
  ADD CONSTRAINT `feed_back_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gejalapenyakit`
--
ALTER TABLE `gejalapenyakit`
  ADD CONSTRAINT `gejalapenyakit_ibfk_1` FOREIGN KEY (`kodepenyakit`) REFERENCES `penyakit` (`kode`),
  ADD CONSTRAINT `gejalapenyakit_ibfk_2` FOREIGN KEY (`kodegejala`) REFERENCES `gejala` (`kode`);

--
-- Constraints for table `pertanyaanpenyakit`
--
ALTER TABLE `pertanyaanpenyakit`
  ADD CONSTRAINT `pertanyaanpenyakit_ibfk_1` FOREIGN KEY (`idpertanyaan`) REFERENCES `pertanyaan` (`id`),
  ADD CONSTRAINT `pertanyaanpenyakit_ibfk_2` FOREIGN KEY (`kodepenyakit`) REFERENCES `penyakit` (`kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
