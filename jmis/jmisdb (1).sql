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
-- Table structure for table `admission_types`
--

CREATE TABLE `admission_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admission` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admission_types`
--

INSERT INTO `admission_types` (`id`, `admission`, `created_at`, `updated_at`) VALUES
(1, 'day', NULL, NULL),
(2, 'boarding', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) NOT NULL,
  `date_att` varchar(255) NOT NULL,
  `date_no` int(11) NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attend` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `year`, `date_att`, `date_no`, `student_id`, `classroom_id`, `level_id`, `user_id`, `attend`, `created_at`, `updated_at`) VALUES
(1, '2023', '20/10/2023', 20231020, 4, 2, 1, 3, 1, NULL, NULL),
(2, '2023', '20/10/2023', 20231020, 5, 2, 1, 3, 0, NULL, NULL),
(3, '2023', '20/10/2023', 20231020, 6, 2, 1, 3, 1, NULL, NULL),
(4, '2023', '20/10/2023', 20231020, 7, 2, 1, 3, 0, NULL, NULL),
(5, '2023', '20/10/2023', 20231020, 8, 2, 1, 3, 1, NULL, NULL),
(6, '2023', '21/10/2023', 20231021, 4, 2, 1, 3, 1, NULL, NULL),
(7, '2023', '21/10/2023', 20231021, 5, 2, 1, 3, 1, NULL, NULL),
(8, '2023', '21/10/2023', 20231021, 6, 2, 1, 3, 1, NULL, NULL),
(9, '2023', '21/10/2023', 20231021, 7, 2, 1, 3, 1, NULL, NULL),
(10, '2023', '21/10/2023', 20231021, 8, 2, 1, 3, 1, NULL, NULL),
(11, '2023', '22/10/2023', 20231022, 4, 2, 1, 3, 0, NULL, NULL),
(12, '2023', '22/10/2023', 20231022, 5, 2, 1, 3, 1, NULL, NULL),
(13, '2023', '22/10/2023', 20231022, 6, 2, 1, 3, 0, NULL, NULL),
(14, '2023', '22/10/2023', 20231022, 7, 2, 1, 3, 1, NULL, NULL),
(15, '2023', '22/10/2023', 20231022, 8, 2, 1, 3, 0, NULL, NULL),
(16, '2023', '23/10/2023', 20231023, 4, 2, 1, 3, 1, NULL, NULL),
(17, '2023', '23/10/2023', 20231023, 5, 2, 1, 3, 1, NULL, NULL),
(18, '2023', '23/10/2023', 20231023, 6, 2, 1, 3, 1, NULL, NULL),
(19, '2023', '23/10/2023', 20231023, 7, 2, 1, 3, 1, NULL, NULL),
(20, '2023', '23/10/2023', 20231023, 8, 2, 1, 3, 1, NULL, NULL),
(21, '2023', '24/10/2023', 20231024, 4, 2, 1, 14, 0, NULL, NULL),
(22, '2023', '24/10/2023', 20231024, 5, 2, 1, 14, 0, NULL, NULL),
(23, '2023', '24/10/2023', 20231024, 6, 2, 1, 14, 0, NULL, NULL),
(24, '2023', '24/10/2023', 20231024, 7, 2, 1, 14, 0, NULL, NULL),
(25, '2023', '24/10/2023', 20231024, 8, 2, 1, 14, 1, NULL, NULL),
(26, '2023', '25/10/2023', 20231025, 4, 2, 1, 3, 1, NULL, NULL),
(27, '2023', '25/10/2023', 20231025, 5, 2, 1, 3, 1, NULL, NULL),
(28, '2023', '25/10/2023', 20231025, 6, 2, 1, 3, 0, NULL, NULL),
(29, '2023', '25/10/2023', 20231025, 7, 2, 1, 3, 1, NULL, NULL),
(30, '2023', '25/10/2023', 20231025, 8, 2, 1, 3, 1, NULL, NULL),
(31, '2023', '12/11/2023', 20231112, 4, 2, 1, 3, 0, NULL, NULL),
(32, '2023', '12/11/2023', 20231112, 5, 2, 1, 3, 0, NULL, NULL),
(33, '2023', '12/11/2023', 20231112, 6, 2, 1, 3, 0, NULL, NULL),
(34, '2023', '12/11/2023', 20231112, 7, 2, 1, 3, 0, NULL, NULL),
(35, '2023', '12/11/2023', 20231112, 8, 2, 1, 3, 0, NULL, NULL),
(36, '2023', '11/11/2023', 20231111, 4, 2, 1, 3, 1, NULL, NULL),
(37, '2023', '11/11/2023', 20231111, 5, 2, 1, 3, 1, NULL, NULL),
(38, '2023', '11/11/2023', 20231111, 6, 2, 1, 3, 1, NULL, NULL),
(39, '2023', '11/11/2023', 20231111, 7, 2, 1, 3, 1, NULL, NULL),
(40, '2023', '11/11/2023', 20231111, 8, 2, 1, 3, 1, NULL, NULL),
(41, '2023', '15/11/2023', 20231115, 4, 2, 1, 3, 0, NULL, NULL),
(42, '2023', '15/11/2023', 20231115, 5, 2, 1, 3, 0, NULL, NULL),
(43, '2023', '15/11/2023', 20231115, 6, 2, 1, 3, 0, NULL, NULL),
(44, '2023', '15/11/2023', 20231115, 8, 2, 1, 3, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `classname` varchar(255) NOT NULL,
  `roomnumber` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` int(20) NOT NULL,
  `students` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fees` varchar(220) NOT NULL,
  `subjects` varchar(220) NOT NULL,
  `course_id` int(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`id`, `classname`, `roomnumber`, `user_id`, `level_id`, `teacher_id`, `students`, `created_at`, `updated_at`, `fees`, `subjects`, `course_id`) VALUES
(0, 'default', 'default', 3, 0, 0, 0, NULL, NULL, '', '', 0),
(2, 'IA1', '32', 3, 1, 3, 0, '2023-04-16 00:31:44', '2023-10-19 11:36:15', '4,7,6', '8,9,12,2,5,7,6,15,3', 0),
(7, 'IIIA2', '33', 3, 3, 3, 0, '2023-04-22 02:56:12', '2023-10-26 07:54:24', '3,6,7,4', '7,9,2,6,10,14,5,3,8,12,16,15', 0),
(11, 'I7B', '88', 3, 1, 14, 0, '2023-10-13 06:28:31', '2023-10-13 08:34:42', '1', '7,9,2', 0),
(13, 'b1', '601', 3, 1, 15, 0, '2023-10-19 13:15:25', '2023-11-12 02:16:55', '4,7,9,6', '2,5,7,9,15,16,12,8,6,3,18', 0),
(14, 'A1', '55', 3, 4, 3, 0, '2023-10-26 08:43:20', '2023-10-26 08:43:20', '4,7,6,9', '2,5,7,9,15,17,16,12,8,6,3', 0),
(15, 'IVB2', '56', 3, 4, 14, 0, '2023-10-27 23:31:36', '2023-11-12 07:21:45', '4,6,7', '2,3,5,6,12,16', 0),
(16, 'V PCM', '23', 3, 5, 22, 0, '2023-11-12 02:19:42', '2023-11-14 08:03:44', '1,4,6,9', '2,6,5', 4),
(17, 'V HKL', '12', 3, 5, 24, 0, '2023-11-12 05:51:28', '2023-11-12 07:21:04', '6,9,3', '3,7,12', 7);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coursename` varchar(255) NOT NULL,
  `subjects` varchar(255) NOT NULL,
  `subject_names` varchar(220) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `coursename`, `subjects`, `subject_names`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'default', '34,45', 'no', 3, NULL, NULL),
(4, 'PCB', '2,6,5', 'Physics, Chemistry, Biology,', 3, '2023-10-29 14:38:54', '2023-11-12 05:41:26'),
(6, 'PCM', '2,6,19,18', 'Physics, Chemistry, General studies, Advanced Mathematics,', 3, '2023-11-09 04:55:38', '2023-11-19 07:36:59'),
(7, 'HKL', '3,7,12', 'Kiswahili, English, History,', 3, '2023-11-12 05:41:50', '2023-11-12 05:41:50'),
(8, 'HGK', '12,9,3', 'History, Geograph, Kiswahili,', 3, '2023-11-15 03:50:43', '2023-11-15 03:50:43'),
(10, 'CBG', '5,6,9', 'Biology, Chemistry, Geograph,', 3, '2023-11-15 03:54:33', '2023-11-15 03:58:02');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Mathematics', 3, NULL, NULL),
(15, 'Kiswahili', 3, '2023-04-15 12:19:52', '2023-04-15 12:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `deposit_slips`
--

CREATE TABLE `deposit_slips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) NOT NULL,
  `amount` decimal(17,2) NOT NULL,
  `deposit_code` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposit_slips`
--

INSERT INTO `deposit_slips` (`id`, `year`, `amount`, `deposit_code`, `description`, `student_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '2023', 1000.00, '1105', 'wel', 6, 3, 0, '2023-10-21 12:46:06', '2023-10-21 12:46:06'),
(2, '2023', 10000.00, 'sdfgh', 'wel done', 6, 3, 0, '2023-10-21 12:48:41', '2023-10-21 12:48:41'),
(3, '2023', 920000.00, 'kz443d', 'malipo yamefanyika kwa NMB kwa malipo ya ada na michango yote', 9, 3, 0, '2023-10-25 10:04:55', '2023-10-25 10:04:55'),
(4, '2023', 400000.00, 'xxx12', 'nmb jksdkjsjkdjksd sdjksjkdjksdjk', 9, 14, 0, '2023-10-25 10:35:08', '2023-10-25 10:35:08'),
(5, '2023', 40000.00, 'xxx12e', 'nmb jksdkjsjkdjksd sdjksjkdjksdjk', 9, 14, 0, '2023-10-25 10:35:45', '2023-10-25 10:35:45'),
(6, '2023', 1400000.00, 'khl234', 'pay for fees, NBC Bank', 10, 3, 0, '2023-10-26 07:57:31', '2023-10-26 07:57:31'),
(7, '2023', 50000.00, 'jkkjjkfgfg', 'nmb', 10, 3, 0, '2023-10-26 09:04:57', '2023-10-26 09:04:57'),
(8, '2023', 100000.00, 'fgtytyyty', 'crdb', 10, 3, 0, '2023-10-26 09:05:36', '2023-10-26 09:05:36'),
(9, '2023', 2000000.00, 'CHK34567', 'GOOD PAYMENTS', 7, 3, 0, '2023-10-27 06:34:41', '2023-10-27 06:34:41'),
(10, '2023', 2000000.00, 'hklhglpcm12', 'mala 2 2', 8, 3, 0, '2023-11-14 07:35:57', '2023-11-14 07:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `duration_payments`
--

CREATE TABLE `duration_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) NOT NULL,
  `amount` decimal(17,2) NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `fee_id` bigint(20) UNSIGNED NOT NULL,
  `fee_payment_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `duration_payments`
--

INSERT INTO `duration_payments` (`id`, `year`, `amount`, `student_id`, `classroom_id`, `level_id`, `user_id`, `fee_id`, `fee_payment_id`, `created_at`, `updated_at`) VALUES
(2, '2023', 0.00, 6, 2, 1, 3, 6, 32, '2023-10-21 10:55:56', '2023-10-21 10:55:56'),
(3, '2023', 0.00, 6, 2, 1, 3, 6, 32, '2023-10-21 10:56:45', '2023-10-21 10:56:45'),
(4, '2023', 10000.00, 6, 2, 1, 3, 6, 32, '2023-10-21 12:49:36', '2023-10-21 12:49:36'),
(5, '2023', 500.00, 6, 2, 1, 3, 6, 32, '2023-10-21 12:53:52', '2023-10-21 12:53:52'),
(6, '2023', 30000.00, 9, 11, 1, 14, 6, 41, '2023-10-25 10:38:23', '2023-10-25 10:38:23'),
(7, '2023', 400000.00, 9, 11, 1, 14, 7, 42, '2023-10-25 10:39:19', '2023-10-25 10:39:19'),
(8, '2023', 60000.00, 9, 11, 1, 14, 9, 43, '2023-10-25 10:39:46', '2023-10-25 10:39:46'),
(9, '2023', 100000.00, 9, 11, 1, 14, 4, 40, '2023-10-25 10:40:04', '2023-10-25 10:40:04'),
(10, '2023', 300000.00, 9, 11, 1, 14, 7, 42, '2023-10-25 10:40:55', '2023-10-25 10:40:55'),
(11, '2023', 20000.00, 10, 7, 3, 3, 6, 46, '2023-10-26 09:07:41', '2023-10-26 09:07:41'),
(12, '2023', 100000.00, 10, 7, 3, 3, 3, 44, '2023-10-26 09:08:48', '2023-10-26 09:08:48'),
(13, '2023', 20000.00, 10, 7, 3, 3, 9, 48, '2023-10-26 09:11:15', '2023-10-26 09:11:15'),
(14, '2023', 100000.00, 7, 2, 1, 3, 4, 16, '2023-10-27 06:35:30', '2023-10-27 06:35:30'),
(15, '2023', 30000.00, 7, 2, 1, 3, 6, 17, '2023-10-27 06:36:09', '2023-10-27 06:36:09'),
(16, '2023', 800000.00, 7, 2, 1, 3, 7, 18, '2023-10-27 06:36:18', '2023-10-27 06:36:18'),
(17, '2023', 500000.00, 7, 2, 1, 3, 3, 35, '2023-10-27 06:36:26', '2023-10-27 06:36:26'),
(18, '2023', 0.00, 7, 2, 1, 3, 6, 17, '2023-10-27 06:36:45', '2023-10-27 06:36:45'),
(19, '2023', 70000.00, 7, 2, 1, 3, 1, 36, '2023-10-27 06:37:02', '2023-10-27 06:37:02'),
(20, '2023', 30000.00, 8, 2, 1, 3, 6, 54, '2023-11-14 07:37:02', '2023-11-14 07:37:02'),
(21, '2023', 800000.00, 8, 2, 1, 3, 7, 55, '2023-11-14 07:42:07', '2023-11-14 07:42:07'),
(22, '2023', 10000.00, 8, 2, 1, 3, 4, 53, '2023-11-14 07:44:24', '2023-11-14 07:44:24'),
(23, '2023', 80000.00, 8, 2, 1, 3, 4, 53, '2023-11-14 07:47:01', '2023-11-14 07:47:01');

-- --------------------------------------------------------

--
-- Table structure for table `entry_types`
--

CREATE TABLE `entry_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entry` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entry_types`
--

INSERT INTO `entry_types` (`id`, `entry`, `created_at`, `updated_at`) VALUES
(1, 'new registration', NULL, NULL),
(2, 'transfer in', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `examname` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `examname`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(4, 'annualy', 3, 'deactive', '2023-04-14 03:42:19', '2023-11-19 11:26:29'),
(5, 'terminal', 3, 'active', '2023-04-14 06:04:01', '2023-11-19 11:02:36'),
(6, 'test 1', 3, 'deactive', '2023-04-14 10:34:32', '2023-11-19 11:26:31'),
(7, 'Test 2', 3, 'active', '2023-04-14 12:38:41', '2023-11-19 11:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `exam_hosts`
--

CREATE TABLE `exam_hosts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_hosts`
--

INSERT INTO `exam_hosts` (`id`, `year`, `classroom_id`, `level_id`, `exam_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, '2023', 2, 1, 5, 3, '2023-10-17 16:33:13', '2023-10-17 16:33:13');

-- --------------------------------------------------------

--
-- Table structure for table `exam_marks`
--

CREATE TABLE `exam_marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) NOT NULL,
  `mark` int(11) NOT NULL,
  `grade_point` int(11) NOT NULL,
  `grade_label` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `grade_id` varchar(255) NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subs` int(50) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_marks`
--

INSERT INTO `exam_marks` (`id`, `year`, `mark`, `grade_point`, `grade_label`, `grade`, `grade_id`, `student_id`, `subject_id`, `classroom_id`, `level_id`, `exam_id`, `user_id`, `subs`, `created_at`, `updated_at`) VALUES
(1, '2023', 68, 2, 'verry good', 'B', '6', 4, 9, 2, 1, 5, 3, 9, '2023-10-14 08:37:22', '2023-10-17 16:33:14'),
(2, '2023', 45, 3, 'good', 'c', '3', 4, 8, 2, 1, 5, 3, 9, '2023-10-14 08:42:02', '2023-10-17 16:33:14'),
(3, '2023', 75, 2, 'verry good', 'B', '6', 4, 12, 2, 1, 5, 3, 9, '2023-10-14 08:43:04', '2023-10-17 16:33:14'),
(4, '2023', 67, 2, 'verry good', 'B', '6', 4, 2, 2, 1, 5, 3, 9, '2023-10-14 08:45:55', '2023-10-17 16:33:14'),
(5, '2023', 87, 1, 'excellent', 'A', '7', 4, 3, 2, 1, 5, 3, 9, '2023-10-14 08:46:16', '2023-10-17 16:33:14'),
(6, '2023', 37, 4, 'Pass', 'd', '2', 4, 5, 2, 1, 5, 3, 9, '2023-10-14 08:46:53', '2023-10-17 16:33:14'),
(7, '2023', 77, 2, 'verry good', 'B', '6', 4, 7, 2, 1, 5, 3, 9, '2023-10-14 08:48:53', '2023-10-17 16:33:14'),
(8, '2023', 57, 3, 'good', 'c', '3', 4, 6, 2, 1, 5, 3, 9, '2023-10-14 08:49:33', '2023-10-17 16:33:14'),
(9, '2023', 77, 2, 'verry good', 'B', '6', 5, 2, 2, 1, 5, 3, 9, '2023-10-14 17:08:55', '2023-10-17 16:33:14'),
(10, '2023', 79, 2, 'verry good', 'B', '6', 5, 3, 2, 1, 5, 3, 9, '2023-10-14 17:09:05', '2023-10-17 16:33:14'),
(11, '2023', 82, 1, 'excellent', 'A', '7', 5, 5, 2, 1, 5, 3, 9, '2023-10-14 17:09:13', '2023-10-17 16:33:14'),
(12, '2023', 82, 1, 'excellent', 'A', '7', 5, 6, 2, 1, 5, 3, 9, '2023-10-14 17:09:19', '2023-10-17 16:33:14'),
(13, '2023', 82, 1, 'excellent', 'A', '7', 5, 7, 2, 1, 5, 3, 9, '2023-10-14 17:09:28', '2023-10-17 16:33:14'),
(14, '2023', 87, 1, 'excellent', 'A', '7', 5, 8, 2, 1, 5, 3, 9, '2023-10-15 06:39:57', '2023-10-17 16:33:14'),
(15, '2023', 87, 1, 'excellent', 'A', '7', 5, 9, 2, 1, 5, 3, 9, '2023-10-15 06:40:04', '2023-10-17 16:33:14'),
(16, '2023', 87, 1, 'excellent', 'A', '7', 5, 12, 2, 1, 5, 3, 9, '2023-10-15 06:40:10', '2023-10-17 16:33:14'),
(17, '2023', 30, 4, 'Pass', 'd', '2', 8, 2, 2, 1, 5, 3, 9, '2023-10-15 07:08:24', '2023-10-17 16:33:14'),
(18, '2023', 60, 3, 'good', 'c', '3', 8, 3, 2, 1, 5, 3, 9, '2023-10-15 07:08:36', '2023-10-17 16:33:14'),
(19, '2023', 41, 3, 'good', 'c', '3', 8, 5, 2, 1, 5, 3, 9, '2023-10-15 07:08:52', '2023-10-17 16:33:14'),
(20, '2023', 21, 4, 'Pass', 'd', '2', 8, 6, 2, 1, 5, 3, 9, '2023-10-15 07:09:07', '2023-10-17 16:33:14'),
(21, '2023', 51, 3, 'good', 'c', '3', 8, 7, 2, 1, 5, 3, 9, '2023-10-15 07:09:18', '2023-10-17 16:33:14'),
(22, '2023', 62, 2, 'verry good', 'B', '6', 8, 8, 2, 1, 5, 3, 9, '2023-10-15 07:09:27', '2023-10-17 16:33:14'),
(23, '2023', 46, 3, 'good', 'c', '3', 8, 9, 2, 1, 5, 3, 9, '2023-10-15 07:09:40', '2023-10-17 16:33:14'),
(24, '2023', 46, 3, 'good', 'c', '3', 8, 12, 2, 1, 5, 3, 9, '2023-10-15 07:09:48', '2023-10-17 16:33:14'),
(25, '2023', 64, 2, 'verry good', 'B', '6', 4, 15, 2, 1, 5, 3, 9, '2023-10-15 07:15:41', '2023-10-17 16:33:14'),
(26, '2023', 50, 3, 'good', 'c', '3', 5, 15, 2, 1, 5, 3, 9, '2023-10-17 02:22:40', '2023-10-17 16:33:14'),
(27, '2023', 50, 3, 'good', 'c', '3', 6, 2, 2, 1, 5, 3, 9, '2023-10-17 02:40:23', '2023-10-17 16:33:14'),
(28, '2023', 50, 3, 'good', 'c', '3', 6, 3, 2, 1, 5, 3, 9, '2023-10-17 02:44:53', '2023-10-17 16:33:14'),
(29, '2023', 50, 3, 'good', 'c', '3', 6, 5, 2, 1, 5, 3, 9, '2023-10-17 02:45:42', '2023-10-17 16:33:14'),
(30, '2023', 50, 3, 'good', 'c', '3', 6, 6, 2, 1, 5, 3, 9, '2023-10-17 02:45:52', '2023-10-17 16:33:14'),
(31, '2023', 50, 3, 'good', 'c', '3', 6, 7, 2, 1, 5, 3, 9, '2023-10-17 02:46:07', '2023-10-17 16:33:14'),
(32, '2023', 50, 3, 'good', 'c', '3', 6, 8, 2, 1, 5, 3, 9, '2023-10-17 02:46:26', '2023-10-17 16:33:14'),
(33, '2023', 50, 3, 'good', 'c', '3', 6, 9, 2, 1, 5, 3, 9, '2023-10-17 02:46:37', '2023-10-17 16:33:14'),
(34, '2023', 50, 3, 'good', 'c', '3', 6, 12, 2, 1, 5, 3, 9, '2023-10-17 02:46:51', '2023-10-17 16:33:14'),
(35, '2023', 50, 3, 'good', 'c', '3', 6, 15, 2, 1, 5, 3, 9, '2023-10-17 02:47:06', '2023-10-17 16:33:14'),
(36, '2023', 55, 3, 'good', 'c', '3', 7, 2, 2, 1, 5, 3, 9, '2023-10-17 02:50:45', '2023-10-17 16:33:14'),
(37, '2023', 55, 3, 'good', 'c', '3', 7, 3, 2, 1, 5, 3, 9, '2023-10-17 02:50:58', '2023-10-17 16:33:14'),
(38, '2023', 55, 3, 'good', 'c', '3', 7, 5, 2, 1, 5, 3, 9, '2023-10-17 02:51:12', '2023-10-17 16:33:14'),
(39, '2023', 55, 3, 'good', 'c', '3', 7, 6, 2, 1, 5, 3, 9, '2023-10-17 02:51:23', '2023-10-17 16:33:14'),
(40, '2023', 55, 3, 'good', 'c', '3', 7, 7, 2, 1, 5, 3, 9, '2023-10-17 02:51:36', '2023-10-17 16:33:14'),
(41, '2023', 55, 3, 'good', 'c', '3', 7, 8, 2, 1, 5, 3, 9, '2023-10-17 02:51:49', '2023-10-17 16:33:14'),
(42, '2023', 50, 3, 'good', 'c', '3', 7, 9, 2, 1, 5, 3, 9, '2023-10-17 02:52:07', '2023-10-17 16:33:14'),
(43, '2023', 55, 3, 'good', 'c', '3', 7, 12, 2, 1, 5, 3, 9, '2023-10-17 02:52:18', '2023-10-17 16:33:14'),
(44, '2023', 55, 3, 'good', 'c', '3', 7, 15, 2, 1, 5, 3, 9, '2023-10-17 02:55:41', '2023-10-17 16:33:14'),
(45, '2023', 40, 4, 'Pass', 'd', '2', 8, 15, 2, 1, 5, 3, 9, '2023-10-17 03:04:04', '2023-10-17 16:33:14'),
(46, '2023', 77, 2, 'verry good', 'B', '6', 5, 2, 2, 1, 6, 3, 0, '2023-10-19 13:40:24', '2023-10-19 13:44:36'),
(47, '2023', 70, 2, 'verry good', 'B', '6', 6, 2, 2, 1, 6, 3, 0, '2023-10-19 13:41:05', '2023-10-19 13:41:05'),
(48, '2023', 60, 3, 'good', 'c', '3', 5, 3, 2, 1, 6, 3, 0, '2023-10-19 13:42:00', '2023-10-19 13:42:00'),
(49, '2023', 60, 3, 'good', 'c', '3', 5, 5, 2, 1, 6, 3, 0, '2023-10-19 13:42:07', '2023-10-19 13:42:07'),
(50, '2023', 60, 3, 'good', 'c', '3', 5, 6, 2, 1, 6, 3, 0, '2023-10-19 13:42:17', '2023-10-19 13:42:17'),
(51, '2023', 78, 2, 'verry good', 'B', '6', 5, 7, 2, 1, 6, 3, 0, '2023-10-19 13:42:26', '2023-10-19 13:42:26'),
(52, '2023', 90, 1, 'excellent', 'A', '7', 5, 8, 2, 1, 6, 3, 0, '2023-10-19 13:42:34', '2023-10-19 13:42:34'),
(53, '2023', 19, 5, 'poor', 'F', '5', 5, 9, 2, 1, 6, 3, 0, '2023-10-19 13:42:43', '2023-10-19 13:42:43'),
(54, '2023', 50, 3, 'good', 'c', '3', 5, 12, 2, 1, 6, 3, 0, '2023-10-19 13:42:51', '2023-10-19 13:42:51'),
(55, '2023', 77, 2, 'verry good', 'B', '6', 5, 15, 2, 1, 6, 3, 0, '2023-10-19 13:42:58', '2023-10-19 13:42:58'),
(56, '2023', 70, 2, 'verry good', 'B', '6', 4, 2, 2, 1, 6, 3, 0, '2023-10-26 09:14:25', '2023-10-26 09:14:25'),
(57, '2023', 90, 1, 'excellent', 'A', '7', 4, 5, 2, 1, 6, 3, 0, '2023-10-26 09:14:42', '2023-10-26 09:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee` varchar(255) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `min_amount` decimal(11,2) NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `fee`, `amount`, `min_amount`, `duration`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'A-level practical fee', 70000.00, 35000.00, 2, 3, '2023-10-18 17:27:52', '2023-10-19 11:34:57'),
(3, 'hostel fees', 500000.00, 500000.00, 1, 3, '2023-10-13 03:59:34', '2023-10-13 03:59:51'),
(4, 'O-level practical fee', 100000.00, 100000.00, 1, 3, '2023-10-13 04:00:41', '2023-10-13 08:39:25'),
(6, 'registration fee', 30000.00, 30000.00, 2, 3, '2023-10-19 11:31:47', '2023-10-19 11:31:47'),
(7, 'o-level tution fee', 800000.00, 400000.00, 2, 3, '2023-10-19 11:34:38', '2023-10-19 11:34:38'),
(9, 'graduation fee', 60000.00, 0.00, 0, 3, '2023-10-19 13:10:20', '2023-10-19 13:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `fee_balances`
--

CREATE TABLE `fee_balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(17,2) NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_balances`
--

INSERT INTO `fee_balances` (`id`, `amount`, `student_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 500.00, 6, 3, '2023-10-20 07:28:45', '2023-10-21 12:53:52'),
(2, 0.00, 5, 3, '2023-10-20 07:31:18', '2023-10-20 07:31:18'),
(3, 1000.00, 4, 3, '2023-10-20 09:08:36', '2023-10-20 09:08:36'),
(4, 500000.00, 7, 3, '2023-10-21 04:05:16', '2023-10-27 06:37:02'),
(5, 70000.00, 9, 3, '2023-10-25 10:01:31', '2023-10-25 10:40:55'),
(6, 10000.00, 10, 3, '2023-10-26 07:54:58', '2023-10-26 09:11:15'),
(7, 1080000.00, 8, 3, '2023-11-13 21:55:31', '2023-11-14 07:47:01'),
(8, 0.00, 11, 3, '2023-11-14 01:22:16', '2023-11-14 01:22:16');

-- --------------------------------------------------------

--
-- Table structure for table `fee_payments`
--

CREATE TABLE `fee_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) NOT NULL,
  `valid_to` varchar(255) NOT NULL,
  `amount` decimal(17,2) NOT NULL,
  `paid_amount` decimal(17,2) NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `fee_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_payments`
--

INSERT INTO `fee_payments` (`id`, `year`, `valid_to`, `amount`, `paid_amount`, `student_id`, `classroom_id`, `level_id`, `user_id`, `fee_id`, `status`, `created_at`, `updated_at`) VALUES
(7, '2023', '2023', 100000.00, 0.00, 4, 2, 1, 3, 4, 0, NULL, '2023-10-21 04:42:37'),
(8, '2023', '2023', 30000.00, 0.00, 4, 2, 1, 3, 6, 0, NULL, '2023-10-21 04:42:37'),
(9, '2023', '2023', 800000.00, 0.00, 4, 2, 1, 3, 7, 0, NULL, '2023-10-21 04:42:37'),
(16, '2023', '20231210', 100000.00, 100000.00, 7, 2, 1, 3, 4, 1, NULL, '2023-10-27 06:35:30'),
(17, '2023', '20231210', 30000.00, 30000.00, 7, 2, 1, 3, 6, 1, NULL, '2023-10-27 06:36:45'),
(18, '2023', '20231210', 800000.00, 800000.00, 7, 2, 1, 3, 7, 1, NULL, '2023-10-27 06:36:18'),
(19, '2023', '2023', 100000.00, 0.00, 5, 2, 1, 3, 4, 0, NULL, '2023-10-21 04:07:09'),
(20, '2023', '2023', 30000.00, 0.00, 5, 2, 1, 3, 6, 0, NULL, '2023-10-21 04:07:09'),
(21, '2023', '2023', 800000.00, 0.00, 5, 2, 1, 3, 7, 0, NULL, '2023-10-21 04:07:09'),
(22, '2023', '2023', 70000.00, 0.00, 4, 2, 1, 3, 1, 0, NULL, '2023-10-21 04:42:37'),
(31, '2023', '20231031', 100000.00, 10000.00, 6, 2, 1, 3, 4, 0, NULL, '2023-10-24 11:12:21'),
(32, '2023', '20231031', 30000.00, 10500.00, 6, 2, 1, 3, 6, 1, NULL, '2023-10-24 11:12:21'),
(33, '2023', '20231031', 800000.00, 10000.00, 6, 2, 1, 3, 7, 0, NULL, '2023-10-24 11:12:21'),
(34, '2023', '20231031', 500000.00, 10000.00, 6, 2, 1, 3, 3, 0, '2023-10-21 03:53:41', '2023-10-24 11:12:21'),
(35, '2023', '20231210', 500000.00, 500000.00, 7, 2, 1, 3, 3, 1, '2023-10-21 04:05:21', '2023-10-27 06:36:27'),
(36, '2023', '20231210', 70000.00, 70000.00, 7, 2, 1, 3, 1, 1, '2023-10-21 04:05:25', '2023-10-27 06:37:02'),
(37, '2023', '2023', 500000.00, 0.00, 5, 2, 1, 3, 3, 0, '2023-10-21 04:07:21', '2023-10-21 04:07:21'),
(38, '2023', '20231031', 70000.00, 10000.00, 6, 2, 1, 3, 1, 0, '2023-10-21 04:24:45', '2023-10-24 11:12:21'),
(39, '2023', '2023', 70000.00, 0.00, 9, 11, 1, 3, 1, 0, NULL, '2023-11-17 12:09:51'),
(40, '2023', '20231210', 100000.00, 100000.00, 9, 11, 1, 3, 4, 1, '2023-10-25 10:20:58', '2023-11-17 12:09:51'),
(41, '2023', '20231210', 30000.00, 30000.00, 9, 11, 1, 3, 6, 1, '2023-10-25 10:21:04', '2023-11-17 12:09:51'),
(42, '2023', '20230910', 800000.00, 700000.00, 9, 11, 1, 3, 7, 1, '2023-10-25 10:21:12', '2023-11-17 12:09:51'),
(43, '2023', '20231210', 60000.00, 60000.00, 9, 11, 1, 14, 9, 1, '2023-10-25 10:37:08', '2023-11-17 12:09:51'),
(44, '2023', '20230410', 500000.00, 100000.00, 10, 7, 3, 3, 3, 1, NULL, '2023-10-26 09:08:48'),
(45, '2023', '2023', 100000.00, 0.00, 10, 7, 3, 3, 4, 0, NULL, '2023-10-26 09:00:54'),
(46, '2023', '20230610', 30000.00, 20000.00, 10, 7, 3, 3, 6, 1, NULL, '2023-10-26 09:07:42'),
(47, '2023', '2023', 800000.00, 0.00, 10, 7, 3, 3, 7, 0, NULL, '2023-10-26 09:00:54'),
(48, '2023', '20230410', 60000.00, 20000.00, 10, 7, 3, 3, 9, 1, '2023-10-26 09:03:43', '2023-10-26 09:11:15'),
(49, '2023', '2023', 70000.00, 0.00, 7, 16, 5, 3, 1, 0, NULL, NULL),
(50, '2023', '2023', 100000.00, 0.00, 7, 16, 5, 3, 4, 0, NULL, NULL),
(51, '2023', '2023', 30000.00, 0.00, 7, 16, 5, 3, 6, 0, NULL, NULL),
(52, '2023', '2023', 60000.00, 0.00, 7, 16, 5, 3, 9, 0, NULL, NULL),
(53, '2023', '20230910', 100000.00, 90000.00, 8, 2, 1, 3, 4, 1, NULL, '2023-11-14 07:47:01'),
(54, '2023', '20231210', 30000.00, 30000.00, 8, 2, 1, 3, 6, 1, NULL, '2023-11-14 07:41:43'),
(55, '2023', '20231210', 800000.00, 800000.00, 8, 2, 1, 3, 7, 1, NULL, '2023-11-14 07:42:07'),
(56, '2023', '2023', 70000.00, 0.00, 11, 16, 5, 3, 1, 0, NULL, NULL),
(57, '2023', '2023', 100000.00, 0.00, 11, 16, 5, 3, 4, 0, NULL, NULL),
(58, '2023', '2023', 30000.00, 0.00, 11, 16, 5, 3, 6, 0, NULL, NULL),
(59, '2023', '2023', 60000.00, 0.00, 11, 16, 5, 3, 9, 0, NULL, NULL),
(60, '2023', '2023', 500000.00, 0.00, 9, 11, 1, 3, 3, 0, '2023-11-14 06:36:14', '2023-11-17 12:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gender` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `gender`, `created_at`, `updated_at`) VALUES
(1, 'male', NULL, NULL),
(2, 'female', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grade` varchar(255) NOT NULL,
  `grade_label` varchar(255) NOT NULL,
  `point` int(11) NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `mark1` int(11) NOT NULL,
  `mark2` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `grade`, `grade_label`, `point`, `level_id`, `mark1`, `mark2`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'd', 'Pass', 4, 1, 21, 40, 3, '2023-04-17 03:37:39', '2023-04-17 03:40:29'),
(3, 'c', 'good', 3, 1, 41, 60, 3, '2023-04-17 03:39:48', '2023-04-17 03:39:48'),
(4, 'A', 'excellent', 1, 2, 81, 100, 3, '2023-05-06 11:58:12', '2023-10-13 05:09:36'),
(5, 'F', 'poor', 5, 1, 0, 20, 3, '2023-10-13 05:08:52', '2023-10-13 05:17:44'),
(6, 'B', 'verry good', 2, 1, 61, 80, 3, '2023-10-13 05:11:07', '2023-10-13 05:11:07'),
(7, 'A', 'excellent', 1, 1, 81, 100, 3, '2023-10-13 05:12:18', '2023-10-13 05:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `health_statuses`
--

CREATE TABLE `health_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `health` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `health_statuses`
--

INSERT INTO `health_statuses` (`id`, `health`, `created_at`, `updated_at`) VALUES
(1, 'normal', NULL, NULL),
(2, 'ubnormal', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `host_exam_marks`
--

CREATE TABLE `host_exam_marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) NOT NULL,
  `subjects` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `details` mediumtext NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `host_exam_marks`
--

INSERT INTO `host_exam_marks` (`id`, `year`, `subjects`, `points`, `total_marks`, `details`, `student_id`, `classroom_id`, `level_id`, `exam_id`, `user_id`, `created_at`, `updated_at`) VALUES
(41, '2023', 9, 14, 577, 'Physics-67(B), Kiswahili-87(A), Biology-37(D), Chemistry-57(C), English-77(B), Civics-45(C), Geograph-68(B), History-75(B), Basic mathematics-64(B), ', 4, 2, 1, 5, 3, NULL, NULL),
(42, '2023', 9, 8, 713, 'Physics-77(B), Kiswahili-79(B), Biology-82(A), Chemistry-82(A), English-82(A), Civics-87(A), Geograph-87(A), History-87(A), Basic mathematics-50(C), ', 5, 2, 1, 5, 3, NULL, NULL),
(43, '2023', 9, 21, 450, 'Physics-50(C), Kiswahili-50(C), Biology-50(C), Chemistry-50(C), English-50(C), Civics-50(C), Geograph-50(C), History-50(C), Basic mathematics-50(C), ', 6, 2, 1, 5, 3, NULL, NULL),
(44, '2023', 9, 21, 490, 'Physics-55(C), Kiswahili-55(C), Biology-55(C), Chemistry-55(C), English-55(C), Civics-55(C), Geograph-50(C), History-55(C), Basic mathematics-55(C), ', 7, 2, 1, 5, 3, NULL, NULL),
(45, '2023', 9, 21, 397, 'Physics-30(D), Kiswahili-60(C), Biology-41(C), Chemistry-21(D), English-51(C), Civics-62(B), Geograph-46(C), History-46(C), Basic mathematics-40(D), ', 8, 2, 1, 5, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `level`, `created_at`, `updated_at`) VALUES
(0, 'default', NULL, NULL),
(1, 'Form I', NULL, NULL),
(2, 'Form II', NULL, NULL),
(3, 'Form III', NULL, NULL),
(4, 'Form IV', NULL, NULL),
(5, 'Form V', NULL, NULL),
(6, 'Form VI', NULL, NULL),
(7, 'O-Level', NULL, NULL),
(8, 'A-Level', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `log`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Delete the Exam by the name of TEXT 2, its id was 2', 3, '2023-04-14 05:58:06', '2023-04-14 05:58:06'),
(2, 'Create the Exam by the name of Middtem', 3, '2023-04-14 06:04:01', '2023-04-14 06:04:01'),
(3, 'Delete the Exam by the name of test 2, its id was 3', 3, '2023-04-14 10:34:09', '2023-04-14 10:34:09'),
(4, 'Create the Exam by the name of Test 2', 3, '2023-04-14 10:34:32', '2023-04-14 10:34:32'),
(5, 'Delete the Exam by the name of Test 1, its id was 1', 3, '2023-04-14 11:07:20', '2023-04-14 11:07:20'),
(6, 'Exam edited from the name of Test 2 toTest 22', 3, '2023-04-14 12:09:44', '2023-04-14 12:09:44'),
(7, 'Exam edited from the name of Test 22 toTest 2', 3, '2023-04-14 12:10:28', '2023-04-14 12:10:28'),
(8, 'Exam edited from the name of Test 2 toTest 277', 3, '2023-04-14 12:34:52', '2023-04-14 12:34:52'),
(9, 'Create the Exam by the name of TEXT 2', 3, '2023-04-14 12:38:41', '2023-04-14 12:38:41'),
(10, 'Exam edited from the name of TEXT 2 toTest 2', 3, '2023-04-14 12:38:59', '2023-04-14 12:38:59'),
(11, 'Create the subject by the name of Biology', 3, '2023-04-14 14:21:30', '2023-04-14 14:21:30'),
(12, 'Delete the subject by the name of Biology, its id was 1', 3, '2023-04-14 14:29:58', '2023-04-14 14:29:58'),
(13, 'Create the subject by the name of Mathematics', 3, '2023-04-14 14:34:50', '2023-04-14 14:34:50'),
(14, 'subject edited from the name of Mathematics toPhysics', 3, '2023-04-14 14:35:18', '2023-04-14 14:35:18'),
(15, 'Create the subject by the name of kiswahili', 3, '2023-04-14 15:02:32', '2023-04-14 15:02:32'),
(16, 'subject edited from the name of kiswahili to kiswahili lang', 3, '2023-04-14 15:02:48', '2023-04-14 15:02:48'),
(17, 'Create the department by the name of kiswahili', 3, '2023-04-14 19:37:14', '2023-04-14 19:37:14'),
(18, 'department edited from the name of kiswahili to English', 3, '2023-04-14 19:46:23', '2023-04-14 19:46:23'),
(19, 'Delete the department by the name of English, its id was 13', 3, '2023-04-14 19:50:04', '2023-04-14 19:50:04'),
(20, 'Delete the department by the name of admission, its id was 3', 3, '2023-04-14 19:51:35', '2023-04-14 19:51:35'),
(21, 'Delete the department by the name of finance, its id was 1', 3, '2023-04-14 19:51:57', '2023-04-14 19:51:57'),
(22, 'Delete the department by the name of biology, its id was 4', 3, '2023-04-14 19:52:07', '2023-04-14 19:52:07'),
(23, 'Create the department by the name of music', 3, '2023-04-14 19:58:26', '2023-04-14 19:58:26'),
(24, 'Delete the department by the name of music, its id was 14', 3, '2023-04-14 19:58:37', '2023-04-14 19:58:37'),
(25, 'Create the department by the name of Kiswahili', 3, '2023-04-15 12:19:52', '2023-04-15 12:19:52'),
(26, 'Create the classname by the name of IIA1', 3, '2023-04-16 00:23:31', '2023-04-16 00:23:31'),
(27, 'Create the classname by the name of IA1', 3, '2023-04-16 00:31:45', '2023-04-16 00:31:45'),
(28, 'Create the classname by the name of IA3', 3, '2023-04-16 00:47:43', '2023-04-16 00:47:43'),
(29, 'Create the classname by the name of ia4', 3, '2023-04-16 00:49:33', '2023-04-16 00:49:33'),
(30, 'Delete the classname by the name of IA3, its id was 3', 3, '2023-04-16 00:56:06', '2023-04-16 00:56:06'),
(31, 'Delete the classname by the name of IIA1, its id was 1', 3, '2023-04-16 00:56:12', '2023-04-16 00:56:12'),
(32, 'Class edited from the name of IA1 to IA2', 3, '2023-04-16 01:57:23', '2023-04-16 01:57:23'),
(33, 'Class edited from the name of IA2 to IA1', 3, '2023-04-16 01:58:34', '2023-04-16 01:58:34'),
(34, 'Create the grade by the name of f', 3, '2023-04-17 03:19:37', '2023-04-17 03:19:37'),
(35, 'Class edited from the name of f to f', 3, '2023-04-17 03:36:38', '2023-04-17 03:36:38'),
(36, 'Create the grade by the name of D', 3, '2023-04-17 03:37:40', '2023-04-17 03:37:40'),
(37, 'Create the grade by the name of c', 3, '2023-04-17 03:39:48', '2023-04-17 03:39:48'),
(38, 'Class edited from the name of D to d', 3, '2023-04-17 03:40:29', '2023-04-17 03:40:29'),
(39, 'Delete the grade by the name of f, its id was 1', 3, '2023-04-17 03:41:29', '2023-04-17 03:41:29'),
(40, 'Create the fee by the name of Tuition fee', 3, '2023-04-18 05:43:43', '2023-04-18 05:43:43'),
(41, 'Fee edited from the name of Tuition fee to Tuition fee o-level', 3, '2023-04-18 06:08:24', '2023-04-18 06:08:24'),
(42, 'Create the fee by the name of food fees', 3, '2023-04-18 06:16:20', '2023-04-18 06:16:20'),
(43, 'Delete the Fee by the name of food fees, its id was 2', 3, '2023-04-18 06:16:36', '2023-04-18 06:16:36'),
(44, 'Create the classname by the name of IIA1', 3, '2023-04-22 02:55:36', '2023-04-22 02:55:36'),
(45, 'Create the classname by the name of IIA2', 3, '2023-04-22 02:55:53', '2023-04-22 02:55:53'),
(46, 'Create the classname by the name of IIIA2', 3, '2023-04-22 02:56:12', '2023-04-22 02:56:12'),
(47, 'Create the classname by the name of IA12', 3, '2023-04-24 10:21:51', '2023-04-24 10:21:51'),
(48, 'Create the subject by the name of civics', 3, '2023-04-24 10:47:28', '2023-04-24 10:47:28'),
(49, 'Delete the subject by the name of civics, its id was 4', 3, '2023-04-24 10:47:40', '2023-04-24 10:47:40'),
(50, 'Create the classname by the name of A12', 14, '2023-05-06 11:55:33', '2023-05-06 11:55:33'),
(51, 'Delete the classname by the name of A12, its id was 9', 14, '2023-05-06 11:55:59', '2023-05-06 11:55:59'),
(52, 'Create the grade by the name of A', 14, '2023-05-06 11:58:12', '2023-05-06 11:58:12'),
(53, 'Fee edited from the name of Tuition fee o-level to Tuition fee o-level1', 3, '2023-10-13 03:55:11', '2023-10-13 03:55:11'),
(54, 'Fee edited from the name of Tuition fee o-level1 to Tuition fee o-level', 3, '2023-10-13 03:56:04', '2023-10-13 03:56:04'),
(55, 'Fee edited from the name of Tuition fee o-level to Tuition fee o-level', 3, '2023-10-13 03:56:22', '2023-10-13 03:56:22'),
(56, 'Fee edited from the name of Tuition fee o-level to Tuition fee o-level', 3, '2023-10-13 03:58:10', '2023-10-13 03:58:10'),
(57, 'Fee edited from the name of Tuition fee o-level to Tuition fee o-level', 3, '2023-10-13 03:58:21', '2023-10-13 03:58:21'),
(58, 'Fee edited from the name of Tuition fee o-level to Tuition fee o-level', 3, '2023-10-13 03:58:44', '2023-10-13 03:58:44'),
(59, 'Create the fee by the name of hostel fees', 3, '2023-10-13 03:59:34', '2023-10-13 03:59:34'),
(60, 'Fee edited from the name of hostel fees to hostel fees', 3, '2023-10-13 03:59:51', '2023-10-13 03:59:51'),
(61, 'Create the fee by the name of O-level practical fee', 3, '2023-10-13 04:00:41', '2023-10-13 04:00:41'),
(62, 'Delete the classname by the name of IA12, its id was 8', 3, '2023-10-13 05:03:11', '2023-10-13 05:03:11'),
(63, 'Create the grade by the name of F', 3, '2023-10-13 05:08:52', '2023-10-13 05:08:52'),
(64, 'Class edited from the name of A to A', 3, '2023-10-13 05:09:36', '2023-10-13 05:09:36'),
(65, 'Create the grade by the name of B', 3, '2023-10-13 05:11:07', '2023-10-13 05:11:07'),
(66, 'Create the grade by the name of A', 3, '2023-10-13 05:12:18', '2023-10-13 05:12:18'),
(67, 'Class edited from the name of F to F', 3, '2023-10-13 05:17:44', '2023-10-13 05:17:44'),
(68, 'Exam edited from the name of Middtem to middtem1', 3, '2023-10-13 05:20:17', '2023-10-13 05:20:17'),
(69, 'Exam edited from the name of middtem1 to midterm', 3, '2023-10-13 05:21:18', '2023-10-13 05:21:18'),
(70, 'Exam edited from the name of Test 277 to test 1', 3, '2023-10-13 05:24:33', '2023-10-13 05:24:33'),
(71, 'Create the subject by the name of biology', 3, '2023-10-13 05:26:40', '2023-10-13 05:26:40'),
(72, 'Create the subject by the name of chemistry', 3, '2023-10-13 05:26:53', '2023-10-13 05:26:53'),
(73, 'Create the subject by the name of english', 3, '2023-10-13 05:44:05', '2023-10-13 05:44:05'),
(74, 'Create the subject by the name of civics', 3, '2023-10-13 05:44:59', '2023-10-13 05:44:59'),
(75, 'Create the subject by the name of geograph', 3, '2023-10-13 05:45:27', '2023-10-13 05:45:27'),
(76, 'Create the subject by the name of geograph 1', 3, '2023-10-13 05:45:44', '2023-10-13 05:45:44'),
(77, 'Create the subject by the name of geograph 2', 3, '2023-10-13 05:45:54', '2023-10-13 05:45:54'),
(78, 'Create the subject by the name of History', 3, '2023-10-13 05:46:10', '2023-10-13 05:46:10'),
(79, 'Create the subject by the name of History I', 3, '2023-10-13 05:46:30', '2023-10-13 05:46:30'),
(80, 'Create the subject by the name of History II', 3, '2023-10-13 05:46:39', '2023-10-13 05:46:39'),
(81, 'subject edited from the name of geograph 2 to geograph II', 3, '2023-10-13 05:46:57', '2023-10-13 05:46:57'),
(82, 'subject edited from the name of geograph 1 to geograph I', 3, '2023-10-13 05:47:35', '2023-10-13 05:47:35'),
(83, 'Create the classname by the name of A6', 3, '2023-10-13 06:03:01', '2023-10-13 06:03:01'),
(84, 'Class edited from the name of A6 to IA6', 3, '2023-10-13 06:03:17', '2023-10-13 06:03:17'),
(85, 'Create the classname by the name of I7B', 3, '2023-10-13 06:28:31', '2023-10-13 06:28:31'),
(86, 'Class edited from the name of I7B to I7B', 3, '2023-10-13 08:30:50', '2023-10-13 08:30:50'),
(87, 'Class edited from the name of IA1 to IA1', 3, '2023-10-13 08:31:50', '2023-10-13 08:31:50'),
(88, 'Class edited from the name of IA1 to IA1', 3, '2023-10-13 08:33:49', '2023-10-13 08:33:49'),
(89, 'Class edited from the name of I7B to I7B', 3, '2023-10-13 08:34:42', '2023-10-13 08:34:42'),
(90, 'Class edited from the name of IIIA2 to IIIA2', 3, '2023-10-13 08:35:07', '2023-10-13 08:35:07'),
(91, 'Fee edited from the name of O-level practical fee to O-level practical fee', 3, '2023-10-13 08:39:25', '2023-10-13 08:39:25'),
(92, 'Exam edited from the name of midterm to terminal', 3, '2023-10-14 01:43:43', '2023-10-14 01:43:43'),
(93, 'Class edited from the name of IA1 to IA1', 3, '2023-10-14 08:45:15', '2023-10-14 08:45:15'),
(94, 'subject edited from the name of kiswahili lang to kiswahili', 3, '2023-10-15 07:10:26', '2023-10-15 07:10:26'),
(95, 'Create the subject by the name of Basic mathematics', 3, '2023-10-15 07:13:15', '2023-10-15 07:13:15'),
(96, 'Class edited from the name of IA1 to IA1', 3, '2023-10-15 07:14:30', '2023-10-15 07:14:30'),
(97, 'Delete the subject by the name of geograph I, its id was 10', 3, '2023-10-17 01:53:33', '2023-10-17 01:53:33'),
(98, 'Delete the subject by the name of geograph II, its id was 11', 3, '2023-10-17 01:53:38', '2023-10-17 01:53:38'),
(99, 'Delete the subject by the name of History I, its id was 13', 3, '2023-10-17 01:53:44', '2023-10-17 01:53:44'),
(100, 'Delete the subject by the name of History II, its id was 14', 3, '2023-10-17 01:54:00', '2023-10-17 01:54:00'),
(101, 'Class edited from the name of IA1 to IA1', 3, '2023-10-17 01:55:14', '2023-10-17 01:55:14'),
(102, 'Class edited from the name of IA1 to IA1', 3, '2023-10-17 02:00:50', '2023-10-17 02:00:50'),
(103, 'Delete the Fee by the name of Tuition fee o-level, its id was 1', 3, '2023-10-18 17:26:00', '2023-10-18 17:26:00'),
(104, 'Create the fee by the name of A-level practical fee', 3, '2023-10-18 17:27:53', '2023-10-18 17:27:53'),
(105, 'Fee edited from the name of A-level practical fee to A-level practical fee', 3, '2023-10-18 17:28:16', '2023-10-18 17:28:16'),
(106, 'Fee edited from the name of A-level practical fee to A-level practical fee', 3, '2023-10-18 17:28:51', '2023-10-18 17:28:51'),
(107, 'Create the fee by the name of registration fee', 3, '2023-10-19 11:31:47', '2023-10-19 11:31:47'),
(108, 'Create the fee by the name of o-level tution fee', 3, '2023-10-19 11:34:38', '2023-10-19 11:34:38'),
(109, 'Fee edited from the name of A-level practical fee to A-level practical fee', 3, '2023-10-19 11:34:57', '2023-10-19 11:34:57'),
(110, 'Class edited from the name of IA1 to IA1', 3, '2023-10-19 11:36:15', '2023-10-19 11:36:15'),
(111, 'Create the fee by the name of graduation fee', 3, '2023-10-19 13:08:34', '2023-10-19 13:08:34'),
(112, 'Fee edited from the name of graduation fee to graduation fee', 3, '2023-10-19 13:09:13', '2023-10-19 13:09:13'),
(113, 'Delete the Fee by the name of graduation fee, its id was 8', 3, '2023-10-19 13:09:49', '2023-10-19 13:09:49'),
(114, 'Create the fee by the name of graduation fee', 3, '2023-10-19 13:10:20', '2023-10-19 13:10:20'),
(115, 'Create the subject by the name of computer skills', 3, '2023-10-19 13:13:10', '2023-10-19 13:13:10'),
(116, 'Create the classname by the name of b1', 3, '2023-10-19 13:15:25', '2023-10-19 13:15:25'),
(117, 'Class edited from the name of IIIA2 to IIIA2', 3, '2023-10-26 07:54:24', '2023-10-26 07:54:24'),
(118, 'Create the subject by the name of music', 3, '2023-10-26 08:39:05', '2023-10-26 08:39:05'),
(119, 'subject edited from the name of music to musics', 3, '2023-10-26 08:39:20', '2023-10-26 08:39:20'),
(120, 'Create the classname by the name of A1', 3, '2023-10-26 08:43:20', '2023-10-26 08:43:20'),
(121, 'Create the classname by the name of IVB2', 3, '2023-10-27 23:31:36', '2023-10-27 23:31:36'),
(122, 'Class edited from the name of IVB2 to IVB2', 3, '2023-10-27 23:54:33', '2023-10-27 23:54:33'),
(123, 'Class edited from the name of b1 to b1', 3, '2023-10-28 14:42:27', '2023-10-28 14:42:27'),
(124, 'Create the coursename by the name of ghghgh', 3, '2023-10-29 08:31:09', '2023-10-29 08:31:09'),
(125, 'Create the coursename by the name of pcb', 3, '2023-10-29 08:32:17', '2023-10-29 08:32:17'),
(126, 'Create the course by the name of PGC', 3, '2023-10-29 14:38:54', '2023-10-29 14:38:54'),
(127, 'Course edited from the name of  to PGC', 3, '2023-10-29 14:40:22', '2023-10-29 14:40:22'),
(128, 'Delete the Course by the name of ghghgh, its id was 2', 3, '2023-10-29 14:41:18', '2023-10-29 14:41:18'),
(129, 'Delete the Course by the name of pcb, its id was 3', 3, '2023-10-29 14:41:49', '2023-10-29 14:41:49'),
(130, 'Create the course by the name of sample', 3, '2023-10-29 14:43:08', '2023-10-29 14:43:08'),
(131, 'Course edited from the name of  to sample', 3, '2023-10-29 14:43:20', '2023-10-29 14:43:20'),
(132, 'Delete the Course by the name of sample, its id was 5', 3, '2023-10-29 14:43:26', '2023-10-29 14:43:26'),
(133, 'Course edited from the name of  to PCB', 3, '2023-11-09 04:52:39', '2023-11-09 04:52:39'),
(134, 'Course edited from the name of  to PCB', 3, '2023-11-09 04:53:01', '2023-11-09 04:53:01'),
(135, 'Create the subject by the name of Advanced Mathematics', 3, '2023-11-09 04:54:01', '2023-11-09 04:54:01'),
(136, 'Create the course by the name of PCM', 3, '2023-11-09 04:55:38', '2023-11-09 04:55:38'),
(137, 'Class edited from the name of b1 to b1', 3, '2023-11-12 02:16:55', '2023-11-12 02:16:55'),
(138, 'Create the classname by the name of V PCM', 3, '2023-11-12 02:19:42', '2023-11-12 02:19:42'),
(139, 'Course edited from the name of  to PCB', 3, '2023-11-12 05:41:13', '2023-11-12 05:41:13'),
(140, 'Course edited from the name of  to PCB', 3, '2023-11-12 05:41:26', '2023-11-12 05:41:26'),
(141, 'Create the course by the name of HKL', 3, '2023-11-12 05:41:50', '2023-11-12 05:41:50'),
(142, 'Create the classname by the name of V HKL', 3, '2023-11-12 05:51:28', '2023-11-12 05:51:28'),
(143, 'Class edited from the name of V HKL to V HKL', 3, '2023-11-12 07:20:41', '2023-11-12 07:20:41'),
(144, 'Class edited from the name of V HKL to V HKL', 3, '2023-11-12 07:21:04', '2023-11-12 07:21:04'),
(145, 'Class edited from the name of IVB2 to IVB2', 3, '2023-11-12 07:21:45', '2023-11-12 07:21:45'),
(146, 'subject edited from the name of Physics to Physics', 3, '2023-11-12 09:26:55', '2023-11-12 09:26:55'),
(147, 'subject edited from the name of Advanced Mathematics to Advanced Mathematics', 3, '2023-11-12 09:29:50', '2023-11-12 09:29:50'),
(148, 'subject edited from the name of biology to biology', 3, '2023-11-12 09:30:45', '2023-11-12 09:30:45'),
(149, 'Create the subject by the name of general studies', 3, '2023-11-12 09:31:58', '2023-11-12 09:31:58'),
(150, 'subject edited from the name of general studies to general studies', 3, '2023-11-12 09:32:16', '2023-11-12 09:32:16'),
(151, 'Create the fee by the name of just my fee', 3, '2023-11-14 06:27:07', '2023-11-14 06:27:07'),
(152, 'Fee edited from the name of just my fee to what fee', 3, '2023-11-14 06:28:06', '2023-11-14 06:28:06'),
(153, 'Delete the Fee by the name of what fee, its id was 10', 3, '2023-11-14 06:28:19', '2023-11-14 06:28:19'),
(154, 'Class edited from the name of V PCM to V PCM', 3, '2023-11-14 08:03:44', '2023-11-14 08:03:44'),
(155, 'subject edited from the name of musics to musics', 3, '2023-11-15 02:42:18', '2023-11-15 02:42:18'),
(156, 'subject edited from the name of computer skills to computer skills', 3, '2023-11-15 02:53:27', '2023-11-15 02:53:27'),
(157, 'subject edited from the name of Advanced Mathematics to Advanced Mathematics', 3, '2023-11-15 02:53:48', '2023-11-15 02:53:48'),
(158, 'Create the course by the name of HGK', 3, '2023-11-15 03:50:44', '2023-11-15 03:50:44'),
(159, 'Create the course by the name of cbg', 3, '2023-11-15 03:51:12', '2023-11-15 03:51:12'),
(160, 'Delete the Course by the name of cbg, its id was 9', 3, '2023-11-15 03:51:22', '2023-11-15 03:51:22'),
(161, 'Create the course by the name of CBG', 3, '2023-11-15 03:54:33', '2023-11-15 03:54:33'),
(162, 'Course edited from the name of  to CBG', 3, '2023-11-15 03:58:02', '2023-11-15 03:58:02'),
(163, 'Create the Exam by the name of mokk', 3, '2023-11-15 04:17:51', '2023-11-15 04:17:51'),
(164, 'Delete the Exam by the name of mokk, its id was 8', 3, '2023-11-15 04:17:56', '2023-11-15 04:17:56'),
(165, 'Create the Exam by the name of TEXT 2', 3, '2023-11-15 04:43:49', '2023-11-15 04:43:49'),
(166, 'Delete the Exam by the name of TEXT 2, its id was 9', 3, '2023-11-15 05:16:32', '2023-11-15 05:16:32'),
(167, 'Course edited from the name of  to PCM', 3, '2023-11-19 04:45:27', '2023-11-19 04:45:27'),
(168, 'Course edited from the name of  to PCM', 3, '2023-11-19 04:49:09', '2023-11-19 04:49:09'),
(169, 'Course edited from the name of  to PCM', 3, '2023-11-19 07:36:59', '2023-11-19 07:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '2013_04_03_112002_create_roles_table', 1),
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_resets_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(19, '2023_04_07_065632_create_levels_table', 1),
(25, '2023_04_07_143717_create_departments_table', 1),
(26, '2023_04_08_003814_create_staff_table', 1),
(27, '2023_04_07_072950_create_classrooms_table', 2),
(28, '2023_04_07_131510_create_grades_table', 2),
(29, '2023_04_12_184354_create_exams_table', 2),
(30, '2023_04_13_062129_create_parents_table', 3),
(31, '2023_04_14_080408_create_logs_table', 4),
(32, '2023_04_07_084452_create_subjects_table', 5),
(33, '2023_04_07_140537_create_fees_table', 6),
(34, '2023_04_21_174616_create_student_statuses_table', 7),
(37, '2023_04_07_084016_create_students_table', 8),
(38, '2023_10_12_154840_create_genders_table', 9),
(39, '2023_10_12_231119_create_relation_tos_table', 10),
(40, '2023_10_13_013052_create_admission_types_table', 11),
(41, '2023_10_13_020318_create_entry_types_table', 12),
(42, '2023_10_13_023345_create_health_statuses_table', 13),
(43, '2023_10_13_143350_create_exam_marks_table', 14),
(44, '2023_10_16_082242_create_change_marks_table', 15),
(45, '2023_10_17_065446_create_host_exam_marks_table', 16),
(46, '2023_10_17_065920_create_exam_hosts_table', 16),
(48, '2023_10_18_174716_create_fee_payments_table', 17),
(49, '2023_10_18_174750_create_duration_payments_table', 17),
(50, '2023_10_18_174430_create_fee_balances_table', 18),
(52, '2023_10_20_062058_create_deposit_slips_table', 19),
(54, '2023_10_22_031228_create_remove_fees_table', 20),
(56, '2023_10_23_091908_create_attendances_table', 21),
(57, '2023_10_24_205152_create_parent_statuses_table', 22),
(58, '2023_10_29_074823_create_courses_table', 23),
(59, '2023_11_13_072104_create_session_atendances_table', 24);

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'staff.png',
  `home_address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT 'noemail',
  `occupation` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `index_no` varchar(255) NOT NULL DEFAULT 'noindex_no',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `phone`, `photo`, `home_address`, `email`, `occupation`, `nationality`, `index_no`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'richard', 'joseph', 'mlimila', '1', '+255768448525', 'man.png', 'buza', 'engrithom1@gmail.com', 'coda', 'tanzanian', 'noindex_no', 3, '2023-04-19 05:55:24', '2023-04-19 05:55:24'),
(2, 'sambokile', 'lally', 'kindeki', '1', '+255768448525', 'man.png', 'buza', 'engrithom11@gmail.com', 'jangili', 'congoman', 'noindex_no', 3, '2023-04-19 06:15:12', '2023-04-19 06:15:12'),
(4, 'Bondumali', 'Majidu', 'Dugi', '1', '+255768448521', 'man.png', 'buza', 'engrithom1@gmail.com', 'mkulima', 'Tanzanian', 'noindex_no', 3, '2023-04-21 12:25:48', '2023-04-21 12:25:48'),
(5, 'alyn', 'sano', 'Onyango', '2', '+255768448520', 'man.png', 'mbezi kwa zena', 'engrithom1@gmail.com', 'business man', 'kenyan', 'noindex_no', 3, '2023-04-21 12:31:03', '2023-04-21 12:31:03'),
(6, 'idda', 'kasian', 'Mumba', '2', '+255768348525', 'man.png', 'msamala', 'engrithom1@gmail.com', 'teache', 'tanzanian', 'noindex_no', 3, '2023-04-21 12:39:26', '2023-04-21 12:39:26'),
(7, 'Fredy', 'Focus', 'palapala', '1', '0686255811', 'man.png', 'Dar es salaam', 'mrakilikubwa@gmail.com', 'business man', 'Tanzanian', 'noindex_no', 14, '2023-09-21 16:31:05', '2023-09-21 16:31:05'),
(8, 'babu', 'chiko', 'kombo', '1', '+255768448529', 'man.png', 'mbezi beach', 'babu@gmail.com', 'msela', 'Kenyan', 'noindex_no', 3, '2023-10-12 13:50:54', '2023-10-12 13:50:54'),
(9, 'raphael', 'boko', 'boko', '1', '+255768448777', 'man.png', 'buza', 'engrithom71@gmail.com', 'player', 'tanzanian', 'noindex_no', 3, '2023-10-19 13:53:43', '2023-10-19 13:53:43'),
(10, 'Ally', 'masood', 'Katanga', '1', '+255768400525', 'man.png', 'buza', 'engrithom400@gmail.com', 'designer', 'tanzanian', 'noindex_no', 3, '2023-11-14 05:07:50', '2023-11-14 05:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `parent_statuses`
--

CREATE TABLE `parent_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parent_statuses`
--

INSERT INTO `parent_statuses` (`id`, `parent_status`, `created_at`, `updated_at`) VALUES
(1, 'having both', NULL, NULL),
(2, 'only father', NULL, NULL),
(3, 'only mother', NULL, NULL),
(4, 'no parent', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(19, 'App\\Models\\User', 14, 'MyApp', '8b680f3beb4c0c1fe82b75288ff3aa8475787da43bd2229bbf7f844567cc7077', '[\"*\"]', '2023-09-21 16:31:05', '2023-04-24 12:17:34', '2023-09-21 16:31:05'),
(20, 'App\\Models\\User', 14, 'MyApp', '1662a51c8517e43e2dce3a8ff9a0a764d2f0db6b7fc69ece8da5588b96fd90ab', '[\"*\"]', NULL, '2023-04-27 09:15:44', '2023-04-27 09:15:44'),
(21, 'App\\Models\\User', 14, 'MyApp', 'd52262485f1dc823c67f4c97b38f1b9fe7e10fb7f14ee6b9fca0525f1380fce7', '[\"*\"]', NULL, '2023-04-27 09:53:01', '2023-04-27 09:53:01'),
(22, 'App\\Models\\User', 14, 'MyApp', 'ecb40be251e4fbdb21458fb7f09aec8c0c29f6397c242eae24109edb8936be47', '[\"*\"]', NULL, '2023-04-27 10:34:17', '2023-04-27 10:34:17'),
(23, 'App\\Models\\User', 14, 'MyApp', '5f0813c05a4195e8c7bcb6d17d6c8b82c89665ada0d77137a11086b41e1cadad', '[\"*\"]', '2023-04-27 10:55:22', '2023-04-27 10:51:30', '2023-04-27 10:55:22'),
(24, 'App\\Models\\User', 14, 'MyApp', '0d151ed2fec4aae105b1dd8a9ca75ae837b1d42f8fc85b647b73751a1b9bac06', '[\"*\"]', NULL, '2023-04-29 12:46:07', '2023-04-29 12:46:07'),
(31, 'App\\Models\\User', 3, 'MyApp', '486407c8359015736dc090b2ccbcf19d81d4b5660207250847744364022e0dbb', '[\"*\"]', NULL, '2023-10-24 19:17:16', '2023-10-24 19:17:16'),
(32, 'App\\Models\\User', 3, 'MyApp', 'b75be74b83bdaec6ef7e9f7b5a84bd943d5b6282a6d1aa592cb204d8ce199683', '[\"*\"]', NULL, '2023-10-24 19:30:18', '2023-10-24 19:30:18'),
(33, 'App\\Models\\User', 3, 'MyApp', 'a6f1834d7d1a5c3ece7561103f813acef1d1f4603fce24fd16b3bb2f7c28772e', '[\"*\"]', '2023-10-24 23:53:25', '2023-10-24 23:33:46', '2023-10-24 23:53:25'),
(34, 'App\\Models\\User', 15, 'MyApp', 'e31b3593c2a73e5df44cf484ccf63cdab6327a00b7d3c4228c654e8218fd5826', '[\"*\"]', '2023-10-25 00:06:46', '2023-10-24 23:51:42', '2023-10-25 00:06:46'),
(35, 'App\\Models\\User', 14, 'MyApp', '54840be8daadeac09be34d901296464f9e57b399b79702c6bae1b9eabfc3a3b9', '[\"*\"]', NULL, '2023-10-25 00:20:05', '2023-10-25 00:20:05'),
(36, 'App\\Models\\User', 21, 'MyApp', 'de5a4d199d177fd2e15a52873263a5f2c494fb402516637f7a0b922163ea14ed', '[\"*\"]', NULL, '2023-10-25 00:30:56', '2023-10-25 00:30:56'),
(37, 'App\\Models\\User', 3, 'MyApp', 'aebbb8ae04a80396c99cae54c3ef52d0eefa6eb48eab235d508475575a878fbf', '[\"*\"]', '2023-10-25 10:21:12', '2023-10-25 09:59:46', '2023-10-25 10:21:12'),
(38, 'App\\Models\\User', 21, 'MyApp', 'fa3756c05a317a3299c95ab73269fb927f9164812626ccec7acdf274b13a5c1c', '[\"*\"]', NULL, '2023-10-25 10:29:40', '2023-10-25 10:29:40'),
(39, 'App\\Models\\User', 14, 'MyApp', 'f9eef165aae0309af01d15c4f98731ccf7fc5b2250f075e406c1e19808cbe386', '[\"*\"]', '2023-10-25 10:40:55', '2023-10-25 10:31:02', '2023-10-25 10:40:55'),
(40, 'App\\Models\\User', 15, 'MyApp', '6f927718036a7657f7a46f2c1e4ffe0a196f5471d0004f0b476f0784a1526264', '[\"*\"]', '2023-10-25 10:48:26', '2023-10-25 10:45:11', '2023-10-25 10:48:26'),
(41, 'App\\Models\\User', 3, 'MyApp', '8c79e751b99c53fbff1e7b057af8c5fe78f44b12f33a6a0a81811ceba24701ed', '[\"*\"]', '2023-10-26 07:34:54', '2023-10-25 10:50:04', '2023-10-26 07:34:54'),
(42, 'App\\Models\\User', 21, 'MyApp', 'b43fd77d5d435413b5f2333db89ff26cbf7a61c636ec29caa880621b42c6b79a', '[\"*\"]', NULL, '2023-10-26 07:40:54', '2023-10-26 07:40:54'),
(43, 'App\\Models\\User', 3, 'MyApp', '5ca19bf31671e228a9ffc22fe7964a269a81cdddd230b9323773fdd26f2e7372', '[\"*\"]', '2023-10-26 08:04:07', '2023-10-26 07:50:10', '2023-10-26 08:04:07'),
(44, 'App\\Models\\User', 3, 'MyApp', '0f7619c7901c9f759851a2b34f6954f6d48cbe006f6d8c3d56668c0663c46f9c', '[\"*\"]', '2023-10-26 09:26:01', '2023-10-26 08:30:19', '2023-10-26 09:26:01'),
(45, 'App\\Models\\User', 15, 'MyApp', '38e33cc2241f0eb414d4f6050431778ef856521f016bdb66c00455c9ccea28cc', '[\"*\"]', NULL, '2023-10-26 09:30:27', '2023-10-26 09:30:27'),
(46, 'App\\Models\\User', 21, 'MyApp', '4787e90502eea1e9f98356aa6f729b13f3c7647516d967ed35a3114ab6a810ce', '[\"*\"]', NULL, '2023-10-26 09:32:14', '2023-10-26 09:32:14'),
(47, 'App\\Models\\User', 3, 'MyApp', '2d828c604d393a0d679a32e6e3af943a7c25a689ce3b2e6fc05e8c4d90187bed', '[\"*\"]', '2023-11-09 04:55:38', '2023-10-27 06:00:58', '2023-11-09 04:55:38'),
(48, 'App\\Models\\User', 3, 'MyApp', 'f233248b5b530686be0e7c422fac1ed782cddd7a499fc51fbc1fedf48336e35c', '[\"*\"]', '2023-11-15 18:00:39', '2023-11-10 19:28:52', '2023-11-15 18:00:39'),
(49, 'App\\Models\\User', 3, 'MyApp', '573c5fc2d834afbc81224788a6a613f22c41e737deec67f051a91f557bc42ab2', '[\"*\"]', NULL, '2023-11-10 19:28:54', '2023-11-10 19:28:54'),
(50, 'App\\Models\\User', 3, 'MyApp', '971f4889cb1f9347f76a9f790d9f22c6dcef9b14ae732e2ca6b57d444db0b5a3', '[\"*\"]', NULL, '2023-11-16 01:36:33', '2023-11-16 01:36:33'),
(51, 'App\\Models\\User', 3, 'MyApp', '2dded740fb6bd6292656ce86e90c035fc71d9baae4541328dd5fc707e4d7a697', '[\"*\"]', '2023-11-18 07:25:17', '2023-11-16 20:08:50', '2023-11-18 07:25:17'),
(52, 'App\\Models\\User', 3, 'MyApp', 'f3e4a2337631c338955451303a1bc667ea0c6c71dcf974b4ea732eba63df1a8d', '[\"*\"]', '2023-11-19 04:55:03', '2023-11-18 11:38:25', '2023-11-19 04:55:03'),
(53, 'App\\Models\\User', 3, 'MyApp', '5fbcb08b78f050f42fb8ce840a3a073ecba14d2dcb0946a3b55f105b9ee181f2', '[\"*\"]', '2023-11-19 11:26:31', '2023-11-19 04:55:59', '2023-11-19 11:26:31');

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

-- --------------------------------------------------------

--
-- Table structure for table `remove_fees`
--

CREATE TABLE `remove_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) NOT NULL,
  `fee_name` varchar(255) NOT NULL,
  `reason` mediumtext NOT NULL,
  `action` varchar(255) NOT NULL DEFAULT 'not yet',
  `actionable_id` int(11) NOT NULL DEFAULT 0,
  `amount` decimal(17,2) NOT NULL,
  `paid_amount` decimal(17,2) NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `fee_id` bigint(20) UNSIGNED NOT NULL,
  `fee_payment_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `remove_fees`
--

INSERT INTO `remove_fees` (`id`, `year`, `fee_name`, `reason`, `action`, `actionable_id`, `amount`, `paid_amount`, `student_id`, `user_id`, `fee_id`, `fee_payment_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '2023', 'A-level practical fee', 'astahili kulipia mchangohuu ni wa a-level', 'not yet', 0, 70000.00, 10000.00, 6, 3, 1, 38, 0, '2023-10-22 01:31:56', '2023-10-22 01:31:56'),
(2, '2023', 'A-level practical fee', 'hastaili kulipia malipo haya sio level yake', 'not yet', 0, 70000.00, 0.00, 9, 3, 1, 39, 0, '2023-10-25 10:20:26', '2023-10-25 10:20:26'),
(3, '2023', 'graduation fee', 'urrrytdrityiy ytryulukluy', 'not yet', 0, 60000.00, 20000.00, 10, 3, 9, 48, 0, '2023-10-26 09:11:42', '2023-10-26 09:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `color`, `created_at`, `updated_at`) VALUES
(1, 'student', 'primary', NULL, NULL),
(2, 'teacher', 'primary', NULL, NULL),
(3, 'admin', 'warning', NULL, NULL),
(4, 'super admin', 'danger', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session_atendances`
--

CREATE TABLE `session_atendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) NOT NULL,
  `date_att` varchar(255) NOT NULL,
  `date_no` int(11) NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attend` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `session_atendances`
--

INSERT INTO `session_atendances` (`id`, `year`, `date_att`, `date_no`, `student_id`, `classroom_id`, `subject_id`, `level_id`, `user_id`, `attend`, `created_at`, `updated_at`) VALUES
(1, '2023', '12/11/2023', 20231112, 9, 11, 2, 1, 3, 1, NULL, NULL),
(2, '2023', '12/11/2023', 20231112, 9, 11, 7, 1, 3, 0, NULL, NULL),
(3, '2023', '12/11/2023', 20231112, 4, 2, 2, 1, 3, 1, NULL, NULL),
(4, '2023', '12/11/2023', 20231112, 5, 2, 2, 1, 3, 0, NULL, NULL),
(5, '2023', '12/11/2023', 20231112, 6, 2, 2, 1, 3, 1, NULL, NULL),
(6, '2023', '12/11/2023', 20231112, 7, 2, 2, 1, 3, 0, NULL, NULL),
(7, '2023', '12/11/2023', 20231112, 8, 2, 2, 1, 3, 1, NULL, NULL),
(8, '2023', '11/11/2023', 20231111, 4, 2, 5, 1, 3, 1, NULL, NULL),
(9, '2023', '11/11/2023', 20231111, 5, 2, 5, 1, 3, 1, NULL, NULL),
(10, '2023', '11/11/2023', 20231111, 6, 2, 5, 1, 3, 1, NULL, NULL),
(11, '2023', '11/11/2023', 20231111, 7, 2, 5, 1, 3, 1, NULL, NULL),
(12, '2023', '11/11/2023', 20231111, 8, 2, 5, 1, 3, 1, NULL, NULL),
(13, '2023', '15/11/2023', 20231115, 4, 2, 3, 1, 3, 1, NULL, NULL),
(14, '2023', '15/11/2023', 20231115, 5, 2, 3, 1, 3, 1, NULL, NULL),
(15, '2023', '15/11/2023', 20231115, 6, 2, 3, 1, 3, 1, NULL, NULL),
(16, '2023', '15/11/2023', 20231115, 8, 2, 3, 1, 3, 1, NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL DEFAULT 'no phone',
  `photo` varchar(255) NOT NULL DEFAULT 'staff.png',
  `home_address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT 'no email',
  `accademic_year` varchar(255) NOT NULL,
  `regist_year` varchar(50) NOT NULL DEFAULT '00000000',
  `nationality` varchar(255) NOT NULL,
  `birth_date` varchar(255) NOT NULL,
  `behavior` varchar(255) NOT NULL DEFAULT 'no comment',
  `transfer_reason` varchar(255) NOT NULL DEFAULT 'no transfer',
  `relation_to` varchar(255) NOT NULL,
  `school_from` varchar(255) NOT NULL DEFAULT 'no transfer',
  `entry` varchar(255) NOT NULL,
  `admission` varchar(255) NOT NULL,
  `hearth` varchar(255) NOT NULL,
  `index_no` varchar(255) NOT NULL,
  `prem_no` varchar(50) NOT NULL DEFAULT '00000000',
  `student_status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `parent_status_id` int(20) NOT NULL,
  `classroom_id` bigint(20) UNSIGNED NOT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `phone`, `photo`, `home_address`, `email`, `accademic_year`, `regist_year`, `nationality`, `birth_date`, `behavior`, `transfer_reason`, `relation_to`, `school_from`, `entry`, `admission`, `hearth`, `index_no`, `prem_no`, `student_status_id`, `parent_status_id`, `classroom_id`, `level_id`, `parent_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'joh', 'mkale', 'sana', '1', '+255768448525', 'man.png', 'buza', 'engrithom100@gmail.com', '2023', '2023', 'Cape', '2005-06-08', 'no comment', 'no comment', '2', 'no school', '1', '1', '1', '0001', '00000000', 1, 1, 2, 1, 6, 3, '2023-10-13 00:27:54', '2023-10-21 04:42:37'),
(5, 'amiry', 'mohamed', 'chambua', '1', '+255768448511', 'man.png', 'salila', 'salila@gmail.com', '2023', '00000000', 'Tanzanian', '2000-02-02', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', '0002', '00000000', 1, 1, 2, 1, 8, 3, '2023-10-14 11:54:30', '2023-10-21 04:07:09'),
(6, 'samuel', 'yelemia', 'jambeli', '1', '+255768448520', 'man.png', 'bunju', 'no email', '2023', '00000000', 'tanzanian', '2008-02-01', 'no comment', 'no comment', '2', 'no school', '1', '2', '1', '000003', '00000000', 1, 2, 2, 1, 5, 3, '2023-10-14 12:26:50', '2023-10-24 11:12:21'),
(7, 'simon', 'humphrey', 'kunguru', '1', '+255768448529', 'man.png', 'songea', 'no email', '2023', '00000000', 'tanzanian', '2010-06-23', 'sio nzuri sana', 'makosa ya kinidhamu', '7', 'bombambili', '2', '1', '1', '000004', '00000000', 1, 1, 16, 5, 8, 3, '2023-10-14 12:46:41', '2023-11-13 21:52:39'),
(8, 'jerry', 'yeremia', 'shija', '1', '+255768448529', 'man.png', 'loliondo', 'engrithom12@gmail.com', '2023', '00000000', 'tanzanian', '2008-02-13', 'no comment', 'no comment', '2', 'no school', '1', '1', '1', '000005', '00000000', 1, 3, 2, 1, 8, 3, '2023-10-14 16:59:21', '2023-11-14 07:41:42'),
(9, 'joline', 'fredy', 'focus', '2', '0686255811', 'man.png', 'manzese', 'no email', '2023', '00000000', 'tanzanian', '2011-06-14', 'nothing', 'no comment', '1', 'no school', '1', '1', '1', '000006', '00000000', 1, 1, 11, 1, 7, 3, '2023-10-24 18:38:32', '2023-11-17 12:09:50'),
(10, 'jacob', 'sambokile', 'kindeki', '1', '+255768448525', 'man.png', 'mbweni', 'no email', '2023', '00000000', 'tanzania', '2007-06-05', 'no comment', 'far from parents', '1', 'bombambili secondary', '2', '2', '1', '000007', '00000000', 1, 2, 7, 3, 2, 3, '2023-10-26 07:53:21', '2023-10-26 09:00:54'),
(11, 'sara', 'thomas', 'mlimila', '2', '+255768348525', 'man.png', 'kimara', 'no email', '2023', '2023', 'tanzanian', '1998-02-18', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', '401333', '11051991', 1, 1, 16, 5, 6, 3, '2023-11-13 22:01:10', '2023-11-14 01:22:16');

-- --------------------------------------------------------

--
-- Table structure for table `student_statuses`
--

CREATE TABLE `student_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_statuses`
--

INSERT INTO `student_statuses` (`id`, `status_name`, `created_at`, `updated_at`) VALUES
(1, 'continue', NULL, NULL),
(2, 'termination', NULL, NULL),
(3, 'transfer out', NULL, NULL),
(4, 'graduate', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL,
  `code` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject`, `code`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Physics', 'phy55', 3, '2023-04-14 14:34:50', '2023-11-12 09:26:55'),
(3, 'kiswahili', '', 3, '2023-04-14 15:02:32', '2023-10-15 07:10:25'),
(5, 'biology', 'phy55', 3, '2023-10-13 05:26:40', '2023-11-12 09:30:45'),
(6, 'chemistry', '', 3, '2023-10-13 05:26:53', '2023-10-13 05:26:53'),
(7, 'english', '', 3, '2023-10-13 05:44:05', '2023-10-13 05:44:05'),
(8, 'civics', '', 3, '2023-10-13 05:44:59', '2023-10-13 05:44:59'),
(9, 'geograph', '', 3, '2023-10-13 05:45:27', '2023-10-13 05:45:27'),
(12, 'History', '', 3, '2023-10-13 05:46:10', '2023-10-13 05:46:10'),
(15, 'Basic mathematics', '', 3, '2023-10-15 07:13:15', '2023-10-15 07:13:15'),
(16, 'computer skills', 'com-234', 3, '2023-10-19 13:13:10', '2023-11-15 02:53:27'),
(17, 'musics', 'mu-234', 3, '2023-10-26 08:39:05', '2023-11-15 02:42:18'),
(18, 'Advanced Mathematics', 'Adm-55', 3, '2023-11-09 04:54:01', '2023-11-15 02:53:48'),
(19, 'general studies', 'GS-444', 3, '2023-11-12 09:31:58', '2023-11-12 09:32:16');

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
-- Indexes for table `admission_types`
--
ALTER TABLE `admission_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_student_id_foreign` (`student_id`),
  ADD KEY `attendances_classroom_id_foreign` (`classroom_id`),
  ADD KEY `attendances_level_id_foreign` (`level_id`),
  ADD KEY `attendances_user_id_foreign` (`user_id`);

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classrooms_user_id_foreign` (`user_id`),
  ADD KEY `classrooms_level_id_foreign` (`level_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_user_id_foreign` (`user_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_user_id_foreign` (`user_id`);

--
-- Indexes for table `deposit_slips`
--
ALTER TABLE `deposit_slips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposit_slips_student_id_foreign` (`student_id`),
  ADD KEY `deposit_slips_user_id_foreign` (`user_id`);

--
-- Indexes for table `duration_payments`
--
ALTER TABLE `duration_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `duration_payments_student_id_foreign` (`student_id`),
  ADD KEY `duration_payments_classroom_id_foreign` (`classroom_id`),
  ADD KEY `duration_payments_level_id_foreign` (`level_id`),
  ADD KEY `duration_payments_user_id_foreign` (`user_id`),
  ADD KEY `duration_payments_fee_id_foreign` (`fee_id`),
  ADD KEY `duration_payments_fee_payment_id_foreign` (`fee_payment_id`);

--
-- Indexes for table `entry_types`
--
ALTER TABLE `entry_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exams_user_id_foreign` (`user_id`);

--
-- Indexes for table `exam_hosts`
--
ALTER TABLE `exam_hosts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_hosts_classroom_id_foreign` (`classroom_id`),
  ADD KEY `exam_hosts_level_id_foreign` (`level_id`),
  ADD KEY `exam_hosts_exam_id_foreign` (`exam_id`),
  ADD KEY `exam_hosts_user_id_foreign` (`user_id`);

--
-- Indexes for table `exam_marks`
--
ALTER TABLE `exam_marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_marks_student_id_foreign` (`student_id`),
  ADD KEY `exam_marks_subject_id_foreign` (`subject_id`),
  ADD KEY `exam_marks_classroom_id_foreign` (`classroom_id`),
  ADD KEY `exam_marks_level_id_foreign` (`level_id`),
  ADD KEY `exam_marks_exam_id_foreign` (`exam_id`),
  ADD KEY `exam_marks_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_user_id_foreign` (`user_id`);

--
-- Indexes for table `fee_balances`
--
ALTER TABLE `fee_balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_balances_student_id_foreign` (`student_id`),
  ADD KEY `fee_balances_user_id_foreign` (`user_id`);

--
-- Indexes for table `fee_payments`
--
ALTER TABLE `fee_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_payments_student_id_foreign` (`student_id`),
  ADD KEY `fee_payments_classroom_id_foreign` (`classroom_id`),
  ADD KEY `fee_payments_level_id_foreign` (`level_id`),
  ADD KEY `fee_payments_user_id_foreign` (`user_id`),
  ADD KEY `fee_payments_fee_id_foreign` (`fee_id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grades_level_id_foreign` (`level_id`),
  ADD KEY `grades_user_id_foreign` (`user_id`);

--
-- Indexes for table `health_statuses`
--
ALTER TABLE `health_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `host_exam_marks`
--
ALTER TABLE `host_exam_marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `host_exam_marks_student_id_foreign` (`student_id`),
  ADD KEY `host_exam_marks_classroom_id_foreign` (`classroom_id`),
  ADD KEY `host_exam_marks_level_id_foreign` (`level_id`),
  ADD KEY `host_exam_marks_exam_id_foreign` (`exam_id`),
  ADD KEY `host_exam_marks_user_id_foreign` (`user_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parents_user_id_foreign` (`user_id`);

--
-- Indexes for table `parent_statuses`
--
ALTER TABLE `parent_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `relation_tos`
--
ALTER TABLE `relation_tos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remove_fees`
--
ALTER TABLE `remove_fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `remove_fees_student_id_foreign` (`student_id`),
  ADD KEY `remove_fees_user_id_foreign` (`user_id`),
  ADD KEY `remove_fees_fee_id_foreign` (`fee_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_atendances`
--
ALTER TABLE `session_atendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_atendances_student_id_foreign` (`student_id`),
  ADD KEY `session_atendances_classroom_id_foreign` (`classroom_id`),
  ADD KEY `session_atendances_subject_id_foreign` (`subject_id`),
  ADD KEY `session_atendances_level_id_foreign` (`level_id`),
  ADD KEY `session_atendances_user_id_foreign` (`user_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_user_id_foreign` (`user_id`),
  ADD KEY `staff_role_id_foreign` (`role_id`),
  ADD KEY `staff_department_id_foreign` (`department_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_student_status_id_foreign` (`student_status_id`),
  ADD KEY `students_classroom_id_foreign` (`classroom_id`),
  ADD KEY `students_level_id_foreign` (`level_id`),
  ADD KEY `students_parent_id_foreign` (`parent_id`),
  ADD KEY `students_user_id_foreign` (`user_id`);

--
-- Indexes for table `student_statuses`
--
ALTER TABLE `student_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `admission_types`
--
ALTER TABLE `admission_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `deposit_slips`
--
ALTER TABLE `deposit_slips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `duration_payments`
--
ALTER TABLE `duration_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `entry_types`
--
ALTER TABLE `entry_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `exam_hosts`
--
ALTER TABLE `exam_hosts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exam_marks`
--
ALTER TABLE `exam_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fee_balances`
--
ALTER TABLE `fee_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fee_payments`
--
ALTER TABLE `fee_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `health_statuses`
--
ALTER TABLE `health_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `host_exam_marks`
--
ALTER TABLE `host_exam_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `parent_statuses`
--
ALTER TABLE `parent_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `relation_tos`
--
ALTER TABLE `relation_tos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `remove_fees`
--
ALTER TABLE `remove_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `session_atendances`
--
ALTER TABLE `session_atendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_statuses`
--
ALTER TABLE `student_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  ADD CONSTRAINT `attendances_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD CONSTRAINT `classrooms_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `classrooms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `deposit_slips`
--
ALTER TABLE `deposit_slips`
  ADD CONSTRAINT `deposit_slips_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `deposit_slips_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `duration_payments`
--
ALTER TABLE `duration_payments`
  ADD CONSTRAINT `duration_payments_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  ADD CONSTRAINT `duration_payments_fee_id_foreign` FOREIGN KEY (`fee_id`) REFERENCES `fees` (`id`),
  ADD CONSTRAINT `duration_payments_fee_payment_id_foreign` FOREIGN KEY (`fee_payment_id`) REFERENCES `fee_payments` (`id`),
  ADD CONSTRAINT `duration_payments_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `duration_payments_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `duration_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `exam_hosts`
--
ALTER TABLE `exam_hosts`
  ADD CONSTRAINT `exam_hosts_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  ADD CONSTRAINT `exam_hosts_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `exam_hosts_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `exam_hosts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `exam_marks`
--
ALTER TABLE `exam_marks`
  ADD CONSTRAINT `exam_marks_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  ADD CONSTRAINT `exam_marks_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `exam_marks_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `exam_marks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `exam_marks_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `exam_marks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `fee_balances`
--
ALTER TABLE `fee_balances`
  ADD CONSTRAINT `fee_balances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `fee_balances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `fee_payments`
--
ALTER TABLE `fee_payments`
  ADD CONSTRAINT `fee_payments_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  ADD CONSTRAINT `fee_payments_fee_id_foreign` FOREIGN KEY (`fee_id`) REFERENCES `fees` (`id`),
  ADD CONSTRAINT `fee_payments_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `fee_payments_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `fee_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `grades_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `host_exam_marks`
--
ALTER TABLE `host_exam_marks`
  ADD CONSTRAINT `host_exam_marks_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  ADD CONSTRAINT `host_exam_marks_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `host_exam_marks_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `host_exam_marks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `host_exam_marks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `parents`
--
ALTER TABLE `parents`
  ADD CONSTRAINT `parents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `remove_fees`
--
ALTER TABLE `remove_fees`
  ADD CONSTRAINT `remove_fees_fee_id_foreign` FOREIGN KEY (`fee_id`) REFERENCES `fees` (`id`),
  ADD CONSTRAINT `remove_fees_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `remove_fees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `session_atendances`
--
ALTER TABLE `session_atendances`
  ADD CONSTRAINT `session_atendances_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  ADD CONSTRAINT `session_atendances_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `session_atendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `session_atendances_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `session_atendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `staff_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `staff_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  ADD CONSTRAINT `students_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `students_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `parents` (`id`),
  ADD CONSTRAINT `students_student_status_id_foreign` FOREIGN KEY (`student_status_id`) REFERENCES `student_statuses` (`id`),
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
