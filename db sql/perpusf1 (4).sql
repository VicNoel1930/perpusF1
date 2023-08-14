-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2023 at 02:28 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpusf1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_biaya_denda`
--

CREATE TABLE `tbl_biaya_denda` (
  `id_biaya_denda` int(11) NOT NULL,
  `harga_denda` varchar(255) NOT NULL,
  `stat` varchar(255) NOT NULL,
  `tgl_tetap` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_biaya_denda`
--

INSERT INTO `tbl_biaya_denda` (`id_biaya_denda`, `harga_denda`, `stat`, `tgl_tetap`) VALUES
(1, '4000', 'Aktif', '2023-07-27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `id_buku` int(11) NOT NULL,
  `buku_id` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_rak` int(11) NOT NULL,
  `sampul` varchar(255) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `lampiran` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `thn_buku` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `jml` int(11) DEFAULT NULL,
  `tgl_masuk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_buku`
--

INSERT INTO `tbl_buku` (`id_buku`, `buku_id`, `id_kategori`, `id_rak`, `sampul`, `isbn`, `lampiran`, `title`, `penerbit`, `pengarang`, `thn_buku`, `isi`, `jml`, `tgl_masuk`) VALUES
(8, 'BK008', 2, 1, '0', '132-123-234-231', '0', 'CARA MUDAH BELAJAR PEMROGRAMAN C++', 'INFORMATIKA BANDUNG', 'BUDI RAHARJO ', '2012', '<table class=\"table table-bordered\" style=\"background-color: rgb(255, 255, 255); width: 653px; color: rgb(51, 51, 51);\"><tbody><tr><td style=\"padding: 8px; line-height: 1.42857; border-color: rgb(244, 244, 244);\">Tipe Buku</td><td style=\"padding: 8px; line-height: 1.42857; border-color: rgb(244, 244, 244);\">Kertas</td></tr><tr><td style=\"padding: 8px; line-height: 1.42857; border-color: rgb(244, 244, 244);\">Bahasa</td><td style=\"padding: 8px; line-height: 1.42857; border-color: rgb(244, 244, 244);\">Indonesia</td></tr></tbody></table>', 23, '2019-11-23 11:49:57'),
(9, 'BK009', 3, 4, 'b7990c612867e95cf5feda4b09f559cf.jpg', 'PBS 923 359 8 Sil b', NULL, 'Bung Hatta: Pendidikan dan Karakter', 'Ar Ruzz Media', 'Sifia Hanani', '2018', '', 1, '2023-07-28 09:42:54'),
(10, 'BK0010', 3, 4, 'a9ff3b82ed40c67f33ab8271f1e7a63a.jpg', 'PBS 923 159 8 bah b', NULL, 'Bung Hatta Masa Kemerdekaan 1945-1946', 'Remadja Rosdakarya', 'Bahrudin Supardi', '2009', '', 1, '2023-07-28 09:46:33'),
(11, 'BK0011', 4, 1, 'f454352f219861e19e283f9b3c42b090.png', 'PBS 297 SOE i', NULL, 'Islam Sontoloyo', 'Basa Basi', 'Soekarno', '2017', '', 1, '2023-07-31 09:42:10'),
(12, 'BK0012', 4, 1, '019842b54fd8019e343815a7c91f5022.png', 'PBS 923 159 8 ABR j', NULL, 'Jejak Langkah Bungkarno', 'Roemah Soekarno', 'Abraham Panumbangan', '2020', '', 1, '2023-07-31 09:41:55'),
(13, 'BK0013', 3, 1, 'e84b893ef71feec6b0613cafb77c636a.jpg', 'PBS 923 159 8 BAH b', NULL, 'Bung Hatta: Masa-Masa Terakhir 1950-1980', 'Remadja Rosdakarya', 'Bahrudin Supardi', '2009', '', 1, '2023-07-28 10:08:30'),
(14, 'BK0014', 4, 3, 'a4d0ad91f0340fec8b0c1564a33fa570.png', 'PBS 923 159 8 SYA k', NULL, 'Kisah- Kisah Abadi Soekarno', 'Roemah Soekarno', 'Saiful Cahyadi', '2020', '', 1, '2023-07-31 09:41:17'),
(15, 'BK0015', 4, 3, '005d7a5914d10ed2a1a06394515ef241.png', 'PBS 320 540 959 8 MOH u', NULL, 'Uraian Pancasila', 'Bee Media Pustaka', 'Dr. H. Moh. Hatta', '2020', '', 1, '2023-07-31 09:39:50'),
(16, 'BK0016', 4, 1, '6fc968ca02ef70ca9dbe87842c34f7ba.png', 'PBS 320 540 959 8 SUK t', NULL, 'Pancasila Dasar Negara', 'Gadjah Mada University', 'Soekarno', '2019', '', 1, '2023-07-31 09:40:46'),
(17, 'BK0017', 3, 4, 'b45c45128266e733b529c69b334bcadd.jpg', 'PBS 923 159 SAR m', NULL, 'Masa Pra Kemerdekaan Putra Sang Fajar 1 Tahun 1926-1938', 'Remadja Rosdakarya', 'Sari Pusparini Sholeh', '2005', '', 1, '2023-07-28 10:07:39'),
(18, 'BK0018', 5, 2, 'e084892897f1df4b25c43fa866e02a48.jpg', 'PBS 641 595 98 MUS', NULL, 'Mustikarasa Resep Masakan Indonesia', 'Komunitas Bambu', 'JJ Rizal', '2020', '', 1, '2023-07-28 10:07:26'),
(19, 'BK0019', 3, 4, '83ad0d63a794083a1d6388a3b778ac16.jpg', 'PBS 923 159 8 SAR m', NULL, 'Masa Senja Putra Sang Fajar 1963-1970', 'Remadja Rosdakarya', 'Sari Pusparini Sholeh', '2005', '', 1, '2023-07-28 10:11:06'),
(20, 'BK0020', 4, 1, 'd6282a5690015c1f91b3a7182f191c38.png', 'PBS 320 014 RON K', NULL, 'Komunikasi Politik Soekarno', 'Remadja Rosdakarya', 'Roni Tabroni', '2015', '', 1, '2023-07-31 09:45:34'),
(21, 'BK0021', 3, 4, '44ad5bb6d9d2abc4817b9602ca56b6d7.jpg', 'PBS 923 1598 SAR M', NULL, 'Masa Pemuda Putra Sang Fajar 1919-1922', 'Remadja Rosdakarya', 'Sari Pusparini Sholeh', '2005', '', 1, '2023-07-31 09:47:45'),
(22, 'BK0022', 4, 3, '4b49d1fd979ec863a951830f00bcc149.png', 'PBS 297 730 9598 SYA P', NULL, 'Pendidikan dimata Soekarno', 'Ar Ruzz Media', 'Syamsul Kurniawan', '2009', '', 1, '2023-07-31 09:49:49'),
(23, 'BK0023', 4, 3, '4dd87f5fc85a252ae917464ba9c88117.png', 'PBS 351 003 5 WIR j', NULL, 'Jasmerah', 'Laksana', 'Wirianto Sumartono', '2018', '', 1, '2023-07-31 12:48:48'),
(24, 'BK0024', 3, 4, 'f8258058df2bb84363eaac1d0afa600b.jpg', 'PBS 923 159 8 SAR ', NULL, 'Masa Dewasa Putra Sang Fajar 1922-1926', 'Remadja Rosdakarya', 'Sari Pusparini Sholeh', '2005', '', 1, '2023-07-31 12:51:03'),
(25, 'BK0025', 4, 3, '195410350f90f313cd12602721c7bcb4.png', 'PBS 959 8 TAU m ', NULL, 'Melacak Dana Revolusi', 'Garasi', 'Taufik Adi Susilo', '2010', '', 1, '2023-07-31 12:53:10'),
(26, 'BK0026', 3, 4, 'f0e34ebe6c5a29d5cbea66b276c218a1.jpg', 'PBS 923 159 8 BAH b', NULL, 'Bung Hatta Masa Remaja 1918-1921', 'Remadja Rosdakarya', 'Bahrudin Supardi', '2009', '', 1, '2023-07-31 12:55:18'),
(27, 'BK0027', 4, 1, '765f8ea643d81199f0a78e9b9481ecc7.png', 'PBS 929 88 WUD m', NULL, 'Menembus Badai ', 'Galang Pustaka ', 'Wu Da Ying', '2015', '', 1, '2023-07-31 12:58:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_denda`
--

CREATE TABLE `tbl_denda` (
  `id_denda` int(11) NOT NULL,
  `pinjam_id` varchar(255) NOT NULL,
  `denda` varchar(255) NOT NULL,
  `lama_waktu` int(11) NOT NULL,
  `tgl_denda` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_denda`
--

INSERT INTO `tbl_denda` (`id_denda`, `pinjam_id`, `denda`, `lama_waktu`, `tgl_denda`) VALUES
(3, 'PJ001', '0', 0, '2020-05-20'),
(5, 'PJ009', '0', 0, '2020-05-20'),
(6, 'PJ0011', '0', 0, '2023-07-27'),
(7, 'PJ0012', '0', 0, '2023-07-28'),
(8, 'PJ0015', '8000', 2, '2023-07-31'),
(9, 'PJ0016', '0', 0, '2023-08-07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(2, 'Pemrograman'),
(3, 'Buku Cerita'),
(4, 'Buku Sejarah'),
(5, 'Buku Memasak');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id_login` int(11) NOT NULL,
  `anggota_id` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` varchar(255) NOT NULL,
  `jenkel` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tgl_bergabung` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id_login`, `anggota_id`, `user`, `pass`, `level`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenkel`, `alamat`, `telepon`, `email`, `tgl_bergabung`, `foto`) VALUES
(1, 'AG001', 'admin', '0192023a7bbd73250516f069df18b500', 'Petugas', 'Admin', 'Blitar', '2003-02-01', 'Perempuan', 'Kota Blitar', '085123456789', 'admin123@gmail.com', '2023-07-31', 'user_1691464544.jpg'),
(2, 'AG002', 'ira', 'c8ffe9a587b126f152ed3d89a146b445', 'Anggota', 'Iradhiratu', 'Blitar', '2001-04-18', 'Perempuan', 'Sumberdiren', '089634526342', 'iradhiratu18@gmail.com', '2023-07-27', 'user_1690446770.jpg'),
(6, 'AG003', 'hendi', '859a37720c27b9f70e11b79bab9318fe', 'Anggota', 'Hendi', 'Blitar', '2002-10-28', 'Laki-Laki', 'Panggungrejo', '085763524398', 'hendi28@gmail.com', '2023-08-08', 'user_1691464358.png'),
(7, 'AG007', 'ajeng', '202cb962ac59075b964b07152d234b70', 'Anggota', 'Ajeng', 'Blitar', '2001-05-12', 'Perempuan', 'Kota Blitar', '085762345243', 'ajeng123@gmail.com', '2023-08-11', 'user_1691721072.jpg'),
(8, 'AG008', 'Tito', '15d185eaa7c954e77f5343d941e25fbd', 'Anggota', 'Tito', 'Blitar', '2002-01-19', 'Laki-Laki', 'lodoyo', '0895322019236', 'Tito.krisnaputra@gmail.com', '2023-08-14', 'user_1692014076.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pinjam`
--

CREATE TABLE `tbl_pinjam` (
  `id_pinjam` int(11) NOT NULL,
  `pinjam_id` varchar(255) NOT NULL,
  `anggota_id` varchar(255) NOT NULL,
  `buku_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tgl_pinjam` varchar(255) NOT NULL,
  `lama_pinjam` int(11) NOT NULL,
  `tgl_balik` varchar(255) NOT NULL,
  `tgl_kembali` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pinjam`
--

INSERT INTO `tbl_pinjam` (`id_pinjam`, `pinjam_id`, `anggota_id`, `buku_id`, `status`, `tgl_pinjam`, `lama_pinjam`, `tgl_balik`, `tgl_kembali`) VALUES
(11, 'PJ0011', 'AG003', 'BK008', 'Di Kembalikan', '2023-07-27', 2, '2023-07-29', '2023-07-27'),
(12, 'PJ0012', 'AG003', 'BK0018', 'Di Kembalikan', '2023-07-28', 1, '2023-07-29', '2023-07-28'),
(13, 'PJ0012', 'AG003', 'BK0016', 'Di Kembalikan', '2023-07-28', 1, '2023-07-29', '2023-07-28'),
(14, 'PJ0012', 'AG003', 'BK0010', 'Di Kembalikan', '2023-07-28', 1, '2023-07-29', '2023-07-28'),
(15, 'PJ0015', 'AG003', 'BK0018', 'Di Kembalikan', '2023-07-28', 1, '2023-07-29', '2023-07-31'),
(16, 'PJ0016', 'AG003', 'BK0027', 'Di Kembalikan', '2023-08-07', 2, '2023-08-09', '2023-08-07'),
(17, 'PJ0016', 'AG003', 'BK0024', 'Di Kembalikan', '2023-08-07', 2, '2023-08-09', '2023-08-07'),
(18, 'PJ0018', 'AG008', 'BK0027', 'Dipinjam', '2023-08-14', 1, '2023-08-15', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rak`
--

CREATE TABLE `tbl_rak` (
  `id_rak` int(11) NOT NULL,
  `nama_rak` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rak`
--

INSERT INTO `tbl_rak` (`id_rak`, `nama_rak`) VALUES
(1, 'Rak Buku 1'),
(2, 'Rak Buku 2'),
(3, 'Rak Buku 3'),
(4, 'Rak Buku 4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_biaya_denda`
--
ALTER TABLE `tbl_biaya_denda`
  ADD PRIMARY KEY (`id_biaya_denda`);

--
-- Indexes for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `tbl_denda`
--
ALTER TABLE `tbl_denda`
  ADD PRIMARY KEY (`id_denda`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indexes for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_biaya_denda`
--
ALTER TABLE `tbl_biaya_denda`
  MODIFY `id_biaya_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_denda`
--
ALTER TABLE `tbl_denda`
  MODIFY `id_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  MODIFY `id_rak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
