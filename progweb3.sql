-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Feb 2023 pada 14.33
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
-- Database: `progweb2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(25) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `alamat` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jurusan`, `alamat`) VALUES
('210101', 'Juniansyah Abdul Rahim Soulisa', 'Teknik Informatika', 'Ambon'),
('210102', 'Ria Angriany', 'Desain Komunikasi Visual', 'Tulehu'),
('210103', 'Muhammad Raihan Nadhif Zhafran', 'Bisnis Digital', 'Ambon'),
('210104', 'Rahmatsyah', 'Teknik Informatika', 'Wayame'),
('210105', 'Intan Komalasari Gani', 'Sistem Informasi', 'Ambon'),
('210106', 'Vebry Wattimena', 'Bisnis Digital', 'OSM'),
('210107', 'Geralth Pareti Alehandro Lakburlawal', 'Desain Komunikasi Visual', 'Kuda Mati');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `level` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(16, 'admin', '$2y$10$P27QFu8DE.XXKbHMpJWLQOz8sy6PY4w1H6BFDJQPYy2r4Vgulrfwi', 'Admin'),
(17, 'Baim', '$2y$10$Y5lqEegKLXi1U17vS2UYpOv0H/fIsJp8dz2BNVpS6NiCxo/MsL4.i', 'Admin'),
(18, 'user', '$2y$10$6oHVKRtXOJPHqaFX53rVVOfOpIlmhh5Lbf1ZplZvu5D2jMEpvL3QW', 'User');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
