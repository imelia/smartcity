-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Nov 2020 pada 09.17
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartcity`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `judul_kategori` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `gambar_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `judul_kategori`, `link`, `gambar_kategori`) VALUES
(1, 'SMART BRANDING', 'https://diskominfo.probolinggokab.go.id/', 'BRANDING_2.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`user_id`, `user_name`, `user_email`, `user_password`, `user_created_at`) VALUES
(3, 'imelia', 'imeliarosita26@gmail.com', '$2y$10$tdx583KEpgNLE59Ib3BYRuj5C3zkblw9FTMysyCto32DzlxokMCmC', '2020-10-25 11:55:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modal`
--

CREATE TABLE `modal` (
  `id_modal` int(11) NOT NULL,
  `judul_modal` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `link_modal` varchar(255) NOT NULL,
  `gambar_modal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `modal`
--

INSERT INTO `modal` (`id_modal`, `judul_modal`, `deskripsi`, `link_modal`, `gambar_modal`) VALUES
(1, 'aui', 'iuu', 'https://www.youtube.com/watch?v=tuHc44GJ4II', 'ilustrasu-air-laut_20180811_125517.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `modal`
--
ALTER TABLE `modal`
  ADD PRIMARY KEY (`id_modal`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `modal`
--
ALTER TABLE `modal`
  MODIFY `id_modal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
