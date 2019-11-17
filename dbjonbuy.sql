-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14 Nov 2019 pada 20.29
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbjonbuy`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_mitra` int(11) NOT NULL,
  `kode_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `ket_barang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_mitra`, `kode_barang`, `nama_barang`, `merk`, `harga_jual`, `diskon`, `warna`, `stok`, `gambar`, `ket_barang`) VALUES
(1, 119, 'Move Satu', 'Al Fatih', 70000, 20, 'Hitam', 10, 'movehitam.jpg', 'Kaos'),
(1, 999, 'Kaos Move', 'Al Fatih', 70000, 0, 'putih', 10, 'move.jpg', 'Kaos Indonesia'),
(2, 2019, 'I am Moslem', 'Al Fatih', 70000, 0, 'Hitam', 10, 'iammoslem.png', 'Kaos');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `no` int(11) NOT NULL,
  `kode_penjualan` int(15) NOT NULL,
  `kode_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `ket_penjualan` varchar(100) NOT NULL,
  `status_detail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`no`, `kode_penjualan`, `kode_barang`, `jumlah`, `total`, `ket_penjualan`, `status_detail`) VALUES
(18, 1309201926, 119, 3, 210000, '', 0),
(19, 1309201990, 119, 3, 210000, '', 0),
(20, 1309201990, 999, 1, 70000, '', 0),
(21, 1309201966, 2019, 2, 140000, '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `no_gambar` int(11) NOT NULL,
  `nama_gambar` varchar(50) NOT NULL,
  `ket_gambar` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `no` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `kode_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`no`, `id_pelanggan`, `kode_barang`, `jumlah`) VALUES
(15, 2, 999, 5),
(16, 2, 119, 1),
(17, 1, 119, 3),
(18, 1, 2019, 2),
(19, 1, 999, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mitra`
--

CREATE TABLE `mitra` (
  `id_mitra` int(11) NOT NULL,
  `nama_mitra` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `rekening` varchar(50) NOT NULL,
  `nomor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mitra`
--

INSERT INTO `mitra` (`id_mitra`, `nama_mitra`, `lokasi`, `username`, `password`, `email`, `bank`, `rekening`, `nomor`) VALUES
(1, 'fachba', 'surabaya', 'fachba', 'fachba', 'fachba@gmail.com', 'BNI', '0394485916', '085'),
(2, 'tester', 'jakarta', 'tester', 'tester', 'tester@mail.com', 'BRI', '898887879', '090');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telp` varchar(50) NOT NULL,
  `ket_pembeli` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `username`, `password`, `alamat`, `email`, `telp`, `ket_pembeli`) VALUES
(1, 'fachba', 'fachba', 'fachba', 'indonesia', 'fachba@mail', '085', ''),
(2, 'tomo', 'tomo', 'tomo', 'turi', 'tomo@mail', '089', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `kode_penjualan` int(15) NOT NULL,
  `bukti` varchar(50) NOT NULL,
  `tanggal` datetime NOT NULL,
  `status_pembayaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `kode_penjualan`, `bukti`, `tanggal`, `status_pembayaran`) VALUES
(12, 1309201926, 'cek.jpeg', '2019-09-13 16:48:05', 2),
(13, 1309201990, '', '0000-00-00 00:00:00', 0),
(14, 1309201966, 'cek1.jpeg', '2019-09-13 16:58:05', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman`
--

CREATE TABLE `pengiriman` (
  `no_pengiriman` int(11) NOT NULL,
  `kode_penjualan` int(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `telp` varchar(50) NOT NULL,
  `prov` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `jasa` varchar(50) NOT NULL,
  `biaya` int(11) NOT NULL,
  `resi` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengiriman`
--

INSERT INTO `pengiriman` (`no_pengiriman`, `kode_penjualan`, `nama`, `telp`, `prov`, `kota`, `alamat`, `jasa`, `biaya`, `resi`, `keterangan`) VALUES
(37, 1309201926, 'fachba', '085', '11', '289', 'desa', 'jne', 0, 'cek.jpeg', ''),
(38, 1309201990, 'fachba', '085', '11', '289', 'Desa', 'jne', 0, '', ''),
(39, 1309201966, 'fachba', '085', '11', '222', 'desa', 'jne', 0, 'cek2.jpeg', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `kode_penjualan` int(15) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `tanggal_awal` datetime NOT NULL,
  `tanggal_ubah` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_penjualan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`kode_penjualan`, `id_pelanggan`, `sub_total`, `tanggal_awal`, `tanggal_ubah`, `status_penjualan`) VALUES
(1309201926, 1, 220026, '2019-09-13 16:34:43', '2019-09-13 13:02:38', 2),
(1309201966, 1, 150066, '2019-09-13 16:52:52', '2019-09-13 13:35:17', 3),
(1309201990, 1, 290090, '2019-09-13 16:46:31', '2019-09-13 09:46:31', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`no_gambar`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `mitra`
--
ALTER TABLE `mitra`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`no_pengiriman`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`kode_penjualan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `no_gambar` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `no_pengiriman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
