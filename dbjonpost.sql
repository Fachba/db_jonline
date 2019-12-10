-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10 Des 2019 pada 17.00
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbjonpost`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `acara`
--

CREATE TABLE `acara` (
  `ida` int(11) NOT NULL,
  `idm` int(11) NOT NULL,
  `organisasi` varchar(50) NOT NULL,
  `tema` varchar(100) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `htm` int(11) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `des` varchar(500) NOT NULL,
  `cotelp` varchar(50) NOT NULL,
  `post` int(11) NOT NULL,
  `dibuat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `acara`
--

INSERT INTO `acara` (`ida`, `idm`, `organisasi`, `tema`, `tempat`, `tanggal`, `jam`, `htm`, `gambar`, `des`, `cotelp`, `post`, `dibuat`) VALUES
(6, 1, 'Jonline', 'Tema atau Judul Kegiatan', 'Tempat Kegiatan diselenggarakan', '2019-12-30', '07:00:00', 15000, 'JoPostv1.png', 'Merupakan deskripsi kegiatan yang akan diselenggarakan seperti detail tentang kegiatan, penjabaran tema dll', '085645554899', 1, '2019-12-10 08:14:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `acara_member`
--

CREATE TABLE `acara_member` (
  `idam` int(11) NOT NULL,
  `ida` int(11) NOT NULL,
  `idm` int(11) NOT NULL,
  `idp` int(11) NOT NULL,
  `regis` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `idm` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `umur` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `aktif` int(11) NOT NULL,
  `master` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`idm`, `nama`, `jk`, `umur`, `status`, `alamat`, `email`, `telp`, `username`, `password`, `aktif`, `master`) VALUES
(1, 'fachba isnaini', 'laki', 23, 'mahasiswa', 'lamongan', 'fachrulsecond@gmail.com', '085645554899', 'fachba', 'fachba', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta`
--

CREATE TABLE `peserta` (
  `idp` int(11) NOT NULL,
  `tanggal_peserta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nama_peserta` varchar(50) NOT NULL,
  `jk_peserta` varchar(50) NOT NULL,
  `umur_peserta` int(11) NOT NULL,
  `status_peserta` varchar(50) NOT NULL,
  `instansi_peserta` varchar(50) NOT NULL,
  `alamat_peserta` varchar(100) NOT NULL,
  `email_peserta` varchar(50) NOT NULL,
  `telp_peserta` varchar(50) NOT NULL,
  `ket_peserta` varchar(100) NOT NULL,
  `bill` int(11) NOT NULL,
  `nota` varchar(50) NOT NULL,
  `hadir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `saran`
--

CREATE TABLE `saran` (
  `no` int(11) NOT NULL,
  `nama_saran` varchar(50) NOT NULL,
  `saran` varchar(500) NOT NULL,
  `baca` int(11) NOT NULL,
  `tanggapan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acara`
--
ALTER TABLE `acara`
  ADD PRIMARY KEY (`ida`);

--
-- Indexes for table `acara_member`
--
ALTER TABLE `acara_member`
  ADD PRIMARY KEY (`idam`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`idm`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`idp`);

--
-- Indexes for table `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acara`
--
ALTER TABLE `acara`
  MODIFY `ida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `acara_member`
--
ALTER TABLE `acara_member`
  MODIFY `idam` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `idm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `saran`
--
ALTER TABLE `saran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
