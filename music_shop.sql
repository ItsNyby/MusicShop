-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2025 at 08:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `selling_type` enum('new product','best seller','promo') NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `name`, `price`, `category`, `selling_type`, `image`) VALUES
(1, 'Gitar Akustik Yamaha', 2500000, 'Gitar', 'new product', 'gitar-akustik.jpg'),
(2, 'Drum Set Tama', 7000000, 'Drum', 'best seller', 'drum_tama.jpg'),
(3, 'Keyboard Casio', 3500000, 'Keyboard', 'promo', 'keyboard_casio.jpg'),
(4, 'Gitar Elektrik Fender', 4500000, 'Gitar', 'best seller', 'gitar_fender.jpg'),
(5, 'Bass Yamaha', 4000000, 'Bass', 'new product', 'bass_yamaha.jpg'),
(6, 'Gitar Akustik Cort', 2300000, 'Gitar', 'promo', 'gitar_cort.jpg'),
(7, 'Drum Elektrik Yamaha DTX', 6800000, 'Drum', 'new product', 'drum_yamaha_dtx.jpg'),
(8, 'Piano Digital Casio PX-160', 8400000, 'Piano', 'promo', 'piano_casio_px160.jpg'),
(9, 'Keyboard Yamaha PSR-E373', 3200000, 'Keyboard', 'best seller', 'keyboard_yamaha_psr.jpg'),
(10, 'Gitar Listrik Ibanez RG', 4700000, 'Gitar', 'new product', 'gitar_ibanez_rg.jpg'),
(11, 'Drum Akustik Mapex', 7200000, 'Drum', 'best seller', 'drum_mapex.jpg'),
(12, 'Piano Akustik Yamaha U1', 15000000, 'Piano', 'new product', 'piano_yamaha_u1.jpg'),
(13, 'Keyboard Roland GO:KEYS', 5500000, 'Keyboard', 'new product', 'keyboard_roland_gokeys.jpg'),
(14, 'Bass Cort Action PJ', 3900000, 'Bass', 'best seller', 'bass_cort_action.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
