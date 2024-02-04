-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 06:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jmisdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `relation_tos`
--

CREATE TABLE `relation_tos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `relation` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relation_tos`
--

INSERT INTO `relation_tos` (`id`, `relation`, `created_at`, `updated_at`) VALUES
(1, 'parent', NULL, NULL),
(2, 'ancle', NULL, NULL),
(3, 'aunt', NULL, NULL),
(4, 'brother', NULL, NULL),
(5, 'sister', NULL, NULL),
(6, 'grand parent', NULL, NULL),
(7, 'sponsor', NULL, NULL),
(8, 'other', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `relation_tos`
--
ALTER TABLE `relation_tos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `relation_tos`
--
ALTER TABLE `relation_tos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
