-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 06:04 PM
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
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `initial` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'staff.png',
  `home_address` varchar(255) NOT NULL,
  `about_me` varchar(300) NOT NULL DEFAULT 'Am staff at jitegemee secondary',
  `email` varchar(255) NOT NULL,
  `index_no` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `initial`, `first_name`, `middle_name`, `last_name`, `gender`, `phone`, `photo`, `home_address`, `about_me`, `email`, `index_no`, `user_id`, `role_id`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 'col', 'richard', 'lally', 'mlimila', '1', '+255768448525', 'man.png', 'buza', 'Am staff at jitegemee secondary poaa majangili ndosisi yaaa pesaa yeaaa ok', 'engrithom1@gmail.com', '15367', 3, 4, 2, '2023-04-10 11:44:58', '2023-11-19 05:15:17'),
(2, 'boss', 'fredy', 'focus', 'palapala', '1', '0686255811', 'man.png', 'masaki', 'Am staff at jitegemee secondary', 'fredy', '78952', 3, 3, 2, '2023-04-24 12:08:57', '2023-04-24 12:08:57'),
(3, 'Tr', 'Bob', 'Mikwala', 'Himself', '1', '+255768448527', 'man.png', 'Sinza', 'Am staff at jitegemee secondary', 'bobm@gmail.com', '36568', 3, 2, 15, '2023-10-12 13:46:09', '2023-10-12 13:46:09'),
(4, 'Tr', 'frank', 'john', 'bombo', '1', '+255768448525', 'man.png', 'buza', 'Am staff at jitegemee secondary', 'aka', '12889', 3, 2, 15, '2023-10-25 10:52:41', '2023-10-25 10:52:41'),
(5, 'tr', 'mkomola', 'jadu', 'Tozzi', '1', '+255768448555', 'man.png', 'buza', 'Am staff at jitegemee secondary', 'jadu', '55895', 3, 2, 15, '2023-11-12 05:32:40', '2023-11-12 05:32:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_user_id_foreign` (`user_id`),
  ADD KEY `staff_role_id_foreign` (`role_id`),
  ADD KEY `staff_department_id_foreign` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `staff_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `staff_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
