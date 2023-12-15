-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2023 at 11:53 AM
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
(1, 'Rizki ', 'SMPN 1 PAPAR', 'Desa Janti, Kecamatan Papar', 'L', 'Islam', 90, 85, 95, 90.744519100373, 0.043059295908277),
(2, 'Khalid', 'SMPN 1 CIREBON', 'KECAMATAN CIREBON', 'L', 'Islam', 90, 85, 95, 90.744519100373, 0.043059295908277),
(3, 'Yomara', 'SMPN 19 SURABAYA', 'KECAMATAN RUNGKUT', 'L', 'Islam', 90, 86, 96, 91.408194269899, 0.043374217247824),
(4, 'Bintang ', 'SMPN 1 NTT', 'KECAMATAN NTT', 'L', 'Kristen', 98, 80, 95, 91.953025695967, 0.043632745893166),
(5, 'Ani Marisa', 'SMPN 2 PAPAR', 'pehkulon kec.papar', 'P', 'Islam', 98, 96, 95, 96.241267866825, 0.045667565079954),
(6, 'Belisa Ayu Sari', 'SMPN 2 PAPAR', 'Ds. pesing kec.purwoasri', 'P', 'Islam', 70, 85, 78, 76.870580824124, 0.036475956004416),
(7, 'Sri Ayu Mardiningsih', 'SMPN 3 PAPAR', 'DS. pOHJAJAR kec.papar', 'P', 'Islam', 90, 90, 95, 92.050531269378, 0.04367901338546),
(8, 'Joshua Putra Abadi', 'SMPN 1 PAPAR', 'Ds. Papapr kec.papar', 'L', 'Islam', 85, 78, 86, 83.599622032782, 0.039668961812978),
(9, 'Nadiya Aini Ainun', 'MTS 1 PAPAR', 'Ds. pehkidul kec.papar', 'P', 'Islam', 95, 95, 70, 83.649423669216, 0.039692593250129),
(10, 'Cantika Adrenelia Putri', 'SMPN 1 KERTOSONO', 'Ds. pohjajar kec.papar', 'P', 'Islam', 75, 95, 80, 81.734513827214, 0.038783946972184),
(11, 'Ari Setyo Romadhon ', 'SMPN 35 SURABAYA', 'Kecamatan Sukolilo', 'L', 'Islam', 95, 80, 85, 86.883688703715, 0.041227288420117),
(12, 'Parhan Bisultan', 'SMPN 1 KOTA KEDIRI', 'Ds.Tanon Kec.papar', 'L', 'Islam', 65, 75, 75, 71.506462649581, 0.033930621541746),
(13, 'Egistia Ninit     ', 'SMPN 1 PAPAR', 'Ds. Janti  Kec.papar', 'P', 'Islam', 85, 96, 88, 88.90139249989, 0.042184711586564),
(14, 'Cristian Johan Seto', 'SMPK KRISTEN YBPK', 'Ds. Peh wetan kec.papar', 'L', 'Kristen', 96, 75, 98, 91.03322426101, 0.043196289757221),
(15, 'Muhhamad Yunus', 'SMPN 1 PAGU', 'Ds. Purwoadadi kec papar', 'L', 'Islam', 86, 86, 86, 86, 0.040807968181702),
(16, 'Muhhamad Yusril Renan', 'SMPN 2 PAPAR', 'Ds. Tanon Kec.papar', 'L', 'Islam', 70, 90, 85, 80.819816443413, 0.038349912765974),
(17, 'Sri Ayu Mardiningsih', 'SMPN 3 PAPAR', 'DS. pOHJAJAR kec.papar', 'P', 'Islam', 75, 75, 75, 75, 0.035588344344507),
(18, 'Putri Ayu Rezeki', 'SMPN 2 PAPAR', 'Ds. pehkulon kec.papar', 'P', 'Islam', 96, 95, 96, 95.749017460696, 0.045433986720527),
(19, 'Della Atika Sari	', 'SMPN 1 KOTA KEDIRI', 'Ds. Papar kec.papar', 'P', 'Islam', 85, 85, 70, 78.39443299669, 0.037199041015715),
(20, 'Belisa Putri Andini', 'SMPN 2 KOTA KEDIRI', 'Ds papar kec.papar', 'P', 'Islam', 70, 96, 95, 86.03040956833, 0.040822397864223),
(21, 'Adinda Jayanti', 'SMPN 2 KOTA KEDIRI', 'Ds. tenggilis kec.papar', 'P', 'Islam', 85, 60, 80, 75.968161420463, 0.036047747838008),
(22, 'Amirudin Karim', 'SMPN 1 PAPAR', 'Ds. Papar kec.papar', 'L', 'Islam', 92, 65, 95, 85.482218309396, 0.040562274940362),
(23, 'I Gede Wedakarne', 'SMPN 1 PAPAR', 'Ds. Minggiran kec papar', 'L', 'Hindu', 86, 75, 80, 80.640329597291, 0.03826474423684),
(24, 'Muhhamad Dwi Alfianto', 'SMPN 1 PAPAR', ' Ds. Minggiran kec papar', 'L', 'Islam', 75, 95, 70, 77.311156947685, 0.03668501433502),
(25, 'Stevany Wahyu Anjali	', 'SMPN 3 PAPAR', 'Ds. Minggiran kec.papar', 'L', 'Kristen', 70, 65, 70, 68.715050368396, 0.032606064988809);

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
  MODIFY `no_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
