-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2021 at 02:22 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bpr`
--

-- --------------------------------------------------------

--
-- Table structure for table `bobot_gap`
--

CREATE TABLE `bobot_gap` (
  `id_bobot` varchar(11) NOT NULL,
  `selisih` int(2) NOT NULL,
  `nilai` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bobot_gap`
--

INSERT INTO `bobot_gap` (`id_bobot`, `selisih`, `nilai`) VALUES
('BOBT.000001', 0, '5.00'),
('BOBT.000002', 1, '4.50'),
('BOBT.000003', -1, '4.00'),
('BOBT.000004', 2, '3.50'),
('BOBT.000005', -2, '3.00'),
('BOBT.000006', 3, '2.50'),
('BOBT.000007', -3, '2.00'),
('BOBT.000008', 4, '1.50'),
('BOBT.000009', -4, '1.00');

-- --------------------------------------------------------

--
-- Table structure for table `detail_agunan`
--

CREATE TABLE `detail_agunan` (
  `idd_agunan` varchar(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `jenis_agunan` varchar(30) NOT NULL,
  `detail_agunan1` varchar(50) NOT NULL,
  `detail_agunan2` varchar(50) NOT NULL,
  `detail_agunan3` varchar(50) NOT NULL,
  `detail_agunan4` varchar(50) NOT NULL,
  `detail_agunan5` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_agunan`
--

INSERT INTO `detail_agunan` (`idd_agunan`, `username`, `jenis_agunan`, `detail_agunan1`, `detail_agunan2`, `detail_agunan3`, `detail_agunan4`, `detail_agunan5`) VALUES
('IDAG.000001', 'shara', 'Sertifikat Rumah', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `detail_kredit`
--

CREATE TABLE `detail_kredit` (
  `id_dkredit` varchar(11) NOT NULL,
  `id_pengajuan` varchar(11) NOT NULL,
  `permohonan` varchar(20) NOT NULL,
  `jangka` varchar(5) NOT NULL,
  `tujuan` varchar(40) NOT NULL,
  `idd_agunan` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_kredit`
--

INSERT INTO `detail_kredit` (`id_dkredit`, `id_pengajuan`, `permohonan`, `jangka`, `tujuan`, `idd_agunan`) VALUES
('DKRD.000001', 'PGJN.000001', '10000000', '6', 'Modal Usaha', ''),
('DKRD.000002', 'PGJN.000002', '2', '1', '1', ''),
('DKRD.000003', 'PGJN.000003', '10000000', '12', 'Usaha', ''),
('DKRD.000004', 'PGJN.000004', '100000', '1', 'Usaha', ''),
('DKRD.000005', 'PGJN.000005', '6000000', '12', 'usaha', ''),
('DKRD.000006', 'PGJN.000006', '6000000', '12', 'usaha', ''),
('DKRD.000007', 'PGJN.000007', '15000000', '10', 'modal usaha', ''),
('DKRD.000008', 'PGJN.000009', '10000000', '16', 'Buka Usaha', ''),
('DKRD.000009', 'PGJN.000010', '10000000', '12', 'Usaha', ''),
('DKRD.000010', 'PGJN.000011', '5000000', '12', 'modal usaha', ''),
('DKRD.000011', 'PGJN.000012', '3000000', '12', 'modal usaha', ''),
('DKRD.000012', 'PGJN.000013', '3', '3', '3', 'IDAG.000001');

-- --------------------------------------------------------

--
-- Table structure for table `detail_nasabah`
--

CREATE TABLE `detail_nasabah` (
  `id_nasabah` varchar(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `npwp` varchar(20) NOT NULL,
  `kewarganegaraan` char(3) NOT NULL,
  `jumlah_tanggungan` varchar(5) NOT NULL,
  `id_pendidikan` varchar(11) NOT NULL,
  `id_pekerjaan` varchar(11) NOT NULL,
  `penghasilan` varchar(15) NOT NULL,
  `nama_pihak2` varchar(40) NOT NULL,
  `alamat_pihak2` varchar(250) NOT NULL,
  `kota_pihak2` varchar(30) NOT NULL,
  `kodepos_pihak2` varchar(5) NOT NULL,
  `nomor_pihak2` varchar(20) NOT NULL,
  `status_tinggal` varchar(20) NOT NULL,
  `lama_usaha_kerja` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_nasabah`
--

INSERT INTO `detail_nasabah` (`id_nasabah`, `username`, `tmp_lahir`, `tgl_lahir`, `no_ktp`, `npwp`, `kewarganegaraan`, `jumlah_tanggungan`, `id_pendidikan`, `id_pekerjaan`, `penghasilan`, `nama_pihak2`, `alamat_pihak2`, `kota_pihak2`, `kodepos_pihak2`, `nomor_pihak2`, `status_tinggal`, `lama_usaha_kerja`) VALUES
('NSBH.000001', 'diki', 'Cirebon', '1996-05-23', '123', '123', 'WNI', '4', 'PDIK.000001', 'PKRJ.000001', '10000', 'samid', 'jonggol', 'jakarta', '45112', '0189211', 'Kontrak', '3'),
('NSBH.000002', 'rifki', '1', '2020-04-27', '1', '1', 'WNI', '1', 'PDIK.000001', 'PKRJ.000002', '1', '1', '1', '1', '1', '2', 'Kontrak', '1'),
('NSBH.000003', 'rian', 'cirebon', '1997-12-09', '3209879877', '11111', 'WNI', '1', 'PDIK.000004', 'PKRJ.000003', '3000000', 'andre', 'cirebon', 'cirebon', '45184', '089098987', 'Milik', '1'),
('NSBH.000004', 'rama', 'Majalengka', '1996-07-17', '320989876525', '6181618717', 'WNI', '0', 'PDIK.000008', 'PKRJ.000005', '6000000', 'Deni', 'Sindang', 'Cirebon', '45617', '08975277678', 'Milik', '5'),
('NSBH.000005', 'shara', 'cirebon', '1984-12-20', '3206082012198400', '01213', 'WNI', '1', 'PDIK.000004', 'PKRJ.000006', '2000000', 'deni seftian', 'cirebon', 'cirebon', '45186', '089765234123', 'Milik', '4');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pencairan`
--

CREATE TABLE `detail_pencairan` (
  `id_pencairan` varchar(11) NOT NULL,
  `id_pengajuan` varchar(11) NOT NULL,
  `tgl_pencairan` date NOT NULL,
  `jumlah_pencairan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pencairan`
--

INSERT INTO `detail_pencairan` (`id_pencairan`, `id_pengajuan`, `tgl_pencairan`, `jumlah_pencairan`) VALUES
('CAIR.000001', 'PGJN.000001', '2020-04-30', '10000000'),
('CAIR.000002', 'PGJN.000002', '2020-04-30', '2'),
('CAIR.000003', 'PGJN.000005', '2020-05-14', '5000000'),
('CAIR.000004', 'PGJN.000006', '2021-01-09', '6000000'),
('CAIR.000005', 'PGJN.000010', '2021-01-08', '10000000'),
('CAIR.000006', 'PGJN.000011', '2021-01-23', '4000000'),
('CAIR.000007', 'PGJN.000012', '2021-01-29', '3000000'),
('CAIR.000008', 'PGJN.000013', '2021-01-29', '3');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` varchar(11) NOT NULL,
  `kriteria` varchar(40) NOT NULL,
  `attribut` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kriteria`, `attribut`) VALUES
('KRIT.000001', 'Riwayat Nasabah', 'cf'),
('KRIT.000002', 'Nilai Pinjaman', 'cf'),
('KRIT.000003', 'Pengalaman Usaha / Lama Bekerja', 'sf'),
('KRIT.000004', 'Jangka Waktu Kredit', 'cf'),
('KRIT.000005', 'Usia', 'sf');

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` varchar(11) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `pekerjaan`) VALUES
('PKRJ.000001', 'Pelajar / Mahasiswa'),
('PKRJ.000002', 'Belum / Tidak Bekerja'),
('PKRJ.000003', 'Wiraswasta'),
('PKRJ.000004', 'Mengurus Rumah Tangga'),
('PKRJ.000005', '	Pegawai Negeri Sipil'),
('PKRJ.000006', 'Karyawan Swasta'),
('PKRJ.000007', 'Pedagang');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id_pendidikan` varchar(11) NOT NULL,
  `pendidikan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id_pendidikan`, `pendidikan`) VALUES
('PDIK.000001', 'Belum / Tidak Sekolah'),
('PDIK.000002', 'SD Sederajat'),
('PDIK.000003', 'SMP Sederajat'),
('PDIK.000004', 'SMA Sederajat'),
('PDIK.000005', 'Diploma I'),
('PDIK.000006', 'Diploma II'),
('PDIK.000007', 'Diploma III'),
('PDIK.000008', 'Strata I'),
('PDIK.000009', 'Strata II'),
('PDIK.000010', 'Strata III');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id_pengajuan` varchar(11) NOT NULL,
  `nasabah` varchar(30) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `status` varchar(30) NOT NULL,
  `n_akhir` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`id_pengajuan`, `nasabah`, `tgl_pengajuan`, `status`, `n_akhir`) VALUES
('PGJN.000001', 'diki', '2020-04-22', 'Selesai', '4.70'),
('PGJN.000002', 'rifki', '2020-04-24', 'Selesai', '4.00'),
('PGJN.000003', 'diki', '2020-04-30', 'Ditolak', '4.10'),
('PGJN.000004', 'diki', '2020-04-30', 'Ditolak', '2.20'),
('PGJN.000005', 'diki', '2020-05-12', 'Selesai', '4.20'),
('PGJN.000006', 'rian', '2020-05-12', 'Selesai', '4.40'),
('PGJN.000007', 'rifki', '2020-05-12', 'Ditolak', '2.40'),
('PGJN.000008', 'diki', '2020-05-12', 'Ditolak', NULL),
('PGJN.000009', 'diki', '2020-05-13', 'Diproses', NULL),
('PGJN.000010', 'rama', '2020-11-07', 'Selesai', '4.20'),
('PGJN.000011', 'shara', '1984-12-20', 'Selesai', '4.80'),
('PGJN.000012', 'shara', '2021-01-22', 'Selesai', '4.60'),
('PGJN.000013', 'shara', '2021-01-24', 'Selesai', '4.20'),
('PGJN.000014', 'suhadi', '2021-01-29', 'Pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `id_nilai` int(11) NOT NULL,
  `id_pengajuan` varchar(11) NOT NULL,
  `id_kriteria` varchar(11) NOT NULL,
  `skor` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`id_nilai`, `id_pengajuan`, `id_kriteria`, `skor`) VALUES
(46, 'PGJN.000001', 'KRIT.000001', 4),
(47, 'PGJN.000001', 'KRIT.000002', 4),
(48, 'PGJN.000001', 'KRIT.000003', 4),
(49, 'PGJN.000001', 'KRIT.000004', 4),
(50, 'PGJN.000001', 'KRIT.000005', 3),
(51, 'PGJN.000002', 'KRIT.000001', 3),
(52, 'PGJN.000002', 'KRIT.000002', 3),
(53, 'PGJN.000002', 'KRIT.000003', 3),
(54, 'PGJN.000002', 'KRIT.000004', 4),
(55, 'PGJN.000002', 'KRIT.000005', 4),
(56, 'PGJN.000003', 'KRIT.000001', 3),
(57, 'PGJN.000003', 'KRIT.000002', 4),
(58, 'PGJN.000003', 'KRIT.000003', 4),
(59, 'PGJN.000003', 'KRIT.000004', 4),
(60, 'PGJN.000003', 'KRIT.000005', 1),
(61, 'PGJN.000004', 'KRIT.000001', 1),
(62, 'PGJN.000004', 'KRIT.000002', 1),
(63, 'PGJN.000004', 'KRIT.000003', 1),
(64, 'PGJN.000004', 'KRIT.000004', 1),
(65, 'PGJN.000004', 'KRIT.000005', 1),
(66, 'PGJN.000005', 'KRIT.000001', 5),
(67, 'PGJN.000005', 'KRIT.000002', 4),
(68, 'PGJN.000005', 'KRIT.000003', 2),
(69, 'PGJN.000005', 'KRIT.000004', 3),
(70, 'PGJN.000005', 'KRIT.000005', 3),
(71, 'PGJN.000006', 'KRIT.000001', 5),
(72, 'PGJN.000006', 'KRIT.000002', 4),
(73, 'PGJN.000006', 'KRIT.000003', 3),
(74, 'PGJN.000006', 'KRIT.000004', 3),
(75, 'PGJN.000006', 'KRIT.000005', 3),
(76, 'PGJN.000007', 'KRIT.000001', 2),
(77, 'PGJN.000007', 'KRIT.000002', 1),
(78, 'PGJN.000007', 'KRIT.000003', 1),
(79, 'PGJN.000007', 'KRIT.000004', 2),
(80, 'PGJN.000007', 'KRIT.000005', 2),
(81, 'PGJN.000010', 'KRIT.000001', 5),
(82, 'PGJN.000010', 'KRIT.000002', 2),
(83, 'PGJN.000010', 'KRIT.000003', 3),
(84, 'PGJN.000010', 'KRIT.000004', 3),
(85, 'PGJN.000010', 'KRIT.000005', 4),
(86, 'PGJN.000011', 'KRIT.000001', 5),
(87, 'PGJN.000011', 'KRIT.000002', 4),
(88, 'PGJN.000011', 'KRIT.000003', 3),
(89, 'PGJN.000011', 'KRIT.000004', 3),
(90, 'PGJN.000011', 'KRIT.000005', 5),
(91, 'PGJN.000012', 'KRIT.000001', 5),
(92, 'PGJN.000012', 'KRIT.000002', 4),
(93, 'PGJN.000012', 'KRIT.000003', 3),
(94, 'PGJN.000012', 'KRIT.000004', 3),
(95, 'PGJN.000012', 'KRIT.000005', 4),
(96, 'PGJN.000013', 'KRIT.000001', 5),
(97, 'PGJN.000013', 'KRIT.000002', 5),
(98, 'PGJN.000013', 'KRIT.000003', 2),
(99, 'PGJN.000013', 'KRIT.000004', 4),
(100, 'PGJN.000013', 'KRIT.000005', 4);

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id_rule` varchar(11) NOT NULL,
  `id_kriteria` varchar(11) NOT NULL,
  `rule` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id_rule`, `id_kriteria`, `rule`) VALUES
('RULE.000001', 'KRIT.000001', 5),
('RULE.000002', 'KRIT.000002', 4),
('RULE.000003', 'KRIT.000003', 4),
('RULE.000004', 'KRIT.000004', 3),
('RULE.000005', 'KRIT.000005', 5);

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_sub` varchar(11) NOT NULL,
  `id_kriteria` varchar(11) NOT NULL,
  `keterangan` varchar(40) NOT NULL,
  `skor` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub`, `id_kriteria`, `keterangan`, `skor`) VALUES
('SUBK.000001', 'KRIT.000001', 'Lancar', 5),
('SUBK.000002', 'KRIT.000001', 'Dalam Perhatian Khusus', 4),
('SUBK.000003', 'KRIT.000001', 'Kurang Lancar', 3),
('SUBK.000004', 'KRIT.000001', 'Diragukan', 2),
('SUBK.000005', 'KRIT.000001', 'Macet', 1),
('SUBK.000006', 'KRIT.000002', 'Rp. 1.000.000 - Rp. 2.500.000', 5),
('SUBK.000007', 'KRIT.000002', 'Rp. 2.600.000 - Rp. 6.500.000', 4),
('SUBK.000008', 'KRIT.000002', 'Rp. 6.600.000 - Rp. 9.500.000', 3),
('SUBK.000009', 'KRIT.000002', 'Rp. 9.600.000 - Rp. 14.500.000', 2),
('SUBK.000010', 'KRIT.000002', '> Rp. 14.500.000', 1),
('SUBK.000011', 'KRIT.000003', '< 1 Tahun', 1),
('SUBK.000012', 'KRIT.000003', '1 - 3 Tahun', 2),
('SUBK.000013', 'KRIT.000003', '3 - 5 Tahun', 3),
('SUBK.000014', 'KRIT.000003', '5- 10 Tahun', 4),
('SUBK.000015', 'KRIT.000003', '> 10 Tahun', 5),
('SUBK.000016', 'KRIT.000004', '24 Bulan', 5),
('SUBK.000017', 'KRIT.000004', '18 Bulan', 4),
('SUBK.000018', 'KRIT.000004', '12 Bulan', 3),
('SUBK.000019', 'KRIT.000004', '10 Bulan', 2),
('SUBK.000020', 'KRIT.000004', '6 Bulan', 1),
('SUBK.000021', 'KRIT.000005', '28 - 35 Tahun', 5),
('SUBK.000022', 'KRIT.000005', '36 - 45 Tahun', 4),
('SUBK.000023', 'KRIT.000005', '20 - 27 Tahun', 3),
('SUBK.000024', 'KRIT.000005', '46 - 59 Tahun', 2),
('SUBK.000025', 'KRIT.000005', '15 - 19 Tahun', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `email` varchar(35) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `level` varchar(15) NOT NULL,
  `blokir` char(1) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `kode_pos` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`, `alamat`, `kota`, `kode_pos`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Deni Seftian', 'deni@bpr.com', '0871827812', 'admin', 'N', 'Jl. Sriwijaya No. 1 Kedawung', 'Kota Cirebon', '45155'),
('ayu', '29c65f781a1068a41f735e1b092546de', 'Ayu Ratna', 'ayu@bpr.com', '086187181781', 'marketing', 'N', 'Jl. Pelajar Pejuang 45, No.39 - 41 ', 'Kota Cirebon', '45167'),
('bambang', 'a9711cbb2e3c2d5fc97a63e45bbe5076', 'Bambang Putra', 'bambang@bpr.com', '087182718', 'pimpinan', 'N', 'Ds. Klangenan RT 09 RW 01 Kab. Cirebon', 'Kabupaten Cirebon ', '45155'),
('diki', '43b93443937ea642a9a43e77fd5d8f77', 'Diki Perwira', 'diki@gmail.com', '08817281782', 'nasabah', 'N', 'Blok Setu Kulon RT 01 RW 01 Plered', 'Kabupaten Cirebon ', '45155'),
('rama', 'e04f28cc33cb20274dd3ff44e600a923', 'ramadhani', 'ramadhani@gmail.com', '08213432233', 'nasabah', 'N', 'cirebon', 'cirebon', '45185'),
('rian', 'cb2b28afc2cc836b33eb7ed86f99e65a', 'rian jabrig', 'rian12@yahoo.com', '082123232221', 'nasabah', 'N', 'cirebon', 'cirebon', '45186'),
('rifki', '2a5c4c5a5ba1c332279685ddec507cd9', 'Rifki Jaenudin', 'rifki@gmail.com', '07129109201', 'nasabah', 'N', 'Ds. Klangenan RT 09 RW 01 Kab. Cirebon', 'Cirebon', '45451'),
('shara', '12982bb70dcc7ac53cd0650bb6eaf69c', 'sarah tri nur hasanah', 'shara@yahoo.com', '089088978564', 'nasabah', 'N', 'cirebon', 'cirebon', '45162'),
('suhadi', '74107bf59217189319c8e59a7376c461', 'Suhadi', 'suhadi@gmail.com', '089660', 'nasabah', 'N', 'cirebon', 'cirebon', '45111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bobot_gap`
--
ALTER TABLE `bobot_gap`
  ADD PRIMARY KEY (`id_bobot`);

--
-- Indexes for table `detail_agunan`
--
ALTER TABLE `detail_agunan`
  ADD PRIMARY KEY (`idd_agunan`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `detail_kredit`
--
ALTER TABLE `detail_kredit`
  ADD PRIMARY KEY (`id_dkredit`),
  ADD KEY `id_pengajuan` (`id_pengajuan`),
  ADD KEY `idd_agunan` (`idd_agunan`);

--
-- Indexes for table `detail_nasabah`
--
ALTER TABLE `detail_nasabah`
  ADD PRIMARY KEY (`id_nasabah`),
  ADD KEY `username` (`username`),
  ADD KEY `id_pendidikan` (`id_pendidikan`,`id_pekerjaan`),
  ADD KEY `id_pekerjaan` (`id_pekerjaan`);

--
-- Indexes for table `detail_pencairan`
--
ALTER TABLE `detail_pencairan`
  ADD PRIMARY KEY (`id_pencairan`),
  ADD KEY `id_pengajuan` (`id_pengajuan`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indexes for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id_pengajuan`),
  ADD KEY `nasabah` (`nasabah`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_pengajuan` (`id_pengajuan`,`id_kriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id_rule`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_sub`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_kredit`
--
ALTER TABLE `detail_kredit`
  ADD CONSTRAINT `detail_kredit_ibfk_1` FOREIGN KEY (`id_pengajuan`) REFERENCES `pengajuan` (`id_pengajuan`);

--
-- Constraints for table `detail_nasabah`
--
ALTER TABLE `detail_nasabah`
  ADD CONSTRAINT `detail_nasabah_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `detail_nasabah_ibfk_2` FOREIGN KEY (`id_pendidikan`) REFERENCES `pendidikan` (`id_pendidikan`),
  ADD CONSTRAINT `detail_nasabah_ibfk_3` FOREIGN KEY (`id_pekerjaan`) REFERENCES `pekerjaan` (`id_pekerjaan`);

--
-- Constraints for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD CONSTRAINT `pengajuan_ibfk_1` FOREIGN KEY (`nasabah`) REFERENCES `users` (`username`);

--
-- Constraints for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`id_pengajuan`) REFERENCES `pengajuan` (`id_pengajuan`),
  ADD CONSTRAINT `penilaian_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`);

--
-- Constraints for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD CONSTRAINT `sub_kriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
