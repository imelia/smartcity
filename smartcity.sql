-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2020 at 04:04 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

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
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `judul_kategori` varchar(255) NOT NULL,
  `gambar_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `judul_kategori`, `gambar_kategori`) VALUES
(1, 'SMART BRANDING', 'BRANDING_2.png');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `user_name`, `user_email`, `user_password`, `user_created_at`) VALUES
(3, 'imelia', 'imeliarosita26@gmail.com', '$2y$10$tdx583KEpgNLE59Ib3BYRuj5C3zkblw9FTMysyCto32DzlxokMCmC', '2020-10-25 11:55:25');

-- --------------------------------------------------------

--
-- Table structure for table `modal`
--

CREATE TABLE `modal` (
  `id_modal` int(11) NOT NULL,
  `judul_modal` varchar(255) NOT NULL,
  `judul_kategori` varchar(255) NOT NULL,
  `gambar_kategori` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `link_modal` varchar(255) NOT NULL,
  `gambar_modal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modal`
--

INSERT INTO `modal` (`id_modal`, `judul_modal`, `judul_kategori`, `gambar_kategori`, `deskripsi`, `link_modal`, `gambar_modal`) VALUES
(7, 'ENVIRONMENT', 'ENDLES PROBOLINGGO', 'instagram.png', 'smart branding merupakan langkah awal untuk menuju smartcity di Kab Probolinggo', 'https://www.youtube.com/c/SkuyNgoding/videos', 'instagram.png'),
(8, 'SMART ECONOMY', 'ENDLES PROBOLINGGO', 'instagram_1.png', 'j', 'https://www.youtube.com/c/SkuyNgoding/videos', 'instagram_1.png'),
(9, 'ENVIRONMENT', ' PROBOLINGGO', 'infra_6.png', 'h', 'https://www.youtube.com/c/SkuyNgoding/videos', 'infra_6.png'),
(10, 'smart branding', 'ENDLES PROBOLINGGO', 'twitter.png', 'hh', 'https://www.youtube.com/c/SkuyNgoding/videos', 'twitter.png'),
(11, 'SMART ECONOMY', 'ENDLES PROBOLINGGO', '', 'smart branding merupakan langkah awal untuk menuju smartcity di Kab Probolinggo', 'https://www.youtube.com/c/SkuyNgoding/videos', 'smart-city-vector-with-skyscrapers-background_124848-29.jpg'),
(12, 'SMART ECONOMY', ' PROBOLINGGO', '', 'smart branding merupakan langkah awal untuk menuju smartcity di Kab Probolinggo', 'https://www.youtube.com/c/SkuyNgoding/videos', 'bromo-01.jpg'),
(13, 'SMART ECONOMY', 'ENDLES PROBOLINGGO', '', 'j', 'https://www.youtube.com/c/SkuyNgoding/videos', '5dedd7b85049677d981db611_5c65f4ae2f71d67d0ee9f032_hero-image.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `modal`
--
ALTER TABLE `modal`
  ADD PRIMARY KEY (`id_modal`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modal`
--
ALTER TABLE `modal`
  MODIFY `id_modal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
