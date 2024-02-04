-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 23, 2023 at 05:09 AM
-- Server version: 10.5.20-MariaDB-cll-lve
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jiteitzg_jmisdb`
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
(45, '2023', '19/11/2023', 20231119, 13, 18, 1, 3, 0, NULL, NULL),
(46, '2023', '20/11/2023', 20231120, 13, 18, 1, 3, 1, NULL, NULL);

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
(0, 'default', '0', 3, 0, 0, 0, NULL, NULL, '', '', 0),
(18, 'IA1', '23', 3, 1, 42, 0, '2023-11-19 23:28:58', '2023-12-10 18:24:24', '11', '21,22,23,25,27,24,26,28,29,30,31,51,41', 0),
(22, 'IA2', '21', 3, 1, 47, 0, '2023-11-24 07:15:57', '2023-12-10 18:24:39', '0', '21,23,22,24,26,28,25,27,29,30,41,51,35', 0),
(24, 'IB1', '07', 3, 1, 39, 0, '2023-12-09 16:47:29', '2023-12-10 18:24:06', '0', '24,25,27,26,51,21,22,23,29,30,41,36', 0),
(25, 'IIA1', '09', 3, 2, 51, 0, '2023-12-09 17:27:02', '2023-12-10 18:22:58', '0', '21,23,25,27,41,22,24,26,29,31,51,30', 0),
(26, 'IIA2', '11', 41, 2, 56, 0, '2023-12-09 17:33:28', '2023-12-09 17:33:28', '0', '21,23,25,27,30,35,41,22,24,26,29,51', 0),
(27, 'IIB1', '10', 41, 2, 52, 0, '2023-12-09 17:41:49', '2023-12-09 17:41:49', '0', '21,23,25,27,30,41,22,24,26,36', 0),
(28, 'IIIA1', '13', 41, 3, 48, 0, '2023-12-09 17:44:39', '2023-12-09 17:44:39', '0', '21,23,25,27,22,24,26,29,31,51', 0),
(29, 'IIIA2', '14', 41, 3, 49, 0, '2023-12-09 17:46:06', '2023-12-09 17:46:06', '0', '21,25,27,30,41,24,26,29,35,51', 0),
(30, 'IIIB1', '16', 41, 3, 55, 0, '2023-12-09 17:49:30', '2023-12-09 18:54:30', '0', '21,25,27,24,26,29,51', 0),
(31, 'IVA1', '19', 41, 4, 46, 0, '2023-12-09 17:51:40', '2023-12-09 17:51:40', '0', '21,23,25,27,22,24,26,31,51', 0),
(32, 'IVA2', '20', 41, 4, 45, 0, '2023-12-09 17:54:56', '2023-12-09 17:54:56', '0', '21,25,27,30,41,24,26,29,51', 0),
(33, 'IVB1', '21', 41, 4, 41, 0, '2023-12-09 18:00:42', '2023-12-09 18:00:42', '0', '21,25,27,24,26,29,51', 0),
(34, 'V-HGE', '25', 3, 5, 43, 0, '2023-12-09 18:25:33', '2023-12-10 18:28:27', '0', '37,33,40,39,46', 12),
(35, 'V-HGK', '26', 3, 5, 44, 0, '2023-12-09 18:29:59', '2023-12-10 18:28:39', '0', '37,39,40,49', 14),
(36, 'V-HKL', '27', 3, 5, 36, 0, '2023-12-09 18:30:59', '2023-12-10 18:29:55', '0', '37,39,49,50', 15),
(37, 'V-HGL', '31', 3, 5, 35, 0, '2023-12-09 18:32:57', '2023-12-10 18:30:08', '0', '37,39,40,50', 13),
(38, 'V-PCM', '31', 3, 5, 50, 0, '2023-12-09 18:34:28', '2023-12-10 18:25:06', '0', '37,45,42,32', 17),
(39, 'V-PCB', '32', 3, 5, 26, 0, '2023-12-09 18:35:28', '2023-12-10 18:29:18', '0', '37,45,42,48,33', 18),
(40, 'V-CBG', '33', 3, 5, 3, 0, '2023-12-09 18:42:08', '2023-12-10 18:28:53', '0', '37,42,48,40,33', 20),
(41, 'V-EGM', '35', 3, 5, 33, 0, '2023-12-09 18:43:02', '2023-12-10 18:29:42', '0', '37,46,40,32', 16),
(42, 'V-ECA', '34', 3, 5, 27, 0, '2023-12-09 18:44:13', '2023-12-10 18:30:25', '0', '37,46,44,43,33', 21),
(43, 'VI-HGE', '23', 3, 6, 57, 0, '2023-12-09 19:00:48', '2023-12-10 18:25:37', '0', '37,33,40,39,46', 12),
(44, 'VI-HGK', '29', 3, 6, 58, 0, '2023-12-09 19:02:06', '2023-12-10 18:27:16', '0', '37,39,40,49', 14),
(45, 'VI-HKL', '22', 3, 6, 54, 0, '2023-12-09 19:03:41', '2023-12-10 18:25:52', '0', '37,39,49,50', 15),
(46, 'VI-PCM', '37', 3, 6, 40, 0, '2023-12-09 19:16:18', '2023-12-10 18:25:19', '0', '37,45,42,32', 17),
(47, 'VI-PCB', '38', 3, 6, 53, 0, '2023-12-09 19:28:23', '2023-12-10 18:26:26', '0', '37,45,42,48,33', 18),
(48, 'VI-CBG', '39', 3, 6, 61, 0, '2023-12-09 19:42:54', '2023-12-10 18:26:45', '0', '37,42,48,40,33', 20),
(49, 'VI-ECA', '40', 3, 6, 59, 0, '2023-12-09 19:43:49', '2023-12-10 18:27:34', '0', '37,46,44,43,33', 21),
(50, 'VI-EGM', '41', 3, 6, 60, 0, '2023-12-09 19:44:43', '2023-12-10 18:27:02', '0', '37,46,40,32', 16),
(51, 'VI-HGL', '42', 3, 6, 62, 0, '2023-12-09 19:45:55', '2023-12-10 18:26:11', '0', '37,39,40,50', 13);

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
(12, 'HGE', '37,33,40,39,46', 'General studies, Basic applied mathematics, Geography, History, Economics,', 41, '2023-12-08 21:07:54', '2023-12-08 21:07:54'),
(13, 'HGL', '37,39,40,50', 'General studies, History, Geography, English Language,', 41, '2023-12-08 21:08:44', '2023-12-08 21:08:44'),
(14, 'HGK', '37,39,40,49', 'General studies, History, Geography, Kiswahili,', 41, '2023-12-08 21:09:18', '2023-12-08 21:09:18'),
(15, 'HKL', '37,39,49,50', 'General studies, History, Kiswahili, English Language,', 41, '2023-12-08 21:10:34', '2023-12-08 21:10:34'),
(16, 'EGM', '37,46,40,32', 'General studies, Economics, Geography, Advanced mathematics,', 41, '2023-12-08 21:11:42', '2023-12-08 21:11:42'),
(17, 'PCM', '37,45,42,32', 'General studies, Physics, Chemistry, Advanced mathematics,', 41, '2023-12-08 21:12:09', '2023-12-08 21:12:09'),
(18, 'PCB', '37,45,42,48,33', 'General studies, Physics, Chemistry, Biology, Basic applied mathematics,', 41, '2023-12-08 21:13:00', '2023-12-08 21:13:00'),
(19, 'PGM', '37,45,40,32', 'General studies, Physics, Geography, Advanced mathematics,', 41, '2023-12-08 21:15:31', '2023-12-08 21:15:31'),
(20, 'CBG', '37,42,48,40,33', 'General studies, Chemistry, Biology, Geography, Basic applied mathematics,', 41, '2023-12-08 21:17:08', '2023-12-08 21:17:08'),
(21, 'ECA', '37,46,44,43,33', 'General studies, Economics, Accountancy, Commerce, Basic applied mathematics,', 41, '2023-12-08 21:18:40', '2023-12-08 21:18:40');

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
(1, 'Accademic', 3, '2023-11-23 06:35:29', '2023-11-23 06:35:29'),
(2, 'Admission', 3, '2023-11-23 06:35:40', '2023-11-23 06:35:40'),
(3, 'Finance', 3, '2023-11-23 06:35:56', '2023-11-23 06:35:56'),
(15, 'Kiswahili', 3, '2023-04-15 12:19:52', '2023-04-15 12:19:52'),
(21, 'History', 3, '2023-12-07 11:54:30', '2023-12-07 11:54:30'),
(22, 'Adminstration', 42, '2023-12-07 13:27:45', '2023-12-07 13:27:45'),
(23, 'Registration', 42, '2023-12-07 13:28:49', '2023-12-07 13:28:49'),
(24, 'Examination', 42, '2023-12-07 13:29:47', '2023-12-07 13:29:47'),
(25, 'Libarary', 42, '2023-12-07 13:30:04', '2023-12-07 13:30:04'),
(26, 'Laboratory', 42, '2023-12-07 13:30:53', '2023-12-07 13:30:53'),
(27, 'Hostel', 42, '2023-12-07 13:32:32', '2023-12-07 13:32:32'),
(28, 'Discipline', 42, '2023-12-07 13:34:00', '2023-12-07 13:34:00'),
(29, 'JID', 42, '2023-12-07 13:34:30', '2023-12-07 13:34:30'),
(30, 'ICT/JCC', 42, '2023-12-07 13:34:44', '2023-12-07 13:34:44'),
(31, 'QM', 42, '2023-12-07 13:35:14', '2023-12-07 13:35:14'),
(32, 'Stores', 42, '2023-12-07 13:35:33', '2023-12-07 13:35:33'),
(33, 'Environment', 42, '2023-12-07 13:35:56', '2023-12-07 13:35:56'),
(34, 'Sports', 42, '2023-12-07 13:36:18', '2023-12-07 13:36:18'),
(35, 'Coordinators A/O Levels', 42, '2023-12-07 13:36:54', '2023-12-07 13:36:54'),
(36, 'Drivers/TO', 42, '2023-12-07 13:37:22', '2023-12-07 13:37:22'),
(37, 'Estate Manager', 42, '2023-12-07 13:38:11', '2023-12-07 13:38:11'),
(39, 'Science', 42, '2023-12-07 14:45:48', '2023-12-07 14:45:48');

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
(11, '2023', 50000.00, 'ckckckckc', 'via CRDB', 13, 3, 0, '2023-11-20 00:17:15', '2023-11-20 00:17:15');

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
(24, '2023', 30000.00, 13, 18, 1, 3, 11, 61, '2023-11-20 00:17:42', '2023-11-20 00:17:42');

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
(4, 'annualy', 3, 'deactive', '2023-04-14 03:42:19', '2023-12-08 21:05:56'),
(5, 'terminal', 3, 'deactive', '2023-04-14 06:04:01', '2023-12-08 21:05:54'),
(6, 'test 1', 3, 'deactive', '2023-04-14 10:34:32', '2023-12-08 21:05:36'),
(7, 'Test 2', 3, 'deactive', '2023-04-14 12:38:41', '2023-11-26 11:26:58');

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
(58, '2023', 76, 1, 'Excellent', 'A', '9', 19, 21, 18, 1, 4, 41, 0, '2023-11-28 13:43:57', '2023-11-28 13:43:57'),
(59, '2023', 55, 3, 'Good', 'C', '17', 19, 22, 18, 1, 4, 41, 0, '2023-11-28 13:44:26', '2023-11-28 13:44:26');

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
  `status` int(20) NOT NULL DEFAULT 1,
  `level_id` int(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `fee`, `amount`, `min_amount`, `duration`, `status`, `level_id`, `user_id`, `created_at`, `updated_at`) VALUES
(11, 'Sample fee', 30000.00, 0.00, 0, 1, 0, 3, '2023-11-19 23:27:12', '2023-12-09 11:04:10'),
(22, 'FORM I SCHOOL FEES 2024', 1000000.00, 0.00, 0, 1, 1, 50, '2023-12-08 13:28:51', '2023-12-09 12:52:42'),
(26, 'FORM II SCHOOL FEES 2024', 1145000.00, 0.00, 0, 1, 2, 50, '2023-12-09 12:05:49', '2023-12-09 13:01:06'),
(27, 'FORM II HOSTEL FEES 2024', 1450000.00, 0.00, 0, 2, 2, 50, '2023-12-09 12:08:38', '2023-12-09 12:08:38'),
(32, 'FORM III SCHOOL FEES 2024', 1155000.00, 0.00, 0, 1, 3, 50, '2023-12-09 12:38:32', '2023-12-09 12:38:32'),
(33, 'FORM III HOSTELL FEES 2024', 1450000.00, 0.00, 0, 2, 3, 50, '2023-12-09 12:40:42', '2023-12-09 12:40:42'),
(38, 'FORM IV SCHOOL FEES 2024', 1335000.00, 0.00, 0, 1, 4, 50, '2023-12-09 12:53:36', '2023-12-09 12:53:36'),
(39, 'FORM IV HOSTEL FEES 2024', 1450000.00, 0.00, 0, 2, 4, 50, '2023-12-09 12:56:46', '2023-12-09 12:56:46'),
(44, 'FORM V SCHOOL FEES 2023/24', 1370000.00, 0.00, 0, 1, 5, 50, '2023-12-11 10:33:50', '2023-12-11 11:41:59'),
(45, 'FORM V HOSTEL  FEES 2023/24', 1450000.00, 0.00, 0, 2, 5, 50, '2023-12-11 10:36:10', '2023-12-11 11:46:58'),
(46, 'FORM V TERM SCHOOL FEES 2023/24', 685000.00, 0.00, 0, 2, 5, 50, '2023-12-11 11:44:25', '2023-12-11 11:44:25'),
(47, 'FORM V TERM HOSTEL FEES 2023/24', 725000.00, 0.00, 0, 2, 5, 50, '2023-12-11 11:45:48', '2023-12-11 11:45:48'),
(48, 'FORM V SECOND TERM NEW COMER SCHOOL FEES 2023/24', 810000.00, 0.00, 0, 1, 5, 50, '2023-12-11 11:49:24', '2023-12-11 11:50:07'),
(49, 'FORM V SECOND TERM NEW COMER HOSTEL AND SCHOOL FEES 2023/24', 1585000.00, 0.00, 0, 2, 5, 50, '2023-12-11 11:52:09', '2023-12-11 11:52:09'),
(50, 'FORM VI SCHOOL FEES 2023/24', 1420000.00, 0.00, 0, 1, 6, 50, '2023-12-11 12:21:02', '2023-12-11 12:21:02'),
(51, 'FORM VI TERM SCHOOL FEES 2023/24', 710000.00, 0.00, 0, 2, 6, 50, '2023-12-11 12:21:48', '2023-12-11 12:21:48'),
(52, 'FORM VI NEW COMER FIRST TERM SCHOOL FEES 2023/24', 1500000.00, 0.00, 0, 2, 6, 50, '2023-12-11 12:25:45', '2023-12-11 12:25:45'),
(54, 'FORM VI HOSTEL FEES 2023/24', 1550000.00, 0.00, 0, 2, 6, 50, '2023-12-11 12:30:26', '2023-12-11 12:30:26'),
(55, 'FORM VI TERM HOSTEL FEES 2023/24', 775000.00, 0.00, 0, 2, 6, 50, '2023-12-11 12:30:54', '2023-12-11 12:30:54'),
(57, 'FORM VI NEW COMER SECOND TERM SCHOO FEES 2023/24', 1085000.00, 0.00, 0, 2, 6, 50, '2023-12-11 12:41:11', '2023-12-11 12:41:11'),
(58, 'FORM I TERM SCHOOL FEES 2024', 500000.00, 0.00, 0, 2, 1, 50, '2023-12-11 12:54:50', '2023-12-11 12:54:50'),
(59, 'FORM I NEW COMER SECOND TERM SCHOOL FEES 2024', 692000.00, 0.00, 0, 2, 1, 50, '2023-12-11 12:56:05', '2023-12-11 12:56:05'),
(60, 'FORM I NEW COMER SECOND TERM SCHOOL AND HOSTEL FEES 2024', 1437000.00, 0.00, 0, 2, 1, 50, '2023-12-11 12:57:13', '2023-12-11 12:57:13'),
(61, 'FORM I HOSTEL  FEES 2024', 1420000.00, 0.00, 0, 2, 1, 50, '2023-12-11 12:58:21', '2023-12-11 12:58:21'),
(62, 'FORM I TERM HOSTEL  FEES 2024', 710000.00, 0.00, 0, 2, 1, 50, '2023-12-11 12:58:52', '2023-12-11 12:58:52'),
(63, 'FORM II TERM SCHOOL FEES', 572500.00, 0.00, 0, 2, 2, 50, '2023-12-11 13:12:46', '2023-12-11 13:12:46'),
(64, 'FORM II TERM HOSTEL FEES', 725000.00, 0.00, 0, 2, 2, 50, '2023-12-11 13:19:38', '2023-12-11 13:19:38'),
(65, 'FORM II SECOND TERM SCHOOL AND HOSTEL FEES 2024', 1590000.00, 0.00, 0, 2, 2, 50, '2023-12-11 13:21:31', '2023-12-11 13:21:31'),
(66, 'FORM II SECOND TERM SCHOOL FEES 2024', 865000.00, 0.00, 0, 2, 2, 50, '2023-12-11 13:22:10', '2023-12-11 13:22:10'),
(67, 'FORM II NEW COMER FIRST TERM SCHOOL FEES 2024', 1240000.00, 0.00, 0, 2, 2, 50, '2023-12-11 13:23:49', '2023-12-11 13:23:49'),
(68, 'FORM III TERM HOSTEL FEES', 725000.00, 0.00, 0, 2, 3, 50, '2023-12-11 13:32:18', '2023-12-11 13:32:18'),
(69, 'FORM III SECOND TERM SCHOOL AND HOSTEL FEES 2024', 1590000.00, 0.00, 0, 2, 3, 50, '2023-12-11 13:34:12', '2023-12-11 13:34:12'),
(70, 'FORM III SECOND TERM SCHOOL FEES 2024', 865000.00, 0.00, 0, 2, 3, 50, '2023-12-11 13:34:42', '2023-12-11 13:34:42'),
(71, 'FORM III FIRST TERM SCHOOL FEES 2024', 1255000.00, 0.00, 0, 2, 3, 50, '2023-12-11 13:35:56', '2023-12-11 13:35:56'),
(72, 'FORM IV TERM HOSTEL FEES 2024', 725000.00, 0.00, 0, 2, 4, 50, '2023-12-11 13:44:17', '2023-12-11 13:44:17'),
(73, 'FORM IV TERM SCHOOL FEES 2024', 667500.00, 0.00, 0, 2, 4, 50, '2023-12-11 13:45:03', '2023-12-11 13:45:03'),
(74, 'FORM IV NEW COMER SECOND TERM SCHOOL FEES 2024', 1035000.00, 0.00, 0, 2, 4, 50, '2023-12-11 13:46:48', '2023-12-11 13:50:08'),
(75, 'FORM IV NEW COMER SECOND TERM SCHOOL AND HOSTEL FEES 2024', 1760000.00, 0.00, 0, 2, 4, 50, '2023-12-11 13:47:41', '2023-12-11 13:50:35'),
(76, 'FORM IV NEW COMER FIRST TERM SCHOOL FEES 2024', 1435000.00, 0.00, 0, 2, 4, 50, '2023-12-11 13:52:03', '2023-12-11 13:52:03'),
(77, 'FORM IV NEW COMER FIRST TERM HOSTEL FEES 2024', 1475000.00, 0.00, 0, 2, 4, 50, '2023-12-11 13:54:56', '2023-12-11 13:54:56'),
(78, 'FORM IV NEW COMER TERM HOSTEL FEES 2024', 737500.00, 0.00, 0, 2, 4, 50, '2023-12-11 13:56:12', '2023-12-11 13:56:12');

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
(9, 18580.00, 13, 3, '2023-11-20 00:16:47', '2023-12-11 11:29:00'),
(14, 0.00, 22, 42, '2023-12-11 15:09:13', '2023-12-11 15:09:13'),
(15, 0.00, 23, 42, '2023-12-11 15:42:38', '2023-12-11 15:42:38'),
(16, 0.00, 24, 42, '2023-12-11 16:13:09', '2023-12-11 16:13:09'),
(17, 0.00, 25, 42, '2023-12-11 16:27:24', '2023-12-11 16:27:24'),
(18, 0.00, 26, 42, '2023-12-11 16:46:51', '2023-12-11 16:46:51'),
(19, 0.00, 27, 42, '2023-12-11 16:53:34', '2023-12-11 16:53:34'),
(20, 0.00, 28, 42, '2023-12-11 16:58:37', '2023-12-11 16:58:37'),
(21, 0.00, 29, 42, '2023-12-11 17:06:53', '2023-12-11 17:06:53'),
(22, 0.00, 30, 42, '2023-12-11 17:13:31', '2023-12-11 17:13:31'),
(23, 0.00, 31, 42, '2023-12-11 17:19:54', '2023-12-11 17:19:54'),
(24, 0.00, 32, 42, '2023-12-11 17:24:47', '2023-12-11 17:24:47'),
(25, 0.00, 33, 42, '2023-12-11 17:33:14', '2023-12-11 17:33:14'),
(26, 0.00, 34, 42, '2023-12-11 17:38:23', '2023-12-11 17:38:23'),
(27, 0.00, 35, 42, '2023-12-11 17:43:37', '2023-12-11 17:43:37'),
(28, 0.00, 36, 42, '2023-12-11 17:48:52', '2023-12-11 17:48:52'),
(29, 0.00, 37, 42, '2023-12-11 17:59:54', '2023-12-11 17:59:54'),
(30, 0.00, 38, 42, '2023-12-11 18:04:19', '2023-12-11 18:04:19'),
(31, 0.00, 39, 42, '2023-12-11 18:10:24', '2023-12-11 18:10:24'),
(32, 0.00, 40, 42, '2023-12-11 18:15:18', '2023-12-11 18:15:18'),
(33, 0.00, 41, 42, '2023-12-12 16:39:43', '2023-12-12 16:39:43'),
(34, 0.00, 42, 42, '2023-12-12 16:45:40', '2023-12-12 16:45:40'),
(35, 0.00, 43, 42, '2023-12-12 16:53:14', '2023-12-12 16:53:14'),
(36, 0.00, 44, 42, '2023-12-13 12:56:24', '2023-12-13 12:56:24'),
(37, 0.00, 45, 42, '2023-12-13 13:01:35', '2023-12-13 13:01:35'),
(38, 0.00, 46, 42, '2023-12-13 13:07:36', '2023-12-13 13:07:36'),
(39, 0.00, 47, 42, '2023-12-13 13:35:48', '2023-12-13 13:35:48'),
(40, 0.00, 48, 42, '2023-12-13 13:42:24', '2023-12-13 13:42:24'),
(41, 0.00, 49, 42, '2023-12-13 13:47:06', '2023-12-13 13:47:06'),
(42, 0.00, 50, 42, '2023-12-13 13:58:54', '2023-12-13 13:58:54'),
(43, 0.00, 51, 42, '2023-12-13 14:07:13', '2023-12-13 14:07:13'),
(44, 0.00, 52, 42, '2023-12-13 14:13:01', '2023-12-13 14:13:01'),
(45, 0.00, 53, 42, '2023-12-13 14:17:40', '2023-12-13 14:17:40'),
(46, 0.00, 54, 42, '2023-12-13 14:22:16', '2023-12-13 14:22:16'),
(47, 0.00, 55, 42, '2023-12-13 14:25:53', '2023-12-13 14:25:53'),
(48, 0.00, 56, 42, '2023-12-13 14:31:03', '2023-12-13 14:31:03'),
(49, 0.00, 57, 42, '2023-12-13 14:36:50', '2023-12-13 14:36:50'),
(50, 0.00, 58, 42, '2023-12-13 14:41:11', '2023-12-13 14:41:11'),
(51, 0.00, 59, 42, '2023-12-13 14:45:38', '2023-12-13 14:45:38'),
(52, 0.00, 60, 42, '2023-12-13 14:53:03', '2023-12-13 14:53:03'),
(53, 0.00, 61, 42, '2023-12-13 14:58:21', '2023-12-13 14:58:21'),
(54, 0.00, 62, 42, '2023-12-14 12:48:06', '2023-12-14 12:48:06'),
(55, 0.00, 63, 42, '2023-12-14 15:33:30', '2023-12-14 15:33:30'),
(56, 0.00, 64, 42, '2023-12-14 15:43:09', '2023-12-14 15:43:09'),
(57, 0.00, 65, 42, '2023-12-14 15:46:55', '2023-12-14 15:46:55'),
(58, 0.00, 66, 42, '2023-12-14 15:54:00', '2023-12-14 15:54:00'),
(59, 0.00, 67, 42, '2023-12-14 16:10:36', '2023-12-14 16:10:36'),
(60, 0.00, 68, 42, '2023-12-14 16:50:48', '2023-12-14 16:50:48'),
(61, 0.00, 69, 42, '2023-12-14 16:55:29', '2023-12-14 16:55:29'),
(62, 0.00, 70, 42, '2023-12-14 17:04:22', '2023-12-14 17:04:22'),
(63, 0.00, 71, 42, '2023-12-14 17:09:13', '2023-12-14 17:09:13');

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
(61, '2023', '20231210', 30000.00, 30000.00, 13, 22, 1, 3, 11, 1, NULL, '2023-12-11 13:02:43'),
(77, '2023', '2023', 1000000.00, 0.00, 13, 22, 1, 50, 22, 0, '2023-12-11 11:29:27', '2023-12-11 13:02:43'),
(78, '2024', '2024', 30000.00, 0.00, 22, 25, 2, 42, 11, 0, '2023-12-11 05:00:00', NULL),
(79, '2024', '2024', 1145000.00, 0.00, 22, 25, 2, 42, 26, 0, '2023-12-11 05:00:00', NULL),
(80, '2024', '2024', 30000.00, 0.00, 23, 27, 2, 42, 11, 0, '2023-12-11 05:00:00', NULL),
(81, '2024', '2024', 1145000.00, 0.00, 23, 27, 2, 42, 26, 0, '2023-12-11 05:00:00', NULL),
(82, '2024', '2024', 30000.00, 0.00, 24, 26, 2, 42, 11, 0, '2023-12-11 05:00:00', NULL),
(83, '2024', '2024', 1145000.00, 0.00, 24, 26, 2, 42, 26, 0, '2023-12-11 05:00:00', NULL),
(84, '2024', '2024', 30000.00, 0.00, 25, 25, 2, 42, 11, 0, '2023-12-11 05:00:00', NULL),
(85, '2024', '2024', 1145000.00, 0.00, 25, 25, 2, 42, 26, 0, '2023-12-11 05:00:00', NULL),
(86, '2024', '2024', 30000.00, 0.00, 26, 27, 2, 42, 11, 0, '2023-12-11 05:00:00', NULL),
(87, '2024', '2024', 1145000.00, 0.00, 26, 27, 2, 42, 26, 0, '2023-12-11 05:00:00', NULL),
(88, '2024', '2024', 30000.00, 0.00, 27, 26, 2, 42, 11, 0, '2023-12-11 05:00:00', NULL),
(89, '2024', '2024', 1145000.00, 0.00, 27, 26, 2, 42, 26, 0, '2023-12-11 05:00:00', NULL),
(90, '2024', '2024', 30000.00, 0.00, 28, 27, 2, 42, 11, 0, '2023-12-11 05:00:00', NULL),
(91, '2024', '2024', 1145000.00, 0.00, 28, 27, 2, 42, 26, 0, '2023-12-11 05:00:00', NULL),
(92, '2024', '2024', 30000.00, 0.00, 29, 27, 2, 42, 11, 0, '2023-12-11 05:00:00', NULL),
(93, '2024', '2024', 1145000.00, 0.00, 29, 27, 2, 42, 26, 0, '2023-12-11 05:00:00', NULL),
(94, '2024', '2024', 30000.00, 0.00, 30, 26, 2, 42, 11, 0, '2023-12-11 05:00:00', NULL),
(95, '2024', '2024', 1145000.00, 0.00, 30, 26, 2, 42, 26, 0, '2023-12-11 05:00:00', NULL),
(96, '2024', '2024', 30000.00, 0.00, 31, 26, 2, 42, 11, 0, '2023-12-11 05:00:00', NULL),
(97, '2024', '2024', 1145000.00, 0.00, 31, 26, 2, 42, 26, 0, '2023-12-11 05:00:00', NULL),
(98, '2024', '2024', 30000.00, 0.00, 32, 27, 2, 42, 11, 0, '2023-12-11 05:00:00', NULL),
(99, '2024', '2024', 1145000.00, 0.00, 32, 27, 2, 42, 26, 0, '2023-12-11 05:00:00', NULL),
(100, '2024', '2024', 30000.00, 0.00, 33, 26, 2, 42, 11, 0, '2023-12-11 05:00:00', NULL),
(101, '2024', '2024', 1145000.00, 0.00, 33, 26, 2, 42, 26, 0, '2023-12-11 05:00:00', NULL),
(102, '2024', '2024', 30000.00, 0.00, 34, 26, 2, 42, 11, 0, '2023-12-11 05:00:00', NULL),
(103, '2024', '2024', 1145000.00, 0.00, 34, 26, 2, 42, 26, 0, '2023-12-11 05:00:00', NULL),
(104, '2024', '2024', 30000.00, 0.00, 35, 25, 2, 42, 11, 0, '2023-12-11 05:00:00', '2023-12-16 01:49:54'),
(105, '2024', '2024', 1145000.00, 0.00, 35, 25, 2, 42, 26, 0, '2023-12-11 05:00:00', '2023-12-16 01:49:54'),
(106, '2024', '2024', 30000.00, 0.00, 36, 25, 2, 42, 11, 0, '2023-12-11 05:00:00', NULL),
(107, '2024', '2024', 1145000.00, 0.00, 36, 25, 2, 42, 26, 0, '2023-12-11 05:00:00', NULL),
(108, '2024', '2024', 30000.00, 0.00, 37, 26, 2, 42, 11, 0, '2023-12-11 05:00:00', NULL),
(109, '2024', '2024', 1145000.00, 0.00, 37, 26, 2, 42, 26, 0, '2023-12-11 05:00:00', NULL),
(110, '2024', '2024', 30000.00, 0.00, 38, 25, 2, 42, 11, 0, '2023-12-11 05:00:00', NULL),
(111, '2024', '2024', 1145000.00, 0.00, 38, 25, 2, 42, 26, 0, '2023-12-11 05:00:00', NULL),
(112, '2024', '2024', 30000.00, 0.00, 39, 27, 2, 42, 11, 0, '2023-12-11 05:00:00', NULL),
(113, '2024', '2024', 1145000.00, 0.00, 39, 27, 2, 42, 26, 0, '2023-12-11 05:00:00', NULL),
(114, '2024', '2024', 30000.00, 0.00, 40, 27, 2, 42, 11, 0, '2023-12-11 05:00:00', NULL),
(115, '2024', '2024', 1145000.00, 0.00, 40, 27, 2, 42, 26, 0, '2023-12-11 05:00:00', NULL),
(116, '2024', '2024', 30000.00, 0.00, 41, 25, 2, 42, 11, 0, '2023-12-12 05:00:00', NULL),
(117, '2024', '2024', 1145000.00, 0.00, 41, 25, 2, 42, 26, 0, '2023-12-12 05:00:00', NULL),
(118, '2024', '2024', 30000.00, 0.00, 42, 25, 2, 42, 11, 0, '2023-12-12 05:00:00', NULL),
(119, '2024', '2024', 1145000.00, 0.00, 42, 25, 2, 42, 26, 0, '2023-12-12 05:00:00', NULL),
(120, '2024', '2024', 30000.00, 0.00, 43, 25, 2, 42, 11, 0, '2023-12-12 05:00:00', NULL),
(121, '2024', '2024', 1145000.00, 0.00, 43, 25, 2, 42, 26, 0, '2023-12-12 05:00:00', NULL),
(122, '2024', '2024', 30000.00, 0.00, 44, 25, 2, 42, 11, 0, '2023-12-13 05:00:00', NULL),
(123, '2024', '2024', 1145000.00, 0.00, 44, 25, 2, 42, 26, 0, '2023-12-13 05:00:00', NULL),
(124, '2024', '2024', 30000.00, 0.00, 45, 25, 2, 42, 11, 0, '2023-12-13 05:00:00', NULL),
(125, '2024', '2024', 1145000.00, 0.00, 45, 25, 2, 42, 26, 0, '2023-12-13 05:00:00', NULL),
(126, '2024', '2024', 30000.00, 0.00, 46, 25, 2, 42, 11, 0, '2023-12-13 05:00:00', NULL),
(127, '2024', '2024', 1145000.00, 0.00, 46, 25, 2, 42, 26, 0, '2023-12-13 05:00:00', NULL),
(128, '2024', '2024', 30000.00, 0.00, 47, 25, 2, 42, 11, 0, '2023-12-13 05:00:00', NULL),
(129, '2024', '2024', 1145000.00, 0.00, 47, 25, 2, 42, 26, 0, '2023-12-13 05:00:00', NULL),
(130, '2024', '2024', 30000.00, 0.00, 48, 25, 2, 42, 11, 0, '2023-12-13 05:00:00', NULL),
(131, '2024', '2024', 1145000.00, 0.00, 48, 25, 2, 42, 26, 0, '2023-12-13 05:00:00', NULL),
(132, '2024', '2024', 30000.00, 0.00, 49, 25, 2, 42, 11, 0, '2023-12-13 05:00:00', NULL),
(133, '2024', '2024', 1145000.00, 0.00, 49, 25, 2, 42, 26, 0, '2023-12-13 05:00:00', NULL),
(134, '2024', '2024', 30000.00, 0.00, 50, 25, 2, 42, 11, 0, '2023-12-13 05:00:00', NULL),
(135, '2024', '2024', 1145000.00, 0.00, 50, 25, 2, 42, 26, 0, '2023-12-13 05:00:00', NULL),
(136, '2024', '2024', 30000.00, 0.00, 51, 25, 2, 42, 11, 0, '2023-12-13 05:00:00', NULL),
(137, '2024', '2024', 1145000.00, 0.00, 51, 25, 2, 42, 26, 0, '2023-12-13 05:00:00', NULL),
(138, '2024', '2024', 30000.00, 0.00, 52, 25, 2, 42, 11, 0, '2023-12-13 05:00:00', NULL),
(139, '2024', '2024', 1145000.00, 0.00, 52, 25, 2, 42, 26, 0, '2023-12-13 05:00:00', NULL),
(140, '2024', '2024', 30000.00, 0.00, 53, 25, 2, 42, 11, 0, '2023-12-13 05:00:00', NULL),
(141, '2024', '2024', 1145000.00, 0.00, 53, 25, 2, 42, 26, 0, '2023-12-13 05:00:00', NULL),
(142, '2024', '2024', 30000.00, 0.00, 54, 25, 2, 42, 11, 0, '2023-12-13 05:00:00', NULL),
(143, '2024', '2024', 1145000.00, 0.00, 54, 25, 2, 42, 26, 0, '2023-12-13 05:00:00', NULL),
(144, '2024', '2024', 30000.00, 0.00, 55, 25, 2, 42, 11, 0, '2023-12-13 05:00:00', NULL),
(145, '2024', '2024', 1145000.00, 0.00, 55, 25, 2, 42, 26, 0, '2023-12-13 05:00:00', NULL),
(146, '2024', '2024', 30000.00, 0.00, 56, 25, 2, 42, 11, 0, '2023-12-13 05:00:00', NULL),
(147, '2024', '2024', 1145000.00, 0.00, 56, 25, 2, 42, 26, 0, '2023-12-13 05:00:00', NULL),
(148, '2024', '2024', 30000.00, 0.00, 57, 25, 2, 42, 11, 0, '2023-12-13 05:00:00', NULL),
(149, '2024', '2024', 1145000.00, 0.00, 57, 25, 2, 42, 26, 0, '2023-12-13 05:00:00', NULL),
(150, '2024', '2024', 30000.00, 0.00, 58, 25, 2, 42, 11, 0, '2023-12-13 05:00:00', NULL),
(151, '2024', '2024', 1145000.00, 0.00, 58, 25, 2, 42, 26, 0, '2023-12-13 05:00:00', NULL),
(152, '2024', '2024', 30000.00, 0.00, 59, 25, 2, 42, 11, 0, '2023-12-13 05:00:00', NULL),
(153, '2024', '2024', 1145000.00, 0.00, 59, 25, 2, 42, 26, 0, '2023-12-13 05:00:00', NULL),
(154, '2024', '2024', 30000.00, 0.00, 60, 25, 2, 42, 11, 0, '2023-12-13 05:00:00', NULL),
(155, '2024', '2024', 1145000.00, 0.00, 60, 25, 2, 42, 26, 0, '2023-12-13 05:00:00', NULL),
(156, '2024', '2024', 30000.00, 0.00, 61, 25, 2, 42, 11, 0, '2023-12-13 05:00:00', NULL),
(157, '2024', '2024', 1145000.00, 0.00, 61, 25, 2, 42, 26, 0, '2023-12-13 05:00:00', NULL),
(158, '2024', '2024', 30000.00, 0.00, 62, 26, 2, 42, 11, 0, '2023-12-14 05:00:00', NULL),
(159, '2024', '2024', 1145000.00, 0.00, 62, 26, 2, 42, 26, 0, '2023-12-14 05:00:00', NULL),
(160, '2024', '2024', 30000.00, 0.00, 63, 26, 2, 42, 11, 0, '2023-12-14 05:00:00', NULL),
(161, '2024', '2024', 1145000.00, 0.00, 63, 26, 2, 42, 26, 0, '2023-12-14 05:00:00', NULL),
(162, '2024', '2024', 30000.00, 0.00, 64, 26, 2, 42, 11, 0, '2023-12-14 05:00:00', NULL),
(163, '2024', '2024', 1145000.00, 0.00, 64, 26, 2, 42, 26, 0, '2023-12-14 05:00:00', NULL),
(164, '2024', '2024', 30000.00, 0.00, 65, 25, 2, 42, 11, 0, '2023-12-14 05:00:00', NULL),
(165, '2024', '2024', 1145000.00, 0.00, 65, 25, 2, 42, 26, 0, '2023-12-14 05:00:00', NULL),
(166, '2024', '2024', 30000.00, 0.00, 66, 27, 2, 42, 11, 0, '2023-12-14 05:00:00', NULL),
(167, '2024', '2024', 1145000.00, 0.00, 66, 27, 2, 42, 26, 0, '2023-12-14 05:00:00', NULL),
(168, '2024', '2024', 30000.00, 0.00, 67, 27, 2, 42, 11, 0, '2023-12-14 05:00:00', NULL),
(169, '2024', '2024', 1145000.00, 0.00, 67, 27, 2, 42, 26, 0, '2023-12-14 05:00:00', NULL),
(170, '2024', '2024', 30000.00, 0.00, 68, 27, 2, 42, 11, 0, '2023-12-14 05:00:00', NULL),
(171, '2024', '2024', 1145000.00, 0.00, 68, 27, 2, 42, 26, 0, '2023-12-14 05:00:00', NULL),
(172, '2024', '2024', 30000.00, 0.00, 69, 26, 2, 42, 11, 0, '2023-12-14 05:00:00', NULL),
(173, '2024', '2024', 1145000.00, 0.00, 69, 26, 2, 42, 26, 0, '2023-12-14 05:00:00', NULL),
(174, '2024', '2024', 30000.00, 0.00, 70, 27, 2, 42, 11, 0, '2023-12-14 05:00:00', NULL),
(175, '2024', '2024', 1145000.00, 0.00, 70, 27, 2, 42, 26, 0, '2023-12-14 05:00:00', NULL),
(176, '2024', '2024', 30000.00, 0.00, 71, 27, 2, 42, 11, 0, '2023-12-14 05:00:00', NULL),
(177, '2024', '2024', 1145000.00, 0.00, 71, 27, 2, 42, 26, 0, '2023-12-14 05:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fee_statuses`
--

CREATE TABLE `fee_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_statuses`
--

INSERT INTO `fee_statuses` (`id`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Compulsory', 'it covers majority id = 1', '2023-11-25 04:36:40', '2023-11-25 04:36:40'),
(2, 'Not compulsory', 'cover few number of students id = 2', '2023-11-25 04:39:13', '2023-11-25 04:39:13'),
(3, 'Peanut', 'This cover less allow to edit amount id = 3', NULL, NULL);

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
(9, 'A', 'Excellent', 1, 1, 75, 100, 41, '2023-11-28 13:27:16', '2023-11-28 13:31:09'),
(10, 'A', 'Excellent', 1, 2, 75, 100, 41, '2023-11-28 13:28:54', '2023-11-28 13:31:40'),
(11, 'B', 'Very Good', 2, 1, 65, 74, 41, '2023-11-28 13:32:31', '2023-11-28 13:32:31'),
(12, 'B', 'Very Good', 2, 2, 65, 74, 41, '2023-11-28 13:32:36', '2023-11-28 13:32:36'),
(13, 'B', 'Very Good', 2, 3, 65, 74, 41, '2023-11-28 13:32:41', '2023-11-28 13:32:41'),
(14, 'B', 'Very Good', 2, 4, 65, 74, 41, '2023-11-28 13:32:46', '2023-11-28 13:32:46'),
(15, 'A', 'Excellent', 1, 3, 75, 100, 41, '2023-11-28 13:34:07', '2023-11-28 13:34:07'),
(16, 'A', 'Excellent', 1, 4, 75, 100, 41, '2023-11-28 13:34:16', '2023-11-28 13:34:16'),
(17, 'C', 'Good', 3, 1, 45, 64, 41, '2023-11-28 13:35:56', '2023-11-28 13:35:56'),
(18, 'C', 'Good', 3, 2, 45, 64, 41, '2023-11-28 13:36:02', '2023-11-28 13:36:02'),
(19, 'C', 'Good', 3, 3, 45, 64, 41, '2023-11-28 13:36:07', '2023-11-28 13:36:07'),
(20, 'C', 'Good', 3, 4, 45, 64, 41, '2023-11-28 13:36:12', '2023-11-28 13:36:12'),
(21, 'D', 'Pass', 4, 1, 30, 44, 41, '2023-11-28 13:37:10', '2023-12-08 22:06:47'),
(22, 'D', 'Pass', 4, 2, 30, 44, 41, '2023-11-28 13:37:15', '2023-11-28 13:37:15'),
(23, 'D', 'Pass', 4, 3, 30, 44, 41, '2023-11-28 13:37:21', '2023-11-28 13:37:21'),
(24, 'D', 'Pass', 4, 4, 30, 44, 41, '2023-11-28 13:37:26', '2023-11-28 13:37:26'),
(26, 'F', 'Fail', 5, 2, 0, 39, 41, '2023-12-06 12:09:31', '2023-12-06 12:09:31'),
(27, 'F', 'Fail', 5, 2, 0, 29, 41, '2023-12-06 12:09:44', '2023-12-06 12:09:44'),
(28, 'F', 'Fail', 5, 1, 0, 29, 41, '2023-12-06 12:09:53', '2023-12-06 12:09:53'),
(29, 'F', 'Fail', 5, 3, 0, 29, 41, '2023-12-06 12:10:20', '2023-12-06 12:10:20'),
(30, 'F', 'Fail', 5, 4, 0, 29, 41, '2023-12-06 12:10:29', '2023-12-06 12:10:29'),
(31, 'A', 'Excellent', 1, 5, 80, 100, 41, '2023-12-06 12:14:32', '2023-12-06 12:14:32'),
(32, 'A', 'Excellent', 1, 6, 80, 100, 41, '2023-12-06 12:14:52', '2023-12-06 12:14:52'),
(33, 'B', 'Very Good', 2, 5, 70, 79, 41, '2023-12-08 21:58:38', '2023-12-08 21:58:38'),
(34, 'B', 'Very Good', 2, 6, 70, 79, 41, '2023-12-08 21:58:47', '2023-12-08 21:58:47'),
(35, 'C', 'Good', 3, 5, 60, 69, 41, '2023-12-08 22:00:04', '2023-12-08 22:00:04'),
(36, 'C', 'Good', 3, 6, 60, 69, 41, '2023-12-08 22:00:13', '2023-12-08 22:00:13'),
(37, 'D', 'Pass', 4, 6, 50, 59, 41, '2023-12-08 22:01:08', '2023-12-08 22:01:08'),
(38, 'D', 'Pass', 4, 5, 50, 59, 41, '2023-12-08 22:01:13', '2023-12-08 22:01:13'),
(39, 'E', 'Satisfactory', 5, 5, 40, 49, 41, '2023-12-08 22:07:46', '2023-12-08 22:07:46'),
(40, 'E', 'Satisfactory', 5, 6, 40, 49, 41, '2023-12-08 22:08:05', '2023-12-08 22:08:05'),
(41, 'S', 'Satisfactory', 6, 6, 35, 39, 41, '2023-12-08 22:09:52', '2023-12-08 22:09:52'),
(42, 'S', 'Satisfactory', 6, 5, 35, 39, 41, '2023-12-08 22:10:01', '2023-12-08 22:10:01'),
(43, 'F', 'Fail', 7, 5, 0, 34, 41, '2023-12-08 22:10:46', '2023-12-08 22:12:36'),
(44, 'F', 'Fail', 7, 6, 0, 34, 41, '2023-12-08 22:11:00', '2023-12-08 22:12:10');

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

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level` varchar(255) NOT NULL,
  `fees` varchar(220) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `level`, `fees`, `created_at`, `updated_at`) VALUES
(0, 'All levels', '0', NULL, NULL),
(1, 'Form I', '0', NULL, NULL),
(2, 'Form II', '0', NULL, NULL),
(3, 'Form III', '0', NULL, NULL),
(4, 'Form IV', '0', NULL, NULL),
(5, 'Form V', '0', NULL, NULL),
(6, 'Form VI', '0', NULL, NULL),
(7, 'O-Level', '0', NULL, NULL),
(8, 'A-Level', '0', NULL, NULL);

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
(170, 'Create the subject by the name of hisory', 3, '2023-11-19 16:19:31', '2023-11-19 16:19:31'),
(171, 'Delete the subject by the name of hisory, its id was 20', 3, '2023-11-19 16:19:42', '2023-11-19 16:19:42'),
(172, 'Create the fee by the name of Registration fee', 3, '2023-11-19 23:27:12', '2023-11-19 23:27:12'),
(173, 'Create the subject by the name of biology', 3, '2023-11-19 23:27:39', '2023-11-19 23:27:39'),
(174, 'Create the subject by the name of physics', 3, '2023-11-19 23:27:53', '2023-11-19 23:27:53'),
(175, 'Create the course by the name of PB', 3, '2023-11-19 23:28:19', '2023-11-19 23:28:19'),
(176, 'Create the classname by the name of A1', 3, '2023-11-19 23:28:58', '2023-11-19 23:28:58'),
(177, 'Create the classname by the name of V PB', 3, '2023-11-19 23:36:54', '2023-11-19 23:36:54'),
(178, 'Class edited from the name of V PB to V PB', 3, '2023-11-20 00:20:08', '2023-11-20 00:20:08'),
(179, 'Class edited from the name of A1 to A1', 3, '2023-11-20 00:20:22', '2023-11-20 00:20:22'),
(180, 'Create the subject by the name of chemistry', 26, '2023-11-20 11:22:27', '2023-11-20 11:22:27'),
(181, 'Create the subject by the name of civics', 26, '2023-11-20 11:22:57', '2023-11-20 11:22:57'),
(182, 'Create the subject by the name of history', 26, '2023-11-20 11:23:19', '2023-11-20 11:23:19'),
(183, 'Create the subject by the name of kiswahili', 26, '2023-11-20 11:23:43', '2023-11-20 11:23:43'),
(184, 'Create the subject by the name of geography', 26, '2023-11-20 11:24:13', '2023-11-20 11:24:13'),
(185, 'Create the subject by the name of english', 26, '2023-11-20 11:24:34', '2023-11-20 11:24:34'),
(186, 'Create the subject by the name of basic mathematics', 26, '2023-11-20 11:25:05', '2023-11-20 11:25:05'),
(187, 'Create the subject by the name of commerce', 26, '2023-11-20 11:25:43', '2023-11-20 11:25:43'),
(188, 'Create the subject by the name of computer', 26, '2023-11-20 11:26:49', '2023-11-20 11:26:49'),
(189, 'Create the subject by the name of advanced mathematics', 26, '2023-11-20 11:28:19', '2023-11-20 11:28:19'),
(190, 'Create the subject by the name of basic applied mathematics', 26, '2023-11-20 11:28:57', '2023-11-20 11:28:57'),
(191, 'Create the subject by the name of economics', 26, '2023-11-20 11:29:31', '2023-11-20 11:29:31'),
(192, 'Create the subject by the name of french', 26, '2023-11-20 11:29:59', '2023-11-20 11:29:59'),
(193, 'Create the subject by the name of music', 26, '2023-11-20 11:30:17', '2023-11-20 11:30:17'),
(194, 'Create the subject by the name of general studies', 26, '2023-11-20 11:31:03', '2023-11-20 11:31:03'),
(195, 'Create the department by the name of Accademic', 3, '2023-11-23 06:35:29', '2023-11-23 06:35:29'),
(196, 'Create the department by the name of Admission', 3, '2023-11-23 06:35:40', '2023-11-23 06:35:40'),
(197, 'Create the department by the name of Finance', 3, '2023-11-23 06:35:56', '2023-11-23 06:35:56'),
(198, 'Create the fee by the name of Form I tuition fee', 3, '2023-11-24 06:13:14', '2023-11-24 06:13:14'),
(199, 'Fee edited from the name of Form I tuition fee to Form I tuition fee', 3, '2023-11-24 06:33:34', '2023-11-24 06:33:34'),
(200, 'Create the classname by the name of A2', 3, '2023-11-24 07:15:57', '2023-11-24 07:15:57'),
(201, 'Class edited from the name of A1 to A1', 3, '2023-11-24 07:17:28', '2023-11-24 07:17:28'),
(202, 'Create the fee by the name of O-level examination fee', 3, '2023-11-24 08:46:05', '2023-11-24 08:46:05'),
(203, 'Create the fee by the name of Hostel fees', 3, '2023-11-24 08:51:33', '2023-11-24 08:51:33'),
(204, 'Delete the Fee by the name of Hostel fees, its id was 14', 3, '2023-11-24 08:52:03', '2023-11-24 08:52:03'),
(205, 'Create the fee by the name of Hostel fees', 3, '2023-11-24 08:52:14', '2023-11-24 08:52:14'),
(206, 'Create the fee by the name of Form I tution fee from second quoter', 3, '2023-11-24 08:53:26', '2023-11-24 08:53:26'),
(207, 'Fee edited from the name of Form I tution fee from second quoter to Form I tution fee from second quoter', 3, '2023-11-25 02:37:27', '2023-11-25 02:37:27'),
(208, 'Fee edited from the name of Hostel fees to Hostel fees', 3, '2023-11-25 02:40:39', '2023-11-25 02:40:39'),
(209, 'Create the fee by the name of O-level examinatio fee Penult per month', 3, '2023-11-25 04:05:18', '2023-11-25 04:05:18'),
(210, 'Create the fee by the name of Form V tuition fee', 3, '2023-11-25 13:34:33', '2023-11-25 13:34:33'),
(211, 'Create the fee by the name of Examinnation fee', 3, '2023-11-25 13:35:20', '2023-11-25 13:35:20'),
(212, 'Delete the department by the name of Mathematics, its id was 4', 3, '2023-11-26 10:41:28', '2023-11-26 10:41:28'),
(213, 'Create the department by the name of Mechanics', 3, '2023-11-27 21:28:37', '2023-11-27 21:28:37'),
(214, 'Delete the department by the name of Mechanics, its id was 19', 3, '2023-11-27 21:28:50', '2023-11-27 21:28:50'),
(215, 'Create the fee by the name of anaza fee', 3, '2023-11-28 07:15:18', '2023-11-28 07:15:18'),
(216, 'Fee edited from the name of anaza fee to anaza fee', 3, '2023-11-28 07:16:00', '2023-11-28 07:16:00'),
(217, 'Delete the Fee by the name of anaza fee, its id was 20', 3, '2023-11-28 07:16:18', '2023-11-28 07:16:18'),
(218, 'Create the subject by the name of dini', 3, '2023-11-28 07:33:42', '2023-11-28 07:33:42'),
(219, 'subject edited from the name of dini to dini', 3, '2023-11-28 07:34:11', '2023-11-28 07:34:11'),
(220, 'Course edited from the name of  to PGM', 3, '2023-11-28 07:47:38', '2023-11-28 07:47:38'),
(221, 'Delete the subject by the name of dini, its id was 38', 3, '2023-11-28 07:48:36', '2023-11-28 07:48:36'),
(222, 'Create the classname by the name of a3', 3, '2023-11-28 07:51:21', '2023-11-28 07:51:21'),
(223, 'Class edited from the name of a3 to a3', 3, '2023-11-28 08:00:58', '2023-11-28 08:00:58'),
(224, 'Delete the classname by the name of a3, its id was 23', 3, '2023-11-28 08:02:00', '2023-11-28 08:02:00'),
(225, 'Create the grade by the name of A', 3, '2023-11-28 08:02:54', '2023-11-28 08:02:54'),
(226, 'Class edited from the name of A to A', 3, '2023-11-28 08:03:09', '2023-11-28 08:03:09'),
(227, 'Delete the grade by the name of A, its id was 8', 3, '2023-11-28 08:03:16', '2023-11-28 08:03:16'),
(228, 'Create the department by the name of FIESTA', 3, '2023-11-28 08:08:07', '2023-11-28 08:08:07'),
(229, 'Delete the department by the name of FIESTA, its id was 20', 3, '2023-11-28 08:13:38', '2023-11-28 08:13:38'),
(230, 'subject edited from the name of general studies to general studies', 41, '2023-11-28 13:22:42', '2023-11-28 13:22:42'),
(231, 'Class edited from the name of V PB to PGM', 41, '2023-11-28 13:25:24', '2023-11-28 13:25:24'),
(232, 'Create the grade by the name of A', 41, '2023-11-28 13:27:16', '2023-11-28 13:27:16'),
(233, 'Create the grade by the name of A', 41, '2023-11-28 13:28:54', '2023-11-28 13:28:54'),
(234, 'Class edited from the name of A to A', 41, '2023-11-28 13:31:09', '2023-11-28 13:31:09'),
(235, 'Class edited from the name of A to A', 41, '2023-11-28 13:31:40', '2023-11-28 13:31:40'),
(236, 'Create the grade by the name of B', 41, '2023-11-28 13:32:31', '2023-11-28 13:32:31'),
(237, 'Create the grade by the name of B', 41, '2023-11-28 13:32:36', '2023-11-28 13:32:36'),
(238, 'Create the grade by the name of B', 41, '2023-11-28 13:32:41', '2023-11-28 13:32:41'),
(239, 'Create the grade by the name of B', 41, '2023-11-28 13:32:46', '2023-11-28 13:32:46'),
(240, 'Create the grade by the name of A', 41, '2023-11-28 13:34:07', '2023-11-28 13:34:07'),
(241, 'Create the grade by the name of A', 41, '2023-11-28 13:34:16', '2023-11-28 13:34:16'),
(242, 'Create the grade by the name of C', 41, '2023-11-28 13:35:56', '2023-11-28 13:35:56'),
(243, 'Create the grade by the name of C', 41, '2023-11-28 13:36:02', '2023-11-28 13:36:02'),
(244, 'Create the grade by the name of C', 41, '2023-11-28 13:36:07', '2023-11-28 13:36:07'),
(245, 'Create the grade by the name of C', 41, '2023-11-28 13:36:12', '2023-11-28 13:36:12'),
(246, 'Create the grade by the name of D', 41, '2023-11-28 13:37:10', '2023-11-28 13:37:10'),
(247, 'Create the grade by the name of D', 41, '2023-11-28 13:37:15', '2023-11-28 13:37:15'),
(248, 'Create the grade by the name of D', 41, '2023-11-28 13:37:21', '2023-11-28 13:37:21'),
(249, 'Create the grade by the name of D', 41, '2023-11-28 13:37:26', '2023-11-28 13:37:26'),
(250, 'subject edited from the name of basic applied mathematics to basic applied mathematics', 41, '2023-11-30 13:09:26', '2023-11-30 13:09:26'),
(251, 'subject edited from the name of commerce to commerce', 41, '2023-11-30 13:10:02', '2023-11-30 13:10:02'),
(252, 'subject edited from the name of advanced mathematics to advanced mathematics', 41, '2023-11-30 13:11:50', '2023-11-30 13:11:50'),
(253, 'subject edited from the name of economics to economics', 41, '2023-11-30 13:13:02', '2023-11-30 13:13:02'),
(254, 'subject edited from the name of general studies to general studies', 41, '2023-11-30 13:13:24', '2023-11-30 13:13:24'),
(255, 'subject edited from the name of computer to computer', 41, '2023-11-30 13:13:56', '2023-11-30 13:13:56'),
(256, 'subject edited from the name of basic mathematics to basic mathematics', 41, '2023-11-30 13:14:36', '2023-11-30 13:14:36'),
(257, 'subject edited from the name of french to french', 41, '2023-11-30 13:15:04', '2023-11-30 13:15:04'),
(258, 'subject edited from the name of civics to civics', 41, '2023-11-30 13:15:24', '2023-11-30 13:15:24'),
(259, 'subject edited from the name of english to english', 3, '2023-12-01 14:07:21', '2023-12-01 14:07:21'),
(260, 'subject edited from the name of kiswahili to kiswahili', 3, '2023-12-01 14:07:32', '2023-12-01 14:07:32'),
(261, 'Create the subject by the name of history', 3, '2023-12-01 14:08:36', '2023-12-01 14:08:36'),
(262, 'Create the subject by the name of Geography', 3, '2023-12-04 12:22:35', '2023-12-04 12:22:35'),
(263, 'subject edited from the name of biology to biology', 41, '2023-12-06 11:30:38', '2023-12-06 11:30:38'),
(264, 'subject edited from the name of physics to physics', 41, '2023-12-06 11:30:49', '2023-12-06 11:30:49'),
(265, 'subject edited from the name of physics to physics', 41, '2023-12-06 11:31:10', '2023-12-06 11:31:10'),
(266, 'subject edited from the name of chemistry to chemistry', 41, '2023-12-06 11:31:28', '2023-12-06 11:31:28'),
(267, 'subject edited from the name of civics to civics', 41, '2023-12-06 11:31:46', '2023-12-06 11:31:46'),
(268, 'subject edited from the name of history to history', 41, '2023-12-06 11:33:02', '2023-12-06 11:33:02'),
(269, 'subject edited from the name of kiswahili to kiswahili', 41, '2023-12-06 11:33:25', '2023-12-06 11:33:25'),
(270, 'subject edited from the name of geography to geography', 41, '2023-12-06 11:33:45', '2023-12-06 11:33:45'),
(271, 'subject edited from the name of commerce to commerce', 41, '2023-12-06 11:34:25', '2023-12-06 11:34:25'),
(272, 'subject edited from the name of history to history', 41, '2023-12-06 11:40:48', '2023-12-06 11:40:48'),
(273, 'subject edited from the name of Geography to Geography', 41, '2023-12-06 11:41:20', '2023-12-06 11:41:20'),
(274, 'Create the subject by the name of Book Keeping', 41, '2023-12-06 11:43:53', '2023-12-06 11:43:53'),
(275, 'subject edited from the name of computer to Information & Compuer Studies', 41, '2023-12-06 11:46:11', '2023-12-06 11:46:11'),
(276, 'Create the grade by the name of F', 41, '2023-12-06 12:09:18', '2023-12-06 12:09:18'),
(277, 'Create the grade by the name of F', 41, '2023-12-06 12:09:31', '2023-12-06 12:09:31'),
(278, 'Create the grade by the name of F', 41, '2023-12-06 12:09:44', '2023-12-06 12:09:44'),
(279, 'Create the grade by the name of F', 41, '2023-12-06 12:09:53', '2023-12-06 12:09:53'),
(280, 'Delete the grade by the name of F, its id was 25', 41, '2023-12-06 12:10:03', '2023-12-06 12:10:03'),
(281, 'Create the grade by the name of F', 41, '2023-12-06 12:10:20', '2023-12-06 12:10:20'),
(282, 'Create the grade by the name of F', 41, '2023-12-06 12:10:29', '2023-12-06 12:10:29'),
(283, 'Create the grade by the name of A', 41, '2023-12-06 12:14:32', '2023-12-06 12:14:32'),
(284, 'Create the grade by the name of A', 41, '2023-12-06 12:14:52', '2023-12-06 12:14:52'),
(285, 'Create the subject by the name of chemistry', 41, '2023-12-06 12:58:05', '2023-12-06 12:58:05'),
(286, 'Create the subject by the name of commerce', 41, '2023-12-06 12:58:42', '2023-12-06 12:58:42'),
(287, 'Create the subject by the name of Accountancy', 41, '2023-12-06 12:59:31', '2023-12-06 12:59:31'),
(288, 'Create the subject by the name of physics', 41, '2023-12-06 13:00:08', '2023-12-06 13:00:08'),
(289, 'Delete the subject by the name of economics, its id was 34', 41, '2023-12-06 13:06:40', '2023-12-06 13:06:40'),
(290, 'Create the subject by the name of Economics', 41, '2023-12-06 13:07:42', '2023-12-06 13:07:42'),
(291, 'Create the subject by the name of Economics', 41, '2023-12-06 13:07:42', '2023-12-06 13:07:42'),
(292, 'Create the subject by the name of Biology', 41, '2023-12-06 13:08:10', '2023-12-06 13:08:10'),
(293, 'Create the subject by the name of Kiswahili', 41, '2023-12-06 13:08:37', '2023-12-06 13:08:37'),
(294, 'Delete the subject by the name of english, its id was 28', 41, '2023-12-06 13:13:34', '2023-12-06 13:13:34'),
(295, 'Delete the subject by the name of english, its id was 28', 41, '2023-12-06 13:13:34', '2023-12-06 13:13:34'),
(296, 'Create the subject by the name of English Language', 41, '2023-12-06 13:14:52', '2023-12-06 13:14:52'),
(297, 'subject edited from the name of geography to geography', 41, '2023-12-06 13:15:57', '2023-12-06 13:15:57'),
(298, 'Create the subject by the name of English', 41, '2023-12-06 13:16:30', '2023-12-06 13:16:30'),
(299, 'Create the fee by the name of late commer penuts', 3, '2023-12-07 11:26:48', '2023-12-07 11:26:48'),
(300, 'Delete the Fee by the name of late commer penuts, its id was 21', 3, '2023-12-07 11:26:56', '2023-12-07 11:26:56'),
(301, 'Fee edited from the name of O-level examinatio fee Penult per month to O-level examinatio fee Penult per month', 3, '2023-12-07 11:27:06', '2023-12-07 11:27:06'),
(302, 'Create the department by the name of History', 3, '2023-12-07 11:54:30', '2023-12-07 11:54:30'),
(303, 'Create the department by the name of Adminstration', 42, '2023-12-07 13:27:45', '2023-12-07 13:27:45'),
(304, 'Create the department by the name of Registration', 42, '2023-12-07 13:28:49', '2023-12-07 13:28:49'),
(305, 'Create the department by the name of Examination', 42, '2023-12-07 13:29:47', '2023-12-07 13:29:47'),
(306, 'Create the department by the name of Libarary', 42, '2023-12-07 13:30:04', '2023-12-07 13:30:04'),
(307, 'Create the department by the name of Laboratory', 42, '2023-12-07 13:30:53', '2023-12-07 13:30:53'),
(308, 'Create the department by the name of Hostel', 42, '2023-12-07 13:32:32', '2023-12-07 13:32:32'),
(309, 'Create the department by the name of Discipline', 42, '2023-12-07 13:34:00', '2023-12-07 13:34:00'),
(310, 'Create the department by the name of JID', 42, '2023-12-07 13:34:30', '2023-12-07 13:34:30'),
(311, 'Create the department by the name of ICT/JCC', 42, '2023-12-07 13:34:44', '2023-12-07 13:34:44'),
(312, 'Create the department by the name of QM', 42, '2023-12-07 13:35:14', '2023-12-07 13:35:14'),
(313, 'Create the department by the name of Stores', 42, '2023-12-07 13:35:33', '2023-12-07 13:35:33'),
(314, 'Create the department by the name of Environment', 42, '2023-12-07 13:35:56', '2023-12-07 13:35:56'),
(315, 'Create the department by the name of Sports', 42, '2023-12-07 13:36:18', '2023-12-07 13:36:18'),
(316, 'Create the department by the name of Coordinators A/O Levels', 42, '2023-12-07 13:36:54', '2023-12-07 13:36:54'),
(317, 'Create the department by the name of Drivers/TO', 42, '2023-12-07 13:37:22', '2023-12-07 13:37:22'),
(318, 'Create the department by the name of Estate Manager', 42, '2023-12-07 13:38:11', '2023-12-07 13:38:11'),
(319, 'Delete the subject by the name of Economics, its id was 47', 3, '2023-12-07 14:42:06', '2023-12-07 14:42:06'),
(320, 'Create the department by the name of Mathematics', 42, '2023-12-07 14:45:14', '2023-12-07 14:45:14'),
(321, 'Create the department by the name of Science', 42, '2023-12-07 14:45:48', '2023-12-07 14:45:48'),
(322, 'Delete the department by the name of Mathematics, its id was 38', 42, '2023-12-07 14:46:02', '2023-12-07 14:46:02'),
(323, 'Create the fee by the name of Form One School fees', 50, '2023-12-08 13:28:51', '2023-12-08 13:28:51'),
(324, 'Create the fee by the name of Form One Hostel Fees', 50, '2023-12-08 13:32:22', '2023-12-08 13:32:22'),
(325, 'Create the fee by the name of Form One Second Term School Fees', 50, '2023-12-08 13:42:45', '2023-12-08 13:42:45'),
(326, 'Create the fee by the name of Form One Second Term Hostel Fees', 50, '2023-12-08 13:44:55', '2023-12-08 13:44:55'),
(327, 'Create the course by the name of HGE', 41, '2023-12-08 21:07:54', '2023-12-08 21:07:54'),
(328, 'Create the course by the name of HGL', 41, '2023-12-08 21:08:44', '2023-12-08 21:08:44'),
(329, 'Create the course by the name of HGK', 41, '2023-12-08 21:09:18', '2023-12-08 21:09:18'),
(330, 'Create the course by the name of HKL', 41, '2023-12-08 21:10:34', '2023-12-08 21:10:34'),
(331, 'Create the course by the name of EGM', 41, '2023-12-08 21:11:42', '2023-12-08 21:11:42'),
(332, 'Create the course by the name of PCM', 41, '2023-12-08 21:12:09', '2023-12-08 21:12:09'),
(333, 'Create the course by the name of PCB', 41, '2023-12-08 21:13:00', '2023-12-08 21:13:00'),
(334, 'Delete the Course by the name of PGM, its id was 11', 41, '2023-12-08 21:15:20', '2023-12-08 21:15:20'),
(335, 'Create the course by the name of PGM', 41, '2023-12-08 21:15:31', '2023-12-08 21:15:31'),
(336, 'Create the course by the name of CBG', 41, '2023-12-08 21:17:08', '2023-12-08 21:17:08'),
(337, 'Create the course by the name of ECA', 41, '2023-12-08 21:18:40', '2023-12-08 21:18:40'),
(338, 'Create the grade by the name of B', 41, '2023-12-08 21:58:38', '2023-12-08 21:58:38'),
(339, 'Create the grade by the name of B', 41, '2023-12-08 21:58:47', '2023-12-08 21:58:47'),
(340, 'Create the grade by the name of C', 41, '2023-12-08 22:00:04', '2023-12-08 22:00:04'),
(341, 'Create the grade by the name of C', 41, '2023-12-08 22:00:13', '2023-12-08 22:00:13'),
(342, 'Create the grade by the name of D', 41, '2023-12-08 22:01:08', '2023-12-08 22:01:08'),
(343, 'Create the grade by the name of D', 41, '2023-12-08 22:01:13', '2023-12-08 22:01:13'),
(344, 'Class edited from the name of D to D', 41, '2023-12-08 22:05:28', '2023-12-08 22:05:28'),
(345, 'Class edited from the name of D to D', 41, '2023-12-08 22:06:47', '2023-12-08 22:06:47'),
(346, 'Create the grade by the name of E', 41, '2023-12-08 22:07:46', '2023-12-08 22:07:46'),
(347, 'Create the grade by the name of E', 41, '2023-12-08 22:08:05', '2023-12-08 22:08:05'),
(348, 'Create the grade by the name of S', 41, '2023-12-08 22:09:52', '2023-12-08 22:09:52'),
(349, 'Create the grade by the name of S', 41, '2023-12-08 22:10:01', '2023-12-08 22:10:01'),
(350, 'Create the grade by the name of F', 41, '2023-12-08 22:10:46', '2023-12-08 22:10:46'),
(351, 'Create the grade by the name of F', 41, '2023-12-08 22:11:00', '2023-12-08 22:11:00'),
(352, 'Class edited from the name of F to F', 41, '2023-12-08 22:12:10', '2023-12-08 22:12:10'),
(353, 'Class edited from the name of F to F', 41, '2023-12-08 22:12:36', '2023-12-08 22:12:36'),
(354, 'Class edited from the name of PGM to PGM', 3, '2023-12-09 10:35:08', '2023-12-09 10:35:08'),
(355, 'Fee edited from the name of Registration fee to Sample fee', 3, '2023-12-09 11:04:10', '2023-12-09 11:04:10'),
(356, 'Fee edited from the name of Form One School fees to Form I School fees', 50, '2023-12-09 11:55:00', '2023-12-09 11:55:00'),
(357, 'Fee edited from the name of Form One Second Term Hostel Fees to Form I Second Term Hostel Fees', 50, '2023-12-09 11:59:52', '2023-12-09 11:59:52'),
(358, 'Fee edited from the name of Form One Second Term School Fees to Form I Second Term School Fees', 50, '2023-12-09 12:00:25', '2023-12-09 12:00:25'),
(359, 'Fee edited from the name of Form One Hostel Fees to Form I Hostel Fees', 50, '2023-12-09 12:03:17', '2023-12-09 12:03:17'),
(360, 'Create the fee by the name of FORM II SCOOL FEES 2024', 50, '2023-12-09 12:05:49', '2023-12-09 12:05:49'),
(361, 'Create the fee by the name of FORM II HOSTEL FEES 2024', 50, '2023-12-09 12:08:38', '2023-12-09 12:08:38'),
(362, 'Create the fee by the name of FORM II FIRST TERM SCHOOL FEES 2024', 50, '2023-12-09 12:27:11', '2023-12-09 12:27:11'),
(363, 'Create the fee by the name of FORM II FIRST TERM HOSTEL FEES 2024', 50, '2023-12-09 12:29:05', '2023-12-09 12:29:05'),
(364, 'Create the fee by the name of FORM II SECOND TERM SCHOOL FEES 2024', 50, '2023-12-09 12:30:22', '2023-12-09 12:30:22'),
(365, 'Create the fee by the name of FORM II SECOND TERM HOSTEL FEES 2024', 50, '2023-12-09 12:31:30', '2023-12-09 12:31:30'),
(366, 'Create the fee by the name of FORM III SCHOOL FEES 2024', 50, '2023-12-09 12:38:32', '2023-12-09 12:38:32'),
(367, 'Create the fee by the name of FORM III HOSTELL FEES 2024', 50, '2023-12-09 12:40:42', '2023-12-09 12:40:42'),
(368, 'Create the fee by the name of FORM III FIRST TERM SCHOOL FEES 2024', 50, '2023-12-09 12:42:58', '2023-12-09 12:42:58'),
(369, 'Create the fee by the name of FORM III FIRST TERM HOSTEL FEES 2024', 50, '2023-12-09 12:44:46', '2023-12-09 12:44:46'),
(370, 'Create the fee by the name of FORM III SECOND TERM SCHOOL FEES 2024', 50, '2023-12-09 12:47:04', '2023-12-09 12:47:04'),
(371, 'Create the fee by the name of FORM III SECOND TERM HOSTEL FEES 2024', 50, '2023-12-09 12:48:16', '2023-12-09 12:48:16'),
(372, 'Fee edited from the name of Form I School fees to FORM I SCHOOL FEES 2024', 50, '2023-12-09 12:52:42', '2023-12-09 12:52:42'),
(373, 'Create the fee by the name of FORM IV SCHOOL FEES 2024', 50, '2023-12-09 12:53:36', '2023-12-09 12:53:36'),
(374, 'Create the fee by the name of FORM IV HOSTEL FEES 2024', 50, '2023-12-09 12:56:46', '2023-12-09 12:56:46'),
(375, 'Create the fee by the name of FORM IV FIRST TERM SCHOOL FEES 2024', 50, '2023-12-09 12:58:24', '2023-12-09 12:58:24'),
(376, 'Create the fee by the name of FORM IV FIRST TERM HOSTEL FEES 2024', 50, '2023-12-09 12:59:33', '2023-12-09 12:59:33'),
(377, 'Fee edited from the name of FORM II SCOOL FEES 2024 to FORM II SCHOOL FEES 2024', 50, '2023-12-09 13:01:06', '2023-12-09 13:01:06'),
(378, 'Class edited from the name of A1 to A1', 41, '2023-12-09 16:44:59', '2023-12-09 16:44:59'),
(379, 'Class edited from the name of A2 to A2', 41, '2023-12-09 16:46:00', '2023-12-09 16:46:00'),
(380, 'Delete the classname by the name of PGM, its id was 19', 41, '2023-12-09 16:46:13', '2023-12-09 16:46:13'),
(381, 'Create the classname by the name of B1', 41, '2023-12-09 16:47:29', '2023-12-09 16:47:29'),
(382, 'Create the classname by the name of AI', 41, '2023-12-09 17:27:02', '2023-12-09 17:27:02'),
(383, 'Create the classname by the name of IIA2', 41, '2023-12-09 17:33:28', '2023-12-09 17:33:28'),
(384, 'Create the classname by the name of IIB1', 41, '2023-12-09 17:41:49', '2023-12-09 17:41:49'),
(385, 'Create the classname by the name of IIIA1', 41, '2023-12-09 17:44:39', '2023-12-09 17:44:39'),
(386, 'Create the classname by the name of IIIA2', 41, '2023-12-09 17:46:06', '2023-12-09 17:46:06'),
(387, 'Create the classname by the name of IIIB1', 41, '2023-12-09 17:49:30', '2023-12-09 17:49:30'),
(388, 'Create the classname by the name of IVA1', 41, '2023-12-09 17:51:40', '2023-12-09 17:51:40'),
(389, 'Create the classname by the name of IVA2', 41, '2023-12-09 17:54:56', '2023-12-09 17:54:56'),
(390, 'Create the classname by the name of IVB1', 41, '2023-12-09 18:00:42', '2023-12-09 18:00:42'),
(391, 'Create the classname by the name of VHGE', 41, '2023-12-09 18:25:33', '2023-12-09 18:25:33'),
(392, 'Create the classname by the name of VHGK', 41, '2023-12-09 18:29:59', '2023-12-09 18:29:59'),
(393, 'Create the classname by the name of VHKL', 41, '2023-12-09 18:30:59', '2023-12-09 18:30:59'),
(394, 'Create the classname by the name of VHGL', 41, '2023-12-09 18:32:57', '2023-12-09 18:32:57'),
(395, 'Create the classname by the name of VPCM', 41, '2023-12-09 18:34:28', '2023-12-09 18:34:28'),
(396, 'Create the classname by the name of VPCB', 41, '2023-12-09 18:35:28', '2023-12-09 18:35:28'),
(397, 'Create the classname by the name of VCBG', 41, '2023-12-09 18:42:08', '2023-12-09 18:42:08'),
(398, 'Create the classname by the name of VEGM', 41, '2023-12-09 18:43:02', '2023-12-09 18:43:02'),
(399, 'Create the classname by the name of VECA', 41, '2023-12-09 18:44:13', '2023-12-09 18:44:13'),
(400, 'Class edited from the name of IIIB1 to IIIB1', 41, '2023-12-09 18:54:30', '2023-12-09 18:54:30'),
(401, 'Create the classname by the name of VIHGE', 41, '2023-12-09 19:00:48', '2023-12-09 19:00:48'),
(402, 'Create the classname by the name of VIHGK', 41, '2023-12-09 19:02:06', '2023-12-09 19:02:06'),
(403, 'Create the classname by the name of VIHKL', 41, '2023-12-09 19:03:41', '2023-12-09 19:03:41'),
(404, 'Create the classname by the name of VIPCM', 41, '2023-12-09 19:16:18', '2023-12-09 19:16:18'),
(405, 'Create the classname by the name of VIPCB', 41, '2023-12-09 19:28:23', '2023-12-09 19:28:23'),
(406, 'Create the classname by the name of VICBG', 41, '2023-12-09 19:42:54', '2023-12-09 19:42:54'),
(407, 'Create the classname by the name of VIECA', 41, '2023-12-09 19:43:49', '2023-12-09 19:43:49'),
(408, 'Create the classname by the name of VIEGM', 41, '2023-12-09 19:44:43', '2023-12-09 19:44:43'),
(409, 'Create the classname by the name of VIHGL', 41, '2023-12-09 19:45:55', '2023-12-09 19:45:55'),
(410, 'Class edited from the name of AI to AI', 3, '2023-12-10 18:22:33', '2023-12-10 18:22:33'),
(411, 'Class edited from the name of AI to IIA1', 3, '2023-12-10 18:22:58', '2023-12-10 18:22:58'),
(412, 'Class edited from the name of B1 to IB1', 3, '2023-12-10 18:24:06', '2023-12-10 18:24:06'),
(413, 'Class edited from the name of A1 to IA1', 3, '2023-12-10 18:24:24', '2023-12-10 18:24:24'),
(414, 'Class edited from the name of A2 to IA2', 3, '2023-12-10 18:24:39', '2023-12-10 18:24:39'),
(415, 'Class edited from the name of VPCM to V-PCM', 3, '2023-12-10 18:25:06', '2023-12-10 18:25:06'),
(416, 'Class edited from the name of VIPCM to VI-PCM', 3, '2023-12-10 18:25:19', '2023-12-10 18:25:19'),
(417, 'Class edited from the name of VIHGE to VI-HGE', 3, '2023-12-10 18:25:37', '2023-12-10 18:25:37'),
(418, 'Class edited from the name of VIHKL to VI-HKL', 3, '2023-12-10 18:25:52', '2023-12-10 18:25:52'),
(419, 'Class edited from the name of VIHGL to VI-HGL', 3, '2023-12-10 18:26:11', '2023-12-10 18:26:11'),
(420, 'Class edited from the name of VIPCB to VI-PCB', 3, '2023-12-10 18:26:26', '2023-12-10 18:26:26'),
(421, 'Class edited from the name of VICBG to VI-CBG', 3, '2023-12-10 18:26:45', '2023-12-10 18:26:45'),
(422, 'Class edited from the name of VIEGM to VI-EGM', 3, '2023-12-10 18:27:02', '2023-12-10 18:27:02'),
(423, 'Class edited from the name of VIHGK to VI-HGK', 3, '2023-12-10 18:27:16', '2023-12-10 18:27:16'),
(424, 'Class edited from the name of VIECA to VI-ECA', 3, '2023-12-10 18:27:34', '2023-12-10 18:27:34'),
(425, 'Class edited from the name of VHGE to V-HGE', 3, '2023-12-10 18:28:27', '2023-12-10 18:28:27'),
(426, 'Class edited from the name of VHGK to V-HGK', 3, '2023-12-10 18:28:39', '2023-12-10 18:28:39'),
(427, 'Class edited from the name of VCBG to V-CBG', 3, '2023-12-10 18:28:53', '2023-12-10 18:28:53'),
(428, 'Class edited from the name of VPCB to V-PCB', 3, '2023-12-10 18:29:18', '2023-12-10 18:29:18'),
(429, 'Class edited from the name of VEGM to V-EGM', 3, '2023-12-10 18:29:42', '2023-12-10 18:29:42'),
(430, 'Class edited from the name of VHKL to V-HKL', 3, '2023-12-10 18:29:55', '2023-12-10 18:29:55'),
(431, 'Class edited from the name of VHGL to V-HGL', 3, '2023-12-10 18:30:08', '2023-12-10 18:30:08'),
(432, 'Class edited from the name of VECA to V-ECA', 3, '2023-12-10 18:30:25', '2023-12-10 18:30:25'),
(433, 'Create the fee by the name of FORM IV SECOND TERM SCHOOL FEES 2024', 50, '2023-12-11 10:20:02', '2023-12-11 10:20:02'),
(434, 'Create the fee by the name of FORM IV SECOND TERM HOSTEL FEES 2024', 50, '2023-12-11 10:21:38', '2023-12-11 10:21:38'),
(435, 'Create the fee by the name of FORM V SCHOOL FEES 2023/24', 50, '2023-12-11 10:33:50', '2023-12-11 10:33:50'),
(436, 'Create the fee by the name of FORM V HOSTEL  FEES 2023/24', 50, '2023-12-11 10:36:10', '2023-12-11 10:36:10'),
(437, 'Fee edited from the name of FORM V SCHOOL FEES 2023/24 to FORM V SCHOOL FEES 2023/24', 50, '2023-12-11 11:41:59', '2023-12-11 11:41:59'),
(438, 'Create the fee by the name of FORM V TERM SCHOOL FEES 2023/24', 50, '2023-12-11 11:44:25', '2023-12-11 11:44:25'),
(439, 'Create the fee by the name of FORM V TERM HOSTEL FEES 2023/24', 50, '2023-12-11 11:45:48', '2023-12-11 11:45:48'),
(440, 'Fee edited from the name of FORM V HOSTEL  FEES 2023/24 to FORM V HOSTEL  FEES 2023/24', 50, '2023-12-11 11:46:58', '2023-12-11 11:46:58'),
(441, 'Create the fee by the name of FORM V SECOND TERM NEW COMER SCHOOL FEES 2023/24', 50, '2023-12-11 11:49:24', '2023-12-11 11:49:24'),
(442, 'Fee edited from the name of FORM V SECOND TERM NEW COMER SCHOOL FEES 2023/24 to FORM V SECOND TERM NEW COMER SCHOOL FEES 2023/24', 50, '2023-12-11 11:50:07', '2023-12-11 11:50:07'),
(443, 'Create the fee by the name of FORM V SECOND TERM NEW COMER HOSTEL AND SCHOOL FEES 2023/24', 50, '2023-12-11 11:52:09', '2023-12-11 11:52:09'),
(444, 'Create the fee by the name of FORM VI SCHOOL FEES 2023/24', 50, '2023-12-11 12:21:02', '2023-12-11 12:21:02'),
(445, 'Create the fee by the name of FORM VI TERM SCHOOL FEES 2023/24', 50, '2023-12-11 12:21:48', '2023-12-11 12:21:48'),
(446, 'Create the fee by the name of FORM VI NEW COMER FIRST TERM SCHOOL FEES 2023/24', 50, '2023-12-11 12:25:45', '2023-12-11 12:25:45'),
(447, 'Create the fee by the name of FORM VI NEW COMER SECOND TERM SCHOOL FEES 2023/24', 50, '2023-12-11 12:26:45', '2023-12-11 12:26:45'),
(448, 'Create the fee by the name of FORM VI HOSTEL FEES 2023/24', 50, '2023-12-11 12:30:26', '2023-12-11 12:30:26'),
(449, 'Create the fee by the name of FORM VI TERM HOSTEL FEES 2023/24', 50, '2023-12-11 12:30:54', '2023-12-11 12:30:54'),
(450, 'Create the fee by the name of FORM VI NEW COMER SCHOO FEES 2023/24', 50, '2023-12-11 12:40:19', '2023-12-11 12:40:19'),
(451, 'Create the fee by the name of FORM VI NEW COMER SECOND TERM SCHOO FEES 2023/24', 50, '2023-12-11 12:41:11', '2023-12-11 12:41:11'),
(452, 'Delete the Fee by the name of FORM VI NEW COMER SECOND TERM SCHOOL FEES 2023/24, its id was 53', 50, '2023-12-11 12:44:09', '2023-12-11 12:44:09'),
(453, 'Delete the Fee by the name of FORM VI NEW COMER SCHOO FEES 2023/24, its id was 56', 50, '2023-12-11 12:45:29', '2023-12-11 12:45:29'),
(454, 'Create the fee by the name of FORM I TERM SCHOOL FEES 2024', 50, '2023-12-11 12:54:50', '2023-12-11 12:54:50'),
(455, 'Create the fee by the name of FORM I NEW COMER SECOND TERM SCHOOL FEES 2024', 50, '2023-12-11 12:56:05', '2023-12-11 12:56:05'),
(456, 'Create the fee by the name of FORM I NEW COMER SECOND TERM SCHOOL AND HOSTEL FEES 2024', 50, '2023-12-11 12:57:13', '2023-12-11 12:57:13'),
(457, 'Create the fee by the name of FORM I HOSTEL  FEES 2024', 50, '2023-12-11 12:58:21', '2023-12-11 12:58:21'),
(458, 'Create the fee by the name of FORM I TERM HOSTEL  FEES 2024', 50, '2023-12-11 12:58:52', '2023-12-11 12:58:52'),
(459, 'Delete the Fee by the name of Form I Second Term School Fees, its id was 24', 50, '2023-12-11 13:00:33', '2023-12-11 13:00:33'),
(460, 'Delete the Fee by the name of Form I Second Term Hostel Fees, its id was 25', 50, '2023-12-11 13:00:39', '2023-12-11 13:00:39'),
(461, 'Create the fee by the name of FORM II TERM SCHOOL FEES', 50, '2023-12-11 13:12:46', '2023-12-11 13:12:46'),
(462, 'Delete the Fee by the name of FORM II FIRST TERM SCHOOL FEES 2024, its id was 28', 50, '2023-12-11 13:18:07', '2023-12-11 13:18:07'),
(463, 'Delete the Fee by the name of FORM II SECOND TERM SCHOOL FEES 2024, its id was 30', 50, '2023-12-11 13:18:15', '2023-12-11 13:18:15'),
(464, 'Delete the Fee by the name of FORM II SECOND TERM HOSTEL FEES 2024, its id was 31', 50, '2023-12-11 13:18:23', '2023-12-11 13:18:23'),
(465, 'Delete the Fee by the name of FORM II FIRST TERM HOSTEL FEES 2024, its id was 29', 50, '2023-12-11 13:18:33', '2023-12-11 13:18:33'),
(466, 'Create the fee by the name of FORM II TERM HOSTEL FEES', 50, '2023-12-11 13:19:38', '2023-12-11 13:19:38'),
(467, 'Create the fee by the name of FORM II SECOND TERM SCHOOL AND HOSTEL FEES 2024', 50, '2023-12-11 13:21:31', '2023-12-11 13:21:31'),
(468, 'Create the fee by the name of FORM II SECOND TERM SCHOOL FEES 2024', 50, '2023-12-11 13:22:10', '2023-12-11 13:22:10'),
(469, 'Create the fee by the name of FORM II NEW COMER FIRST TERM SCHOOL FEES 2024', 50, '2023-12-11 13:23:49', '2023-12-11 13:23:49'),
(470, 'Delete the Fee by the name of FORM III FIRST TERM SCHOOL FEES 2024, its id was 34', 50, '2023-12-11 13:30:58', '2023-12-11 13:30:58'),
(471, 'Delete the Fee by the name of FORM III FIRST TERM HOSTEL FEES 2024, its id was 35', 50, '2023-12-11 13:31:04', '2023-12-11 13:31:04'),
(472, 'Delete the Fee by the name of FORM III SECOND TERM SCHOOL FEES 2024, its id was 36', 50, '2023-12-11 13:31:10', '2023-12-11 13:31:10'),
(473, 'Delete the Fee by the name of FORM III SECOND TERM HOSTEL FEES 2024, its id was 37', 50, '2023-12-11 13:31:15', '2023-12-11 13:31:15'),
(474, 'Create the fee by the name of FORM III TERM HOSTEL FEES', 50, '2023-12-11 13:32:18', '2023-12-11 13:32:18'),
(475, 'Create the fee by the name of FORM III SECOND TERM SCHOOL AND HOSTEL FEES 2024', 50, '2023-12-11 13:34:12', '2023-12-11 13:34:12'),
(476, 'Create the fee by the name of FORM III SECOND TERM SCHOOL FEES 2024', 50, '2023-12-11 13:34:42', '2023-12-11 13:34:42'),
(477, 'Create the fee by the name of FORM III FIRST TERM SCHOOL FEES 2024', 50, '2023-12-11 13:35:56', '2023-12-11 13:35:56'),
(478, 'Delete the Fee by the name of FORM IV FIRST TERM SCHOOL FEES 2024, its id was 40', 50, '2023-12-11 13:42:38', '2023-12-11 13:42:38'),
(479, 'Delete the Fee by the name of FORM IV FIRST TERM HOSTEL FEES 2024, its id was 41', 50, '2023-12-11 13:42:59', '2023-12-11 13:42:59'),
(480, 'Delete the Fee by the name of FORM IV SECOND TERM SCHOOL FEES 2024, its id was 42', 50, '2023-12-11 13:43:05', '2023-12-11 13:43:05'),
(481, 'Delete the Fee by the name of FORM IV SECOND TERM HOSTEL FEES 2024, its id was 43', 50, '2023-12-11 13:43:10', '2023-12-11 13:43:10'),
(482, 'Create the fee by the name of FORM IV TERM HOSTEL FEES 2024', 50, '2023-12-11 13:44:17', '2023-12-11 13:44:17'),
(483, 'Create the fee by the name of FORM IV TERM SCHOOL FEES 2024', 50, '2023-12-11 13:45:03', '2023-12-11 13:45:03'),
(484, 'Create the fee by the name of FORM IV SECOND TERM SCHOOL FEES 2024', 50, '2023-12-11 13:46:48', '2023-12-11 13:46:48'),
(485, 'Create the fee by the name of FORM IV SECOND TERM SCHOOL AND HOSTEL FEES 2024', 50, '2023-12-11 13:47:41', '2023-12-11 13:47:41'),
(486, 'Fee edited from the name of FORM IV SECOND TERM SCHOOL FEES 2024 to FORM IV NEW COMER SECOND TERM SCHOOL FEES 2024', 50, '2023-12-11 13:50:08', '2023-12-11 13:50:08'),
(487, 'Fee edited from the name of FORM IV SECOND TERM SCHOOL AND HOSTEL FEES 2024 to FORM IV NEW COMER SECOND TERM SCHOOL AND HOSTEL FEES 2024', 50, '2023-12-11 13:50:35', '2023-12-11 13:50:35'),
(488, 'Create the fee by the name of FORM IV NEW COMER FIRST TERM SCHOOL FEES 2024', 50, '2023-12-11 13:52:03', '2023-12-11 13:52:03'),
(489, 'Create the fee by the name of FORM IV NEW COMER FIRST TERM HOSTEL FEES 2024', 50, '2023-12-11 13:54:56', '2023-12-11 13:54:56'),
(490, 'Create the fee by the name of FORM IV NEW COMER TERM HOSTEL FEES 2024', 50, '2023-12-11 13:56:12', '2023-12-11 13:56:12');

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
(59, '2023_11_13_072104_create_session_atendances_table', 24),
(60, '2023_11_25_042931_create_fee_statuses_table', 25);

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
(11, 'sample', 'parent', 'regist', '1', '0668448525', 'man.png', 'kigamboni', 'engrithom1@gmail.com', 'driver', 'Tanzanian', 'noindex_no', 3, '2023-11-19 22:56:59', '2023-11-19 22:56:59'),
(16, 'Dominick', 'Joseph', 'Mkai', '1', '0767865946', 'man.png', 'Kigamboni', 'no email', 'Business man', 'Tanzanian', 'noindex_no', 42, '2023-12-11 14:48:40', '2023-12-11 14:48:40'),
(17, 'Ilham', 'Hafidhi', 'Bashir', '2', '0753211152', 'man.png', 'Temeke', 'no email', 'Business Man', 'Tanzanian', 'noindex_no', 42, '2023-12-11 15:29:03', '2023-12-11 15:29:03'),
(18, 'Amina', 'Y', 'Bura', '2', '0754688468', 'man.png', 'Temeke', 'no email', 'Mjasilimia Mali', 'Tanzanian', 'noindex_no', 42, '2023-12-11 15:48:40', '2023-12-11 15:48:40'),
(19, 'Hamis', 'Ismail', 'Shabani', '1', '0714684869', 'man.png', 'Dar es salaam', 'no email', 'Mtumishi', 'Tanzanian', 'noindex_no', 42, '2023-12-11 16:19:35', '2023-12-11 16:19:35'),
(20, 'Rosemary', 'T', 'Mwinjuma', '2', '0715880210', 'man.png', 'Temeke', 'no email', 'Mtunza kumbukumbu', 'Tanzanian', 'noindex_no', 42, '2023-12-11 16:40:17', '2023-12-11 16:40:17'),
(21, 'Rehema', 'Joseph', 'Chitad', '2', '0755947747', 'man.png', 'Dar es salaam', 'no email', 'Mjasilimia mali', 'Tanzanian', 'noindex_no', 42, '2023-12-11 16:49:55', '2023-12-11 16:49:55'),
(22, 'DAUDI', 'JOSEPH', 'RUKANDA', '1', '0685882048', 'man.png', 'MWANZA', 'no email', 'DEREVA', 'TANZANIAN', 'noindex_no', 42, '2023-12-11 16:55:37', '2023-12-11 16:55:37'),
(23, 'ASIA', 'SELEMANI', 'MTIPA', '1', '0758994352', 'man.png', 'DAR ES SALAAM', 'no email', 'BUSINESS MAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-11 17:04:05', '2023-12-11 17:04:05'),
(24, 'ABDALLAH', 'SALIM', 'ABDALLAH', '1', '0715564878', 'man.png', 'TABORA', 'no email', 'BUSINESS MAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-11 17:10:27', '2023-12-11 17:10:27'),
(25, 'PATRICK', 'JOHN', 'MANYAMA', '1', '0653130677', 'man.png', 'DAR ES SALAAM', 'no email', 'OPERATORS', 'TANZANIAN', 'noindex_no', 42, '2023-12-11 17:15:36', '2023-12-11 17:15:36'),
(26, 'ADAM', 'HAMAD', 'MATEMELELA', '1', '0757558832', 'man.png', 'DAR ES SALAAM', 'no email', 'BUSINESS MAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-11 17:21:42', '2023-12-11 17:21:42'),
(27, 'FIDESI', 'LUCAS', 'HAKIKA', '1', '0762719911', 'man.png', 'DAR ES SALAAM', 'no email', 'BUSINESS MAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-11 17:26:35', '2023-12-11 17:26:35'),
(28, 'MBARAKA', 'BENDE', 'MBARAKA', '1', '0655049172', 'man.png', 'DAR ES SALAAM', 'no email', 'DEREVA', 'TANZANIAN', 'noindex_no', 42, '2023-12-11 17:30:51', '2023-12-11 17:30:51'),
(29, 'ABDALLAH', 'M', 'RUME', '1', '0689665897', 'man.png', 'SINGIDA', 'no email', 'DEREVA', 'TANZANIAN', 'noindex_no', 42, '2023-12-11 17:35:36', '2023-12-11 17:35:36'),
(30, 'ANNA', 'KAZIBURE', 'WAAKILY', '2', '0714535329', 'man.png', 'PWANI', 'no email', 'MTUMISHI', 'TANZANIAN', 'noindex_no', 42, '2023-12-11 17:40:51', '2023-12-11 17:40:51'),
(31, 'MSEKWA', 'ELIAZAR', 'JOLIGA', '1', '0765458973', 'man.png', 'DAR ES SALAAM', 'no email', 'MTUMISHI', 'TANZANIAN', 'noindex_no', 42, '2023-12-11 17:46:12', '2023-12-11 17:46:12'),
(32, 'VASCO', 'SOKO', 'VASCO', '1', '0783016200', 'man.png', 'DAR ES SALAAM', 'no email', 'MTUMISHI', 'TANZANIAN', 'noindex_no', 42, '2023-12-11 17:55:50', '2023-12-11 17:55:50'),
(33, 'RICHARD', 'JOSEPH', 'CHOAJI', '1', '0782726494', 'man.png', 'MTWARA', 'no email', 'BUSINESS MAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-11 18:02:01', '2023-12-11 18:02:01'),
(34, 'JUDITH', 'JUSTICE', 'MGOHA', '2', '0693584207', 'man.png', 'DAR ES SALAAM', 'no email', 'BUSINESS WOMAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-11 18:07:48', '2023-12-11 18:07:48'),
(35, 'JOHN', 'MSONGANZILA', 'MSONGANZILA', '1', '0713249196', 'man.png', 'DAR ES SALAAM', 'no email', 'MKULIMA', 'TANZANIAN', 'noindex_no', 42, '2023-12-11 18:11:50', '2023-12-11 18:11:50'),
(36, 'ASHA', 'SELEMAN', 'TUSSAKA', '2', '0655807613', 'man.png', 'SHINYANGA', 'no email', 'BUSINESS WOMAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-12 16:34:19', '2023-12-12 16:34:19'),
(37, 'FRANCIS', 'SEMPINDU', 'SEMPINDU', '1', '0715307945', 'man.png', 'DAR ES SALAAM', 'no email', 'BUSINESS MAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-12 16:41:47', '2023-12-12 16:41:47'),
(38, 'HALIMA', 'B', 'MASOUD', '2', '0713761800', 'man.png', 'SINGIDA', 'no email', 'BUSINESS WOMAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-12 16:49:36', '2023-12-12 16:49:36'),
(39, 'REHEMA', 'SALUMU', 'YAHAYA', '2', '0652125770', 'man.png', 'MOROGORO', 'no email', 'BUSINESS WOMAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-13 12:58:10', '2023-12-13 12:58:10'),
(40, 'JOSEPH', 'CLEMENT', 'DAMIAN', '1', '0675761589', 'man.png', 'DAR ES SALAAM', 'no email', 'MTUMISHI', 'TANZANIAN', 'noindex_no', 42, '2023-12-13 13:04:46', '2023-12-13 13:04:46'),
(41, 'MARIA', 'MICHAEL', 'MARKO', '2', '0678218326', 'man.png', 'MWANZA', 'no email', 'BUSINESS WOMAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-13 13:32:36', '2023-12-13 13:32:36'),
(42, 'AMON', 'EPHRAIM', 'ASIMBINGWE', '1', '0718798166', 'man.png', 'DAR ES SALAAM', 'no email', 'MTUMISHI', 'TANZANIAN', 'noindex_no', 42, '2023-12-13 13:39:33', '2023-12-13 13:39:33'),
(43, 'PRISCA', 'G', 'SNKONDE', '2', '0755404050', 'man.png', 'DAR ES SALAAM', 'no email', 'BUSINESS WOMAN', 'ANZANIAN', 'noindex_no', 42, '2023-12-13 13:44:09', '2023-12-13 13:44:09'),
(44, 'NURU', 'SULEYMAN', 'NG\'ANG\'ISE', '2', '0655141381', 'man.png', 'DAR ES SALAAM', 'no email', 'BUSINESS WOMAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-13 13:49:00', '2023-12-13 13:49:00'),
(45, 'HADIJA', 'S', 'HAMISI', '2', '0787124035', 'man.png', 'DAR ES SALAAM', 'no email', 'BUSINESS WOMAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-13 14:00:40', '2023-12-13 14:00:40'),
(46, 'HADIJA', 'S', 'HAMISI', '2', '0787124035', 'man.png', 'DAR ES SALAAM', 'no email', 'BUSINESS WOMAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-13 14:00:40', '2023-12-13 14:00:40'),
(47, 'REBECCA', 'MESANGA', 'MATIKO', '2', '0754988820', 'man.png', 'DAR ES SALAAM', 'no email', 'MTUMISHI', 'TANZANIAN', 'noindex_no', 42, '2023-12-13 14:09:13', '2023-12-13 14:09:13'),
(48, 'NICODEMAS', 'N', 'MTAITA', '1', '0752132206', 'man.png', 'ZANZIBAR', 'no email', 'BUSINESS MAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-13 14:14:54', '2023-12-13 14:14:54'),
(49, 'HAMADI', 'HATIBU', 'HAMADI', '1', '0712007899', 'man.png', 'DAR ES SALAAM', 'no email', 'MTUMISHI', 'TANZANIAN', 'noindex_no', 42, '2023-12-13 14:19:16', '2023-12-13 14:19:16'),
(50, 'AMAN', 'MSIBALILE', 'BEGA', '1', '0783265131', 'man.png', 'DAR ES SALAAM', 'no email', 'BUSINESS MAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-13 14:23:42', '2023-12-13 14:23:42'),
(51, 'PHILEMON', 'HASTING\'S', 'RUPIA', '1', '0756511456', 'man.png', 'DAR ES SALAAM', 'no email', 'TECHNICIAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-13 14:27:41', '2023-12-13 14:27:41'),
(52, 'GEORGE', 'DAUD', 'MMBA', '1', '0656673578', 'man.png', 'DAR ES SALAAM', 'no email', 'BUSINESS MAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-13 14:32:35', '2023-12-13 14:32:35'),
(53, 'MOSHI', 'SALEHE', 'SANGA', '1', '0692552514', 'man.png', 'MOROGORO', 'no email', 'BUSINESS MAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-13 14:38:29', '2023-12-13 14:38:29'),
(54, 'GAUDENSI', 'B', 'S', '2', '0687702355', 'man.png', 'DAR ES SALAAM', 'no email', 'BUSINESSWOMAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-13 14:43:00', '2023-12-13 14:43:00'),
(55, 'SAID', 'SAID', 'KEMANAE', '1', '0778453834', 'man.png', 'SINGIDA', 'no email', 'MTUMISHI', 'TANZANIAN', 'noindex_no', 42, '2023-12-13 14:47:49', '2023-12-13 14:47:49'),
(56, 'NSWAGI', 'LUMWECHA', 'MASAI', '1', '0715182264', 'man.png', 'MWANZA', 'no email', 'MKULIMA', 'TANZANIAN', 'noindex_no', 42, '2023-12-13 14:54:41', '2023-12-13 14:54:41'),
(57, 'YUSTER', 'MARIO', 'NZIKU', '2', '0763974385', 'man.png', 'SONGWE', 'no email', 'MKULIMA', 'TANZANIAN', 'noindex_no', 42, '2023-12-14 12:44:37', '2023-12-14 12:44:37'),
(58, 'MWANAMIMI', 'ALLY', 'SALUM', '2', '0784062717', 'man.png', 'DAR ES SALAAM', 'no email', 'MHUZINI', 'TANZANIAN', 'noindex_no', 42, '2023-12-14 12:50:37', '2023-12-14 12:50:37'),
(59, 'MAIMUNA', 'J', 'RUKANDA', '2', '0743856820', 'man.png', 'MWANZA', 'no email', 'BUSINESS WOMAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-14 15:22:17', '2023-12-14 15:22:17'),
(60, 'IMELIDA', 'MTENDA', 'MAKAMUA', '2', '0719561773', 'man.png', 'MOROGORO', 'no email', 'BUSINESS WOMAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-14 15:49:51', '2023-12-14 15:49:51'),
(61, 'JACOB', 'W', 'CHIKUSI', '1', '0686002038', 'man.png', 'DODOMA', 'no email', 'BUSINESS MAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-14 16:32:57', '2023-12-14 16:32:57'),
(62, 'DANIEL', 'CHARLES', 'DANIEL', '1', '0789948221', 'man.png', 'KIGOMA', 'no email', 'MKULIMA', 'TANZANIAN', 'noindex_no', 42, '2023-12-14 16:52:40', '2023-12-14 16:52:40'),
(63, 'CHANDE', 'MATUNGA', 'CHANDE', '1', '0783565650', 'man.png', 'DAR ES SALAAM', 'no email', 'BUSINESS MAN', 'TANZANIAN', 'noindex_no', 42, '2023-12-14 17:01:58', '2023-12-14 17:01:58'),
(64, 'MWAMVITA', 'KASSIM', 'ZINGA', '2', '0685352676', 'man.png', 'DAR ES SALAAM', 'no email', 'MTUMISHI', 'TANZANIAN', 'noindex_no', 42, '2023-12-14 17:05:43', '2023-12-14 17:05:43');

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
(54, 'App\\Models\\User', 3, 'MyApp', 'a3533288e4d2b0761ea42113c3b83c69245a4e1fe4a4a441a35376a86b7b8c33', '[\"*\"]', '2023-11-20 00:21:09', '2023-11-19 16:18:30', '2023-11-20 00:21:09'),
(55, 'App\\Models\\User', 3, 'MyApp', 'c8a8ed0c11ce0a02bf29a93676c8fb2a0b014ed21b9750a0d57dde68018d561b', '[\"*\"]', NULL, '2023-11-20 08:56:12', '2023-11-20 08:56:12'),
(56, 'App\\Models\\User', 3, 'MyApp', '3f45276a8b7d2f0ce3691cc4787dffee8220954d984ffadc4445c1b96fd305ea', '[\"*\"]', NULL, '2023-11-20 10:50:50', '2023-11-20 10:50:50'),
(57, 'App\\Models\\User', 3, 'MyApp', '9562be6f3f05ed3b3b860fc7303d1ed834daab8989c2377b69acf5a555d39983', '[\"*\"]', '2023-11-20 10:53:01', '2023-11-20 10:50:51', '2023-11-20 10:53:01'),
(58, 'App\\Models\\User', 3, 'MyApp', 'c4f1dc99e639e36be704e25734d57db2ff6dcb4a8789ab6bc6d419682fbe404e', '[\"*\"]', NULL, '2023-11-20 10:53:50', '2023-11-20 10:53:50'),
(59, 'App\\Models\\User', 3, 'MyApp', 'ead65501e82a7cc8ea5723edef043d221eabd4ff7a88f38d8f976a9314d14aa7', '[\"*\"]', NULL, '2023-11-20 10:54:25', '2023-11-20 10:54:25'),
(60, 'App\\Models\\User', 3, 'MyApp', 'c3e002d6a98fe066b0c7dbd55a1685f14d3204c04a3fdc255a5f374b1846d921', '[\"*\"]', NULL, '2023-11-20 10:58:05', '2023-11-20 10:58:05'),
(61, 'App\\Models\\User', 3, 'MyApp', '3ef67b6a392cbd00dfa0a9d8baedbb1f282145a614519be1eacb235cf0405c3a', '[\"*\"]', NULL, '2023-11-20 11:07:02', '2023-11-20 11:07:02'),
(62, 'App\\Models\\User', 26, 'MyApp', 'cb8ca31d6c8f66799f62e5847178122c85b58f33b3750bff49cd57ec2f6d25a8', '[\"*\"]', '2023-11-28 16:33:32', '2023-11-20 11:21:55', '2023-11-28 16:33:32'),
(63, 'App\\Models\\User', 3, 'MyApp', 'd0f53139a64be52d749c51e85bb9623f6d0b3d92e43b64c4ca0e488c30b44139', '[\"*\"]', '2023-11-20 11:55:59', '2023-11-20 11:29:03', '2023-11-20 11:55:59'),
(64, 'App\\Models\\User', 26, 'MyApp', '3f19518bb8f4fff28458618fd08bb8b7241da70226cee7bdf746d916386443e9', '[\"*\"]', NULL, '2023-11-20 11:31:36', '2023-11-20 11:31:36'),
(65, 'App\\Models\\User', 26, 'MyApp', '3c62eae1cfc2373115ead81e0e06a5c8d8c0459434c93c7d02a0f5bca3cca430', '[\"*\"]', '2023-11-20 11:35:08', '2023-11-20 11:31:37', '2023-11-20 11:35:08'),
(66, 'App\\Models\\User', 3, 'MyApp', '99cf4a59fc9d11a08086868f58641bd9e8b97b6fdab3db4dc6ac5e8725d0b5bd', '[\"*\"]', '2023-11-26 11:26:58', '2023-11-23 06:33:55', '2023-11-26 11:26:58'),
(67, 'App\\Models\\User', 33, 'MyApp', 'ccb0e506c168c2229e678a701e6df665d0d9e5bb70cd519b3f021f17b6c3a1a4', '[\"*\"]', '2023-11-27 04:46:29', '2023-11-26 11:51:49', '2023-11-27 04:46:29'),
(68, 'App\\Models\\User', 35, 'MyApp', 'd5be7feab1d3cc42c83ce6a11d210f8544f580d5400840ccc1edfd35d32b8dea', '[\"*\"]', '2023-11-27 06:20:37', '2023-11-27 04:48:29', '2023-11-27 06:20:37'),
(69, 'App\\Models\\User', 36, 'MyApp', '6a1b54f4832ce857783d3bf880d85217735bb66684e9660815d3e6bafbf12c0d', '[\"*\"]', '2023-11-27 06:27:45', '2023-11-27 06:25:25', '2023-11-27 06:27:45'),
(70, 'App\\Models\\User', 3, 'MyApp', '682aff6e53d5d2042f5315a18b8c2cc72432061f7bc615d5278ac027fa7954f9', '[\"*\"]', '2023-11-27 11:18:18', '2023-11-27 06:38:34', '2023-11-27 11:18:18'),
(71, 'App\\Models\\User', 3, 'MyApp', '9c0e9ff4d3483e212eb9d88554fd06947645c2e39f6a235f8fe00f0591f6f7b8', '[\"*\"]', '2023-11-28 07:53:42', '2023-11-27 20:10:29', '2023-11-28 07:53:42'),
(72, 'App\\Models\\User', 3, 'MyApp', '1a02dbf3fd47df47c4a458836b915574a62647ddcfdc3aa944de4927ef50837e', '[\"*\"]', '2023-11-27 21:28:50', '2023-11-27 21:23:18', '2023-11-27 21:28:50'),
(73, 'App\\Models\\User', 3, 'MyApp', '1d8b2c26c78a8d52387dc115fb26459a9deeba04202953f20a722fbb3ccb9c9d', '[\"*\"]', NULL, '2023-11-27 21:23:18', '2023-11-27 21:23:18'),
(74, 'App\\Models\\User', 3, 'MyApp', 'd813ddd0db3f0237c987b459251bd1c5d169a2c834fba93735281973afdf246b', '[\"*\"]', '2023-11-28 08:17:15', '2023-11-28 07:58:56', '2023-11-28 08:17:15'),
(75, 'App\\Models\\User', 3, 'MyApp', 'af84d2bf9175a729e90fe934d810ace00cf278e34f7c324c1df842bacc83605b', '[\"*\"]', NULL, '2023-11-28 08:17:50', '2023-11-28 08:17:50'),
(76, 'App\\Models\\User', 33, 'MyApp', 'c770ab25c160286bfb082a2b9d93d27e115c0819dc953d02ff40b397fb55e03e', '[\"*\"]', '2023-11-28 10:23:03', '2023-11-28 08:41:01', '2023-11-28 10:23:03'),
(77, 'App\\Models\\User', 3, 'MyApp', '09272e6b35b67db0599a7e28819e11f7a8a19411f5a7784a3ef5f507291e9c8c', '[\"*\"]', '2023-12-04 12:22:35', '2023-11-28 11:47:58', '2023-12-04 12:22:35'),
(78, 'App\\Models\\User', 39, 'MyApp', 'efdf4dede5943e0063d477e9cf93272ef519befb53339b25340431ce80f0128e', '[\"*\"]', NULL, '2023-11-28 12:10:02', '2023-11-28 12:10:02'),
(79, 'App\\Models\\User', 39, 'MyApp', '817f84f9d7fe6e46a02c6fa9d4fd802a2b1cccbafd522d9ba0d302bf0bfcbc39', '[\"*\"]', NULL, '2023-11-28 12:10:02', '2023-11-28 12:10:02'),
(80, 'App\\Models\\User', 39, 'MyApp', 'ad3078c9eeed19e342a8e84e658ff32d660a459d1f43c7373c6c6b746d12e476', '[\"*\"]', NULL, '2023-11-28 12:10:03', '2023-11-28 12:10:03'),
(81, 'App\\Models\\User', 39, 'MyApp', 'e28dbe16d74a2cdcfe806c3dc1a20f70e47c4455d71dfe9e1eae0120edadca6c', '[\"*\"]', '2023-11-28 12:41:43', '2023-11-28 12:10:03', '2023-11-28 12:41:43'),
(82, 'App\\Models\\User', 40, 'MyApp', '78fd14366c71878bb86aa6b533fb880453b28d0de35863ae9c0120770229c3a0', '[\"*\"]', NULL, '2023-11-28 12:22:22', '2023-11-28 12:22:22'),
(83, 'App\\Models\\User', 35, 'MyApp', '54c1da55d30d05a1b20691512babb36726125f586960b9efbe9f6653811a8fd0', '[\"*\"]', '2023-11-28 13:02:04', '2023-11-28 12:49:04', '2023-11-28 13:02:04'),
(84, 'App\\Models\\User', 41, 'MyApp', '9776ef4f5f16aaf3265842c6f8dbe30097fc1be3e222aea968f001728da58ca2', '[\"*\"]', '2023-11-28 13:20:07', '2023-11-28 13:18:45', '2023-11-28 13:20:07'),
(85, 'App\\Models\\User', 41, 'MyApp', '4607b57132af95bd0b5cf1182753f69ded60eab76c8b1c0754bad51293d04fb0', '[\"*\"]', '2023-11-28 13:59:53', '2023-11-28 13:20:34', '2023-11-28 13:59:53'),
(86, 'App\\Models\\User', 41, 'MyApp', 'f435fccdc89030fb70474d067f8e44fd9c7ff5552fdb8806acd0574482e21006', '[\"*\"]', '2023-11-30 13:15:24', '2023-11-30 13:05:07', '2023-11-30 13:15:24'),
(87, 'App\\Models\\User', 3, 'MyApp', 'f4170bf1e99e90aa34d10ab4869d26c0e2a0af6009f7286b37bb5547b23222ae', '[\"*\"]', '2023-12-16 01:49:53', '2023-12-01 14:07:00', '2023-12-16 01:49:53'),
(88, 'App\\Models\\User', 26, 'MyApp', '000760786b14899307c3d9aecff9afccb89784e65af3dc54d391cc3d2be2de9d', '[\"*\"]', NULL, '2023-12-01 14:50:21', '2023-12-01 14:50:21'),
(89, 'App\\Models\\User', 41, 'MyApp', 'e65677399f736072d2465005dbe1657d8b4c8a48077620901036247e588d0947', '[\"*\"]', NULL, '2023-12-04 23:29:52', '2023-12-04 23:29:52'),
(90, 'App\\Models\\User', 41, 'MyApp', 'a5543a526e9776c14c865acd64415e6e8fcad1c6c4ad2dbe1d8b8e138f3b9233', '[\"*\"]', '2023-12-06 12:14:52', '2023-12-06 11:19:04', '2023-12-06 12:14:52'),
(91, 'App\\Models\\User', 41, 'MyApp', '7251ca72c2875ec72b05510843ab7d6d2abb0502dce5f31a1049c19cbfef0b41', '[\"*\"]', '2023-12-06 13:16:30', '2023-12-06 12:29:49', '2023-12-06 13:16:30'),
(92, 'App\\Models\\User', 41, 'MyApp', 'dcd5995616c7b6fe89990da137b4b60e369f35aa7cd6a58fca33e7335454b5cd', '[\"*\"]', NULL, '2023-12-06 12:29:53', '2023-12-06 12:29:53'),
(93, 'App\\Models\\User', 42, 'MyApp', 'ca76b740b86b16390d277791265bbbfce2f1127aaf3695739b57164e12eca3c5', '[\"*\"]', '2023-12-07 11:14:41', '2023-12-07 11:12:19', '2023-12-07 11:14:41'),
(94, 'App\\Models\\User', 42, 'MyApp', '59375426f2add89bbd647f3ec60a4851fd31c5571a060705634d9a11f06068b8', '[\"*\"]', NULL, '2023-12-07 11:19:54', '2023-12-07 11:19:54'),
(95, 'App\\Models\\User', 42, 'MyApp', '66417a206bb577f64ba38ac5bf7a231db09837c4c136207f92a42519c79838e5', '[\"*\"]', '2023-12-07 14:51:16', '2023-12-07 13:26:58', '2023-12-07 14:51:16'),
(96, 'App\\Models\\User', 36, 'MyApp', 'fa1b55e11f268a2cf0d9291bd311b2b7e6a363c77b8c53d82ed742b8b15610c8', '[\"*\"]', '2023-12-07 14:54:51', '2023-12-07 14:54:01', '2023-12-07 14:54:51'),
(97, 'App\\Models\\User', 42, 'MyApp', 'f440b9616dfae24029ce84812f5c5a8e86c5ecc237dd083f58bb86e682c1127e', '[\"*\"]', '2023-12-14 17:09:12', '2023-12-07 14:55:43', '2023-12-14 17:09:12'),
(98, 'App\\Models\\User', 48, 'MyApp', 'ee85e891875c7a1e799c8296d126989decc414267e3db7a37fa4e93c395ba3cb', '[\"*\"]', NULL, '2023-12-07 16:40:45', '2023-12-07 16:40:45'),
(99, 'App\\Models\\User', 42, 'MyApp', '18e99e208189e2cc57d55597eafdb2510ba1b23d1bfbb34677caf1766e44e21d', '[\"*\"]', '2023-12-08 13:11:28', '2023-12-08 13:09:17', '2023-12-08 13:11:28'),
(100, 'App\\Models\\User', 50, 'MyApp', '42d319dfd403f99cb9ca6db7e802ec42df45d5c5d0754388fd83a321a4422d83', '[\"*\"]', '2023-12-11 13:56:12', '2023-12-08 13:12:33', '2023-12-11 13:56:12'),
(101, 'App\\Models\\User', 26, 'MyApp', '7c3dfde4387a682de8cedbd72134b32d8ce2c681ac0f3122662fdbf9d2ada76e', '[\"*\"]', NULL, '2023-12-08 14:50:24', '2023-12-08 14:50:24'),
(102, 'App\\Models\\User', 41, 'MyApp', '0324a396bcfe4a09350854895b648037efa2b8306ec9c8d484acef9e1d662872', '[\"*\"]', NULL, '2023-12-08 21:05:02', '2023-12-08 21:05:02'),
(103, 'App\\Models\\User', 41, 'MyApp', '87984e2d2e35c09bd210d2a163bf18e452a1cda8b3ea8d5ee7e649d306798dc6', '[\"*\"]', '2023-12-08 21:18:40', '2023-12-08 21:05:14', '2023-12-08 21:18:40'),
(104, 'App\\Models\\User', 41, 'MyApp', 'b417681afc7b6526a64322d236ce5a575d5ef115b6bf3ef93728838416017cd9', '[\"*\"]', NULL, '2023-12-08 21:54:24', '2023-12-08 21:54:24'),
(105, 'App\\Models\\User', 41, 'MyApp', '1a7f7012bcb5d72d13f6a88669988a4a19df380a3ffc059ef79855d4e3d08a38', '[\"*\"]', NULL, '2023-12-08 21:54:24', '2023-12-08 21:54:24'),
(106, 'App\\Models\\User', 41, 'MyApp', 'b554d3fe5b132b38dad96c80741f029738c01f910e25c1c417dd794f43f6b7ac', '[\"*\"]', NULL, '2023-12-08 21:55:08', '2023-12-08 21:55:08'),
(107, 'App\\Models\\User', 41, 'MyApp', '86fdbcc116719fe0c1da7d888b87b76d914a105b32fcdac3ed84606bd2f9ca3c', '[\"*\"]', NULL, '2023-12-08 21:55:08', '2023-12-08 21:55:08'),
(108, 'App\\Models\\User', 41, 'MyApp', 'e6c81f8f9257531d6691d0a0172e44ffe670274e9cf08898d9023738766d2979', '[\"*\"]', NULL, '2023-12-08 21:55:17', '2023-12-08 21:55:17'),
(109, 'App\\Models\\User', 41, 'MyApp', '5332cec7e7ee2b4fc4a5e9d68941b09720c4377a8df6ab790f92db82d2a4a35c', '[\"*\"]', '2023-12-08 22:16:04', '2023-12-08 21:55:26', '2023-12-08 22:16:04'),
(110, 'App\\Models\\User', 41, 'MyApp', '8e80c6fc6427debee0471f5acde41fccaab13acc281922d7b71e51342a26654f', '[\"*\"]', NULL, '2023-12-08 21:55:29', '2023-12-08 21:55:29'),
(111, 'App\\Models\\User', 41, 'MyApp', 'd07fe2b3e2dcbfafd0544e4ef78c416bd14affe370db6925cdeda5543e16a5bd', '[\"*\"]', '2023-12-09 18:00:42', '2023-12-09 16:13:57', '2023-12-09 18:00:42'),
(112, 'App\\Models\\User', 41, 'MyApp', 'fafb96a958f19b524ce2a28db5beaa0ec5f0c65af6159a3c670ef3a13693fa89', '[\"*\"]', '2023-12-09 19:49:08', '2023-12-09 18:24:46', '2023-12-09 19:49:08');

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
(17, '2023', '19/11/2023', 20231119, 13, 18, 21, 1, 3, 1, NULL, NULL),
(18, '2023', '19/11/2023', 20231119, 13, 18, 22, 1, 3, 0, NULL, NULL),
(19, '2023', '20/11/2023', 20231120, 13, 18, 22, 1, 3, 1, NULL, NULL),
(20, '2023', '28/11/2023', 20231128, 13, 22, 21, 1, 35, 1, NULL, NULL),
(21, '2023', '28/11/2023', 20231128, 14, 22, 21, 1, 35, 1, NULL, NULL),
(22, '2023', '28/11/2023', 20231128, 20, 22, 21, 1, 35, 0, NULL, NULL),
(23, '2023', '28/11/2023', 20231128, 19, 18, 25, 1, 41, 1, NULL, NULL),
(24, '2023', '28/11/2023', 20231128, 21, 18, 25, 1, 41, 0, NULL, NULL);

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
(1, 'eng', 'richard', 'lally', 'mlimila', '1', '0768448525', 'man.png', 'buza', 'Am staff at jitegemee secondary poaa majangili ndosisi yaaa pesaa yeaaa ok duuu BADO ERRORS', 'engrithom1@gmail.com', '15367', 3, 4, 15, '2023-04-10 11:44:58', '2023-11-28 08:15:28'),
(6, 'eng', 'fredy', 'focus', 'palapala', '1', '0686255811', 'man.png', 'manzese', 'Am staff at jitegemee secondary', 'fredy', '87005', 3, 4, 15, '2023-11-19 23:21:08', '2023-11-28 16:33:32'),
(7, 'tr', 'sample', 'ticha', 'mkali', '2', '0768448545', 'man.png', 'kibaha', 'Am staff at jitegemee secondary', 'tichamkali', '17598', 3, 2, 15, '2023-11-19 23:26:35', '2023-11-19 23:26:35'),
(8, 'Mr', 'admin2', 'admission', 'Thomson', '1', '0768448525', 'man.png', 'Sinza', 'Am staff at jitegemee secondary', 'admin2', '27935', 3, 3, 2, '2023-11-26 11:13:56', '2023-11-26 11:13:56'),
(9, 'Mr', 'Admin3', 'Bob', 'mikwala', '1', '0768448503', 'man.png', 'buza', 'Am staff at jitegemee secondary', 'admin3', '49426', 33, 3, 3, '2023-11-27 04:46:30', '2023-11-27 04:46:30'),
(10, 'Tr', 'admin1', 'George', 'Mlapulani', '1', '0768448525', 'man.png', 'mbezi kwa zena', 'Am staff at jitegemee secondary', 'admin1', '65976', 35, 3, 1, '2023-11-27 06:20:37', '2023-11-27 06:20:37'),
(12, 'Ms', 'Diana', 'Jonathan', 'Bategereza', '2', '0655349300', 'man.png', 'Kigamboni', 'Am staff at jitegemee secondary', 'diajon', '87327', 3, 3, 2, '2023-11-28 12:08:51', '2023-11-28 12:08:51'),
(13, 'Mr', 'Jovin', 'Ngemera', 'Muchunguzi', '1', '0756624588', 'man.png', 'Mkuranga', 'Am staff at jitegemee secondary', 'jovinmuchunguzi7@gmail.com', '33540', 3, 3, 2, '2023-11-28 12:11:57', '2023-11-28 12:11:57'),
(14, 'Ms', 'Pendo', 'Gabriel', 'Mwaijibe', '2', '0682675100', 'man.png', 'Chanika', 'Am staff at jitegemee secondary', 'pendofortie@gmail.com', '27809', 3, 4, 1, '2023-11-28 13:17:24', '2023-11-28 13:17:24'),
(15, 'Mr', 'Abel', 'Charles', 'Malaba', '1', '0749401112', 'man.png', 'Kurasini', 'Am staff at jitegemee secondary', 'abel', '94930', 3, 3, 2, '2023-12-07 11:08:27', '2023-12-07 14:42:44'),
(16, 'Mr', 'Robert', 'Epimark', 'Kessy', '1', '0715278118', 'man.png', 'Dar es salaam', 'Am staff at jitegemee secondary', 'jitegemee1985@gmail.com', '86253', 42, 4, 22, '2023-12-07 14:32:27', '2023-12-07 14:32:27'),
(17, 'Ms', 'Jacquline', 'Anthony', 'Mponzi', '2', '0716525250', 'man.png', 'Dar es salaam', 'Am staff at jitegemee secondary', 'jitegemeesec1985@gmail.com', '51636', 42, 4, 22, '2023-12-07 14:36:14', '2023-12-07 14:36:14'),
(18, 'Mr', 'Uddi', 'Daudi', 'Maleva', '1', '0714930876', 'man.png', 'Dar es salaam', 'Am staff at jitegemee secondary', 'uddimaleva@gmail.com', '62740', 42, 2, 1, '2023-12-07 14:41:17', '2023-12-07 14:41:17'),
(19, 'Mr', 'Joseph', 'Athuman', 'Senerwa', '1', '0689204265', 'man.png', 'Tabata Kinyerezi', 'Am staff at jitegemee secondary', 'josephsenerwa1981@icloud.com', '82383', 42, 2, 39, '2023-12-07 14:48:45', '2023-12-07 14:48:45'),
(20, 'Mr', 'Alen', 'Salvatory', 'Benardo', '1', '0717555739', 'man.png', 'Ubungo Kibangu', 'Am staff at jitegemee secondary', 'allenbenardo@gmail.com', '21567', 42, 2, 15, '2023-12-07 14:50:59', '2023-12-07 14:50:59'),
(21, 'Mr', 'Jacobo', 'Daud', 'Ezekiel', '1', '0710943988', 'man.png', 'Dar es salaam', 'Am staff at jitegemee secondary', 'ezekiel', '55233', 42, 4, 2, '2023-12-07 16:38:52', '2023-12-07 16:38:52'),
(22, 'Mr', 'Hakiel', 'Charo', 'Hakiel', '1', '0694394226', 'man.png', 'Dar es salaam', 'Am staff at jitegemee secondary', 'hakielcharo47@gmail.com', '55108', 42, 2, 39, '2023-12-07 16:44:13', '2023-12-07 16:44:13'),
(23, 'Mr', 'john', 'kasongwa', 'ambakisye', '1', '0717413617', 'man.png', 'kitunda dsm', 'Am staff at jitegemee secondary', 'johnambakisye2021@gmail.com', '97180', 42, 4, 3, '2023-12-08 13:11:28', '2023-12-08 13:11:28'),
(24, 'Mr', 'anthony', 'masemele', 'masemele', '1', '0715275669', 'man.png', 'mbagala', 'Am staff at jitegemee secondary', 'anthony@gmail.com', '94643', 41, 2, 35, '2023-12-09 17:15:46', '2023-12-09 17:15:46'),
(25, 'Mr', 'abdallah', 'mgonja', 'mgonja', '1', '0716692028', 'man.png', 'kibaha', 'Am staff at jitegemee secondary', 'mgonja@gmail.com', '19374', 41, 2, 21, '2023-12-09 17:18:16', '2023-12-09 17:18:16'),
(26, 'Mr', 'emmanuel', 'lyanya', 'lyanga', '1', '0714503390', 'man.png', 'kitunda', 'Am staff at jitegemee secondary', 'lyanga@gmail.com', '82556', 41, 2, 1, '2023-12-09 17:20:39', '2023-12-09 17:20:39'),
(27, 'Mr', 'hassan', 'hussein', 'tweve', '1', '0622807764', 'man.png', 'mbande', 'Am staff at jitegemee secondary', 'hussein@gmail.com', '49052', 41, 2, 1, '2023-12-09 17:22:38', '2023-12-09 17:22:38'),
(28, 'Mr', 'omary', 'abdallah', 'abdallah', '1', '0713494591', 'man.png', 'mbagala', 'Am staff at jitegemee secondary', 'abdallah@gmail.com', '27308', 41, 2, 1, '2023-12-09 17:24:36', '2023-12-09 17:24:36'),
(29, 'Ms', 'lucy', 'nyaulingo', 'nyaulingo', '2', '0765900319', 'man.png', 'tabata', 'Am staff at jitegemee secondary', 'nyaulingo@gmail.com', '43941', 41, 2, 21, '2023-12-09 17:32:24', '2023-12-09 17:32:24'),
(30, 'Mr', 'abdallah', 'sumry', 'abdallah', '1', '0714253678', 'man.png', 'chanika', 'Am staff at jitegemee secondary', 'sumry@gmail.com', '29849', 41, 2, 21, '2023-12-09 17:53:19', '2023-12-09 17:53:19'),
(31, 'Mr', 'jairo', 'silvester', 'jairo', '1', '0622675634', 'man.png', 'tabata', 'Am staff at jitegemee secondary', 'jairo@gmail.com', '46946', 41, 2, 27, '2023-12-09 17:57:41', '2023-12-09 17:57:41'),
(32, 'Ms', 'emma', 'mosha', 'mkede', '2', '0784632601', 'man.png', 'chanika', 'Am staff at jitegemee secondary', 'mkede@gmail.com', '53704', 41, 3, 1, '2023-12-09 19:34:58', '2023-12-09 19:34:58'),
(33, 'Ms', 'rehema', 'lisasi', 'lisasi', '2', '0715291949', 'man.png', 'kitunda', 'Am staff at jitegemee secondary', 'reheme@gmail.com', '86527', 41, 2, 24, '2023-12-09 19:37:09', '2023-12-09 19:37:09'),
(34, 'Mr', 'fadhili', 'ngajime', 'ngajime', '1', '0769795711', 'man.png', 'kigamboni', 'Am staff at jitegemee secondary', 'ngajime@gmail.com', '48557', 41, 2, 15, '2023-12-09 19:38:43', '2023-12-09 19:38:43'),
(35, 'Mr', 'daniel', 'daniel', 'nalingigwa', '1', '0715550777', 'man.png', 'tabata', 'Am staff at jitegemee secondary', 'nalingigwa@gmail.com', '17593', 41, 2, 15, '2023-12-09 19:40:55', '2023-12-09 19:40:55');

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
  `religion` varchar(50) NOT NULL,
  `birth_place` varchar(50) NOT NULL,
  `former_school` varchar(120) NOT NULL,
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

INSERT INTO `students` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `phone`, `photo`, `home_address`, `email`, `accademic_year`, `regist_year`, `nationality`, `birth_date`, `behavior`, `transfer_reason`, `relation_to`, `school_from`, `entry`, `admission`, `hearth`, `religion`, `birth_place`, `former_school`, `index_no`, `prem_no`, `student_status_id`, `parent_status_id`, `classroom_id`, `level_id`, `parent_id`, `user_id`, `created_at`, `updated_at`) VALUES
(13, 'richard', 'thomson', 'mlimila', '1', '0768448525', 'man.png', 'kigamboni', 'no email', '2023', '2023', 'tanzanian', '2008-02-20', 'no comment', 'follow parent', '1', 'msamala sec', '2', '2', '1', 'free', 'songea', 'msamala sec', '400000', '12345', 1, 1, 22, 1, 11, 3, '2023-11-20 00:12:29', '2023-12-11 13:02:43'),
(22, 'Emmanuel', 'Dominick', 'Mkai', '1', '0767865946', 'man.png', 'Kigamboni', 'no email', '2024', '2024', 'Tanzanian', '2009-12-15', 'no comment', 'Parent request', '1', 'Helasita Secondary', '2', '2', '1', 'Christian', 'Dar es salaam', 'Helasita Secondary', '419743', '0', 1, 1, 25, 2, 16, 42, '2023-12-11 05:00:00', NULL),
(23, 'Ilham', 'Hafidhi', 'Bashir', '2', '0753211152', 'man.png', 'Temeke Buza', 'no email', '2024', '2024', 'Tanzanian', '2010-06-02', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'Islamic', 'Dar es salaam', 'Jitegemee secondary', '419354', '0', 1, 1, 27, 2, 17, 42, '2023-12-11 05:00:00', NULL),
(24, 'Glads', 'Greyson', 'Dallu', '2', '0754688468', 'man.png', 'Temeke', 'no email', '2024', '2024', 'Tanzanian', '2010-03-01', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'Christian', 'Dar es salaam', 'JItegemee secondary', '419344', '0', 1, 3, 26, 2, 18, 42, '2023-12-11 05:00:00', NULL),
(25, 'Hawa', 'Hamis', 'Ismail', '2', '0714684869', 'man.png', 'Dar es salaam', 'no email', '2024', '2024', 'Tanzanian', '2006-02-10', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', 'Christian', 'Mtwara', 'Jitegemee secondary', '419349', '0', 1, 1, 25, 2, 19, 42, '2023-12-11 05:00:00', NULL),
(26, 'Janeth', 'Yohana', 'Safe', '2', '0715880210', 'man.png', 'Dar es salaam', 'no email', '2024', '2024', 'Tanzanian', '2008-08-27', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'Christian', 'Temeke', 'Jitegemee secondary', '419358', '0', 1, 1, 27, 2, 20, 42, '2023-12-11 05:00:00', NULL),
(27, 'GLORIA', 'MOSES', 'CHITAD', '2', '0755947747', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2009-04-30', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', 'CHRISTIAN', 'MWANZA', 'JITEGEMEE SECONDARY', '419345', '0', 1, 1, 26, 2, 21, 42, '2023-12-11 05:00:00', NULL),
(28, 'ELICE', 'JOHN', 'MAKOYE', '2', '0685882048', 'man.png', 'MWANZA', 'no email', '2024', '2024', 'TANZANIAN', '2009-09-09', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'CHRISTIAN', 'MWANZA', 'JITEGEMEE SECONDARY', '419337', '0', 1, 1, 27, 2, 22, 42, '2023-12-11 05:00:00', NULL),
(29, 'ASIA', 'SELEMANI', 'MTIPA', '2', '0758994352', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2010-01-15', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'ISLAMIC', 'TEMEKE', 'JITEGEMEE SECONDARY', '419325', '0', 1, 1, 27, 2, 23, 42, '2023-12-11 05:00:00', NULL),
(30, 'BATISEBA', 'ABDALLAH', 'MAGANGA', '2', '0715564878', 'man.png', 'TABORA', 'no email', '2024', '2024', 'TANZANIAN', '2008-10-31', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'CHRISTIAN', 'MUHEZA', 'JITEGEMEE SECONDARY', '419328', '0', 1, 1, 26, 2, 24, 42, '2023-12-11 05:00:00', NULL),
(31, 'NANCY', 'PATRICK', 'MATARA', '2', '0653130677', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2006-05-11', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'CHRISTIAN', 'KINONDONI', 'JITEGEMEE SECONDARY', '419536', '0', 1, 1, 26, 2, 25, 42, '2023-12-11 05:00:00', NULL),
(32, 'AISHA', 'HAMAD', 'MATEMELELA', '2', '0757558832', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2009-07-13', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'ISLAMIC', 'TEMEKE', 'JITEGEMEE SECONDARY', '419319', '0', 1, 1, 27, 2, 26, 42, '2023-12-11 05:00:00', NULL),
(33, 'TAUSI', 'MBARAKA', 'BENDE', '2', '0752717177', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2008-12-11', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'ISLAMIC', 'ILALA', 'JITEGEMEE SECONDARY', '419555', '0', 1, 1, 26, 2, 28, 42, '2023-12-11 05:00:00', NULL),
(34, 'KURUTHUMU', 'ABDALLAH', 'MOHAMEDI', '2', '0752067942', 'man.png', 'SINGIDA', 'no email', '2024', '2024', 'TANZANIAN', '2008-06-29', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'ISLAMIC', 'IRAMBA', 'JITEGEMEE SECONDARY', '419528', '0', 1, 1, 26, 2, 29, 42, '2023-12-11 05:00:00', NULL),
(35, 'SAMIR', 'SAID', 'WAKILY', '1', '0622223367', 'man.png', 'PWANI', 'no email', '2024', '2024', 'TANZANIAN', '2009-06-17', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', 'ISLAMIC', 'KIBAHA', 'JITEGEMEE SECONDARY', '419549', '0', 1, 1, 25, 2, 30, 42, '2023-12-11 05:00:00', '2023-12-16 01:49:53'),
(36, 'SELEIMAN', 'ABDALLAH', 'OMARY', '1', '0769000060', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2010-02-06', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'ISLAMIC', 'TEMEKE', 'JITEGEMEE SECONDARY', '419554', '0', 1, 1, 25, 2, 31, 42, '2023-12-11 05:00:00', NULL),
(37, 'LOVENESS', 'VASCO', 'SOKO', '2', '0783016200', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2010-08-10', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'CHRISTIAN', 'TEMEKE', 'JITEGEMEE SECONDARY', '419526', '0', 1, 1, 26, 2, 32, 42, '2023-12-11 05:00:00', NULL),
(38, 'BROWN', 'JOSEPH', 'CHOAJI', '1', '0782726494', 'man.png', 'MTWARA', 'no email', '2024', '2024', 'TANZANIAN', '2008-02-23', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'CHRISTIAN', 'MTWARA MANISPAA', 'JITEGEMEE SECONDARY', '419333', '0', 1, 1, 25, 2, 33, 42, '2023-12-11 05:00:00', NULL),
(39, 'NADYA', 'SAIS', 'MGOHA', '2', '0693584207', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2010-04-08', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'ISLAMIC', 'TEMEKE', 'JITEGEMEE SECONDARY', '419534', '0', 1, 3, 27, 2, 34, 42, '2023-12-11 05:00:00', NULL),
(40, 'OBRIA', 'JOHN', 'MSONGANZILA', '1', '0765596251', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2010-02-05', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', 'CHRISTIAN', 'ILALA', 'JITEGEMEE SECONDARY', '419539', '0', 1, 1, 27, 2, 35, 42, '2023-12-11 05:00:00', NULL),
(41, 'SELEMAN', 'SALUM', 'KABUNDA', '1', '0768868669', 'man.png', 'SHINYANGA', 'no email', '2024', '2024', 'TANZANIAN', '2010-06-04', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'ISLAMIC', 'KAHAMA', 'JITEGEMEE SECONDARY', '419552', '0', 1, 3, 25, 2, 36, 42, '2023-12-12 05:00:00', NULL),
(42, 'PRAISEGOD', 'FRANCIS', 'SEMPINDU', '1', '0713307945', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2010-03-27', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', 'CHRISTIAN', 'ILALA', 'JITEGEMEE SECONDARY', '419543', '0', 1, 1, 25, 2, 37, 42, '2023-12-12 05:00:00', NULL),
(43, 'KOMBO', 'HASSAN', 'SHAKA', '1', '0713761800', 'man.png', 'SINGIDA', 'no email', '2024', '2024', 'TANZANIAN', '2003-07-19', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'CHRISTIAN', 'IRAMBA', 'JITEGEMEE SECONDARY', '419523', '0', 1, 3, 25, 2, 38, 42, '2023-12-12 05:00:00', NULL),
(44, 'FAULATH', 'SHABAN', 'SAID', '2', '0714684869', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2007-08-16', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', 'ISLAMIC', 'TEMEKE', 'JITEGEMEE SECONDARY', '419339', '0', 1, 1, 25, 2, 19, 42, '2023-12-13 05:00:00', NULL),
(45, 'SAMIRA', 'SAID', 'KOMBO', '2', '0713267297', 'man.png', 'MOROGORO', 'no email', '2024', '2024', 'TANZANIAN', '2009-09-16', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'ISLAMIC', 'GAIRO', 'JITEGEMEE SECONDARY', '419550', '0', 1, 3, 25, 2, 39, 42, '2023-12-13 05:00:00', NULL),
(46, 'ALLEN', 'JOSEPH', 'MKAPA', '1', '0717244640', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2010-05-16', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'CHRISTIAN', 'TEMEKE', 'JITEGEMEE SECONDARY', '419322', '0', 1, 1, 25, 2, 40, 42, '2023-12-13 05:00:00', NULL),
(47, 'HUSNA', 'BENJAMINI', 'MARKO', '2', '0678218326', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2009-09-23', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', 'ISLAMIC', 'NYAMAGANA', 'JITEGEMEE SECONDARY', '419351', '0', 1, 3, 25, 2, 41, 42, '2023-12-13 05:00:00', NULL),
(48, 'MOSES', 'AMON', 'ASIMBINGWE', '1', '0758241000', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2009-11-17', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'ISLAMIC', 'TEMEKE', 'JITEGEMEE SECONDARY', '419531', '0', 1, 1, 25, 2, 42, 42, '2023-12-13 05:00:00', NULL),
(49, 'MWAFATIMA', 'DAUDA', 'SALUM', '2', '0686151848', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2008-06-17', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', 'ISLAMIC', 'ILALA', 'JITEGEMEE SECONDARY', '419533', '0', 1, 1, 25, 2, 43, 42, '2023-12-13 05:00:00', NULL),
(50, 'KELVIN', 'SHAGA', 'NG\'ANG\'ISE', '1', '0755141381', 'man.png', 'DARCES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2010-10-12', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'CHRISTIAN', 'TEMEKE', 'JITEGEMEE SECONDARY', '419522', '0', 1, 1, 25, 2, 44, 42, '2023-12-13 05:00:00', NULL),
(51, 'ELIAS', 'MASHAKA', 'MABOKO', '1', '0787124035', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2010-12-26', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'CHRISTIAN', 'TEMEKE', 'JITEGEMEE SECONDARY', '419336', '0', 1, 1, 25, 2, 46, 42, '2023-12-13 05:00:00', NULL),
(52, 'ERICK', 'MESANGA', 'MATIKO', '1', '0754988820', 'man.png', 'MARA', 'no email', '2024', '2024', 'TANZANIAN', '2008-10-26', 'no comment', 'no comment', '5', 'no school', '1', '1', '1', 'CHRISTIAN', 'TARIME', 'JITEGEMEE SECONDARY', '419338', '0', 1, 1, 25, 2, 47, 42, '2023-12-13 05:00:00', NULL),
(53, 'LUBAYNA', 'ABDALLAH', 'ABDILLAHI', '2', '0653887716', 'man.png', 'ZANZIBAR', 'no email', '2024', '2024', 'TANZANIAN', '2008-05-07', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', 'ISLAMIC', 'ZANZIBAR', 'JITEGEMEE SECONDARY', '419527', '0', 1, 1, 25, 2, 48, 42, '2023-12-13 05:00:00', NULL),
(54, 'AKRAM', 'HAMAD', 'HATIBU', '1', '0712007899', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2009-11-06', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'ISLAMIC', 'TEMEKE', 'JITEGEMEE SECONDARY', '419320', '0', 1, 1, 25, 2, 49, 42, '2023-12-13 05:00:00', NULL),
(55, 'JUMA', 'AMAN', 'BEGA', '1', '0783265131', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2010-05-29', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'ISLAMIC', 'TEMEKE', 'JITEGEMEE SECONDARY', '419516', '0', 1, 1, 25, 2, 50, 42, '2023-12-13 05:00:00', NULL),
(56, 'PHILEMON', 'HASTING\'S', 'PHILIPHO', '1', '0758088662', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2008-10-20', 'no comment', 'no comment', '6', 'no school', '1', '1', '1', 'CHRISTIAN', 'TEMEKE', 'JITEGEMEE SECONDARY', '419542', '0', 1, 4, 25, 2, 51, 42, '2023-12-13 05:00:00', NULL),
(57, '.BRAIN', 'GEORGE', 'MMBA', '1', '0656673578', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2008-11-16', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'CHRISTIAN', 'KINONDONI', 'JITEGEMEE SECONDARY', '419330', '0', 1, 1, 25, 2, 52, 42, '2023-12-13 05:00:00', NULL),
(58, 'HUSSEIN', 'SALEHE', 'SANGA', '1', '0692552514', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2007-01-02', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'ISLAMIC', 'MOROGORO MJINI', 'JITEGEMEE SECONDARY', '419352', '0', 1, 3, 25, 2, 53, 42, '2023-12-13 05:00:00', NULL),
(59, 'JOHN', 'INNOCENT', 'DANIEL', '1', '0745128733', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2007-11-28', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'CHRISTIAN', 'KINONDONI', 'JITEGEMEE SECONDARY', '419515', '0', 1, 3, 25, 2, 54, 42, '2023-12-13 05:00:00', NULL),
(60, 'PATRICK', 'SAIDI', 'KEMANAE', '1', '0778453834', 'man.png', 'SINGIDA', 'no email', '2024', '2024', 'TANZAINAN', '2009-06-28', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', 'CHRISTIAN', 'SINGIDA', 'JITEGEMEE SECONDARY', '419541', '0', 1, 1, 25, 2, 55, 42, '2023-12-13 05:00:00', NULL),
(61, 'ALFRED', 'LUMWECHA', 'SWAGI', '1', '0715182264', 'man.png', 'MWANZA', 'no email', '2024', '2024', 'TANZANIAN', '2006-03-03', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', 'CHRISTIAN', 'SENGEREMA', 'JITEGEMEE SECONDARY', '419314', '0', 1, 1, 25, 2, 56, 42, '2023-12-13 05:00:00', NULL),
(62, 'GELWAMA', 'LIBUTI', 'MAHENGE', '1', '0767712935', 'man.png', 'SONGWE', 'no email', '2024', '2024', 'TANZANIAN', '2009-11-12', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', 'CHRISTIAN', 'MOMBA', 'JITEGEMEE SECONDARY', '419340', '0', 1, 3, 26, 2, 57, 42, '2023-12-14 05:00:00', NULL),
(63, 'MAGRETH', 'MAJALIWA', 'MATHIAS', '2', '0743856820', 'man.png', 'MWANZA', 'no email', '2024', '2024', 'TANZANIAN', '2010-07-18', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', 'CHRISTIAN', 'MAGU', 'JITEGEMEE SECONDARY', '419613', '0', 1, 3, 26, 2, 59, 42, '2023-12-14 05:00:00', NULL),
(64, 'MOHAMED', 'MAULIDI', 'SALUM', '2', '0784062717', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2008-02-02', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'ISLAMIC', 'KINONDONI', 'JITEGEMEE SECONDARY', '419616', '0', 1, 3, 26, 2, 58, 42, '2023-12-14 05:00:00', NULL),
(65, 'SALUM', 'MAULIDI', 'SALUM', '1', '0784377787', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2009-11-03', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'ISLAMIC', 'ILALA', 'JITEGEMEE SECONDARY', '419615', '0', 1, 3, 25, 2, 58, 42, '2023-12-14 05:00:00', NULL),
(66, 'ABUBAKARI', 'AHMAD', 'MAKAMUA', '1', '0719561773', 'man.png', 'MOROGORO', 'no email', '2024', '2024', 'TANZANIAN', '2010-04-08', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', 'ISLAMIC', 'MIKUMI', 'JITEGEMEE SECONDARY', '419316', '0', 1, 1, 27, 2, 60, 42, '2023-12-14 05:00:00', NULL),
(67, 'REDEMTA', 'BASHIRI', 'HAKIKA', '2', '0762719911', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2010-08-02', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'ISLAMIC', 'ILALA', 'JITEGEMEE SECONDARY', '419545', '0', 1, 1, 27, 2, 27, 42, '2023-12-14 05:00:00', NULL),
(68, 'NOELY', 'JACOB', 'CHIKUSI', '1', '0782844438', 'man.png', 'DODOMA', 'no email', '2024', '2024', 'TANZANIAN', '2007-12-23', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'CHRISTIAN', 'KONGWA', 'JITEGEMEE SECONDARY', '419538', '0', 1, 1, 27, 2, 61, 42, '2023-12-14 05:00:00', NULL),
(69, 'YUMWEMA', 'DANIEL', 'CHARLES', '2', '0789848221', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2009-11-14', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'CHRISTIAN', 'KASULU', 'JITEGEMEE SECONDARY', '419558', '0', 1, 1, 26, 2, 62, 42, '2023-12-14 05:00:00', NULL),
(70, 'ASHA', 'CHANDE', 'MATUNGA', '2', '0658455250', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2006-01-22', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'ISLAMIC', 'TEMEKE', 'JITEGEMEE SECONDARY', '419324', '0', 1, 1, 27, 2, 63, 42, '2023-12-14 05:00:00', NULL),
(71, 'BARAKA', 'AYUBU', 'ZINGA', '1', '0685352676', 'man.png', 'DAR ES SALAAM', 'no email', '2024', '2024', 'TANZANIAN', '2008-12-19', 'no comment', 'no comment', '1', 'no school', '1', '1', '1', 'CHRISTIAN', 'ILALA', 'JITEGEMEE SECONDARY', '419327', '0', 1, 1, 27, 2, 64, 42, '2023-12-14 05:00:00', NULL);

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
  `level_id` int(2) NOT NULL DEFAULT 7,
  `code` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject`, `level_id`, `code`, `user_id`, `created_at`, `updated_at`) VALUES
(21, 'biology', 7, '033', 41, '2023-11-19 23:27:39', '2023-12-06 11:30:38'),
(22, 'physics', 7, '031', 41, '2023-11-19 23:27:53', '2023-12-06 11:31:10'),
(23, 'chemistry', 7, '032', 41, '2023-11-20 11:22:27', '2023-12-06 11:31:28'),
(24, 'civics', 7, '011', 41, '2023-11-20 11:22:57', '2023-12-06 11:31:46'),
(25, 'history', 7, '012', 41, '2023-11-20 11:23:19', '2023-12-06 11:33:02'),
(26, 'kiswahili', 7, '021', 41, '2023-11-20 11:23:43', '2023-12-06 11:33:25'),
(27, 'geography', 7, '013', 41, '2023-11-20 11:24:13', '2023-12-06 13:15:57'),
(29, 'basic mathematics', 7, '041', 41, '2023-11-20 11:25:05', '2023-11-30 13:14:36'),
(30, 'commerce', 7, '061', 41, '2023-11-20 11:25:43', '2023-12-06 11:34:25'),
(31, 'Information & Compuer Studies', 7, '036', 41, '2023-11-20 11:26:49', '2023-12-06 11:46:11'),
(32, 'advanced mathematics', 8, '142', 41, '2023-11-20 11:28:19', '2023-11-30 13:11:50'),
(33, 'basic applied mathematics', 8, '141', 41, '2023-11-20 11:28:57', '2023-11-30 13:09:26'),
(35, 'french', 7, '023', 41, '2023-11-20 11:29:59', '2023-11-30 13:15:04'),
(36, 'music', 7, '1450', 26, '2023-11-20 11:30:17', '2023-11-20 11:30:17'),
(37, 'general studies', 8, '111', 41, '2023-11-20 11:31:03', '2023-11-30 13:13:24'),
(39, 'history', 8, '112', 41, '2023-12-01 14:08:36', '2023-12-06 11:40:48'),
(40, 'Geography', 8, '113', 41, '2023-12-04 12:22:35', '2023-12-06 11:41:20'),
(41, 'Book Keeping', 7, '062', 41, '2023-12-06 11:43:53', '2023-12-06 11:43:53'),
(42, 'chemistry', 8, '132', 41, '2023-12-06 12:58:05', '2023-12-06 12:58:05'),
(43, 'commerce', 8, '152', 41, '2023-12-06 12:58:42', '2023-12-06 12:58:42'),
(44, 'Accountancy', 8, '153', 41, '2023-12-06 12:59:31', '2023-12-06 12:59:31'),
(45, 'physics', 8, '131', 41, '2023-12-06 13:00:08', '2023-12-06 13:00:08'),
(46, 'Economics', 8, '151', 41, '2023-12-06 13:07:42', '2023-12-06 13:07:42'),
(48, 'Biology', 8, '133', 41, '2023-12-06 13:08:10', '2023-12-06 13:08:10'),
(49, 'Kiswahili', 8, '121', 41, '2023-12-06 13:08:37', '2023-12-06 13:08:37'),
(50, 'English Language', 8, '122', 41, '2023-12-06 13:14:52', '2023-12-06 13:14:52'),
(51, 'English', 7, '022', 41, '2023-12-06 13:16:30', '2023-12-06 13:16:30');

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
(3, 'engrithom1@gmail.com', '$2y$10$xpwTVXRFvwuIQwTCLJPmUeLGyW5ctQhydWb2tU6b7GYgtUhHkg5hC', 'staff', 4, '15367', 'active', NULL, '2023-04-10 11:44:58', '2023-11-28 08:16:41'),
(26, 'fredy', '$2y$10$dUorIlG2fzg/pGSo7LL9Duil.AnLEzQeCqMSIsTDsI4T8tvDtq7CO', 'staff', 4, '87005', 'active', NULL, '2023-11-19 23:21:08', '2023-11-19 23:21:08'),
(27, 'tichamkali', '$2y$10$2lBdUHGZvZyn3vKmNQXmfuHnzgUgJH2BmBAEEaT4bclag24qryLOe', 'staff', 2, '17598', 'active', NULL, '2023-11-19 23:26:35', '2023-11-19 23:26:35'),
(28, '400000', '$2y$10$diC4WwBuLIeZCjntiQfoGOxM/JxX3KPim.0wodZeSxengs/ZDKrvq', 'student', 1, '400000', 'active', NULL, '2023-11-20 00:12:29', '2023-11-20 00:12:29'),
(33, 'admin2', '$2y$10$7jXNPTURRiaE/UGcp2.CZOezv9aqPJYRZOATYi50piJ.d03TiFJ4O', 'staff', 3, '27935', 'active', NULL, '2023-11-26 11:13:56', '2023-11-26 11:13:56'),
(35, 'admin3', '$2y$10$ZX452P/isumpCIXkK9jNvuF8C8TURmrf3JKjcJrjKti8CYlkZPljO', 'staff', 3, '49426', 'active', NULL, '2023-11-27 04:46:30', '2023-11-27 04:46:30'),
(36, 'admin1', '$2y$10$Nf1Lw1Zu/fUnQM55TiihjuRA27J30S7M6jVUVCpP26H.nrNtUR5bu', 'staff', 3, '65976', 'active', NULL, '2023-11-27 06:20:37', '2023-11-27 06:20:37'),
(37, 'aucho', '$2y$10$agmN.ihGw7gKXssKWVSwBu6K/s/eSPP1vyiAAe4W6jiyVKIU8Euku', 'staff', 2, '63145', 'active', NULL, '2023-11-28 08:59:06', '2023-11-28 08:59:06'),
(39, 'diajon', '$2y$10$qUdgsRLMNq/cYPNxSjK8sOXTGRfRHm/DZX2XLZBzQM.yxQ6sNXcbO', 'staff', 3, '87327', 'active', NULL, '2023-11-28 12:08:51', '2023-11-28 12:08:51'),
(40, 'jovinmuchunguzi7@gmail.com', '$2y$10$HWCHl7PviyXGCw9icoiqYu0RPMK25XRoxjFk2Cy0SxCjKnM5pzAtO', 'staff', 3, '33540', 'active', NULL, '2023-11-28 12:11:57', '2023-11-28 12:11:57'),
(41, 'pendofortie@gmail.com', '$2y$10$7pU0HKAs7bR3qe8mK9LXjuRuWfaaenwbufiPX5aS3uCohYGBcaTEO', 'staff', 4, '27809', 'active', NULL, '2023-11-28 13:17:24', '2023-11-28 13:20:07'),
(42, 'abel', '$2y$10$x363Wh6sW3ODvSM2yENoHukoFA95VabNFjCgmOAkKgZUeSwW7vtyK', 'staff', 4, '94930', 'active', NULL, '2023-12-07 11:08:27', '2023-12-07 11:14:19'),
(43, 'jitegemee1985@gmail.com', '$2y$10$h615k9s4MjF6Ir.HGo0jXOurXt8IAG5cEB.nqes3ZxAd0myBP3DaG', 'staff', 4, '86253', 'active', NULL, '2023-12-07 14:32:27', '2023-12-07 14:32:27'),
(44, 'jitegemeesec1985@gmail.com', '$2y$10$Se3Yfd9fshQfP9Ihc7hBAenfpEl6aIlvKCobZtfMWmNCOhxuFC7zq', 'staff', 4, '51636', 'active', NULL, '2023-12-07 14:36:14', '2023-12-07 14:36:14'),
(45, 'uddimaleva@gmail.com', '$2y$10$8n7v42keVwBHNM3cv0CcaOMjA1bGNzSMeTAvdNXorwfJuv45TwfmS', 'staff', 2, '62740', 'active', NULL, '2023-12-07 14:41:17', '2023-12-07 14:41:17'),
(46, 'josephsenerwa1981@icloud.com', '$2y$10$ccVWIiRA.g9h4NrUC2adnOYPpXgCzY1x4LmelPf/5y.dXTDuAKWfS', 'staff', 2, '82383', 'active', NULL, '2023-12-07 14:48:45', '2023-12-07 14:48:45'),
(47, 'allenbenardo@gmail.com', '$2y$10$A104HkFL8YrVR2F7ekLcm.oS2K7ktVre24/ecZoC4ImohtTwHtfhe', 'staff', 2, '21567', 'active', NULL, '2023-12-07 14:50:59', '2023-12-07 14:50:59'),
(48, 'ezekiel', '$2y$10$rfKmNFo8qp3sIOHp89..pOBdcYg1mjyxHfL8tH1ESNGu5KK6B1BIS', 'staff', 4, '55233', 'active', NULL, '2023-12-07 16:38:52', '2023-12-07 16:38:52'),
(49, 'hakielcharo47@gmail.com', '$2y$10$/6Rx0juhcfXpWm1iKtafwOKHomeKXfrKTKIkI7lAGZoGgmhIzrlha', 'staff', 2, '55108', 'active', NULL, '2023-12-07 16:44:13', '2023-12-07 16:44:13'),
(50, 'johnambakisye2021@gmail.com', '$2y$10$e4lVo/AW78wJ1.AoH3laieoe1nMgrhP5LzRgHQnnGsSpRNymJrCnK', 'staff', 4, '97180', 'active', NULL, '2023-12-08 13:11:28', '2023-12-08 13:11:28'),
(51, 'anthony@gmail.com', '$2y$10$djuQRB8BbiUOb7MAInTJ5.g9X13QTsm9HJR9lnl7GPJwR2RRg2Gke', 'staff', 2, '94643', 'active', NULL, '2023-12-09 17:15:46', '2023-12-09 17:15:46'),
(52, 'mgonja@gmail.com', '$2y$10$u3ku37mcQXbOaQzmOd15BOYYts1ra5mEqzyWcWbDM3iSXA8dVhvO2', 'staff', 2, '19374', 'active', NULL, '2023-12-09 17:18:16', '2023-12-09 17:18:16'),
(53, 'lyanga@gmail.com', '$2y$10$jjTm7JmQtEQQ56dNRicuAeLC04wM1XZp/2QUDkG2rVdbE15Tn77A.', 'staff', 2, '82556', 'active', NULL, '2023-12-09 17:20:39', '2023-12-09 17:20:39'),
(54, 'hussein@gmail.com', '$2y$10$z0FkAjuFSiYvUyHySevEu.5.UZY8mmsSEJ.PSMg4m.rR.csOpXvHu', 'staff', 2, '49052', 'active', NULL, '2023-12-09 17:22:38', '2023-12-09 17:22:38'),
(55, 'abdallah@gmail.com', '$2y$10$xmua2kShk18b54xekYOfWeQeeQibEvzwD6KClI8eOlLJvNlahaQ5S', 'staff', 2, '27308', 'active', NULL, '2023-12-09 17:24:36', '2023-12-09 17:24:36'),
(56, 'nyaulingo@gmail.com', '$2y$10$nttfCHG3r2/gKG8d1XSnIuk5MLf1j9CJh04ungRMK2DAag7pTwb6.', 'staff', 2, '43941', 'active', NULL, '2023-12-09 17:32:24', '2023-12-09 17:32:24'),
(57, 'sumry@gmail.com', '$2y$10$b8piOPrKw9bz1RrwqQ0SXuVrVGG1y9KC.ZQSK4JaYy6hhbItTv0VG', 'staff', 2, '29849', 'active', NULL, '2023-12-09 17:53:19', '2023-12-09 17:53:19'),
(58, 'jairo@gmail.com', '$2y$10$LAxOqzPpzUum3qoeTdpWm.IS3jiJrUl8W5FBs6F6IleudmCJw.bQS', 'staff', 2, '46946', 'active', NULL, '2023-12-09 17:57:41', '2023-12-09 17:57:41'),
(59, 'mkede@gmail.com', '$2y$10$xomf0bJIDUuBrjcb36gy5uzpCm6oqWkITIjNGjR8aEBVPGGDQOivC', 'staff', 3, '53704', 'active', NULL, '2023-12-09 19:34:58', '2023-12-09 19:34:58'),
(60, 'reheme@gmail.com', '$2y$10$Uezgby.8vS8yF9mRmy45L.zT68Lklj8AhoMLb.ucNydJTzeedGZpa', 'staff', 2, '86527', 'active', NULL, '2023-12-09 19:37:09', '2023-12-09 19:37:09'),
(61, 'ngajime@gmail.com', '$2y$10$ylJAItMN0dSvX/VDSKC1muNDTPkRoGqt/LKyUOmizmxDCGe7Bw55S', 'staff', 2, '48557', 'active', NULL, '2023-12-09 19:38:43', '2023-12-09 19:38:43'),
(62, 'nalingigwa@gmail.com', '$2y$10$28Aw3n.GhLBTF0Mqu7mpgeIMhfkEFV1KTXbYvKleP2lgOcqYaibty', 'staff', 2, '17593', 'active', NULL, '2023-12-09 19:40:55', '2023-12-09 19:40:55'),
(63, '419743', '$2y$10$1mVNUrxoClif/GxGT..2Mekf/au4ZRbB079Bf1.eyJKDtVMWsZwJm', 'student', 1, '419743', 'active', NULL, '2023-12-11 15:09:13', '2023-12-11 15:09:13'),
(64, '419354', '$2y$10$5YAFI71tPqwYVaJpbgbXp.a4eO2BGUTUtjZYonoMkibu.HvvOJT1a', 'student', 1, '419354', 'active', NULL, '2023-12-11 15:42:38', '2023-12-11 15:42:38'),
(65, '419344', '$2y$10$N9VSityDb9x7FK6akCwsYuqtwGXciwBuoVoDEsz7jYrsxPz4Yfiqa', 'student', 1, '419344', 'active', NULL, '2023-12-11 16:13:09', '2023-12-11 16:13:09'),
(66, '419349', '$2y$10$9EI4Qu487NF.7aZWVMPng.LyVA1DwTg22bV2yiXOdGj8saRu7aPTm', 'student', 1, '419349', 'active', NULL, '2023-12-11 16:27:24', '2023-12-11 16:27:24'),
(67, '419358', '$2y$10$H/jdBUdGUxHE2E7AR.vaT.ffsj9vIYyt2UEk/weosaLPdEFPTg8ye', 'student', 1, '419358', 'active', NULL, '2023-12-11 16:46:51', '2023-12-11 16:46:51'),
(68, '419345', '$2y$10$4W2keUqWtYvqqh1O2mxf..0IHfUsF4mziEEcL1ukY1WhzKBzXV1b6', 'student', 1, '419345', 'active', NULL, '2023-12-11 16:53:34', '2023-12-11 16:53:34'),
(69, '419337', '$2y$10$c3hdqMVS/wcoC/1sAe/faeu5N7o/2q9UMVoAQwUXDTHbcQFm1yote', 'student', 1, '419337', 'active', NULL, '2023-12-11 16:58:37', '2023-12-11 16:58:37'),
(70, '419325', '$2y$10$y45efLBZxxhzpr.gQUcjROHANnw/ALDMRlrPDqBA0Dl7YzXplvKYG', 'student', 1, '419325', 'active', NULL, '2023-12-11 17:06:53', '2023-12-11 17:06:53'),
(71, '419328', '$2y$10$lLeHFYUKthW2M1IzTp5xhODdMrM9PhKj/o7iroJweTcEnJRUT7zyi', 'student', 1, '419328', 'active', NULL, '2023-12-11 17:13:31', '2023-12-11 17:13:31'),
(72, '419536', '$2y$10$bD1Z3Mlie80I6LipljvTwO.FOMpp5Kq0cx.GRX/kATl1AVilOqowS', 'student', 1, '419536', 'active', NULL, '2023-12-11 17:19:54', '2023-12-11 17:19:54'),
(73, '419319', '$2y$10$l3Xf.3AWE03NTqnw8/khueGAcqk4zKubIzbcidPUFbx0TZpC1t9v6', 'student', 1, '419319', 'active', NULL, '2023-12-11 17:24:47', '2023-12-11 17:24:47'),
(74, '419555', '$2y$10$HEWg6krEgdAsgD4w4kmu1.TJL9qLbkxROlXwd80C08i22zNmqxcAa', 'student', 1, '419555', 'active', NULL, '2023-12-11 17:33:14', '2023-12-11 17:33:14'),
(75, '419528', '$2y$10$eH/pe1hBbHrEbEFFgobnnOl3kAqWvQTmG1hd8jR/RjDOLyP8SdfXq', 'student', 1, '419528', 'active', NULL, '2023-12-11 17:38:23', '2023-12-11 17:38:23'),
(76, '419549', '$2y$10$Kd4HHCA8e7kcN0Gw.3DoV.0uyPL1gby2AS2buzOSEYQ52VBtah/O.', 'student', 1, '419549', 'active', NULL, '2023-12-11 17:43:37', '2023-12-11 17:43:37'),
(77, '419554', '$2y$10$331x1RqMZl1t6Prl9G7giOtbKJOlZn82y9HWlvldmudjzd2nQ6q/K', 'student', 1, '419554', 'active', NULL, '2023-12-11 17:48:52', '2023-12-11 17:48:52'),
(78, '419526', '$2y$10$dm3jo5i39Se/9IBm..DBfOdloDAQdvSzjbiq8UyX0Actem4bmUcCG', 'student', 1, '419526', 'active', NULL, '2023-12-11 17:59:54', '2023-12-11 17:59:54'),
(79, '419333', '$2y$10$mWWAB9Q.eBnUCtyIfIfBlet1vHp220KgAtaQEBds/K6qCeJHnei2i', 'student', 1, '419333', 'active', NULL, '2023-12-11 18:04:19', '2023-12-11 18:04:19'),
(80, '419534', '$2y$10$qga0e0joVN6.cMWSewdbaeo9vUR3BAN5DRRgzOpMzn1uGjCCmmBsS', 'student', 1, '419534', 'active', NULL, '2023-12-11 18:10:24', '2023-12-11 18:10:24'),
(81, '419539', '$2y$10$MmsX8FQsdLbDAei.qNvjZ.WpmYkJeDSRxi.PAhpopjwlI46UL2AJa', 'student', 1, '419539', 'active', NULL, '2023-12-11 18:15:18', '2023-12-11 18:15:18'),
(82, '419552', '$2y$10$xsHi5J2QmPs/ftBH.7qQjuLaUtw.ZmAKqZCIn2ytMwySoCm44Paea', 'student', 1, '419552', 'active', NULL, '2023-12-12 16:39:43', '2023-12-12 16:39:43'),
(83, '419543', '$2y$10$55MT3Xx9nbibGmbv4dahkeuCtAt/l4CAACFFAUzubzlAW0cdIQZBq', 'student', 1, '419543', 'active', NULL, '2023-12-12 16:45:40', '2023-12-12 16:45:40'),
(84, '419523', '$2y$10$q98V8oSkjXVB./dUqjIhsetP5Y9dl4dStU2xAQkl3qHO9VDzYCs/6', 'student', 1, '419523', 'active', NULL, '2023-12-12 16:53:14', '2023-12-12 16:53:14'),
(85, '419339', '$2y$10$oJq6GkNvVKKMhfSwPFadK.WAnEcqI8zPJ6BoN7pDsSgxai6Nu5LBm', 'student', 1, '419339', 'active', NULL, '2023-12-13 12:56:24', '2023-12-13 12:56:24'),
(86, '419550', '$2y$10$g7bXOC9wtn77mR98gZplB.zMPBf/g5tnjfGsWBrZT7l/vd.6V/GLe', 'student', 1, '419550', 'active', NULL, '2023-12-13 13:01:35', '2023-12-13 13:01:35'),
(87, '419322', '$2y$10$jkxA59XXygtO0unWnk57aefHk46OYw1xvT1Pd9Vw62C5E7kPQ3vQm', 'student', 1, '419322', 'active', NULL, '2023-12-13 13:07:36', '2023-12-13 13:07:36'),
(88, '419351', '$2y$10$laQaqMtKi8FJXXw9L/iYNeDKFWWO9uECGvXydeqaskQomQMo1H92S', 'student', 1, '419351', 'active', NULL, '2023-12-13 13:35:48', '2023-12-13 13:35:48'),
(89, '419531', '$2y$10$56l49MYAWrLBe/NQsAcF1uEg42sXfzQuxbAWoSVVLlRMEgP3k2.nW', 'student', 1, '419531', 'active', NULL, '2023-12-13 13:42:24', '2023-12-13 13:42:24'),
(90, '419533', '$2y$10$0VntC4C3MpkNeIhAcnCHYuHJW.RNTAEExaqyvJJBbC1rvtrR7NElO', 'student', 1, '419533', 'active', NULL, '2023-12-13 13:47:06', '2023-12-13 13:47:06'),
(91, '419522', '$2y$10$Xo2J9hN9Flqc/l3Ek.8k4uIC9jf7VfRqPyQM3btugOI4gmKG5y90e', 'student', 1, '419522', 'active', NULL, '2023-12-13 13:58:54', '2023-12-13 13:58:54'),
(92, '419336', '$2y$10$9pBFnPj6Lx72QJ1KMxe7IOP2nyWUP084AgsLi8Aqwddz7ZVoEpZ82', 'student', 1, '419336', 'active', NULL, '2023-12-13 14:07:13', '2023-12-13 14:07:13'),
(93, '419338', '$2y$10$Vc63PkQoMJyrX4u6DAhnU.O7t5K07mW9X1tLz9hT4mmE73hG6B6FK', 'student', 1, '419338', 'active', NULL, '2023-12-13 14:13:01', '2023-12-13 14:13:01'),
(94, '419527', '$2y$10$b2yAEpAZqLRT/2nq7rbEvu.oHGot0kevbrpSjTK9Zph2FHsB3M8QS', 'student', 1, '419527', 'active', NULL, '2023-12-13 14:17:40', '2023-12-13 14:17:40'),
(95, '419320', '$2y$10$KNgt4ZvhAB0YgZ33p8JzOO2LKy4Ax7kAy62j0tsQD9jRsshitA2Eu', 'student', 1, '419320', 'active', NULL, '2023-12-13 14:22:16', '2023-12-13 14:22:16'),
(96, '419516', '$2y$10$46CP3GPcUbBJ5NOL6D7n8.myPwN93raSQF0RXt3lNoNsr7Q6OJucy', 'student', 1, '419516', 'active', NULL, '2023-12-13 14:25:53', '2023-12-13 14:25:53'),
(97, '419542', '$2y$10$BUlLoubIDbVVWBS519aJa.myOyq3RhR7OOtxBufuJ7opyGYNM.v.2', 'student', 1, '419542', 'active', NULL, '2023-12-13 14:31:03', '2023-12-13 14:31:03'),
(98, '419330', '$2y$10$18hoUnoBkeUIngXbWv4m/O3tzBoltDcVATrr96Z1j8oOrRJzJawXO', 'student', 1, '419330', 'active', NULL, '2023-12-13 14:36:50', '2023-12-13 14:36:50'),
(99, '419352', '$2y$10$jbU/EWWNPxCPoNvS.Wi.d.h8dnn95Ixhr8C9kJG9P80/uckksA0wu', 'student', 1, '419352', 'active', NULL, '2023-12-13 14:41:11', '2023-12-13 14:41:11'),
(100, '419515', '$2y$10$3AnC8PwF67oz8CpjJ99CIeGgGkafZv8PXk1/5PiHDb3mlkeG2DE9y', 'student', 1, '419515', 'active', NULL, '2023-12-13 14:45:38', '2023-12-13 14:45:38'),
(101, '419541', '$2y$10$TTp84s2g9AL6RgofBWIBD.dj8iJMcav3lLDMSyVt3qAKv0.PUZwsi', 'student', 1, '419541', 'active', NULL, '2023-12-13 14:53:03', '2023-12-13 14:53:03'),
(102, '419314', '$2y$10$pZFRLwphbRrYuz9gMnj0UOvdvuDAtgvwgMZHfVqpSVarKZhaxXNo2', 'student', 1, '419314', 'active', NULL, '2023-12-13 14:58:21', '2023-12-13 14:58:21'),
(103, '419340', '$2y$10$TGsAkBGu06mzg/mnJum6MeAjMIFq4RA7EeeCWgslUSkC38AJz3Xdi', 'student', 1, '419340', 'active', NULL, '2023-12-14 12:48:06', '2023-12-14 12:48:06'),
(104, '419613', '$2y$10$t7DKRK5B.CsdtNioZtv.tudAafcFEGz3EPSBRKeitdunpfHLTvLYC', 'student', 1, '419613', 'active', NULL, '2023-12-14 15:33:30', '2023-12-14 15:33:30'),
(105, '419616', '$2y$10$hFnH9O/rN8JxyCHB4v5ljOZ23pEOZFerIrGmw1Y71j3ivuAhcYUbm', 'student', 1, '419616', 'active', NULL, '2023-12-14 15:43:09', '2023-12-14 15:43:09'),
(106, '419615', '$2y$10$r686tAb4AP2JpLw1zg.FGekB5zzt/qDGLniNFI.fia/CAUGDklKBm', 'student', 1, '419615', 'active', NULL, '2023-12-14 15:46:55', '2023-12-14 15:46:55'),
(107, '419316', '$2y$10$5RqitXFe29oRl8Pg2Fn/8O0qbiD.i9yAlxemg/tRy4yk9J1qG0aza', 'student', 1, '419316', 'active', NULL, '2023-12-14 15:54:00', '2023-12-14 15:54:00'),
(108, '419545', '$2y$10$q0nyOpx9rgFICmRxz.CIduDSuye8vdkvMI7/1TIS0/IZ2Wem438D2', 'student', 1, '419545', 'active', NULL, '2023-12-14 16:10:36', '2023-12-14 16:10:36'),
(109, '419538', '$2y$10$iTA7I.QeKxy4UZXhzvfh5eMWaWTtImfWaIAWTYxzKO7.CT.uqAW3G', 'student', 1, '419538', 'active', NULL, '2023-12-14 16:50:48', '2023-12-14 16:50:48'),
(110, '419558', '$2y$10$U4703emZhx0CKFFYJoqA..4IJU1lhTickHYIQWOjM1zH1vZWhmSRq', 'student', 1, '419558', 'active', NULL, '2023-12-14 16:55:29', '2023-12-14 16:55:29'),
(111, '419324', '$2y$10$AXJSGS4rwvhbrt/lCbj3z.u.6MOIb7Vipy/Gk.93pgAwa6wMp/Nhe', 'student', 1, '419324', 'active', NULL, '2023-12-14 17:04:22', '2023-12-14 17:04:22'),
(112, '419327', '$2y$10$dZybbG8iR4/5ArJ0J2vuC.GEGtVM409sJUvvRpmUnlTvsY6OhAEAO', 'student', 1, '419327', 'active', NULL, '2023-12-14 17:09:12', '2023-12-14 17:09:12');

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
-- Indexes for table `fee_statuses`
--
ALTER TABLE `fee_statuses`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `deposit_slips`
--
ALTER TABLE `deposit_slips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `duration_payments`
--
ALTER TABLE `duration_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `fee_balances`
--
ALTER TABLE `fee_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `fee_payments`
--
ALTER TABLE `fee_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `fee_statuses`
--
ALTER TABLE `fee_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=491;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `parent_statuses`
--
ALTER TABLE `parent_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `relation_tos`
--
ALTER TABLE `relation_tos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `remove_fees`
--
ALTER TABLE `remove_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `session_atendances`
--
ALTER TABLE `session_atendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `student_statuses`
--
ALTER TABLE `student_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

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
