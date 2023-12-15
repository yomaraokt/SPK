-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 08:42 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_dosen`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama_admin` varchar(30) NOT NULL,
  `user_admin` varchar(30) NOT NULL,
  `password_admin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama_admin`, `user_admin`, `password_admin`) VALUES
(1, 'Admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `data_lppm`
--

CREATE TABLE `data_lppm` (
  `id_data` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `jml_pn` int(11) NOT NULL,
  `jml_jia` int(11) NOT NULL,
  `jml_ji` int(11) NOT NULL,
  `jml_jna` int(11) NOT NULL,
  `jml_jn` int(11) NOT NULL,
  `jml_jl` int(11) NOT NULL,
  `jml_pl` int(11) NOT NULL,
  `jml_sm` int(11) NOT NULL,
  `jml_pg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_lppm`
--

INSERT INTO `data_lppm` (`id_data`, `id_dosen`, `jml_pn`, `jml_jia`, `jml_ji`, `jml_jna`, `jml_jn`, `jml_jl`, `jml_pl`, `jml_sm`, `jml_pg`) VALUES
(8, 10, 3, 0, 0, 2, 0, 0, 1, 2, 1),
(9, 11, 2, 0, 0, 0, 3, 1, 3, 2, 1),
(10, 13, 4, 0, 0, 2, 0, 1, 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_dosen`
--

CREATE TABLE `nilai_dosen` (
  `id` int(11) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `q1` double NOT NULL,
  `q2` double NOT NULL,
  `q3` double NOT NULL,
  `q4` double NOT NULL,
  `q5` double NOT NULL,
  `avg` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nilai_dosen`
--

INSERT INTO `nilai_dosen` (`id`, `nip`, `id_dosen`, `q1`, `q2`, `q3`, `q4`, `q5`, `avg`) VALUES
(17, 'dsn3', 10, 4, 4, 3, 3, 4, 3.6),
(18, 'dsn4', 10, 5, 3, 4, 4, 3, 3.8),
(19, 'dsn4', 11, 5, 4, 4, 4, 4, 4.2),
(20, 'dsn3', 11, 4, 4, 3, 3, 4, 3.6),
(21, 'dsn6', 13, 4, 5, 4, 4, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `no_pendaftaran` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `asal_smp` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jenkel` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `c1` double NOT NULL DEFAULT 1,
  `c2` double NOT NULL DEFAULT 1,
  `c3` double NOT NULL DEFAULT 1,
  `vektor_s` double NOT NULL,
  `vektor_v` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`no_pendaftaran`, `nama`, `asal_smp`, `alamat`, `jenkel`, `agama`, `c1`, `c2`, `c3`, `vektor_s`, `vektor_v`) VALUES
(1, 'Rizki ', 'SMPN 1 PAPAR', 'Desa Janti, Kecamatan Papar', 'L', 'Islam', 90, 85, 95, 90.744519100373, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_hmp_kriteria`
--

CREATE TABLE `tb_hmp_kriteria` (
  `id_hmp` int(11) NOT NULL,
  `himpunan` varchar(70) NOT NULL,
  `keterangan` varchar(40) NOT NULL,
  `nilai` int(11) NOT NULL,
  `nama_kriteria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_hmp_kriteria`
--

INSERT INTO `tb_hmp_kriteria` (`id_hmp`, `himpunan`, `keterangan`, `nilai`, `nama_kriteria`) VALUES
(1, '86 - 100', 'sangat baik', 5, 'Nilai Akademik'),
(2, '76 - 85', 'baik', 4, 'Nilai Akademik'),
(3, '66 - 75', 'cukup', 3, 'Nilai Akademik'),
(4, '51 - 65', 'kurang', 2, 'Nilai Akademik'),
(5, '0 - 50', 'sangat kurang', 1, 'Nilai Akademik'),
(6, '86-100', 'sangat baik', 5, 'Nilai Non Akademik'),
(7, '76-85', 'baik', 4, 'Nilai Non Akademik'),
(8, '66-75', 'cukup', 3, 'Nilai Non Akademik'),
(9, '51-65', 'kurang', 2, 'Nilai Non Akademik'),
(10, '0-50', 'sangat kurang', 1, 'Nilai Non Akademik'),
(11, '86-100', 'sangat baik', 5, 'Nilai Tes'),
(12, '76-85', 'baik', 4, 'Nilai Tes'),
(13, '66-75', 'cukup', 3, 'Nilai Tes'),
(14, '51-65', 'kurang', 2, 'Nilai Tes'),
(15, '0-50', 'sangat kurang', 1, 'Nilai Tes');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nama_kriteria` varchar(30) NOT NULL,
  `bobot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`id_kriteria`, `nama_kriteria`, `bobot`) VALUES
(1, 'Nilai Akademik', 4),
(2, 'Nilai Non Akademik', 3),
(3, 'Nilai Tes', 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `jenis`, `username`, `password`, `nama`) VALUES
(12, 'mahasiswa', 'mhs1', 'mhs1', 'Mahasiswa 1'),
(13, 'mahasiswa', 'mhs2', 'mhs2', 'Mahasiswa 2'),
(14, 'pimpinan', 'pmp', 'pmp', 'Pimpinan'),
(15, 'lppm', 'lppm', 'lppm', 'LPPM'),
(16, 'dosen', 'dsn1', 'dsn1', 'Dosen 1'),
(17, 'dosen', 'dsn2', 'dsn2', 'Dosen 2'),
(18, 'dosen', 'dsn3', 'dsn3', 'Dosen Nilai 1'),
(19, 'dosen', 'dsn4', 'dsn4', 'Dosen Nilai 2'),
(20, 'dosen', 'dsn5', 'dsn5', 'Dosen 5'),
(21, 'dosen', 'dsn6', 'dsn6', 'Dosen 6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_lppm`
--
ALTER TABLE `data_lppm`
  ADD PRIMARY KEY (`id_data`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`no_pendaftaran`);

--
-- Indexes for table `tb_hmp_kriteria`
--
ALTER TABLE `tb_hmp_kriteria`
  ADD PRIMARY KEY (`id_hmp`);

--
-- Indexes for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_lppm`
--
ALTER TABLE `data_lppm`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `no_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_hmp_kriteria`
--
ALTER TABLE `tb_hmp_kriteria`
  MODIFY `id_hmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
