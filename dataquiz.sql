-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2017 at 05:09 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dataquiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guest_id` int(3) NOT NULL,
  `username` varchar(10) NOT NULL,
  `age` int(3) NOT NULL,
  `jeniskelamin` varchar(20) NOT NULL,
  `kota` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `username`, `age`, `jeniskelamin`, `kota`) VALUES
(1, '', 17, 'perempuan', 'pulau seribu');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id_question` int(2) NOT NULL,
  `question` varchar(150) NOT NULL,
  `answer` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id_question`, `question`, `answer`) VALUES
(1, 'Jumlah rata-rata penduduk belum tamat SD di Jakarta Timur di tahun 2014?', 7107),
(2, 'Jumlah penduduk belum lulus SD di Kecmatan Cilandak Jakarta Selatan di tahun 2014?', 3854),
(3, 'Jumlah siswi SD di Jakarta Utara di tahun 2015?', 42),
(4, 'Berapa banyak jumlah Sarjana II di Jakartadi tahun 2015?', 83026),
(5, 'Berapa jumlah penduduk belum lulus SD di Kepulauan Seribu pada tahun 2014?', 5314),
(6, 'Berapa jumlah kematian ibu akibat infeksi di tahun 2015?', 8),
(7, 'Berapa jumlah penolong persalinan di Jakarta pada tahun 2015?', 699),
(8, 'Berapa jumlah perorok dewasa di kecamatan Cilandak Jakarta Selatan pada tahun 2016?', 4932),
(9, 'Berapa jumlah bukan perokok di kecamatan Cilandak Jakarta selatan pada tahun 2016?', 9037),
(10, 'Berapa jumlah siswa/I SMK di Jakarta selatan pada tahun 2015?', 48874),
(11, 'Berapa jumlah total siswa/I di Jakarta pada tahun 2015?', 3325393),
(12, 'Berapa jumlah kematian ibu pada tahun 2015?', 170),
(13, 'Dari 170 kematian ibu, berapa yang diakibatkan Pendarahan Post Partum?', 17),
(14, 'Berapa jumlah persalinan yang ditangani Dokter di DKI Jakarta pada tahun 2015?', 4197),
(15, 'Di Kepulauan Seribu pada tahun 2015 miliki jumlah siswa SMK terendah,yaitu?', 86),
(16, 'Berapa jumlah pelajar di Kepulauan Seribu pada tahun 2015?', 968),
(17, 'Berapakah total pelajar SD di Jakarta barat pada tahun 2015?', 36964),
(18, 'Berapakah jumlah terendah peroko di Pondok Labu pada bulan 7 tahun 2015?', 845);

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `id_score` int(3) NOT NULL,
  `username` varchar(10) NOT NULL,
  `totalquestion` int(3) NOT NULL,
  `totalscore` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id_question`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id_score`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id_score` int(3) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
