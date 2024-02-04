-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 06:03 PM
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `index_no` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `type`, `role_id`, `index_no`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'engrithom1@gmail.com', '$2y$10$0HmQ3xmULO9aGOEnprvWtuCMWgsJoDrm0/jFaj7epUVgJbrrq2G8y', 'staff', 4, '15367', 'active', NULL, '2023-04-10 11:44:58', '2023-11-19 04:50:32'),
(12, 'S.1234.789', '$2y$10$69nxj9V.cwwFLeTTtdZa8OhIDsOgraxeK.PgsnVeDhQ0RLamwCKD6', 'student', 1, 'S.1234.789', 'active', NULL, '2023-04-23 03:37:41', '2023-04-23 03:37:41'),
(14, 'fredy', '$2y$10$ne/dXXWixO.ZsadLDtcWH.vqcO1Fe5DC8dIFjYMwut33EoQpzSsVa', 'staff', 3, '78952', 'active', NULL, '2023-04-24 12:08:57', '2023-04-24 12:08:57'),
(15, 'bobm@gmail.com', '$2y$10$rHMIYe7MmfSNAvNdLqE3COxkVKBg5COG9cuOFb/IENUqC6XAODRLu', 'staff', 2, '36568', 'active', NULL, '2023-10-12 13:46:09', '2023-10-12 13:46:09'),
(16, '0001', '$2y$10$UvmLlXhjEdLgOY/htYyhjuLR4inStFo3IVsgAx9nQFG1Uu69OvCc2', 'student', 1, '000001', 'active', NULL, '2023-10-13 00:27:54', '2023-10-13 00:27:54'),
(17, '0002', '$2y$10$csU3Syx4u1aD4uJxpyHyfusjI.viLnWvXEvadq0EQAKrO6RK6dJpO', 'student', 1, '000002', 'active', NULL, '2023-10-14 11:54:30', '2023-10-14 11:54:30'),
(18, '0003', '$2y$10$0ZQW1ldGomUyoaU04gs/LuEP9t1eAxEmtfuT/c3YjWZecnBPQUgWC', 'student', 1, '000003', 'active', NULL, '2023-10-14 12:26:50', '2023-10-14 12:26:50'),
(19, '0004', '$2y$10$bEddNpCJqSAhq4CFUZBomeQPRKxmZs6/gKjJ8hW1..CHn5p6sj5Te', 'student', 1, '000004', 'active', NULL, '2023-10-14 12:46:41', '2023-10-14 12:46:41'),
(20, '0005', '$2y$10$m7YGPpFb/YXyVtbSxs0FteYvZ1H1Iqp0Kv2H4.ZDiJUghraVS7ZhG', 'student', 1, '000005', 'active', NULL, '2023-10-14 16:59:21', '2023-10-14 16:59:21'),
(21, '0006', '$2y$10$01rwKg097Si1bmZm7Lb/suiz./nv6MHe0oQMr6s3MbBWL5c4ssIvu', 'student', 1, '000006', 'active', NULL, '2023-10-24 18:38:32', '2023-10-24 18:38:32'),
(22, 'aka', '$2y$10$2671o2KVOx1iBZNj.Ezm8.1Tm/RWx5uqYHtXlaXb9apNECrJm6s.e', 'staff', 2, '12889', 'active', NULL, '2023-10-25 10:52:41', '2023-10-25 10:52:41'),
(23, '0007', '$2y$10$NfcOOd2XoIZ4PkuQOyY9l.xyLdTgCEavYf8Q/mJs3MMLjo0QS64j2', 'student', 1, '000007', 'active', NULL, '2023-10-26 07:53:21', '2023-10-26 07:53:21'),
(24, 'jadu', '$2y$10$BLAZTw1URG6TDF1T6TyrFeCf6cgITFC4bA7vkH1pxXoOKRrQBiQ4S', 'staff', 2, '55895', 'active', NULL, '2023-11-12 05:32:40', '2023-11-12 05:32:40'),
(25, '401333', '$2y$10$RxTGGCvEy7s/CrAIUu2Mce9owmYHJ.JYtlfEUfel46nFChaFRbYH2', 'student', 1, '401333', 'active', NULL, '2023-11-13 22:01:10', '2023-11-13 22:01:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
