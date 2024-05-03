-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Bulan Mei 2024 pada 08.03
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbbukutamu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ttamu`
--

CREATE TABLE `ttamu` (
  `id` int(3) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `nope` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ttamu`
--

INSERT INTO `ttamu` (`id`, `tanggal`, `nama`, `alamat`, `tujuan`, `nope`) VALUES
(4, '2024-05-01', 'Sinta', 'Maibit', 'Tanda tangan', '082245678765'),
(5, '2024-05-01', 'Muklis', 'Banjaragung', 'Rapat', '081234566543'),
(7, '2024-05-01', 'Heri', 'Prambon', 'Ketemu Ketua', '083245678765'),
(10, '2024-05-02', 'Joko tingkir', 'Carang gantung', 'Mengantar makanan', '086534567654'),
(14, '2024-05-02', 'Hilmi', 'Badekan', 'Rapat', '0876543567645'),
(15, '2024-05-02', 'Hendra', 'Sawahan', 'Mengantar Surat', '087656788765'),
(16, '2024-05-02', 'Kudri', 'Campurejo', 'Tanda tangan', '087667853456'),
(17, '2024-05-03', 'Andy m', 'Gag buntu', 'Tanda tangan', '089765433456'),
(18, '2024-05-03', 'Gatot', 'Rengel', 'Rapat', '087667887654'),
(19, '2024-05-04', 'Siti m', 'Sumberejo', 'Dokumentasi', '087655434566'),
(20, '2024-05-04', 'Joni zt', 'Campurejo', 'Setor Data', '089876576456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tuser`
--

CREATE TABLE `tuser` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tuser`
--

INSERT INTO `tuser` (`id_user`, `username`, `password`, `nama_pengguna`, `status`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'Administrator', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ttamu`
--
ALTER TABLE `ttamu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tuser`
--
ALTER TABLE `tuser`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ttamu`
--
ALTER TABLE `ttamu`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tuser`
--
ALTER TABLE `tuser`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
