-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 15 Jul 2020 pada 16.04
-- Versi server: 10.3.23-MariaDB-log-cll-lve
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
(30, 'bagasfadhil', 'Colletrichum (Antranoksa)', 'KEC SINGOSARI,KABUPATEN MALANG,PROVINSI JAWA TIMUR', '1591916190282'),
(34, 'zulfikar', 'Damping off (Rebah Kecambah)', 'KEC LOWOKWARU,KOTA MALANG,PROVINSI JAWA TIMUR', '1593662312524'),
(35, 'bawazir', 'Damping off (Rebah Kecambah)', 'KEC DAMPIT,KABUPATEN MALANG,PROVINSI JAWA TIMUR', '1593694552562'),
(36, 'bawazirzulfikar', 'Damping off (Rebah Kecambah)', 'KEC DAMPIT,KABUPATEN MALANG,PROVINSI JAWA TIMUR', '1594016996430'),
(37, 'bayuhari', 'Damping off (Rebah Kecambah)', 'KEC AIRPURA,KABUPATEN PESISIR SELATAN,PROVINSI SUMATERA BARAT', '1594536763392'),
(38, 'bayuhari', 'Fusarium oxysporum (Layu Fusarium)', 'KEC MA U,KABUPATEN NIAS,PROVINSI SUMATERA UTARA', '1594545880354');

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
(26, 'bawazir', 'bagus aplikasi', '1591883446400', '1593694614892'),
(27, 'bagasfadhil', 'keren', '1591916085677', '1591916085677'),
(28, 'zul', 'mantap', '1592378877593', '1592378877593'),
(30, 'bawazirzulfikar', 'polinema bagus', '1594017029238', '1594017046149');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `kode` varchar(255) DEFAULT NULL,
  `gejala` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gejala`
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
('G036', 'Bercak basah pada buah berubah menjadi coklat kehitaman kemudian menjadi kering tetapi tetap menempel pada batang.'),
('G037', 'Demam (Overheat)'),
('G038', 'Flu, Batuk/Pilek'),
('G039', 'Sesak napas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejalapenyakit`
--

CREATE TABLE `gejalapenyakit` (
  `id` int(11) NOT NULL,
  `kodepenyakit` varchar(255) DEFAULT NULL,
  `kodegejala` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gejalapenyakit`
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
(42, 'P009', 'G034'),
(43, 'P010', 'G008'),
(44, 'P010', 'G010'),
(45, 'P010', 'G035'),
(46, 'P010', 'G036'),
(47, 'P011', 'G037'),
(48, 'P011', 'G038'),
(49, 'P011', 'G039');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `kode` varchar(255) DEFAULT NULL,
  `penyakit` varchar(255) DEFAULT NULL,
  `deskripsi` text NOT NULL DEFAULT '',
  `gambar` varchar(255) NOT NULL DEFAULT '',
  `solusi` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`kode`, `penyakit`, `deskripsi`, `gambar`, `solusi`) VALUES
('P001', 'Damping off (Rebah Kecambah)', 'Rebah kecambah (Damping off) adalah suatu penyakit yang menyerang benih dan kecambah di persemaian. Penyakit ini biasanya disebabkan oleh satu atau kombinasi dari dua atau lebih spesies jamur air. Jamur penyebab penyakit ini antara lain Rhizoctonia solani, Rhizoctonia solani spp. ,Pythium spp. ,Fusarium spp. ,Phytophtora sp.', 'https://diagnosacabai-bawazir-zulfikar.bawazir.pw/uploads/P001.jpg', '- Media untuk penyemaian menggunakan sub soil (1,5 2 meter dibawah permukaan tanah) dan pupuk kandang matang yang halus dan pasir kali pada perbandingan 1 : 1 : 1. Campuran media ini dipasteurisasi (Proses pemanasan untuk membunuh organisme merugikan) selama 2 jam.\r\n- Semaian yang terinfeksi penyakit harus dicabut dan dimusnahkan, media tanah yang terkontaminasi dibuang.\r\n- Naungan persemaian secara bertahap dibuka agar matahari masuk dan tanaman menjadi lebih kuat.\r\n- Penggunaan fungisida selektif dengan dosis batas terendah.'),
('P002', 'Colletrichum (Antranoksa)', 'Penyakit Antranoksa disebabkan oleh jamur Colletotrichum spp. Jamur ini berkembang pesat pada lingkungan yang lembab dan basah. Kondisi ini tentu lebih banyak ditemui pada saat musim hujan berlangsung.', 'https://diagnosacabai-bawazir-zulfikar.bawazir.pw/uploads/P002.jpg', '- Pucuk Mati\r\n- Daun ranting, dan cabang busuk kering berwarna coklat kehitam-hitaman.\r\n- Buah timbul bercak lunak berwarna hitam dan busuk lunak.\r\n- Pada batang acervuli cendawan terlihat berupa benjolan.\r\n- Bercak dengan cepat menyebar pada luasan buah.\", \"	â€¢	Pemupukan berimbang, yaitu Urea 150-200 kg, ZA 450-500 kg, TSP 100-150 kg, KCI 100-150 kg, dan pupuk organic 20-30 ton per hektar.\r\n- Intercropping antara cabai dan tomat didataran tinggi dapat mengurangi serangan hama dan penyakit serta menaikan hasil panen. Intercropping adalah teknik budidaya tanaman yang membudidayakan lebih dari satu tanaman pada satu lahan yang sama pada periode tanam yang sama.\r\n- Penggunaan lembaran plastik perak didataran tinggi, dan jerami didataran rendah mengurangi infestasi antraknose dan penyakit tanah, terutama di musim hujan.\r\n- Penyakit antraknose Colletotrichum spp. Dikendalikan dengan fungisida klorotalonil (Daconil Â® 500 F, 2g/l) atau Propineb (Antracol, Â®70 WP, 2g/l). Kedua fungisida ini digunakan secara bergantian.\r\n- Untuk mengurangi penggunaan pestisida (+ 30%) dianjurkan untuk menggunakan nozel kipas yang butiran semprotannya berupa kabut dan merata.'),
('P003', 'Cercospora capsici (Bercak daun serkorpora)', 'Penyakit Cercospora capsici (Bercak daun serkospora) atau mata katak disebabkan oleh jamur Cercospora capsica. Jamur Cercospora Capsica berkembang biak dengan cepat apabila suatu areal pertanaman memiliki kelembapan yang tinggi dan pola tanaman yang rapat.', 'https://diagnosacabai-bawazir-zulfikar.bawazir.pw/uploads/P003.jpg', '- Intercropping antara cabai dan tomat di dataran tinggi dapat mengurangi serangan hama dan penyakit serta menaikkan hasil panen.\r\n- Penggunaan mulsa plastik perak di dataran tinggi, dan jerami di dataran rendah mengurangi infestasi antraknos dan penyakit tanah, terutama di musim hujan.\r\n- Untuk bercak sercospora dianjurkan menggunakan daun mindi  (Melia azederach) pada konsentrasi 1: 20 (berat/volume).\r\n- Penyakit bercak daun Cercospora capsici dikendalikan dengan fungisida difenoconazole (Score uF0AE250 EC dengan konsentrasi 0,5 ml/l). Interval penyemprotan 7 hari.\r\n- Untuk mengurangi penggunaan pestisida (+ 30%) dianjurkan untuk menggunakan nozel kipas yang butiran semprotannya berupa kabut dan merata.'),
('P004', 'Busuk daun Phytophthora (Busuk daun fitoftora)', 'Penyakit ini disebabkan oleh Phytophtora capsica. Jamur Phytopthora bias menyerang seluruh bagian tanaman mulai dari akar. Batang, daun hingga buah cabai.', 'https://diagnosacabai-bawazir-zulfikar.bawazir.pw/uploads/P004.jpg', '- Intercropping antara cabai dan tomat di dataran tinggi dapat mengurangi serangan hama dan penyakit serta menaikan hasil panen. Intercropping adalah teknik budidaya tanaman yang membudidayakan lebih dari satu tanaman pada satu lahan yang sama pada priode tanaman yang sama.\r\n- Penggunaan mulsa plastik perak di dataran tinggi, dan jerami di dataran rendah mengurangi infestasi penyakit, terutama di musim hujan.\r\n- Tanaman muda yang terinfeksi penyakit di lapangan dimusnahkan dan disulam dengan yang sehat.\r\n- Cendawan Phytophthora capsici dapat dikendalikan dengan fungisida sistemik Metalaksil-M 4% + Mancozeb 64% (Ridomil Gold MZ Â® 4/64 WP) pada konsentrasi 3 g/l air, bergantian dengan fungisida kontak seperti klorotalonil (Daconil Â® 500 F, 2g/l). Fungisida sistemik digunakan maksimal empat kali per musim.\r\n- Untuk mengurangi penggunaan pestisida (+ 30%) dianjurkan untuk menggunakan nozel kipas yang butiran semprotannya berupa kabut dan merata.'),
('P005', 'Fusarium oxysporum (Layu Fusarium)', 'Penyakit ini disebabkan oleh Fusarium oxysporum. Penyakit ini ditakuti, karena jika tanaman sudah terinfeksi, tanaman tersebut tidak bisa diobati atau disembuhkan.', 'https://diagnosacabai-bawazir-zulfikar.bawazir.pw/uploads/P005.jpg', '- Tanah-tanah yang terkontaminasi penyakit layu jangan digunakan. Infeksi penyakit layu dapat dipelajari pada tanaman sebelumnya.\r\n- Membersihkan lahan dari sisa-sisa tanaman dan gulma sebelumnya. Membalik tanah agar terkena sinar matahari.\r\n- Pemupukan berimbang, yaitu Urea 150-200 kg, ZA 450-500 kg, TSP 100-150 kg, KCI 100-150 kg, dan pupuk organic 20-30 ton per hektar.\r\n- Intercropping antara cabai dan tomat didataran tinggi dapat mengurangi serangan hama dan penyakit serta menaikan hasil panen. Intercropping adalah teknik budidaya tanaman yang membudidayakan lebih dari satu tanaman pada satu lahan yang sama pada periode tanam yang sama.\r\n- Penggunaan lembaran plastik perak didataran tinggi, dan jerami didataran rendah mengurangi infestasi antraknose dan penyakit tanah, terutama di musim hujan.\r\n- Tanaman muda yang terinfeksi penyakit dimusnahkan dan disulam dengan yang sehat.'),
('P006', 'Busuk daun Choanephora', 'Penyakit ini disebabkan oleh Choanephora cucurbitarum. Infeksi pertama menjadi titik tumbuh, bunga dan pucuk kemudian menyebar ke bagian bawah tanaman.', 'https://diagnosacabai-bawazir-zulfikar.bawazir.pw/uploads/P006.jpg', '- Membersihkan lahan dari sisa-sisa tanaman dan gulma sebelumnya. Membalik tanah agar terkena sinar matahari.\r\n- Pemupukan yang berimbang, yaitu Urea 150-200 kg, ZA 450-500 kg, TSP 100-150 kg, KCl 100-150 kg, dan pupuk organik 20-30 ton per hektar.\r\n- Intercropping antara cabai dan tomat di dataran tinggi dapat mengurangi serangan hama dan penyakit serta menaikkan hasil panen.\r\n- Penggunaan mulsa plastik perak di dataran tinggi, dan jerami di dataran rendah mengurangi infestasi penyakit, terutama di musim  hujan.\r\n- Penyemprotan fungisida secara bergilir antara fungisida sistemik satu kali (salah satu dari Acelalamine 0,5%, Dimmethomorph 0,1%, Propamocarb, Oxidasil 0,1%) dengan fungisida kontak seperti Klorotalonil 2% sebanyak tiga kali pada interval seminggu sekali.\r\n- Untuk mengurangi penggunaan fungisida (+ 30%) dianjurkan untuk menggunakan nozel kipas yang butiran semprotannya berupa kabut dan merata.'),
('P007', 'Bercak kelabu stemphylium', 'Penyakit ini disebabkan oleh Stemphylium solani pada kondisi pucuk dan tinggi dapat menjadi masalah utama karena membuat daun menjadi rontok dan dapat menyebabkan produksi menurun.', 'https://diagnosacabai-bawazir-zulfikar.bawazir.pw/uploads/P007.jpg', '- Pemupukan yang berimbang, yaitu Urea 150-200 kg, ZA 450-500 kg, TSP 100-150 kg, KCl 100-150 kg, dan pupuk organik 20-30 ton per hektar\r\n- Intercropping antara cabai dan tomat di dataran tinggi dapat mengurangi serangan hama dan penyakit serta menaikkan hasil panen.\r\n- Penggunaan mulsa plastik perak di dataran tinggi, dan jerami di dataran rendah mengurangi infestasi bercak kelabu stemfilium dan penyakit tanah, terutama di musim hujan.\r\n- Penyakit dapat dikendalikan dengan fungisida Difenoconazole (Score > 250 EC dengan konsentrasi 0,5 ml/l). Interval penyemprotan 7 hari.\r\n- Untuk mengurangi penggunaan fungisida (+ 30%) dianjurkan untuk menggunakan nozel kipas yang butiran semprotannya berupa kabut dan merata.'),
('P008', 'Embun tepung', 'Penyakit Embun Tepung adalah salah satu penyakit yang paling luas penyebarannya. Penyakit ini disebabkan oleh Leveillula taurica. Pada tanaman ini jika daun dibalik, tampaklah tepung berwarna putih keabu-abuan.', 'https://diagnosacabai-bawazir-zulfikar.bawazir.pw/uploads/P008.jpg', '- Pemupukan berimbang, yaitu Urea 150-200 kg, ZA 450-500 kg, TSP 100-150 kg, KCI 100-150 kg, dan pupuk organic 20-30 ton per hektar.\r\n- Penyakit dikendalikan dengan fungisida Difenokonazole (Score Â® 250 EC dengan konsentrasi 0,5 ml/l). interval penyemprotan 7 hari.\r\n- Untuk mengurangi penggunaan fungisida (+30%) dianjurkan untuk menggunakan nozel kipas yang butiran seprotannya berupa kabut dan merata.'),
('P009', 'Busuk pangkal akar', 'Penyakit ini disebabkan oleh Jamur Sclerotium rolfsii. Penyakit ini tersebar luas di daerah beriklim hangat. Tanah dengan tingkat kelembaban tinggi dan suhu panas sangat mendukung perkembangan penyakit ini.', 'https://diagnosacabai-bawazir-zulfikar.bawazir.pw/uploads/P009.jpg', '- Pembajakan tanah secara dalam untuk mengubur Sclerotia beserta sisa-sisa tanaman dan menunggu supaya sisa-sisa tanaman terurai sebelum penanaman ulang cabai dapat mengurangi penyakit ini.\r\n- Pemberian fungisida pada tanah atau fumigant tertentu terbukti memberi keuntungan di beberapa daerah yang terserang penyakit ini.'),
('P010', 'Bercak Fitoftora Pada Buah', 'Penyakit ini disebabkan oleh Phytophthora capsica. Phytophthora capsica telah dikenal sebagai salah satu cendawan atau jamur pathogen yang mampu menimbulkan kerusakan parah pada hamper semua bagian tanaman cabai.', 'https://diagnosacabai-bawazir-zulfikar.bawazir.pw/uploads/P010.jpg', '- Pemupukan yang berimbang, yaitu Urea 150-200 kg, ZA 450-500 kg, TSP 100-150 kg, KCl 100-150 kg, dan pupuk organik 20-30 ton per hektar.\r\n- Intercropping antara cabai dan tomat di dataran tinggi dapat mengurangi serangan hama dan penyakit serta menaikkan hasil panen.\r\n- Penggunaan mulsa plastik perak di dataran tinggi, dan jerami di dataran rendah mengurangi infestasi penyakit, terutama di musim  hujan.\r\n- Tanaman muda yang terinfeksi penyakit di lapangan dimusnahkan dan disulam dengan yang sehat.\r\n- Buah yang terinfeksi dimusnahkan.\r\n- Cendawan Phytophthora capsici dapat dikendalikan  dengan fungisida sistemik Metalaksil-M 4% + Mancozeb 64% (Ridomil Gold MZ uF0AE 4/64 WP) pada konsentrasi 3 g/l air, bergantian dengan fungisida kontak seperti klorotalonil (Daconil uF0AE 500 F, 2g/l). Fungisida sistemik digunakan maksimal empat kali per musim.\r\n- Untuk mengurangi penggunaan pestisida (+ 30%) dianjurkan untuk menggunakan nozel kipas yang butiran semprotannya berupa kabut dan merata.'),
('P011', 'Corona Virus (Covid19)', 'Coronavirus adalah suatu kelompok virus yang dapat menyebabkan penyakit pada hewan atau manusia. Beberapa jenis coronavirus diketahui menyebabkan infeksi saluran nafas pada manusia mulai dari batuk pilek hingga yang lebih serius seperti Middle East Respiratory Syndrome (MERS) dan Severe Acute Respiratory Syndrome (SARS). Coronavirus jenis baru yang ditemukan menyebabkan penyakit COVID-19.', 'https://diagnosacabai-bawazir-zulfikar.bawazir.pw/uploads/P011.jpg', '- Jaga kesehatan\r\n- Tingkatkan imun tubuh\r\n- Gunakan protokol kesehatan setiap waktu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pertanyaan`
--

INSERT INTO `pertanyaan` (`id`, `pertanyaan`) VALUES
(0, 'apakah Semaian cabai gagal tumbuh ?'),
(1, 'apakah Biji yang sudah berkecambah mati tiba-tiba ?'),
(2, 'apakah Semaian kerdil ?'),
(3, 'apakah Semaian cabai sporadic (menyebar tidak beraturan) ?'),
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
(35, 'apakah Bercak basah pada buah berubah menjadi coklat kehitaman kemudian menjadi kering tetapi tetap menempel pada batang ?\"'),
(36, 'apakah Flu Batuk/Pilek?'),
(37, 'apakah Demam (Overheat)?'),
(38, 'apakah Sesak napas?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaanpenyakit`
--

CREATE TABLE `pertanyaanpenyakit` (
  `id` int(11) NOT NULL,
  `idpertanyaan` int(11) DEFAULT NULL,
  `kodepenyakit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pertanyaanpenyakit`
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
(130, 35, 'P010'),
(133, 37, 'P011'),
(134, 36, 'P011'),
(135, 38, 'P011');

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
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD UNIQUE KEY `kode` (`kode`) USING BTREE;

--
-- Indeks untuk tabel `gejalapenyakit`
--
ALTER TABLE `gejalapenyakit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kodepenyakit` (`kodepenyakit`),
  ADD KEY `kodegejala` (`kodegejala`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD UNIQUE KEY `kode` (`kode`) USING BTREE;

--
-- Indeks untuk tabel `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pertanyaanpenyakit`
--
ALTER TABLE `pertanyaanpenyakit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idpertanyaan` (`idpertanyaan`),
  ADD KEY `kodepenyakit` (`kodepenyakit`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `feed_back`
--
ALTER TABLE `feed_back`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `gejalapenyakit`
--
ALTER TABLE `gejalapenyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `pertanyaanpenyakit`
--
ALTER TABLE `pertanyaanpenyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

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

--
-- Ketidakleluasaan untuk tabel `gejalapenyakit`
--
ALTER TABLE `gejalapenyakit`
  ADD CONSTRAINT `gejalapenyakit_ibfk_1` FOREIGN KEY (`kodepenyakit`) REFERENCES `penyakit` (`kode`),
  ADD CONSTRAINT `gejalapenyakit_ibfk_2` FOREIGN KEY (`kodegejala`) REFERENCES `gejala` (`kode`);

--
-- Ketidakleluasaan untuk tabel `pertanyaanpenyakit`
--
ALTER TABLE `pertanyaanpenyakit`
  ADD CONSTRAINT `pertanyaanpenyakit_ibfk_1` FOREIGN KEY (`idpertanyaan`) REFERENCES `pertanyaan` (`id`),
  ADD CONSTRAINT `pertanyaanpenyakit_ibfk_2` FOREIGN KEY (`kodepenyakit`) REFERENCES `penyakit` (`kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
