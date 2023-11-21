-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 09:13 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nm_guru` varchar(25) NOT NULL,
  `gelar` text NOT NULL,
  `nuptk` text NOT NULL,
  `id_jbt_dtl` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nm_guru`, `gelar`, `nuptk`, `id_jbt_dtl`, `username`, `password`) VALUES
(1, 'Humaedi', 'S.Ag', '9544752654200012', 1, 'humaedi', '0e96c91f4d403ff579cfcb8840d8d58a'),
(2, 'Khidmat Amirullah', 'S.Pd.I', '4545765665110003', 2, 'amir', '63eefbd45d89e8c91f24b609f7539942'),
(3, 'Nuryanto', 'S.Pd', '6141763665120003', 3, 'nuryanto', '0f43f3d5e26e41d989b018bc5b4ed9e1'),
(4, 'Nur Kholis', 'S.T', '0534775676130102', 4, 'kholis', '6efb48c20e774d23fd78a2e3f68dbeb8');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jbt_detail`
--

CREATE TABLE `tb_jbt_detail` (
  `id_guru` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jbt_detail`
--

INSERT INTO `tb_jbt_detail` (`id_guru`, `id_jabatan`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 5),
(4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tugas_tambahan`
--

CREATE TABLE `tb_tugas_tambahan` (
  `id_jabatan` int(11) NOT NULL,
  `nm_tugas` varchar(25) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `gaji` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tugas_tambahan`
--

INSERT INTO `tb_tugas_tambahan` (`id_jabatan`, `nm_tugas`, `id_guru`, `gaji`) VALUES
(1, 'Kepala Sekolah', 1, 1000000),
(2, 'Waka Kurikulum', 2, 750000),
(3, 'Waka Kesiswaan', 3, 750000),
(4, 'Bendahara Umum', 0, 500000),
(5, 'Operator', 4, 500000),
(6, 'Bendahara BOS', 0, 300000),
(7, 'Wali Kelas', 0, 150000),
(8, 'Ketua BKK', 4, 200000),
(9, 'Pembina OSIS', 0, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nm_user` varchar(25) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `role` enum('bendahara','tu') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nm_user`, `username`, `password`, `role`) VALUES
(4, 'Okta Megawati', 'okta', '411d2f5092ce942f2163866113f28168', 'tu'),
(5, 'Cusliah', 'cusliah', 'a957547dc476002b66cad8688b04c348', 'bendahara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tb_tugas_tambahan`
--
ALTER TABLE `tb_tugas_tambahan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_tugas_tambahan`
--
ALTER TABLE `tb_tugas_tambahan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
