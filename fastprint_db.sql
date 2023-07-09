-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2023 at 02:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fastprint_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `no` int(6) NOT NULL,
  `id_produk` int(6) DEFAULT NULL,
  `nama_produk` varchar(150) NOT NULL,
  `harga` int(12) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`no`, `id_produk`, `nama_produk`, `harga`, `kategori`, `status`) VALUES
(7, 6, 'ALCOHOL GEL POLISH CLEANSER GP-CLN01', 12500, 'L QUEENLY', 'bisa dijual'),
(10, 9, 'ALUMUNIUM FOIL ALL IN ONE BULAT 23mm IM', 1000, 'L MTH AKSESORIS (IM)', 'bisa dijual'),
(12, 11, 'ALUMUNIUM FOIL ALL IN ONE BULAT 30mm IM', 1000, 'L MTH AKSESORIS (IM)', 'bisa dijual'),
(13, 12, 'ALUMUNIUM FOIL ALL IN ONE SHEET 250mm IM', 12500, 'L MTH AKSESORIS (IM)', 'tidak bisa dijual'),
(16, 15, 'ALUMUNIUM FOIL HDPE/PE BULAT 23mm IM', 12500, 'L MTH AKSESORIS (IM)', 'bisa dijual'),
(18, 17, 'ALUMUNIUM FOIL HDPE/PE BULAT 30mm IM', 1000, 'L MTH AKSESORIS (IM)', 'bisa dijual'),
(19, 18, 'ALUMUNIUM FOIL HDPE/PE SHEET 250mm IM', 13000, 'L MTH AKSESORIS (IM)', 'tidak bisa dijual'),
(20, 19, 'ALUMUNIUM FOIL PET SHEET 250mm IM', 1000, 'L MTH AKSESORIS (IM)', 'tidak bisa dijual'),
(23, 22, 'ARM PENDEK MODEL U', 13000, 'L MTH AKSESORIS (IM)', 'bisa dijual'),
(24, 23, 'ARM SUPPORT KECIL', 13000, 'L MTH TABUNG (LK)', 'tidak bisa dijual'),
(25, 24, 'ARM SUPPORT KOTAK PUTIH', 13000, 'L MTH AKSESORIS (IM)', 'tidak bisa dijual'),
(27, 26, 'ARM SUPPORT PENDEK POLOS', 13000, 'L MTH TABUNG (LK)', 'bisa dijual'),
(28, 27, 'ARM SUPPORT S IM', 1000, 'L MTH AKSESORIS (IM)', 'tidak bisa dijual'),
(29, 28, 'ARM SUPPORT T (IMPORT)', 13000, 'L MTH AKSESORIS (IM)', 'bisa dijual'),
(30, 29, 'ARM SUPPORT T - MODEL 1 ( LOKAL )', 10000, 'L MTH TABUNG (LK)', 'bisa dijual'),
(51, 50, 'BLACK LASER TONER FP-T3 (100gr)', 13000, 'L MTH AKSESORIS (IM)', 'tidak bisa dijual'),
(57, 56, 'BODY PRINTER CANON IP2770', 500, 'SP MTH SPAREPART (LK)', 'bisa dijual'),
(59, 58, 'BODY PRINTER T13X', 15000, 'SP MTH SPAREPART (LK)', 'bisa dijual'),
(60, 59, 'BOTOL 1000ML BLUE KHUSUS UNTUK EPSON R1800/R800 - 4180 IM (T054920)', 10000, 'CI MTH TINTA LAIN (IM)', 'bisa dijual'),
(61, 60, 'BOTOL 1000ML CYAN KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4120 IM (T054220)', 10000, 'CI MTH TINTA LAIN (IM)', 'tidak bisa dijual'),
(62, 61, 'BOTOL 1000ML GLOSS OPTIMIZER KHUSUS UNTUK EPSON R1800/R800/R1900/R2000/IX7000/MG6170 - 4100 IM (T054020)', 1500, 'CI MTH TINTA LAIN (IM)', 'bisa dijual'),
(63, 62, 'BOTOL 1000ML L.LIGHT BLACK KHUSUS UNTUK EPSON 2400 - 0599 IM', 1500, 'CI MTH TINTA LAIN (IM)', 'tidak bisa dijual'),
(64, 63, 'BOTOL 1000ML LIGHT BLACK KHUSUS UNTUK EPSON 2400 - 0597 IM', 1500, 'CI MTH TINTA LAIN (IM)', 'tidak bisa dijual'),
(65, 64, 'BOTOL 1000ML MAGENTA KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4140 IM (T054320)', 1000, 'CI MTH TINTA LAIN (IM)', 'bisa dijual'),
(66, 65, 'BOTOL 1000ML MATTE BLACK KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 3503 IM (T054820)', 1500, 'CI MTH TINTA LAIN (IM)', 'tidak bisa dijual'),
(67, 66, 'BOTOL 1000ML ORANGE KHUSUS UNTUK EPSON R1900/R2000 IM - 4190 (T087920)', 1500, 'CI MTH TINTA LAIN (IM)', 'bisa dijual'),
(68, 67, 'BOTOL 1000ML RED KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4170 IM (T054720)', 1000, 'CI MTH TINTA LAIN (IM)', 'tidak bisa dijual'),
(69, 68, 'BOTOL 1000ML YELLOW KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4160 IM (T054420)', 1500, 'CI MTH TINTA LAIN (IM)', 'tidak bisa dijual'),
(71, 70, 'BOTOL KOTAK 100ML LK', 1000, 'L MTH AKSESORIS (LK)', 'bisa dijual'),
(73, 72, 'BOTOL 10ML IM', 1000, 'S MTH STEMPEL (IM)', 'tidak bisa dijual'),
(78, 123, 'PRINTER CANON', 5000, 'CI MTH TINTA LAIN (IM)', 'bisa dijual'),
(84, 125, 'PRINTER EPSON', 23000, 'CI MTH TINTA LAIN (IM)', 'bisa dijual'),
(92, 129, 'laptop', 36000, 'L QUEENLY', 'tidak bisa dijual'),
(93, 127, 'Laptop A', 20000, 'CI MTH TINTA LAIN (IM)', 'tidak bisa dijual');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `id_produk` (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `no` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
