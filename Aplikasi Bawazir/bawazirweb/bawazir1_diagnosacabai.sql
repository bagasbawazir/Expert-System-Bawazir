-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 30, 2021 at 07:56 PM
-- Server version: 10.3.29-MariaDB-log-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bawazir1_diagnosacabai`
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
  `persentase` varchar(1000) NOT NULL,
  `createdAt` varchar(100) NOT NULL,
  `detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diagnosa`
--

INSERT INTO `diagnosa` (`id`, `username`, `hasil`, `location`, `persentase`, `createdAt`, `detail`) VALUES
(23, 'bagas', 'Damping off (Rebah Kecambah)', 'KEC PULAU BANYAK BARAT,KABUPATEN ACEH SINGKIL,PROVINSI ACEH', '99%', '1590546172227', '[{\"id\": 2, \"cfuser\": \"0.8\"},{\"id\": 3, \"cfuser\": \"0.7\"}]'),
(24, 'bawazir', 'Damping off (Rebah Kecambah)', 'KEC LAMONGAN,KABUPATEN LAMONGAN,PROVINSI JAWA TIMUR', '80%', '1591508150635', ''),
(25, 'kambeng123', 'Colletrichum (Antranoksa)', 'KEC LAMONGAN,KABUPATEN LAMONGAN,PROVINSI JAWA TIMUR', '', '1591598954070', ''),
(26, 'bawazir', 'Damping off (Rebah Kecambah)', 'KEC LAMONGAN,KABUPATEN LAMONGAN,PROVINSI JAWA TIMUR', '', '1591793497246', ''),
(27, 'bawazir', 'Damping off (Rebah Kecambah)', 'KEC SUKABANGUN,KABUPATEN TAPANULI TENGAH,PROVINSI SUMATERA UTARA', '', '1591883350032', ''),
(28, 'bawazir', 'Damping off (Rebah Kecambah)', 'KEC SIBABANGUN,KABUPATEN TAPANULI TENGAH,PROVINSI SUMATERA UTARA', '', '1591887368940', ''),
(29, 'bagasfadhil', 'Damping off (Rebah Kecambah)', 'KEC LAMONGAN,KABUPATEN LAMONGAN,PROVINSI JAWA TIMUR', '', '1591915992755', ''),
(30, 'bagasfadhil', 'Colletrichum (Antranoksa)', 'KEC SINGOSARI,KABUPATEN MALANG,PROVINSI JAWA TIMUR', '', '1591916190282', ''),
(34, 'zulfikar', 'Damping off (Rebah Kecambah)', 'KEC LOWOKWARU,KOTA MALANG,PROVINSI JAWA TIMUR', '', '1593662312524', ''),
(35, 'bawazir', 'Damping off (Rebah Kecambah)', 'KEC DAMPIT,KABUPATEN MALANG,PROVINSI JAWA TIMUR', '', '1593694552562', ''),
(36, 'bawazirzulfikar', 'Damping off (Rebah Kecambah)', 'KEC DAMPIT,KABUPATEN MALANG,PROVINSI JAWA TIMUR', '', '1594016996430', ''),
(41, 'bawazir', 'Damping off (Rebah Kecambah)', 'KEC DAMPIT,KABUPATEN MALANG,PROVINSI JAWA TIMUR', '90.38504%', '1623039512080', ''),
(59, 'supriadi', 'Bercak Phytophthora (Bercak fitoftora pada buah)', 'KEC NASSAU,KABUPATEN TOBA SAMOSIR,PROVINSI SUMATERA UTARA', '16.000002%', '1624805466157', '[{\"cfPakar\":0.8,\"cfuser\":0.4,\"idPertanyaan\":\"0\",\"pertanyaan\":\"Apakah Semaian cabai gagal tumbuh ?\"},{\"cfPakar\":0.8,\"cfuser\":0.8,\"idPertanyaan\":\"1\",\"pertanyaan\":\"Apakah Biji yang sudah berkecambah mati tiba-tiba ?\"},{\"cfPakar\":0.8,\"cfuser\":0.4,\"idPertanyaan\":\"2\",\"pertanyaan\":\"Apakah Semaian kerdil ?\"},{\"cfPakar\":0.6,\"cfuser\":0.2,\"idPertanyaan\":\"3\",\"pertanyaan\":\"ApakahÂ SemaianÂ cabaiÂ sporadic (menyebarÂ tidakÂ beraturan) Â ?\"},{\"cfPakar\":0.4,\"cfuser\":0.6,\"idPertanyaan\":\"4\",\"pertanyaan\":\"Apakah Daun kekuningan dan layu yang dimulai dari daun bagian atas ?\"},{\"cfPakar\":0.4,\"cfuser\":1.0,\"idPertanyaan\":\"5\",\"pertanyaan\":\"Apakah mati pucuk ?\"},{\"cfPakar\":0.8,\"cfuser\":0.4,\"idPertanyaan\":\"6\",\"pertanyaan\":\"Apakah Daun, ranting, dan cabang busuk kering berwarna coklat kehitam-hitaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.2,\"idPertanyaan\":\"7\",\"pertanyaan\":\"Apakah Buah timbul bercak lunak berwarna hitam dan busuk lunak ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"8\",\"pertanyaan\":\"Apakah Pada batang acervuli cendawan terlihat berupa benjolan ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"9\",\"pertanyaan\":\"Apakah Bercak dengan cepat menyebar pada luasan buah ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"10\",\"pertanyaan\":\"Apakah Bercak bulat sirkuler berwarna abu-abu tua dan warna coklat di pinggirannya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"11\",\"pertanyaan\":\"Apakah Daun menjadi tua (menguning) sebelum waktunya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"12\",\"pertanyaan\":\"Apakah Bercak daun berukuran sekitar 0,25 cm ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"13\",\"pertanyaan\":\"Apakah Sering terjadi sobekan dipusat daun ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"14\",\"pertanyaan\":\"Apakah Leher batang busuk berwarna hijau setelah kering warna menjadi coklat/hitam ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"15\",\"pertanyaan\":\"Apakah Kelayuan yang serentak dan tiba-tiba dari bagian tanaman lainnya ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"16\",\"pertanyaan\":\"Apakah Busuk batang menjadi kering dan mengeras ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"17\",\"pertanyaan\":\"Apakah Seluruh daun menjadi layu ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"18\",\"pertanyaan\":\"Apakah Pada daun timbul bercak putih seperti tersiram air ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"19\",\"pertanyaan\":\"Apakah Serangan pada akar mengakibatkan tanaman layu, mongering dan mati ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"20\",\"pertanyaan\":\"Apakah Pucatnya tulang daun dan berwarna keputihan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"21\",\"pertanyaan\":\"Apakah Daun layu permanen tetapi tetap menempel pada batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"22\",\"pertanyaan\":\"Apakah Pucuk daun berubah dari hijau muda menjadi coklat, membusuk dan hitam ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"23\",\"pertanyaan\":\"Apakah Kebusukan merambat ke bagian bawah tanaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"24\",\"pertanyaan\":\"Apakah Batang busuk kering dan mudah terkelupas ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"25\",\"pertanyaan\":\"Apakah Kelembaban tinggi terbentuk bulu berwarna hitam ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"26\",\"pertanyaan\":\"Apakah Timbul bintik putih yang dibatasi pinggiran warna hitam ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"27\",\"pertanyaan\":\"Apakah Bercak pada batang dan tangkai daun berbentuk elips ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"28\",\"pertanyaan\":\"Apakah Dibalik daun terdapat tepung berwarna putih keabu-abuan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"29\",\"pertanyaan\":\"Apakah Bagian bawah daun bercak berkembang menjadi jaringan nekrotik ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"30\",\"pertanyaan\":\"Apakah Penyakit menjalar dari daun muda ke daun tua ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"31\",\"pertanyaan\":\"Apakah Gejala awal tidak ada perubahan warna pada daun, tetapi setelah itu daun berubah menjadi kuning ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"32\",\"pertanyaan\":\"Apakah Jaringan pada pangkal batang berwarna coklat dan membusuk ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"33\",\"pertanyaan\":\"Apakah Benang benang cendawan berwarna putih terlihat pada pangkal batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"34\",\"pertanyaan\":\"Apakah Bercak seperti tercelup air panas dengan warna hijau buram ?\"}]'),
(60, 'bawazir', 'Damping off (Rebah Kecambah)', 'KEC SIMPANG KANAN,KABUPATEN ACEH SINGKIL,PROVINSI ACEH', '95.41734%', '1624837657837', '[{\"cfPakar\":0.8,\"cfuser\":0.4,\"idPertanyaan\":\"0\",\"pertanyaan\":\"Apakah Semaian cabai gagal tumbuh ?\"},{\"cfPakar\":0.8,\"cfuser\":0.8,\"idPertanyaan\":\"1\",\"pertanyaan\":\"Apakah Biji yang sudah berkecambah mati tiba-tiba ?\"},{\"cfPakar\":0.8,\"cfuser\":0.8,\"idPertanyaan\":\"2\",\"pertanyaan\":\"Apakah Semaian kerdil ?\"},{\"cfPakar\":0.6,\"cfuser\":0.8,\"idPertanyaan\":\"3\",\"pertanyaan\":\"ApakahÂ SemaianÂ cabaiÂ sporadic (menyebarÂ tidakÂ beraturan) Â ?\"},{\"cfPakar\":0.4,\"cfuser\":0.0,\"idPertanyaan\":\"4\",\"pertanyaan\":\"Apakah Daun kekuningan dan layu yang dimulai dari daun bagian atas ?\"},{\"cfPakar\":0.4,\"cfuser\":0.0,\"idPertanyaan\":\"5\",\"pertanyaan\":\"Apakah mati pucuk ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"6\",\"pertanyaan\":\"Apakah Daun, ranting, dan cabang busuk kering berwarna coklat kehitam-hitaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"7\",\"pertanyaan\":\"Apakah Buah timbul bercak lunak berwarna hitam dan busuk lunak ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"8\",\"pertanyaan\":\"Apakah Pada batang acervuli cendawan terlihat berupa benjolan ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"9\",\"pertanyaan\":\"Apakah Bercak dengan cepat menyebar pada luasan buah ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"10\",\"pertanyaan\":\"Apakah Bercak bulat sirkuler berwarna abu-abu tua dan warna coklat di pinggirannya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"11\",\"pertanyaan\":\"Apakah Daun menjadi tua (menguning) sebelum waktunya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"12\",\"pertanyaan\":\"Apakah Bercak daun berukuran sekitar 0,25 cm ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"13\",\"pertanyaan\":\"Apakah Sering terjadi sobekan dipusat daun ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"14\",\"pertanyaan\":\"Apakah Leher batang busuk berwarna hijau setelah kering warna menjadi coklat/hitam ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"15\",\"pertanyaan\":\"Apakah Kelayuan yang serentak dan tiba-tiba dari bagian tanaman lainnya ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"16\",\"pertanyaan\":\"Apakah Busuk batang menjadi kering dan mengeras ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"17\",\"pertanyaan\":\"Apakah Seluruh daun menjadi layu ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"18\",\"pertanyaan\":\"Apakah Pada daun timbul bercak putih seperti tersiram air ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"19\",\"pertanyaan\":\"Apakah Serangan pada akar mengakibatkan tanaman layu, mongering dan mati ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"20\",\"pertanyaan\":\"Apakah Pucatnya tulang daun dan berwarna keputihan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"21\",\"pertanyaan\":\"Apakah Daun layu permanen tetapi tetap menempel pada batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"22\",\"pertanyaan\":\"Apakah Pucuk daun berubah dari hijau muda menjadi coklat, membusuk dan hitam ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"23\",\"pertanyaan\":\"Apakah Kebusukan merambat ke bagian bawah tanaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"24\",\"pertanyaan\":\"Apakah Batang busuk kering dan mudah terkelupas ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"25\",\"pertanyaan\":\"Apakah Kelembaban tinggi terbentuk bulu berwarna hitam ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"26\",\"pertanyaan\":\"Apakah Timbul bintik putih yang dibatasi pinggiran warna hitam ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"27\",\"pertanyaan\":\"Apakah Bercak pada batang dan tangkai daun berbentuk elips ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"28\",\"pertanyaan\":\"Apakah Dibalik daun terdapat tepung berwarna putih keabu-abuan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"29\",\"pertanyaan\":\"Apakah Bagian bawah daun bercak berkembang menjadi jaringan nekrotik ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"30\",\"pertanyaan\":\"Apakah Penyakit menjalar dari daun muda ke daun tua ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"31\",\"pertanyaan\":\"Apakah Gejala awal tidak ada perubahan warna pada daun, tetapi setelah itu daun berubah menjadi kuning ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"32\",\"pertanyaan\":\"Apakah Jaringan pada pangkal batang berwarna coklat dan membusuk ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"33\",\"pertanyaan\":\"Apakah Benang benang cendawan berwarna putih terlihat pada pangkal batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"34\",\"pertanyaan\":\"Apakah Bercak seperti tercelup air panas dengan warna hijau buram ?\"}]'),
(61, 'supriadi', 'Busuk daun Phytophthora (Busuk daun fitoftora)', 'KEC BORBOR,KABUPATEN TOBA SAMOSIR,PROVINSI SUMATERA UTARA', '99.45768%', '1624849589814', '[{\"cfPakar\":0.8,\"cfuser\":0.2,\"idPertanyaan\":\"0\",\"pertanyaan\":\"Apakah Semaian cabai gagal tumbuh ?\"},{\"cfPakar\":0.8,\"cfuser\":0.2,\"idPertanyaan\":\"1\",\"pertanyaan\":\"Apakah Biji yang sudah berkecambah mati tiba-tiba ?\"},{\"cfPakar\":0.8,\"cfuser\":0.2,\"idPertanyaan\":\"2\",\"pertanyaan\":\"Apakah Semaian kerdil ?\"},{\"cfPakar\":0.6,\"cfuser\":0.2,\"idPertanyaan\":\"3\",\"pertanyaan\":\"ApakahÂ SemaianÂ cabaiÂ sporadic (menyebarÂ tidakÂ beraturan) Â ?\"},{\"cfPakar\":0.4,\"cfuser\":0.2,\"idPertanyaan\":\"4\",\"pertanyaan\":\"Apakah Daun kekuningan dan layu yang dimulai dari daun bagian atas ?\"},{\"cfPakar\":0.4,\"cfuser\":0.2,\"idPertanyaan\":\"5\",\"pertanyaan\":\"Apakah mati pucuk ?\"},{\"cfPakar\":0.8,\"cfuser\":0.2,\"idPertanyaan\":\"6\",\"pertanyaan\":\"Apakah Daun, ranting, dan cabang busuk kering berwarna coklat kehitam-hitaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.2,\"idPertanyaan\":\"7\",\"pertanyaan\":\"Apakah Buah timbul bercak lunak berwarna hitam dan busuk lunak ?\"},{\"cfPakar\":0.6,\"cfuser\":0.2,\"idPertanyaan\":\"8\",\"pertanyaan\":\"Apakah Pada batang acervuli cendawan terlihat berupa benjolan ?\"},{\"cfPakar\":1.0,\"cfuser\":0.8,\"idPertanyaan\":\"9\",\"pertanyaan\":\"Apakah Bercak dengan cepat menyebar pada luasan buah ?\"},{\"cfPakar\":1.0,\"cfuser\":0.8,\"idPertanyaan\":\"10\",\"pertanyaan\":\"Apakah Bercak bulat sirkuler berwarna abu-abu tua dan warna coklat di pinggirannya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.8,\"idPertanyaan\":\"11\",\"pertanyaan\":\"Apakah Daun menjadi tua (menguning) sebelum waktunya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.8,\"idPertanyaan\":\"12\",\"pertanyaan\":\"Apakah Bercak daun berukuran sekitar 0,25 cm ?\"},{\"cfPakar\":1.0,\"cfuser\":0.8,\"idPertanyaan\":\"13\",\"pertanyaan\":\"Apakah Sering terjadi sobekan dipusat daun ?\"},{\"cfPakar\":0.8,\"cfuser\":0.8,\"idPertanyaan\":\"14\",\"pertanyaan\":\"Apakah Leher batang busuk berwarna hijau setelah kering warna menjadi coklat/hitam ?\"},{\"cfPakar\":0.2,\"cfuser\":0.8,\"idPertanyaan\":\"15\",\"pertanyaan\":\"Apakah Kelayuan yang serentak dan tiba-tiba dari bagian tanaman lainnya ?\"},{\"cfPakar\":0.6,\"cfuser\":0.8,\"idPertanyaan\":\"16\",\"pertanyaan\":\"Apakah Busuk batang menjadi kering dan mengeras ?\"},{\"cfPakar\":0.8,\"cfuser\":0.8,\"idPertanyaan\":\"17\",\"pertanyaan\":\"Apakah Seluruh daun menjadi layu ?\"},{\"cfPakar\":0.8,\"cfuser\":0.8,\"idPertanyaan\":\"18\",\"pertanyaan\":\"Apakah Pada daun timbul bercak putih seperti tersiram air ?\"},{\"cfPakar\":0.8,\"cfuser\":0.8,\"idPertanyaan\":\"19\",\"pertanyaan\":\"Apakah Serangan pada akar mengakibatkan tanaman layu, mongering dan mati ?\"},{\"cfPakar\":0.8,\"cfuser\":0.8,\"idPertanyaan\":\"20\",\"pertanyaan\":\"Apakah Pucatnya tulang daun dan berwarna keputihan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.2,\"idPertanyaan\":\"21\",\"pertanyaan\":\"Apakah Daun layu permanen tetapi tetap menempel pada batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.2,\"idPertanyaan\":\"22\",\"pertanyaan\":\"Apakah Pucuk daun berubah dari hijau muda menjadi coklat, membusuk dan hitam ?\"},{\"cfPakar\":0.8,\"cfuser\":0.2,\"idPertanyaan\":\"23\",\"pertanyaan\":\"Apakah Kebusukan merambat ke bagian bawah tanaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.2,\"idPertanyaan\":\"24\",\"pertanyaan\":\"Apakah Batang busuk kering dan mudah terkelupas ?\"},{\"cfPakar\":0.6,\"cfuser\":0.2,\"idPertanyaan\":\"25\",\"pertanyaan\":\"Apakah Kelembaban tinggi terbentuk bulu berwarna hitam ?\"},{\"cfPakar\":1.0,\"cfuser\":0.2,\"idPertanyaan\":\"26\",\"pertanyaan\":\"Apakah Timbul bintik putih yang dibatasi pinggiran warna hitam ?\"},{\"cfPakar\":0.6,\"cfuser\":0.2,\"idPertanyaan\":\"27\",\"pertanyaan\":\"Apakah Bercak pada batang dan tangkai daun berbentuk elips ?\"},{\"cfPakar\":1.0,\"cfuser\":0.2,\"idPertanyaan\":\"28\",\"pertanyaan\":\"Apakah Dibalik daun terdapat tepung berwarna putih keabu-abuan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.8,\"idPertanyaan\":\"29\",\"pertanyaan\":\"Apakah Bagian bawah daun bercak berkembang menjadi jaringan nekrotik ?\"},{\"cfPakar\":0.8,\"cfuser\":0.8,\"idPertanyaan\":\"30\",\"pertanyaan\":\"Apakah Penyakit menjalar dari daun muda ke daun tua ?\"},{\"cfPakar\":0.8,\"cfuser\":0.8,\"idPertanyaan\":\"31\",\"pertanyaan\":\"Apakah Gejala awal tidak ada perubahan warna pada daun, tetapi setelah itu daun berubah menjadi kuning ?\"},{\"cfPakar\":0.8,\"cfuser\":0.8,\"idPertanyaan\":\"32\",\"pertanyaan\":\"Apakah Jaringan pada pangkal batang berwarna coklat dan membusuk ?\"},{\"cfPakar\":0.2,\"cfuser\":0.8,\"idPertanyaan\":\"33\",\"pertanyaan\":\"Apakah Benang benang cendawan berwarna putih terlihat pada pangkal batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.8,\"idPertanyaan\":\"34\",\"pertanyaan\":\"Apakah Bercak seperti tercelup air panas dengan warna hijau buram ?\"}]'),
(62, 'bawazir', 'Damping off (Rebah Kecambah)', 'KEC DONOMULYO,KABUPATEN MALANG,PROVINSI JAWA TIMUR', '93.16083%', '1624885698177', '[{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"0\",\"pertanyaan\":\"Apakah Semaian cabai gagal tumbuh ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"1\",\"pertanyaan\":\"Apakah Biji yang sudah berkecambah mati tiba-tiba ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"2\",\"pertanyaan\":\"Apakah Semaian kerdil ?\"},{\"cfPakar\":0.6,\"cfuser\":0.6,\"idPertanyaan\":\"3\",\"pertanyaan\":\"Apakah Semaian cabai sporadic (menyebar tidak beraturan) ?\"},{\"cfPakar\":0.4,\"cfuser\":0.6,\"idPertanyaan\":\"4\",\"pertanyaan\":\"Apakah Daun kekuningan dan layu yang dimulai dari daun bagian atas ?\"},{\"cfPakar\":0.4,\"cfuser\":0.6,\"idPertanyaan\":\"5\",\"pertanyaan\":\"Apakah mati pucuk ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"6\",\"pertanyaan\":\"Apakah Daun, ranting, dan cabang busuk kering berwarna coklat kehitam-hitaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"7\",\"pertanyaan\":\"Apakah Buah timbul bercak lunak berwarna hitam dan busuk lunak ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"8\",\"pertanyaan\":\"Apakah Pada batang acervuli cendawan terlihat berupa benjolan ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"9\",\"pertanyaan\":\"Apakah Bercak dengan cepat menyebar pada luasan buah ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"10\",\"pertanyaan\":\"Apakah Bercak bulat sirkuler berwarna abu-abu tua dan warna coklat di pinggirannya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"11\",\"pertanyaan\":\"Apakah Daun menjadi tua (menguning) sebelum waktunya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"12\",\"pertanyaan\":\"Apakah Bercak daun berukuran sekitar 0,25 cm ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"13\",\"pertanyaan\":\"Apakah Sering terjadi sobekan dipusat daun ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"14\",\"pertanyaan\":\"Apakah Leher batang busuk berwarna hijau setelah kering warna menjadi coklat/hitam ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"15\",\"pertanyaan\":\"Apakah Kelayuan yang serentak dan tiba-tiba dari bagian tanaman lainnya ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"16\",\"pertanyaan\":\"Apakah Busuk batang menjadi kering dan mengeras ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"17\",\"pertanyaan\":\"Apakah Seluruh daun menjadi layu ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"18\",\"pertanyaan\":\"Apakah Pada daun timbul bercak putih seperti tersiram air ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"19\",\"pertanyaan\":\"Apakah Serangan pada akar mengakibatkan tanaman layu, mongering dan mati ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"20\",\"pertanyaan\":\"Apakah Pucatnya tulang daun dan berwarna keputihan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"21\",\"pertanyaan\":\"Apakah Daun layu permanen tetapi tetap menempel pada batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"22\",\"pertanyaan\":\"Apakah Pucuk daun berubah dari hijau muda menjadi coklat, membusuk dan hitam ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"23\",\"pertanyaan\":\"Apakah Kebusukan merambat ke bagian bawah tanaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"24\",\"pertanyaan\":\"Apakah Batang busuk kering dan mudah terkelupas ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"25\",\"pertanyaan\":\"Apakah Kelembaban tinggi terbentuk bulu berwarna hitam ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"26\",\"pertanyaan\":\"Apakah Timbul bintik putih yang dibatasi pinggiran warna hitam ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"27\",\"pertanyaan\":\"Apakah Bercak pada batang dan tangkai daun berbentuk elips ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"28\",\"pertanyaan\":\"Apakah Dibalik daun terdapat tepung berwarna putih keabu-abuan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"29\",\"pertanyaan\":\"Apakah Bagian bawah daun bercak berkembang menjadi jaringan nekrotik ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"30\",\"pertanyaan\":\"Apakah Penyakit menjalar dari daun muda ke daun tua ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"31\",\"pertanyaan\":\"Apakah Gejala awal tidak ada perubahan warna pada daun, tetapi setelah itu daun berubah menjadi kuning ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"32\",\"pertanyaan\":\"Apakah Jaringan pada pangkal batang berwarna coklat dan membusuk ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"33\",\"pertanyaan\":\"Apakah Benang benang cendawan berwarna putih terlihat pada pangkal batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"34\",\"pertanyaan\":\"Apakah Bercak seperti tercelup air panas dengan warna hijau buram ?\"}]'),
(63, 'bawazir', 'Busuk daun Phytophthora (Busuk daun fitoftora)', 'KEC SUMBERMANJING,KABUPATEN MALANG,PROVINSI JAWA TIMUR', '36.0%', '1624886013285', '[{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"0\",\"pertanyaan\":\"Apakah Semaian cabai gagal tumbuh ?\"},{\"cfPakar\":0.8,\"cfuser\":0.4,\"idPertanyaan\":\"1\",\"pertanyaan\":\"Apakah Biji yang sudah berkecambah mati tiba-tiba ?\"},{\"cfPakar\":0.8,\"cfuser\":0.2,\"idPertanyaan\":\"2\",\"pertanyaan\":\"Apakah Semaian kerdil ?\"},{\"cfPakar\":0.6,\"cfuser\":0.6,\"idPertanyaan\":\"3\",\"pertanyaan\":\"Apakah Semaian cabai sporadic (menyebar tidak beraturan) ?\"},{\"cfPakar\":0.4,\"cfuser\":0.0,\"idPertanyaan\":\"4\",\"pertanyaan\":\"Apakah Daun kekuningan dan layu yang dimulai dari daun bagian atas ?\"},{\"cfPakar\":0.4,\"cfuser\":0.0,\"idPertanyaan\":\"5\",\"pertanyaan\":\"Apakah mati pucuk ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"6\",\"pertanyaan\":\"Apakah Daun, ranting, dan cabang busuk kering berwarna coklat kehitam-hitaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"7\",\"pertanyaan\":\"Apakah Buah timbul bercak lunak berwarna hitam dan busuk lunak ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"8\",\"pertanyaan\":\"Apakah Pada batang acervuli cendawan terlihat berupa benjolan ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"9\",\"pertanyaan\":\"Apakah Bercak dengan cepat menyebar pada luasan buah ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"10\",\"pertanyaan\":\"Apakah Bercak bulat sirkuler berwarna abu-abu tua dan warna coklat di pinggirannya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"11\",\"pertanyaan\":\"Apakah Daun menjadi tua (menguning) sebelum waktunya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"12\",\"pertanyaan\":\"Apakah Bercak daun berukuran sekitar 0,25 cm ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"13\",\"pertanyaan\":\"Apakah Sering terjadi sobekan dipusat daun ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"14\",\"pertanyaan\":\"Apakah Leher batang busuk berwarna hijau setelah kering warna menjadi coklat/hitam ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"15\",\"pertanyaan\":\"Apakah Kelayuan yang serentak dan tiba-tiba dari bagian tanaman lainnya ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"16\",\"pertanyaan\":\"Apakah Busuk batang menjadi kering dan mengeras ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"17\",\"pertanyaan\":\"Apakah Seluruh daun menjadi layu ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"18\",\"pertanyaan\":\"Apakah Pada daun timbul bercak putih seperti tersiram air ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"19\",\"pertanyaan\":\"Apakah Serangan pada akar mengakibatkan tanaman layu, mongering dan mati ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"20\",\"pertanyaan\":\"Apakah Pucatnya tulang daun dan berwarna keputihan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"21\",\"pertanyaan\":\"Apakah Daun layu permanen tetapi tetap menempel pada batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"22\",\"pertanyaan\":\"Apakah Pucuk daun berubah dari hijau muda menjadi coklat, membusuk dan hitam ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"23\",\"pertanyaan\":\"Apakah Kebusukan merambat ke bagian bawah tanaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"24\",\"pertanyaan\":\"Apakah Batang busuk kering dan mudah terkelupas ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"25\",\"pertanyaan\":\"Apakah Kelembaban tinggi terbentuk bulu berwarna hitam ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"26\",\"pertanyaan\":\"Apakah Timbul bintik putih yang dibatasi pinggiran warna hitam ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"27\",\"pertanyaan\":\"Apakah Bercak pada batang dan tangkai daun berbentuk elips ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"28\",\"pertanyaan\":\"Apakah Dibalik daun terdapat tepung berwarna putih keabu-abuan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"29\",\"pertanyaan\":\"Apakah Bagian bawah daun bercak berkembang menjadi jaringan nekrotik ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"30\",\"pertanyaan\":\"Apakah Penyakit menjalar dari daun muda ke daun tua ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"31\",\"pertanyaan\":\"Apakah Gejala awal tidak ada perubahan warna pada daun, tetapi setelah itu daun berubah menjadi kuning ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"32\",\"pertanyaan\":\"Apakah Jaringan pada pangkal batang berwarna coklat dan membusuk ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"33\",\"pertanyaan\":\"Apakah Benang benang cendawan berwarna putih terlihat pada pangkal batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"34\",\"pertanyaan\":\"Apakah Bercak seperti tercelup air panas dengan warna hijau buram ?\"}]'),
(64, 'bawazir', 'Damping off (Rebah Kecambah)', 'KEC PAHAE JULU,KABUPATEN TAPANULI UTARA,PROVINSI SUMATERA UTARA', '80.99046%', '1624886130143', '[{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"0\",\"pertanyaan\":\"Apakah Semaian cabai gagal tumbuh ?\"},{\"cfPakar\":0.8,\"cfuser\":0.4,\"idPertanyaan\":\"1\",\"pertanyaan\":\"Apakah Biji yang sudah berkecambah mati tiba-tiba ?\"},{\"cfPakar\":0.8,\"cfuser\":0.2,\"idPertanyaan\":\"2\",\"pertanyaan\":\"Apakah Semaian kerdil ?\"},{\"cfPakar\":0.6,\"cfuser\":0.6,\"idPertanyaan\":\"3\",\"pertanyaan\":\"Apakah Semaian cabai sporadic (menyebar tidak beraturan) ?\"},{\"cfPakar\":0.4,\"cfuser\":0.0,\"idPertanyaan\":\"4\",\"pertanyaan\":\"Apakah Daun kekuningan dan layu yang dimulai dari daun bagian atas ?\"},{\"cfPakar\":0.4,\"cfuser\":0.0,\"idPertanyaan\":\"5\",\"pertanyaan\":\"Apakah mati pucuk ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"6\",\"pertanyaan\":\"Apakah Daun, ranting, dan cabang busuk kering berwarna coklat kehitam-hitaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"7\",\"pertanyaan\":\"Apakah Buah timbul bercak lunak berwarna hitam dan busuk lunak ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"8\",\"pertanyaan\":\"Apakah Pada batang acervuli cendawan terlihat berupa benjolan ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"9\",\"pertanyaan\":\"Apakah Bercak dengan cepat menyebar pada luasan buah ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"10\",\"pertanyaan\":\"Apakah Bercak bulat sirkuler berwarna abu-abu tua dan warna coklat di pinggirannya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"11\",\"pertanyaan\":\"Apakah Daun menjadi tua (menguning) sebelum waktunya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"12\",\"pertanyaan\":\"Apakah Bercak daun berukuran sekitar 0,25 cm ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"13\",\"pertanyaan\":\"Apakah Sering terjadi sobekan dipusat daun ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"14\",\"pertanyaan\":\"Apakah Leher batang busuk berwarna hijau setelah kering warna menjadi coklat/hitam ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"15\",\"pertanyaan\":\"Apakah Kelayuan yang serentak dan tiba-tiba dari bagian tanaman lainnya ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"16\",\"pertanyaan\":\"Apakah Busuk batang menjadi kering dan mengeras ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"17\",\"pertanyaan\":\"Apakah Seluruh daun menjadi layu ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"18\",\"pertanyaan\":\"Apakah Pada daun timbul bercak putih seperti tersiram air ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"19\",\"pertanyaan\":\"Apakah Serangan pada akar mengakibatkan tanaman layu, mongering dan mati ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"20\",\"pertanyaan\":\"Apakah Pucatnya tulang daun dan berwarna keputihan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"21\",\"pertanyaan\":\"Apakah Daun layu permanen tetapi tetap menempel pada batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"22\",\"pertanyaan\":\"Apakah Pucuk daun berubah dari hijau muda menjadi coklat, membusuk dan hitam ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"23\",\"pertanyaan\":\"Apakah Kebusukan merambat ke bagian bawah tanaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"24\",\"pertanyaan\":\"Apakah Batang busuk kering dan mudah terkelupas ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"25\",\"pertanyaan\":\"Apakah Kelembaban tinggi terbentuk bulu berwarna hitam ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"26\",\"pertanyaan\":\"Apakah Timbul bintik putih yang dibatasi pinggiran warna hitam ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"27\",\"pertanyaan\":\"Apakah Bercak pada batang dan tangkai daun berbentuk elips ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"28\",\"pertanyaan\":\"Apakah Dibalik daun terdapat tepung berwarna putih keabu-abuan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"29\",\"pertanyaan\":\"Apakah Bagian bawah daun bercak berkembang menjadi jaringan nekrotik ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"30\",\"pertanyaan\":\"Apakah Penyakit menjalar dari daun muda ke daun tua ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"31\",\"pertanyaan\":\"Apakah Gejala awal tidak ada perubahan warna pada daun, tetapi setelah itu daun berubah menjadi kuning ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"32\",\"pertanyaan\":\"Apakah Jaringan pada pangkal batang berwarna coklat dan membusuk ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"33\",\"pertanyaan\":\"Apakah Benang benang cendawan berwarna putih terlihat pada pangkal batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"34\",\"pertanyaan\":\"Apakah Bercak seperti tercelup air panas dengan warna hijau buram ?\"}]'),
(65, 'bagas', 'Damping off (Rebah Kecambah)', 'KEC IV NAGARI,KABUPATEN SIJUNJUNG,PROVINSI SUMATERA BARAT', '89.00522%', '1624887781504', '[{\"cfPakar\":0.8,\"cfuser\":0.8,\"idPertanyaan\":\"0\",\"pertanyaan\":\"Apakah Semaian cabai gagal tumbuh ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"1\",\"pertanyaan\":\"Apakah Biji yang sudah berkecambah mati tiba-tiba ?\"},{\"cfPakar\":0.8,\"cfuser\":0.2,\"idPertanyaan\":\"2\",\"pertanyaan\":\"Apakah Semaian kerdil ?\"},{\"cfPakar\":0.6,\"cfuser\":0.4,\"idPertanyaan\":\"3\",\"pertanyaan\":\"Apakah Semaian cabai sporadic (menyebar tidak beraturan) ?\"},{\"cfPakar\":0.4,\"cfuser\":0.2,\"idPertanyaan\":\"4\",\"pertanyaan\":\"Apakah Daun kekuningan dan layu yang dimulai dari daun bagian atas ?\"},{\"cfPakar\":0.4,\"cfuser\":0.0,\"idPertanyaan\":\"5\",\"pertanyaan\":\"Apakah mati pucuk ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"6\",\"pertanyaan\":\"Apakah Daun, ranting, dan cabang busuk kering berwarna coklat kehitam-hitaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"7\",\"pertanyaan\":\"Apakah Buah timbul bercak lunak berwarna hitam dan busuk lunak ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"8\",\"pertanyaan\":\"Apakah Pada batang acervuli cendawan terlihat berupa benjolan ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"9\",\"pertanyaan\":\"Apakah Bercak dengan cepat menyebar pada luasan buah ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"10\",\"pertanyaan\":\"Apakah Bercak bulat sirkuler berwarna abu-abu tua dan warna coklat di pinggirannya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"11\",\"pertanyaan\":\"Apakah Daun menjadi tua (menguning) sebelum waktunya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"12\",\"pertanyaan\":\"Apakah Bercak daun berukuran sekitar 0,25 cm ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"13\",\"pertanyaan\":\"Apakah Sering terjadi sobekan dipusat daun ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"14\",\"pertanyaan\":\"Apakah Leher batang busuk berwarna hijau setelah kering warna menjadi coklat/hitam ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"15\",\"pertanyaan\":\"Apakah Kelayuan yang serentak dan tiba-tiba dari bagian tanaman lainnya ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"16\",\"pertanyaan\":\"Apakah Busuk batang menjadi kering dan mengeras ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"17\",\"pertanyaan\":\"Apakah Seluruh daun menjadi layu ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"18\",\"pertanyaan\":\"Apakah Pada daun timbul bercak putih seperti tersiram air ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"19\",\"pertanyaan\":\"Apakah Serangan pada akar mengakibatkan tanaman layu, mongering dan mati ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"20\",\"pertanyaan\":\"Apakah Pucatnya tulang daun dan berwarna keputihan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"21\",\"pertanyaan\":\"Apakah Daun layu permanen tetapi tetap menempel pada batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"22\",\"pertanyaan\":\"Apakah Pucuk daun berubah dari hijau muda menjadi coklat, membusuk dan hitam ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"23\",\"pertanyaan\":\"Apakah Kebusukan merambat ke bagian bawah tanaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"24\",\"pertanyaan\":\"Apakah Batang busuk kering dan mudah terkelupas ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"25\",\"pertanyaan\":\"Apakah Kelembaban tinggi terbentuk bulu berwarna hitam ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"26\",\"pertanyaan\":\"Apakah Timbul bintik putih yang dibatasi pinggiran warna hitam ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"27\",\"pertanyaan\":\"Apakah Bercak pada batang dan tangkai daun berbentuk elips ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"28\",\"pertanyaan\":\"Apakah Dibalik daun terdapat tepung berwarna putih keabu-abuan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"29\",\"pertanyaan\":\"Apakah Bagian bawah daun bercak berkembang menjadi jaringan nekrotik ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"30\",\"pertanyaan\":\"Apakah Penyakit menjalar dari daun muda ke daun tua ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"31\",\"pertanyaan\":\"Apakah Gejala awal tidak ada perubahan warna pada daun, tetapi setelah itu daun berubah menjadi kuning ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"32\",\"pertanyaan\":\"Apakah Jaringan pada pangkal batang berwarna coklat dan membusuk ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"33\",\"pertanyaan\":\"Apakah Benang benang cendawan berwarna putih terlihat pada pangkal batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"34\",\"pertanyaan\":\"Apakah Bercak seperti tercelup air panas dengan warna hijau buram ?\"}]'),
(66, 'bagas', 'Fusarium oxysporum (Layu Fusarium)', 'KEC PAHAE JULU,KABUPATEN TAPANULI UTARA,PROVINSI SUMATERA UTARA', '8.000001%', '1624887798941', '[{\"cfPakar\":0.8,\"cfuser\":0.8,\"idPertanyaan\":\"0\",\"pertanyaan\":\"Apakah Semaian cabai gagal tumbuh ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"1\",\"pertanyaan\":\"Apakah Biji yang sudah berkecambah mati tiba-tiba ?\"},{\"cfPakar\":0.8,\"cfuser\":0.2,\"idPertanyaan\":\"2\",\"pertanyaan\":\"Apakah Semaian kerdil ?\"},{\"cfPakar\":0.6,\"cfuser\":0.4,\"idPertanyaan\":\"3\",\"pertanyaan\":\"Apakah Semaian cabai sporadic (menyebar tidak beraturan) ?\"},{\"cfPakar\":0.4,\"cfuser\":0.2,\"idPertanyaan\":\"4\",\"pertanyaan\":\"Apakah Daun kekuningan dan layu yang dimulai dari daun bagian atas ?\"},{\"cfPakar\":0.4,\"cfuser\":0.0,\"idPertanyaan\":\"5\",\"pertanyaan\":\"Apakah mati pucuk ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"6\",\"pertanyaan\":\"Apakah Daun, ranting, dan cabang busuk kering berwarna coklat kehitam-hitaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"7\",\"pertanyaan\":\"Apakah Buah timbul bercak lunak berwarna hitam dan busuk lunak ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"8\",\"pertanyaan\":\"Apakah Pada batang acervuli cendawan terlihat berupa benjolan ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"9\",\"pertanyaan\":\"Apakah Bercak dengan cepat menyebar pada luasan buah ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"10\",\"pertanyaan\":\"Apakah Bercak bulat sirkuler berwarna abu-abu tua dan warna coklat di pinggirannya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"11\",\"pertanyaan\":\"Apakah Daun menjadi tua (menguning) sebelum waktunya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"12\",\"pertanyaan\":\"Apakah Bercak daun berukuran sekitar 0,25 cm ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"13\",\"pertanyaan\":\"Apakah Sering terjadi sobekan dipusat daun ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"14\",\"pertanyaan\":\"Apakah Leher batang busuk berwarna hijau setelah kering warna menjadi coklat/hitam ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"15\",\"pertanyaan\":\"Apakah Kelayuan yang serentak dan tiba-tiba dari bagian tanaman lainnya ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"16\",\"pertanyaan\":\"Apakah Busuk batang menjadi kering dan mengeras ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"17\",\"pertanyaan\":\"Apakah Seluruh daun menjadi layu ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"18\",\"pertanyaan\":\"Apakah Pada daun timbul bercak putih seperti tersiram air ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"19\",\"pertanyaan\":\"Apakah Serangan pada akar mengakibatkan tanaman layu, mongering dan mati ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"20\",\"pertanyaan\":\"Apakah Pucatnya tulang daun dan berwarna keputihan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"21\",\"pertanyaan\":\"Apakah Daun layu permanen tetapi tetap menempel pada batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"22\",\"pertanyaan\":\"Apakah Pucuk daun berubah dari hijau muda menjadi coklat, membusuk dan hitam ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"23\",\"pertanyaan\":\"Apakah Kebusukan merambat ke bagian bawah tanaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"24\",\"pertanyaan\":\"Apakah Batang busuk kering dan mudah terkelupas ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"25\",\"pertanyaan\":\"Apakah Kelembaban tinggi terbentuk bulu berwarna hitam ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"26\",\"pertanyaan\":\"Apakah Timbul bintik putih yang dibatasi pinggiran warna hitam ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"27\",\"pertanyaan\":\"Apakah Bercak pada batang dan tangkai daun berbentuk elips ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"28\",\"pertanyaan\":\"Apakah Dibalik daun terdapat tepung berwarna putih keabu-abuan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"29\",\"pertanyaan\":\"Apakah Bagian bawah daun bercak berkembang menjadi jaringan nekrotik ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"30\",\"pertanyaan\":\"Apakah Penyakit menjalar dari daun muda ke daun tua ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"31\",\"pertanyaan\":\"Apakah Gejala awal tidak ada perubahan warna pada daun, tetapi setelah itu daun berubah menjadi kuning ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"32\",\"pertanyaan\":\"Apakah Jaringan pada pangkal batang berwarna coklat dan membusuk ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"33\",\"pertanyaan\":\"Apakah Benang benang cendawan berwarna putih terlihat pada pangkal batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"34\",\"pertanyaan\":\"Apakah Bercak seperti tercelup air panas dengan warna hijau buram ?\"}]'),
(67, 'bagas', 'Busuk daun Phytophthora (Busuk daun fitoftora)', 'KEC PAHAE JULU,KABUPATEN TAPANULI UTARA,PROVINSI SUMATERA UTARA', '24.0%', '1624888337044', '[{\"cfPakar\":0.8,\"cfuser\":0.8,\"idPertanyaan\":\"0\",\"pertanyaan\":\"Apakah Semaian cabai gagal tumbuh ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"1\",\"pertanyaan\":\"Apakah Biji yang sudah berkecambah mati tiba-tiba ?\"},{\"cfPakar\":0.8,\"cfuser\":0.2,\"idPertanyaan\":\"2\",\"pertanyaan\":\"Apakah Semaian kerdil ?\"},{\"cfPakar\":0.6,\"cfuser\":0.4,\"idPertanyaan\":\"3\",\"pertanyaan\":\"Apakah Semaian cabai sporadic (menyebar tidak beraturan) ?\"},{\"cfPakar\":0.4,\"cfuser\":0.2,\"idPertanyaan\":\"4\",\"pertanyaan\":\"Apakah Daun kekuningan dan layu yang dimulai dari daun bagian atas ?\"},{\"cfPakar\":0.4,\"cfuser\":0.0,\"idPertanyaan\":\"5\",\"pertanyaan\":\"Apakah mati pucuk ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"6\",\"pertanyaan\":\"Apakah Daun, ranting, dan cabang busuk kering berwarna coklat kehitam-hitaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"7\",\"pertanyaan\":\"Apakah Buah timbul bercak lunak berwarna hitam dan busuk lunak ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"8\",\"pertanyaan\":\"Apakah Pada batang acervuli cendawan terlihat berupa benjolan ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"9\",\"pertanyaan\":\"Apakah Bercak dengan cepat menyebar pada luasan buah ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"10\",\"pertanyaan\":\"Apakah Bercak bulat sirkuler berwarna abu-abu tua dan warna coklat di pinggirannya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"11\",\"pertanyaan\":\"Apakah Daun menjadi tua (menguning) sebelum waktunya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"12\",\"pertanyaan\":\"Apakah Bercak daun berukuran sekitar 0,25 cm ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"13\",\"pertanyaan\":\"Apakah Sering terjadi sobekan dipusat daun ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"14\",\"pertanyaan\":\"Apakah Leher batang busuk berwarna hijau setelah kering warna menjadi coklat/hitam ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"15\",\"pertanyaan\":\"Apakah Kelayuan yang serentak dan tiba-tiba dari bagian tanaman lainnya ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"16\",\"pertanyaan\":\"Apakah Busuk batang menjadi kering dan mengeras ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"17\",\"pertanyaan\":\"Apakah Seluruh daun menjadi layu ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"18\",\"pertanyaan\":\"Apakah Pada daun timbul bercak putih seperti tersiram air ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"19\",\"pertanyaan\":\"Apakah Serangan pada akar mengakibatkan tanaman layu, mongering dan mati ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"20\",\"pertanyaan\":\"Apakah Pucatnya tulang daun dan berwarna keputihan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"21\",\"pertanyaan\":\"Apakah Daun layu permanen tetapi tetap menempel pada batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"22\",\"pertanyaan\":\"Apakah Pucuk daun berubah dari hijau muda menjadi coklat, membusuk dan hitam ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"23\",\"pertanyaan\":\"Apakah Kebusukan merambat ke bagian bawah tanaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"24\",\"pertanyaan\":\"Apakah Batang busuk kering dan mudah terkelupas ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"25\",\"pertanyaan\":\"Apakah Kelembaban tinggi terbentuk bulu berwarna hitam ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"26\",\"pertanyaan\":\"Apakah Timbul bintik putih yang dibatasi pinggiran warna hitam ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"27\",\"pertanyaan\":\"Apakah Bercak pada batang dan tangkai daun berbentuk elips ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"28\",\"pertanyaan\":\"Apakah Dibalik daun terdapat tepung berwarna putih keabu-abuan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"29\",\"pertanyaan\":\"Apakah Bagian bawah daun bercak berkembang menjadi jaringan nekrotik ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"30\",\"pertanyaan\":\"Apakah Penyakit menjalar dari daun muda ke daun tua ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"31\",\"pertanyaan\":\"Apakah Gejala awal tidak ada perubahan warna pada daun, tetapi setelah itu daun berubah menjadi kuning ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"32\",\"pertanyaan\":\"Apakah Jaringan pada pangkal batang berwarna coklat dan membusuk ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"33\",\"pertanyaan\":\"Apakah Benang benang cendawan berwarna putih terlihat pada pangkal batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"34\",\"pertanyaan\":\"Apakah Bercak seperti tercelup air panas dengan warna hijau buram ?\"}]');
INSERT INTO `diagnosa` (`id`, `username`, `hasil`, `location`, `persentase`, `createdAt`, `detail`) VALUES
(68, 'bagas', 'Busuk daun Phytophthora (Busuk daun fitoftora)', 'KEC HABINSARAN,KABUPATEN TOBA SAMOSIR,PROVINSI SUMATERA UTARA', '48.0%', '1624888635540', '[{\"cfPakar\":0.8,\"cfuser\":0.4,\"idPertanyaan\":\"0\",\"pertanyaan\":\"Apakah Semaian cabai gagal tumbuh ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"1\",\"pertanyaan\":\"Apakah Biji yang sudah berkecambah mati tiba-tiba ?\"},{\"cfPakar\":0.8,\"cfuser\":0.4,\"idPertanyaan\":\"2\",\"pertanyaan\":\"Apakah Semaian kerdil ?\"},{\"cfPakar\":0.6,\"cfuser\":0.8,\"idPertanyaan\":\"3\",\"pertanyaan\":\"Apakah Semaian cabai sporadic (menyebar tidak beraturan) ?\"},{\"cfPakar\":0.4,\"cfuser\":0.4,\"idPertanyaan\":\"4\",\"pertanyaan\":\"Apakah Daun kekuningan dan layu yang dimulai dari daun bagian atas ?\"},{\"cfPakar\":0.4,\"cfuser\":0.0,\"idPertanyaan\":\"5\",\"pertanyaan\":\"Apakah mati pucuk ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"6\",\"pertanyaan\":\"Apakah Daun, ranting, dan cabang busuk kering berwarna coklat kehitam-hitaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"7\",\"pertanyaan\":\"Apakah Buah timbul bercak lunak berwarna hitam dan busuk lunak ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"8\",\"pertanyaan\":\"Apakah Pada batang acervuli cendawan terlihat berupa benjolan ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"9\",\"pertanyaan\":\"Apakah Bercak dengan cepat menyebar pada luasan buah ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"10\",\"pertanyaan\":\"Apakah Bercak bulat sirkuler berwarna abu-abu tua dan warna coklat di pinggirannya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"11\",\"pertanyaan\":\"Apakah Daun menjadi tua (menguning) sebelum waktunya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"12\",\"pertanyaan\":\"Apakah Bercak daun berukuran sekitar 0,25 cm ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"13\",\"pertanyaan\":\"Apakah Sering terjadi sobekan dipusat daun ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"14\",\"pertanyaan\":\"Apakah Leher batang busuk berwarna hijau setelah kering warna menjadi coklat/hitam ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"15\",\"pertanyaan\":\"Apakah Kelayuan yang serentak dan tiba-tiba dari bagian tanaman lainnya ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"16\",\"pertanyaan\":\"Apakah Busuk batang menjadi kering dan mengeras ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"17\",\"pertanyaan\":\"Apakah Seluruh daun menjadi layu ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"18\",\"pertanyaan\":\"Apakah Pada daun timbul bercak putih seperti tersiram air ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"19\",\"pertanyaan\":\"Apakah Serangan pada akar mengakibatkan tanaman layu, mongering dan mati ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"20\",\"pertanyaan\":\"Apakah Pucatnya tulang daun dan berwarna keputihan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"21\",\"pertanyaan\":\"Apakah Daun layu permanen tetapi tetap menempel pada batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"22\",\"pertanyaan\":\"Apakah Pucuk daun berubah dari hijau muda menjadi coklat, membusuk dan hitam ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"23\",\"pertanyaan\":\"Apakah Kebusukan merambat ke bagian bawah tanaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"24\",\"pertanyaan\":\"Apakah Batang busuk kering dan mudah terkelupas ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"25\",\"pertanyaan\":\"Apakah Kelembaban tinggi terbentuk bulu berwarna hitam ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"26\",\"pertanyaan\":\"Apakah Timbul bintik putih yang dibatasi pinggiran warna hitam ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"27\",\"pertanyaan\":\"Apakah Bercak pada batang dan tangkai daun berbentuk elips ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"28\",\"pertanyaan\":\"Apakah Dibalik daun terdapat tepung berwarna putih keabu-abuan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"29\",\"pertanyaan\":\"Apakah Bagian bawah daun bercak berkembang menjadi jaringan nekrotik ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"30\",\"pertanyaan\":\"Apakah Penyakit menjalar dari daun muda ke daun tua ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"31\",\"pertanyaan\":\"Apakah Gejala awal tidak ada perubahan warna pada daun, tetapi setelah itu daun berubah menjadi kuning ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"32\",\"pertanyaan\":\"Apakah Jaringan pada pangkal batang berwarna coklat dan membusuk ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"33\",\"pertanyaan\":\"Apakah Benang benang cendawan berwarna putih terlihat pada pangkal batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"34\",\"pertanyaan\":\"Apakah Bercak seperti tercelup air panas dengan warna hijau buram ?\"}]'),
(69, 'bagas', 'Busuk daun Phytophthora (Busuk daun fitoftora)', 'KEC BOGOR TIMUR,KOTA BOGOR,PROVINSI JAWA BARAT', '36.0%', '1624889414896', '[{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"0\",\"pertanyaan\":\"Apakah Semaian cabai gagal tumbuh ?\"},{\"cfPakar\":0.8,\"cfuser\":0.4,\"idPertanyaan\":\"1\",\"pertanyaan\":\"Apakah Biji yang sudah berkecambah mati tiba-tiba ?\"},{\"cfPakar\":0.8,\"cfuser\":0.2,\"idPertanyaan\":\"2\",\"pertanyaan\":\"Apakah Semaian kerdil ?\"},{\"cfPakar\":0.6,\"cfuser\":0.6,\"idPertanyaan\":\"3\",\"pertanyaan\":\"Apakah Semaian cabai sporadic (menyebar tidak beraturan) ?\"},{\"cfPakar\":0.4,\"cfuser\":0.6,\"idPertanyaan\":\"4\",\"pertanyaan\":\"Apakah Daun kekuningan dan layu yang dimulai dari daun bagian atas ?\"},{\"cfPakar\":0.4,\"cfuser\":0.0,\"idPertanyaan\":\"5\",\"pertanyaan\":\"Apakah mati pucuk ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"6\",\"pertanyaan\":\"Apakah Daun, ranting, dan cabang busuk kering berwarna coklat kehitam-hitaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"7\",\"pertanyaan\":\"Apakah Buah timbul bercak lunak berwarna hitam dan busuk lunak ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"8\",\"pertanyaan\":\"Apakah Pada batang acervuli cendawan terlihat berupa benjolan ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"9\",\"pertanyaan\":\"Apakah Bercak dengan cepat menyebar pada luasan buah ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"10\",\"pertanyaan\":\"Apakah Bercak bulat sirkuler berwarna abu-abu tua dan warna coklat di pinggirannya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"11\",\"pertanyaan\":\"Apakah Daun menjadi tua (menguning) sebelum waktunya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"12\",\"pertanyaan\":\"Apakah Bercak daun berukuran sekitar 0,25 cm ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"13\",\"pertanyaan\":\"Apakah Sering terjadi sobekan dipusat daun ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"14\",\"pertanyaan\":\"Apakah Leher batang busuk berwarna hijau setelah kering warna menjadi coklat/hitam ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"15\",\"pertanyaan\":\"Apakah Kelayuan yang serentak dan tiba-tiba dari bagian tanaman lainnya ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"16\",\"pertanyaan\":\"Apakah Busuk batang menjadi kering dan mengeras ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"17\",\"pertanyaan\":\"Apakah Seluruh daun menjadi layu ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"18\",\"pertanyaan\":\"Apakah Pada daun timbul bercak putih seperti tersiram air ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"19\",\"pertanyaan\":\"Apakah Serangan pada akar mengakibatkan tanaman layu, mongering dan mati ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"20\",\"pertanyaan\":\"Apakah Pucatnya tulang daun dan berwarna keputihan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"21\",\"pertanyaan\":\"Apakah Daun layu permanen tetapi tetap menempel pada batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"22\",\"pertanyaan\":\"Apakah Pucuk daun berubah dari hijau muda menjadi coklat, membusuk dan hitam ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"23\",\"pertanyaan\":\"Apakah Kebusukan merambat ke bagian bawah tanaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"24\",\"pertanyaan\":\"Apakah Batang busuk kering dan mudah terkelupas ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"25\",\"pertanyaan\":\"Apakah Kelembaban tinggi terbentuk bulu berwarna hitam ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"26\",\"pertanyaan\":\"Apakah Timbul bintik putih yang dibatasi pinggiran warna hitam ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"27\",\"pertanyaan\":\"Apakah Bercak pada batang dan tangkai daun berbentuk elips ?\"},{\"cfPakar\":1.0,\"cfuser\":0.0,\"idPertanyaan\":\"28\",\"pertanyaan\":\"Apakah Dibalik daun terdapat tepung berwarna putih keabu-abuan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"29\",\"pertanyaan\":\"Apakah Bagian bawah daun bercak berkembang menjadi jaringan nekrotik ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"30\",\"pertanyaan\":\"Apakah Penyakit menjalar dari daun muda ke daun tua ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"31\",\"pertanyaan\":\"Apakah Gejala awal tidak ada perubahan warna pada daun, tetapi setelah itu daun berubah menjadi kuning ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"32\",\"pertanyaan\":\"Apakah Jaringan pada pangkal batang berwarna coklat dan membusuk ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"33\",\"pertanyaan\":\"Apakah Benang benang cendawan berwarna putih terlihat pada pangkal batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"34\",\"pertanyaan\":\"Apakah Bercak seperti tercelup air panas dengan warna hijau buram ?\"}]'),
(70, 'supriadi', 'Damping off (Rebah Kecambah)', 'KEC PANGKALAN LESUNG,KABUPATEN PELALAWAN,PROVINSI RIAU', '79.92667%', '1624902675590', '[{\"cfPakar\":0.8,\"cfuser\":0.4,\"idPertanyaan\":\"0\",\"pertanyaan\":\"Apakah Semaian cabai gagal tumbuh ?\"},{\"cfPakar\":0.8,\"cfuser\":0.4,\"idPertanyaan\":\"1\",\"pertanyaan\":\"Apakah Biji yang sudah berkecambah mati tiba-tiba ?\"},{\"cfPakar\":0.8,\"cfuser\":0.4,\"idPertanyaan\":\"2\",\"pertanyaan\":\"Apakah Semaian kerdil ?\"},{\"cfPakar\":0.6,\"cfuser\":0.4,\"idPertanyaan\":\"3\",\"pertanyaan\":\"Apakah Semaian cabai sporadic (menyebar tidak beraturan) ?\"},{\"cfPakar\":0.4,\"cfuser\":0.4,\"idPertanyaan\":\"4\",\"pertanyaan\":\"Apakah Daun kekuningan dan layu yang dimulai dari daun bagian atas ?\"},{\"cfPakar\":0.4,\"cfuser\":0.4,\"idPertanyaan\":\"5\",\"pertanyaan\":\"Apakah mati pucuk ?\"},{\"cfPakar\":0.8,\"cfuser\":0.4,\"idPertanyaan\":\"6\",\"pertanyaan\":\"Apakah Daun, ranting, dan cabang busuk kering berwarna coklat kehitam-hitaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.4,\"idPertanyaan\":\"7\",\"pertanyaan\":\"Apakah Buah timbul bercak lunak berwarna hitam dan busuk lunak ?\"},{\"cfPakar\":0.6,\"cfuser\":0.4,\"idPertanyaan\":\"8\",\"pertanyaan\":\"Apakah Pada batang acervuli cendawan terlihat berupa benjolan ?\"},{\"cfPakar\":1.0,\"cfuser\":0.4,\"idPertanyaan\":\"9\",\"pertanyaan\":\"Apakah Bercak dengan cepat menyebar pada luasan buah ?\"},{\"cfPakar\":1.0,\"cfuser\":0.4,\"idPertanyaan\":\"10\",\"pertanyaan\":\"Apakah Bercak bulat sirkuler berwarna abu-abu tua dan warna coklat di pinggirannya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.4,\"idPertanyaan\":\"11\",\"pertanyaan\":\"Apakah Daun menjadi tua (menguning) sebelum waktunya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"12\",\"pertanyaan\":\"Apakah Bercak daun berukuran sekitar 0,25 cm ?\"},{\"cfPakar\":1.0,\"cfuser\":0.6,\"idPertanyaan\":\"13\",\"pertanyaan\":\"Apakah Sering terjadi sobekan dipusat daun ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"14\",\"pertanyaan\":\"Apakah Leher batang busuk berwarna hijau setelah kering warna menjadi coklat/hitam ?\"},{\"cfPakar\":0.2,\"cfuser\":0.6,\"idPertanyaan\":\"15\",\"pertanyaan\":\"Apakah Kelayuan yang serentak dan tiba-tiba dari bagian tanaman lainnya ?\"},{\"cfPakar\":0.6,\"cfuser\":0.6,\"idPertanyaan\":\"16\",\"pertanyaan\":\"Apakah Busuk batang menjadi kering dan mengeras ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"17\",\"pertanyaan\":\"Apakah Seluruh daun menjadi layu ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"18\",\"pertanyaan\":\"Apakah Pada daun timbul bercak putih seperti tersiram air ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"19\",\"pertanyaan\":\"Apakah Serangan pada akar mengakibatkan tanaman layu, mongering dan mati ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"20\",\"pertanyaan\":\"Apakah Pucatnya tulang daun dan berwarna keputihan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"21\",\"pertanyaan\":\"Apakah Daun layu permanen tetapi tetap menempel pada batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.6,\"idPertanyaan\":\"22\",\"pertanyaan\":\"Apakah Pucuk daun berubah dari hijau muda menjadi coklat, membusuk dan hitam ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"23\",\"pertanyaan\":\"Apakah Kebusukan merambat ke bagian bawah tanaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"24\",\"pertanyaan\":\"Apakah Batang busuk kering dan mudah terkelupas ?\"},{\"cfPakar\":0.6,\"cfuser\":0.6,\"idPertanyaan\":\"25\",\"pertanyaan\":\"Apakah Kelembaban tinggi terbentuk bulu berwarna hitam ?\"},{\"cfPakar\":1.0,\"cfuser\":0.6,\"idPertanyaan\":\"26\",\"pertanyaan\":\"Apakah Timbul bintik putih yang dibatasi pinggiran warna hitam ?\"},{\"cfPakar\":0.6,\"cfuser\":0.6,\"idPertanyaan\":\"27\",\"pertanyaan\":\"Apakah Bercak pada batang dan tangkai daun berbentuk elips ?\"},{\"cfPakar\":1.0,\"cfuser\":0.6,\"idPertanyaan\":\"28\",\"pertanyaan\":\"Apakah Dibalik daun terdapat tepung berwarna putih keabu-abuan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"29\",\"pertanyaan\":\"Apakah Bagian bawah daun bercak berkembang menjadi jaringan nekrotik ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"30\",\"pertanyaan\":\"Apakah Penyakit menjalar dari daun muda ke daun tua ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"31\",\"pertanyaan\":\"Apakah Gejala awal tidak ada perubahan warna pada daun, tetapi setelah itu daun berubah menjadi kuning ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"32\",\"pertanyaan\":\"Apakah Jaringan pada pangkal batang berwarna coklat dan membusuk ?\"},{\"cfPakar\":0.2,\"cfuser\":0.6,\"idPertanyaan\":\"33\",\"pertanyaan\":\"Apakah Benang benang cendawan berwarna putih terlihat pada pangkal batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.8,\"idPertanyaan\":\"34\",\"pertanyaan\":\"Apakah Bercak seperti tercelup air panas dengan warna hijau buram ?\"},{\"cfPakar\":0.8,\"cfuser\":0.8,\"idPertanyaan\":\"35\",\"pertanyaan\":\"Apakah Bercak basah pada buah berubah menjadi coklat kehitaman kemudian menjadi kering tetapi tetap menempel pada batang ?\"}]'),
(71, 'bagas', 'Busuk daun Phytophthora (Busuk daun fitoftora)', 'KEC SUMURI,KABUPATEN TELUK BINTUNI,PROVINSI PAPUA BARAT', '48.0%', '1624914643645', '[{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"0\",\"pertanyaan\":\"Apakah Semaian cabai gagal tumbuh ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"1\",\"pertanyaan\":\"Apakah Biji yang sudah berkecambah mati tiba-tiba ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"2\",\"pertanyaan\":\"Apakah Semaian kerdil ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"3\",\"pertanyaan\":\"Apakah Semaian cabai sporadic (menyebar tidak beraturan) ?\"},{\"cfPakar\":0.4,\"cfuser\":0.0,\"idPertanyaan\":\"4\",\"pertanyaan\":\"Apakah Daun kekuningan dan layu yang dimulai dari daun bagian atas ?\"},{\"cfPakar\":0.4,\"cfuser\":0.6,\"idPertanyaan\":\"5\",\"pertanyaan\":\"Apakah mati pucuk ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"6\",\"pertanyaan\":\"Apakah Daun, ranting, dan cabang busuk kering berwarna coklat kehitam-hitaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"7\",\"pertanyaan\":\"Apakah Buah timbul bercak lunak berwarna hitam dan busuk lunak ?\"},{\"cfPakar\":0.6,\"cfuser\":0.6,\"idPertanyaan\":\"8\",\"pertanyaan\":\"Apakah Pada batang acervuli cendawan terlihat berupa benjolan ?\"},{\"cfPakar\":0.6,\"cfuser\":0.6,\"idPertanyaan\":\"9\",\"pertanyaan\":\"Apakah Bercak dengan cepat menyebar pada luasan buah ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"10\",\"pertanyaan\":\"Apakah Bercak bulat sirkuler berwarna abu-abu tua dan warna coklat di pinggirannya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"11\",\"pertanyaan\":\"Apakah Daun menjadi tua (menguning) sebelum waktunya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"12\",\"pertanyaan\":\"Apakah Bercak daun berukuran sekitar 0,25 cm ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"13\",\"pertanyaan\":\"Apakah Sering terjadi sobekan dipusat daun ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"14\",\"pertanyaan\":\"Apakah Leher batang busuk berwarna hijau setelah kering warna menjadi coklat/hitam ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"15\",\"pertanyaan\":\"Apakah Kelayuan yang serentak dan tiba-tiba dari bagian tanaman lainnya ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"16\",\"pertanyaan\":\"Apakah Busuk batang menjadi kering dan mengeras ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"17\",\"pertanyaan\":\"Apakah Seluruh daun menjadi layu ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"18\",\"pertanyaan\":\"Apakah Pada daun timbul bercak putih seperti tersiram air ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"19\",\"pertanyaan\":\"Apakah Serangan pada akar mengakibatkan tanaman layu, mongering dan mati ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"20\",\"pertanyaan\":\"Apakah Pucatnya tulang daun dan berwarna keputihan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"21\",\"pertanyaan\":\"Apakah Daun layu permanen tetapi tetap menempel pada batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"22\",\"pertanyaan\":\"Apakah Pucuk daun berubah dari hijau muda menjadi coklat, membusuk dan hitam ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"23\",\"pertanyaan\":\"Apakah Kebusukan merambat ke bagian bawah tanaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"24\",\"pertanyaan\":\"Apakah Batang busuk kering dan mudah terkelupas ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"25\",\"pertanyaan\":\"Apakah Kelembaban tinggi terbentuk bulu berwarna hitam ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"26\",\"pertanyaan\":\"Apakah Timbul bintik putih yang dibatasi pinggiran warna hitam ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"27\",\"pertanyaan\":\"Apakah Bercak pada batang dan tangkai daun berbentuk elips ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"28\",\"pertanyaan\":\"Apakah Dibalik daun terdapat tepung berwarna putih keabu-abuan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"29\",\"pertanyaan\":\"Apakah Bagian bawah daun bercak berkembang menjadi jaringan nekrotik ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"30\",\"pertanyaan\":\"Apakah Penyakit menjalar dari daun muda ke daun tua ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"31\",\"pertanyaan\":\"Apakah Gejala awal tidak ada perubahan warna pada daun, tetapi setelah itu daun berubah menjadi kuning ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"32\",\"pertanyaan\":\"Apakah Jaringan pada pangkal batang berwarna coklat dan membusuk ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"33\",\"pertanyaan\":\"Apakah Benang benang cendawan berwarna putih terlihat pada pangkal batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"34\",\"pertanyaan\":\"Apakah Bercak seperti tercelup air panas dengan warna hijau buram ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"35\",\"pertanyaan\":\"Apakah Bercak basah pada buah berubah menjadi coklat kehitaman kemudian menjadi kering tetapi tetap menempel pada batang ?\"}]'),
(72, 'bagas', 'Damping off (Rebah Kecambah)', 'KEC LAMONGAN,KABUPATEN LAMONGAN,PROVINSI JAWA TIMUR', '94.460075%', '1624916154105', '[{\"cfPakar\":0.8,\"cfuser\":0.8,\"idPertanyaan\":\"0\",\"pertanyaan\":\"Apakah Semaian cabai gagal tumbuh ?\"},{\"cfPakar\":0.8,\"cfuser\":0.4,\"idPertanyaan\":\"1\",\"pertanyaan\":\"Apakah Biji yang sudah berkecambah mati tiba-tiba ?\"},{\"cfPakar\":0.8,\"cfuser\":0.6,\"idPertanyaan\":\"2\",\"pertanyaan\":\"Apakah Semaian kerdil ?\"},{\"cfPakar\":0.6,\"cfuser\":0.6,\"idPertanyaan\":\"3\",\"pertanyaan\":\"Apakah Semaian cabai sporadic (menyebar tidak beraturan) ?\"},{\"cfPakar\":0.4,\"cfuser\":0.8,\"idPertanyaan\":\"4\",\"pertanyaan\":\"Apakah Daun kekuningan dan layu yang dimulai dari daun bagian atas ?\"},{\"cfPakar\":0.4,\"cfuser\":0.0,\"idPertanyaan\":\"5\",\"pertanyaan\":\"Apakah mati pucuk ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"6\",\"pertanyaan\":\"Apakah Daun, ranting, dan cabang busuk kering berwarna coklat kehitam-hitaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"7\",\"pertanyaan\":\"Apakah Buah timbul bercak lunak berwarna hitam dan busuk lunak ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"8\",\"pertanyaan\":\"Apakah Pada batang acervuli cendawan terlihat berupa benjolan ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"9\",\"pertanyaan\":\"Apakah Bercak dengan cepat menyebar pada luasan buah ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"10\",\"pertanyaan\":\"Apakah Bercak bulat sirkuler berwarna abu-abu tua dan warna coklat di pinggirannya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"11\",\"pertanyaan\":\"Apakah Daun menjadi tua (menguning) sebelum waktunya ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"12\",\"pertanyaan\":\"Apakah Bercak daun berukuran sekitar 0,25 cm ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"13\",\"pertanyaan\":\"Apakah Sering terjadi sobekan dipusat daun ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"14\",\"pertanyaan\":\"Apakah Leher batang busuk berwarna hijau setelah kering warna menjadi coklat/hitam ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"15\",\"pertanyaan\":\"Apakah Kelayuan yang serentak dan tiba-tiba dari bagian tanaman lainnya ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"16\",\"pertanyaan\":\"Apakah Busuk batang menjadi kering dan mengeras ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"17\",\"pertanyaan\":\"Apakah Seluruh daun menjadi layu ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"18\",\"pertanyaan\":\"Apakah Pada daun timbul bercak putih seperti tersiram air ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"19\",\"pertanyaan\":\"Apakah Serangan pada akar mengakibatkan tanaman layu, mongering dan mati ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"20\",\"pertanyaan\":\"Apakah Pucatnya tulang daun dan berwarna keputihan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"21\",\"pertanyaan\":\"Apakah Daun layu permanen tetapi tetap menempel pada batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"22\",\"pertanyaan\":\"Apakah Pucuk daun berubah dari hijau muda menjadi coklat, membusuk dan hitam ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"23\",\"pertanyaan\":\"Apakah Kebusukan merambat ke bagian bawah tanaman ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"24\",\"pertanyaan\":\"Apakah Batang busuk kering dan mudah terkelupas ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"25\",\"pertanyaan\":\"Apakah Kelembaban tinggi terbentuk bulu berwarna hitam ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"26\",\"pertanyaan\":\"Apakah Timbul bintik putih yang dibatasi pinggiran warna hitam ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"27\",\"pertanyaan\":\"Apakah Bercak pada batang dan tangkai daun berbentuk elips ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"28\",\"pertanyaan\":\"Apakah Dibalik daun terdapat tepung berwarna putih keabu-abuan ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"29\",\"pertanyaan\":\"Apakah Bagian bawah daun bercak berkembang menjadi jaringan nekrotik ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"30\",\"pertanyaan\":\"Apakah Penyakit menjalar dari daun muda ke daun tua ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"31\",\"pertanyaan\":\"Apakah Gejala awal tidak ada perubahan warna pada daun, tetapi setelah itu daun berubah menjadi kuning ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"32\",\"pertanyaan\":\"Apakah Jaringan pada pangkal batang berwarna coklat dan membusuk ?\"},{\"cfPakar\":0.2,\"cfuser\":0.0,\"idPertanyaan\":\"33\",\"pertanyaan\":\"Apakah Benang benang cendawan berwarna putih terlihat pada pangkal batang ?\"},{\"cfPakar\":0.6,\"cfuser\":0.0,\"idPertanyaan\":\"34\",\"pertanyaan\":\"Apakah Bercak seperti tercelup air panas dengan warna hijau buram ?\"},{\"cfPakar\":0.8,\"cfuser\":0.0,\"idPertanyaan\":\"35\",\"pertanyaan\":\"Apakah Bercak basah pada buah berubah menjadi coklat kehitaman kemudian menjadi kering tetapi tetap menempel pada batang ?\"}]');

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
(26, 'bawazir', 'bagus aplikasi aplikasi bags bawazir hallo dim', '1591883446400', '1621862151106'),
(27, 'bagasfadhil', 'keren', '1591916085677', '1591916085677'),
(28, 'zul', 'mantap', '1592378877593', '1592378877593'),
(30, 'bawazirzulfikar', 'polinema bagus', '1594017029238', '1594017046149');

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
  `kodegejala` varchar(255) DEFAULT NULL,
  `cfPakar` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gejalapenyakit`
--

INSERT INTO `gejalapenyakit` (`id`, `kodepenyakit`, `kodegejala`, `cfPakar`) VALUES
(4, 'P001', 'G001', 1),
(5, 'P001', 'G002', 2),
(6, 'P001', 'G003', 3),
(7, 'P001', 'G004', 4),
(8, 'P001', 'G005', 5),
(9, 'P002', 'G006', 0),
(10, 'P002', 'G007', 0),
(11, 'P002', 'G008', 0),
(12, 'P002', 'G009', 0),
(13, 'P002', 'G010', 0),
(14, 'P003', 'G011', 0),
(15, 'P003', 'G012', 0),
(16, 'P003', 'G013', 0),
(17, 'P003', 'G014', 0),
(18, 'P004', 'G004', 0),
(19, 'P004', 'G008', 0),
(20, 'P004', 'G015', 0),
(21, 'P004', 'G016', 0),
(22, 'P004', 'G017', 0),
(23, 'P004', 'G018', 0),
(24, 'P004', 'G019', 0),
(25, 'P004', 'G020', 0),
(26, 'P005', 'G005', 0),
(27, 'P005', 'G021', 0),
(28, 'P005', 'G022', 0),
(29, 'P006', 'G023', 0),
(30, 'P006', 'G024', 0),
(31, 'P006', 'G025', 0),
(32, 'P006', 'G026', 0),
(33, 'P007', 'G027', 0),
(34, 'P007', 'G028', 0),
(35, 'P007', 'G011', 0),
(36, 'P008', 'G005', 0),
(37, 'P008', 'G029', 0),
(38, 'P008', 'G030', 0),
(39, 'P008', 'G031', 0),
(40, 'P009', 'G032', 0),
(41, 'P009', 'G033', 0),
(42, 'P009', 'G034', 0),
(47, 'P010', 'G008', 0),
(48, 'P010', 'G010', 0),
(49, 'P010', 'G035', 0),
(50, 'P010', 'G036', 0);

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
('P001', 'Damping off (Rebah Kecambah)', 'Rebah kecambah (Damping off) adalah suatu penyakit yang menyerang benih dan kecambah di persemaian. Penyakit ini biasanya disebabkan oleh satu atau kombinasi dari dua atau lebih spesies jamur air. Jamur penyebab penyakit ini antara lain Rhizoctonia solani', 'https://bawazir.website/uploads/P001.jpg', '-Rendam benih sebelum disemai dengan air hangat (55-60?C) selama 30 menit. Selain perlakuan panas, benih dapat direndam fungisida, seperti Previcur N atau Dithane M45 atau fungisida berbahan aktifï¿½captanï¿½dengan konsentrasi 2 g/L selama 10 menit.\r\n-Lak'),
('P002', 'Colletrichum (Antranoksa)', 'Penyakit Antranoksa disebabkan oleh jamur Colletotrichum spp. Jamur ini berkembang pesat pada lingkungan yang lembab dan basah. Kondisi ini tentu lebih banyak ditemui pada saat musim hujan berlangsung.', 'https://bawazir.website/uploads/P002.jpg', 'Awal berbunga disemprot dengan Asibensolar-S-metil 1-2 g/liter secara berkala, interval 1 minggu sekali ( bion-M 148 WP) Jika masih ditemukan buah yang terserang busuk buah antraknose, tanaman disemprot dengan klorotalonil atau Azoksistrobin+Difenokonazol'),
('P003', 'Cercospora capsici (Bercak daun serkorpora)', 'Penyakit Cercospora capsici (Bercak daun serkospora) atau mata katak disebabkan oleh jamur Cercospora capsica. Jamur Cercospora capsica berkembang biak dengan cepat apabila suatu areal pertanaman memiliki kelembapan yang tinggi dan pola tanaman yang rapat', 'https://bawazir.website/uploads/P003.jpg', 'Tanaman yang memperlihatkan gejala serangan penyakit virus dicabut dan dimusnahkan. Kendalikan vektor kutu kebul (Bemesia tabaci) dengan insektisida anjuran.'),
('P004', 'Busuk daun Phytophthora (Busuk daun fitoftora)', 'Busuk daun fitoftora\", \"Penyakit ini disebabkan oleh Phytophtora capsica. Jamur Phytopthora bias menyerang seluruh bagian tanaman mulai dari akar. Batang, daun hingga buah cabai.', 'https://bawazir.website/uploads/P004.jpg', 'Untuk mencegah terjadinya resistensi penyakit busuk buah terhadap fungisida tersebut, maka penyemprotan dengan menggunakan mefenoksam + Mankozeb hanya dilakukan 2 kali per musim. Jika masih ditemukan penyakit busuk daun yang makin meluas  tanaman disempro'),
('P005', 'Fusarium oxysporum (Layu Fusarium)', 'Penyakit ini disebabkan oleh Fusarium oxysporum. Penyakit ini ditakuti, karena jika tanaman sudah terinfeksi, tanaman tersebut tidak bias diobati atau disembuhkan.', 'https://bawazir.website/uploads/P005.jpg', 'Penyebaran penyakit melalui angin dan air. Penyakit ini jarang terjadi menyerang pada lahan yang pengairannya baik. Inang lain penyakit ini adalah kacang panjang, kentang, kubis , kacang panjang, cabai, tomat , mentimun, dll.'),
('P006', 'Busuk daun Choanephora', 'Penyakit ini disebabkan oleh Choanephora cucurbitarum. Infeksi pertama menjadi titik tumbuh, bunga dan pucuk kemudian menyebar ke bagian bawah tanaman.', 'https://bawazir.website/uploads/P006.jpg', '-Penggunaan benih unggul yang tahan terhadap bakteri,\r\n-Sanitasi lahan dengan menjaga kebersihan lingkungan tanaman,\r\n-Menanam dengan jarak tidak terlalu rapat, terutama pada saat musim hujan,\r\n-Memusnahkan buah yang terinfeksi dengan cara membakarnya ata'),
('P007', 'Bercak kelabu stemphylium', 'Penyakit ini disebabkan oleh Stemphylium solani pada kondisi pucuk dan tinggi dapat menjadi masalah utama karena membuat daun menjadi rontok dan dapat menyebabkan produksi menurun.', 'https://bawazir.website/uploads/P007.jpg', 'Cegah penyakit embun tepung dengan aplikasi fungisida segera setalah terlihat gejala serangan awal\r\nJika sudah parah, maka lakukan kombinasi fungisida kontak dengan sistemik.'),
('P008', 'Embun tepung', 'Penyakit Embun Tepung adalah salah satu penyakit yang paling luas penyebarannya. Penyakit ini disebabkan oleh Leveillula taurica. Pada tanaman ini jika daun dibalik, tampaklah tepung berwarna putih keabu-abuan.', 'https://bawazir.website/uploads/P008.jpg', '-Cegah penyakit embun tepung dengan aplikasi fungisida segera setalah terlihat gejala serangan awal\r\n-Jika sudah parah, maka lakukan kombinasi fungisida kontak dengan sistemik.'),
('P009', 'Busuk pangkal akar', 'Penyakit ini disebabkan oleh Jamur Sclerotium rolfsii. Penyakit ini tersebar luas di daerah beriklim hangat. Tanah dengan tingkat kelembaban tinggi dan suhu panas sangat mendukung perkembangan penyakit ini.', 'https://bawazir.website/uploads/P009.jpg', 'Semprot dengan mengunakan Trichoderma untuk pengendalian Fusarium sp.'),
('P010', 'Bercak Phytophthora (Bercak fitoftora pada buah)', 'Penyakit ini disebabkan oleh Phytophthora capsica. Phytophthora capsica telah dikenal sebagai salah satu cendawan atau jamur pathogen yang mampu menimbulkan kerusakan parah pada hamper semua bagian tanaman cabai.', 'https://bawazir.website/uploads/P010.jpg', 'Penanggulanganya dengan cara memilih bibit unggul yang tahan terhadap virus gemini dan membasmi vektornya/penularnya yakni kutu kebul dan kutu daun.');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(255) DEFAULT NULL,
  `cfPakar` float NOT NULL,
  `cfUser` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`id`, `pertanyaan`, `cfPakar`, `cfUser`) VALUES
(0, 'Apakah Semaian cabai gagal tumbuh ?', 0.8, NULL),
(1, 'Apakah Biji yang sudah berkecambah mati tiba-tiba ?', 0.8, NULL),
(2, 'Apakah Semaian kerdil ?', 0.8, NULL),
(3, 'Apakah Semaian cabai sporadic (menyebar tidak beraturan) ?', 0.6, NULL),
(4, 'Apakah Daun kekuningan dan layu yang dimulai dari daun bagian atas ?', 0.4, NULL),
(5, 'Apakah mati pucuk ?', 0.4, NULL),
(6, 'Apakah Daun, ranting, dan cabang busuk kering berwarna coklat kehitam-hitaman ?', 0.8, NULL),
(7, 'Apakah Buah timbul bercak lunak berwarna hitam dan busuk lunak ?', 0.8, NULL),
(8, 'Apakah Pada batang acervuli cendawan terlihat berupa benjolan ?', 0.6, NULL),
(9, 'Apakah Bercak dengan cepat menyebar pada luasan buah ?', 0.6, NULL),
(10, 'Apakah Bercak bulat sirkuler berwarna abu-abu tua dan warna coklat di pinggirannya ?', 0.6, NULL),
(11, 'Apakah Daun menjadi tua (menguning) sebelum waktunya ?', 0.8, NULL),
(12, 'Apakah Bercak daun berukuran sekitar 0,25 cm ?', 0.8, NULL),
(13, 'Apakah Sering terjadi sobekan dipusat daun ?', 0.6, NULL),
(14, 'Apakah Leher batang busuk berwarna hijau setelah kering warna menjadi coklat/hitam ?', 0.8, NULL),
(15, 'Apakah Kelayuan yang serentak dan tiba-tiba dari bagian tanaman lainnya ?', 0.2, NULL),
(16, 'Apakah Busuk batang menjadi kering dan mengeras ?', 0.6, NULL),
(17, 'Apakah Seluruh daun menjadi layu ?', 0.8, NULL),
(18, 'Apakah Pada daun timbul bercak putih seperti tersiram air ?', 0.8, NULL),
(19, 'Apakah Serangan pada akar mengakibatkan tanaman layu, mongering dan mati ?', 0.8, NULL),
(20, 'Apakah Pucatnya tulang daun dan berwarna keputihan ?', 0.8, NULL),
(21, 'Apakah Daun layu permanen tetapi tetap menempel pada batang ?', 0.8, NULL),
(22, 'Apakah Pucuk daun berubah dari hijau muda menjadi coklat, membusuk dan hitam ?', 0.6, NULL),
(23, 'Apakah Kebusukan merambat ke bagian bawah tanaman ?', 0.8, NULL),
(24, 'Apakah Batang busuk kering dan mudah terkelupas ?', 0.8, NULL),
(25, 'Apakah Kelembaban tinggi terbentuk bulu berwarna hitam ?', 0.6, NULL),
(26, 'Apakah Timbul bintik putih yang dibatasi pinggiran warna hitam ?', 0.8, NULL),
(27, 'Apakah Bercak pada batang dan tangkai daun berbentuk elips ?', 0.6, NULL),
(28, 'Apakah Dibalik daun terdapat tepung berwarna putih keabu-abuan ?', 0.6, NULL),
(29, 'Apakah Bagian bawah daun bercak berkembang menjadi jaringan nekrotik ?', 0.8, NULL),
(30, 'Apakah Penyakit menjalar dari daun muda ke daun tua ?', 0.8, NULL),
(31, 'Apakah Gejala awal tidak ada perubahan warna pada daun, tetapi setelah itu daun berubah menjadi kuning ?', 0.8, NULL),
(32, 'Apakah Jaringan pada pangkal batang berwarna coklat dan membusuk ?', 0.8, NULL),
(33, 'Apakah Benang benang cendawan berwarna putih terlihat pada pangkal batang ?', 0.2, NULL),
(34, 'Apakah Bercak seperti tercelup air panas dengan warna hijau buram ?', 0.6, NULL),
(35, 'Apakah Bercak basah pada buah berubah menjadi coklat kehitaman kemudian menjadi kering tetapi tetap menempel pada batang ?', 0.8, NULL);

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
(131, 1, 'P001'),
(132, 2, 'P001'),
(133, 3, 'P001'),
(134, 4, 'P001'),
(135, 0, 'P001'),
(136, 7, 'P010'),
(137, 9, 'P010'),
(138, 34, 'P010'),
(139, 35, 'P010');

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
('a', 'a', 'a', 'cc175b9c0f1b6a831c399e269772661', 'a', '1624779493082', '1624779493082'),
('agung', 'Agung N', 'agung.pramudhita@gmail.com', 'd8578edf8458ce6fbc5bb76a58c5ca4', 'malang', '1592830544555', '1592830544555'),
('asef', 'afc', 'asdrf@gmail.com', 'cf4fa8937dbab42f4bead092fdb5095', 'Indonesia', '1623378155472', '1623378155472'),
('bagas', 'bagas', 'bagas@gmail.com', 'ee776a18253721efe8a62e4abd29dc47', 'malang', '1590545507831', '1590545507831'),
('bagasfadhil', 'bagas fadhil', 'bagasfadhil@gmail.com', 'ee776a18253721efe8a62e4abd29dc47', 'malang', '1591915780496', '1591915780496'),
('bawazir', 'bawazir fadhil m', 'bawazirfadhil@gmail.com', '7f6b9e26373371a3874c94469c7937e', 'malang', '1590545399338', '1590545399338'),
('bawazirfadhil', 'bawazirfadhil', 'bawazirf@gmail.com', '7f6b9e26373371a3874c94469c7937e', 'malang', '1593694226606', '1593694226606'),
('bawazirzulfikar', 'bawazir zulfikar', 'bawazirzulfikar@gmail.com', '7f6b9e26373371a3874c94469c7937e', 'malang', '1594016823428', '1594016823428'),
('bayu', 'bayu', 'bayu', 'e10adc3949ba59abbe56e057f20f883e', 'mala ng', '1616936003527', '1616936003527'),
('bayuhari', 'bayuyuy', '24213432', '4297f44b13955235245b2497399d7a93', 'zxcxzcxzc', '1594391623726', '1594391623726'),
('kambeng123', 'kambenglucu', 'nabilboytube99@gmail.com', '70b5b96a12251163b722e460d926ee3f', 'lamongan', '1591598768846', '1591598768846'),
('puspita', 'puspita sari', 'puspitasari9519@gmail.com', '66b0f8122262c1c49c2a61b7fd04624', 'malang', '1623032804057', '1623032804057'),
('supriadi', 'yohan', 'a@gmail.com', 'e1adc3949ba59abbe56e057f2f883e', 'lampung', '1624805425077', '1624805425077'),
('test', 'tet', 'test', 'test', '', '', ''),
('test2', 'tets', 'asdwe', 'test', 'asdasdsa', '1624779289021', '1624779289021'),
('tyo', 'tyo', 'tyo@gmail.com', '5bab541acd761a3093d7c4202b6e1da9', 'lamongan', '1591793392323', '1591793392323'),
('usertesting', 'usertesting', 'usertesting@test.com', '', '', '', ''),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `feed_back`
--
ALTER TABLE `feed_back`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `gejalapenyakit`
--
ALTER TABLE `gejalapenyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `pertanyaanpenyakit`
--
ALTER TABLE `pertanyaanpenyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

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
