-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 04:33 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_jabatan`
--

CREATE TABLE `data_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(119) NOT NULL,
  `gaji_pokok` varchar(51) NOT NULL,
  `tj_transport` varchar(51) NOT NULL,
  `uang_makan` varchar(51) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_jabatan`
--

INSERT INTO `data_jabatan` (`id_jabatan`, `nama_jabatan`, `gaji_pokok`, `tj_transport`, `uang_makan`) VALUES
(20, 'staff marketing', '4000000', '500000', '800000'),
(21, 'Admin', '4000000', '600000', '800000'),
(22, 'Programer', '8000000', '500000', '800000');

-- --------------------------------------------------------

--
-- Table structure for table `data_kehadiran`
--

CREATE TABLE `data_kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `bulan` varchar(15) NOT NULL,
  `nik` varchar(51) NOT NULL,
  `nama_pegawai` varchar(199) NOT NULL,
  `jenis_kelamin` varchar(51) NOT NULL,
  `nama_jabatan` varchar(51) NOT NULL,
  `hadir` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `alpha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_kehadiran`
--

INSERT INTO `data_kehadiran` (`id_kehadiran`, `bulan`, `nik`, `nama_pegawai`, `jenis_kelamin`, `nama_jabatan`, `hadir`, `sakit`, `alpha`) VALUES
(47, '052021', '989889897', 'Narys', 'Laki-Laki', 'Admin', 17, 2, 3),
(48, '052021', '5645', 'Simon', 'Laki-Laki', 'Admin', 20, 1, 1),
(49, '052021', '989889897', 'Narys', 'Laki-Laki', 'Admin', 0, 0, 0),
(50, '052021', '5645', 'Simon', 'Laki-Laki', 'Admin', 0, 0, 0),
(51, '052021', '94879487', 'Sua', 'Laki-Laki', 'staff marketing', 20, 1, 1),
(52, '052021', '87868768', 'Nano', 'Laki-Laki', 'Programer', 0, 0, 0),
(53, '052021', '989889897', 'Narys', 'Laki-Laki', 'Admin', 0, 0, 0),
(54, '052021', '5645', 'Simon', 'Laki-Laki', 'Admin', 0, 0, 0),
(55, '052021', '94879487', 'Sua', 'Laki-Laki', 'staff marketing', 0, 0, 0),
(56, '052021', '87868768', 'Nano', 'Laki-Laki', 'Programer', 20, 0, 2),
(57, '052021', '989889897', 'Narys', 'Laki-Laki', 'Admin', 20, 2, 0),
(58, '052021', '5645', 'Simon', 'Laki-Laki', 'Admin', 15, 4, 3),
(59, '052021', '94879487', 'Sua', 'Laki-Laki', 'staff marketing', 18, 0, 4),
(60, '042021', '87868768', 'Nano', 'Laki-Laki', 'Programer', 18, 0, 4),
(61, '042021', '989889897', 'Narys', 'Laki-Laki', 'Admin', 19, 1, 2),
(62, '042021', '5645', 'Simon', 'Laki-Laki', 'Admin', 19, 0, 3),
(63, '042021', '94879487', 'Sua', 'Laki-Laki', 'staff marketing', 22, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nik` varchar(51) NOT NULL,
  `nama_pegawai` varchar(311) NOT NULL,
  `username` varchar(119) NOT NULL,
  `password` varchar(119) NOT NULL,
  `jenis_kelamin` varchar(31) NOT NULL,
  `jabatan` varchar(51) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `status` varchar(51) NOT NULL,
  `photo` varchar(199) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pegawai`
--

INSERT INTO `data_pegawai` (`id_pegawai`, `nik`, `nama_pegawai`, `username`, `password`, `jenis_kelamin`, `jabatan`, `tanggal_masuk`, `status`, `photo`, `hak_akses`) VALUES
(15, '989889897', 'Narys', 'Narys', '89b869c2886569e7cf6a86e969611301', 'Laki-Laki', 'Admin', '2021-05-01', 'Pegawai Tetap', 'Narys.jpg', 2),
(16, '5645', 'Simon', 'Simon', '78843575bf3437d87361a2aba0a3fdea', 'Laki-Laki', 'Admin', '2021-04-30', 'Pegawai Tetap', 'longshot.jpg', 1),
(18, '94879487', 'Sua', 'Sua', 'e6e0b67d8f7b8e3cbb40ef83b4a8e377', 'Laki-Laki', 'staff marketing', '2021-04-30', 'Pegawai Tidak Tetap', 'gelap_sebelah.jpg', 2),
(19, '87868768', 'Nano', '111', '698d51a19d8a121ce581499d7b701668', 'Laki-Laki', 'Programer', '2021-05-01', 'Pegawai Tetap', 'dada.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(51) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hak_akses`
--

INSERT INTO `hak_akses` (`id`, `keterangan`, `hak_akses`) VALUES
(1, 'admin', 1),
(2, 'pegawai', 2);

-- --------------------------------------------------------

--
-- Table structure for table `potongan_gaji`
--

CREATE TABLE `potongan_gaji` (
  `id` int(11) NOT NULL,
  `potongan` varchar(119) NOT NULL,
  `jml_potongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `potongan_gaji`
--

INSERT INTO `potongan_gaji` (`id`, `potongan`, `jml_potongan`) VALUES
(15, 'Alpha', 100000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `hak_akses`
--
ALTER TABLE `hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
