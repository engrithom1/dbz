-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2023 at 11:01 AM
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
(18, 'A1', '23', 3, 1, 3, 0, '2023-11-19 23:28:58', '2023-11-24 07:17:28', '11', '21,22,23,25,27,24,26,28,29,30,35', 0),
(19, 'V PB', '45', 3, 5, 26, 0, '2023-11-19 23:36:54', '2023-11-20 00:20:08', '11', '22,21', 11),
(22, 'A2', '21', 3, 1, 27, 0, '2023-11-24 07:15:57', '2023-11-24 07:15:57', '0', '21,23,22,24,26,28,25,27,29,30,36', 0);

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
(12, 'MSETO', '32,37,40', 'Advanced mathematics, General studies, Geography,', 3, '2023-12-01 05:06:59', '2023-12-01 05:07:37'),
(13, 'PLL', '32,37,39', 'Advanced mathematics, General studies, History,', 3, '2023-12-07 05:21:09', '2023-12-07 05:21:35');

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
(11, '2023', 50000.00, 'ckckckckc', 'via CRDB', 13, 3, 0, '2023-11-20 00:17:15', '2023-11-20 00:17:15'),
(12, '2023', 500000.00, 'Hkiktl', 'pay for fees', 20, 35, 0, '2023-11-27 05:48:52', '2023-11-27 05:48:52');

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
(24, '2023', 30000.00, 13, 18, 1, 3, 11, 61, '2023-11-20 00:17:42', '2023-11-20 00:17:42'),
(25, '2023', 30000.00, 20, 22, 1, 35, 11, 68, '2023-11-27 06:06:00', '2023-11-27 06:06:00'),
(26, '2023', 50000.00, 20, 22, 1, 35, 13, 70, '2023-11-27 06:07:03', '2023-11-27 06:07:03'),
(27, '2023', 200000.00, 20, 22, 1, 35, 12, 69, '2023-11-27 06:07:57', '2023-11-27 06:07:57'),
(28, '2023', 220000.00, 20, 22, 1, 35, 15, 71, '2023-11-27 06:08:32', '2023-11-27 06:08:32');

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
(11, 'Registration fee', 30000.00, 0.00, 0, 1, 0, 3, '2023-11-19 23:27:12', '2023-11-19 23:27:12'),
(12, 'Form I tuition fee', 570000.00, 0.00, 0, 1, 1, 3, '2023-11-24 06:13:14', '2023-11-24 06:33:34'),
(13, 'O-level examination fee', 50000.00, 0.00, 0, 1, 7, 3, '2023-11-24 08:46:05', '2023-11-24 08:46:05'),
(15, 'Hostel fees', 600000.00, 0.00, 0, 2, 0, 3, '2023-11-24 08:52:14', '2023-11-25 02:40:39'),
(16, 'Form I tution fee from second quoter', 400000.00, 0.00, 0, 2, 1, 3, '2023-11-24 08:53:26', '2023-11-25 02:37:27'),
(17, 'O-level examinatio fee Penult per month', 10000.00, 0.00, 0, 3, 7, 3, '2023-11-25 04:05:18', '2023-11-25 04:05:18'),
(18, 'Form V tuition fee', 550000.00, 0.00, 0, 1, 5, 3, '2023-11-25 13:34:33', '2023-11-25 13:34:33'),
(19, 'Examinnation fee', 15000.00, 0.00, 0, 1, 8, 3, '2023-11-25 13:35:20', '2023-11-25 13:35:20');

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
(9, 20000.00, 13, 3, '2023-11-20 00:16:47', '2023-11-20 00:17:42'),
(10, 0.00, 19, 3, '2023-11-26 05:02:11', '2023-11-26 05:02:11'),
(11, 0.00, 14, 3, '2023-11-26 05:27:44', '2023-11-26 05:27:44'),
(12, 0.00, 20, 33, '2023-11-26 16:23:18', '2023-11-27 06:08:32'),
(13, 0.00, 21, 3, '2023-12-10 23:45:48', '2023-12-10 23:45:48'),
(14, 0.00, 22, 3, '2023-12-11 02:05:08', '2023-12-11 02:05:08');

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
(61, '2023', '20231210', 30000.00, 30000.00, 13, 22, 1, 3, 11, 1, NULL, '2023-11-26 05:36:37'),
(62, '2023', '2023', 30000.00, 0.00, 19, 18, 1, 3, 11, 0, '2023-11-25 21:00:00', NULL),
(63, '2023', '2023', 570000.00, 0.00, 19, 18, 1, 3, 12, 0, '2023-11-25 21:00:00', NULL),
(64, '2023', '2023', 50000.00, 0.00, 19, 18, 1, 3, 13, 0, '2023-11-25 21:00:00', NULL),
(65, '2023', '2023', 30000.00, 0.00, 14, 22, 1, 3, 11, 0, NULL, NULL),
(66, '2023', '2023', 570000.00, 0.00, 14, 22, 1, 3, 12, 0, NULL, NULL),
(67, '2023', '2023', 50000.00, 0.00, 14, 22, 1, 3, 13, 0, NULL, NULL),
(68, '2023', '20231210', 30000.00, 30000.00, 20, 22, 1, 33, 11, 1, '2023-11-25 21:00:00', '2023-11-27 06:46:08'),
(69, '2023', '20230610', 570000.00, 200000.00, 20, 22, 1, 33, 12, 1, '2023-11-25 21:00:00', '2023-11-27 06:46:08'),
(70, '2023', '20231210', 50000.00, 50000.00, 20, 22, 1, 33, 13, 1, '2023-11-25 21:00:00', '2023-11-27 06:46:08'),
(71, '2023', '20230610', 600000.00, 220000.00, 20, 22, 1, 35, 15, 1, '2023-11-27 05:29:20', '2023-11-27 06:46:08'),
(72, '2024', '2024', 30000.00, 0.00, 21, 22, 1, 3, 11, 0, '2023-12-10 21:00:00', NULL),
(73, '2024', '2024', 570000.00, 0.00, 21, 22, 1, 3, 12, 0, '2023-12-10 21:00:00', NULL),
(74, '2024', '2024', 50000.00, 0.00, 21, 22, 1, 3, 13, 0, '2023-12-10 21:00:00', NULL),
(75, '2023', '2023', 30000.00, 0.00, 21, 22, 1, 3, 11, 0, NULL, NULL),
(76, '2023', '2023', 570000.00, 0.00, 21, 22, 1, 3, 12, 0, NULL, NULL),
(77, '2023', '2023', 50000.00, 0.00, 21, 22, 1, 3, 13, 0, NULL, NULL),
(78, '2024', '2024', 30000.00, 0.00, 22, 18, 1, 3, 11, 0, '2023-12-10 21:00:00', '2023-12-11 02:05:40'),
(79, '2024', '2024', 570000.00, 0.00, 22, 18, 1, 3, 12, 0, '2023-12-10 21:00:00', '2023-12-11 02:05:40'),
(80, '2024', '2024', 50000.00, 0.00, 22, 18, 1, 3, 13, 0, '2023-12-10 21:00:00', '2023-12-11 02:05:40');

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
(213, 'subject edited from the name of general studies to general studies', 3, '2023-12-01 04:36:27', '2023-12-01 04:36:27'),
(214, 'subject edited from the name of basic applied mathematics to basic applied mathematics', 3, '2023-12-01 04:38:58', '2023-12-01 04:38:58'),
(215, 'subject edited from the name of advanced mathematics to advanced mathematics', 3, '2023-12-01 04:39:12', '2023-12-01 04:39:12'),
(216, 'Create the subject by the name of civis', 3, '2023-12-01 04:39:58', '2023-12-01 04:39:58'),
(217, 'Delete the subject by the name of civis, its id was 38', 3, '2023-12-01 04:42:03', '2023-12-01 04:42:03'),
(218, 'Create the subject by the name of history', 3, '2023-12-01 04:56:39', '2023-12-01 04:56:39'),
(219, 'Create the subject by the name of geography', 3, '2023-12-01 05:01:09', '2023-12-01 05:01:09'),
(220, 'Create the course by the name of MSETO', 3, '2023-12-01 05:06:59', '2023-12-01 05:06:59'),
(221, 'Course edited from the name of  to MSETO', 3, '2023-12-01 05:07:37', '2023-12-01 05:07:37'),
(222, 'Create the course by the name of PLL', 3, '2023-12-07 05:21:09', '2023-12-07 05:21:09'),
(223, 'Delete the Course by the name of PB, its id was 11', 3, '2023-12-07 05:21:23', '2023-12-07 05:21:23'),
(224, 'Course edited from the name of  to PLL', 3, '2023-12-07 05:21:35', '2023-12-07 05:21:35');

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
(12, 'George', 'Mlimila', 'Mlimila', '2', '0768448520', 'man.png', 'Ukonga Dar es salaam', 'no email', 'Driver', 'tanzania', 'noindex_no', 3, '2023-11-24 08:58:22', '2023-11-24 08:58:22'),
(13, 'Thomas', 'George', 'Mlimila', '1', '0768448501', 'man.png', 'mkuranga', 'no email', 'accountance', 'Tanzanian', 'noindex_no', 33, '2023-11-26 16:03:15', '2023-11-26 16:03:15'),
(14, 'Idda', 'Kassian', 'Mumba', '2', '0715021559', 'man.png', 'making\'inda songea', 'no email', 'nesi', 'Tanzanian', 'noindex_no', 3, '2023-11-27 06:40:30', '2023-11-27 06:40:30');

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
(62, 'App\\Models\\User', 26, 'MyApp', 'cb8ca31d6c8f66799f62e5847178122c85b58f33b3750bff49cd57ec2f6d25a8', '[\"*\"]', '2023-11-20 11:32:52', '2023-11-20 11:21:55', '2023-11-20 11:32:52'),
(63, 'App\\Models\\User', 3, 'MyApp', 'd0f53139a64be52d749c51e85bb9623f6d0b3d92e43b64c4ca0e488c30b44139', '[\"*\"]', '2023-11-20 11:55:59', '2023-11-20 11:29:03', '2023-11-20 11:55:59'),
(64, 'App\\Models\\User', 26, 'MyApp', '3f19518bb8f4fff28458618fd08bb8b7241da70226cee7bdf746d916386443e9', '[\"*\"]', NULL, '2023-11-20 11:31:36', '2023-11-20 11:31:36'),
(65, 'App\\Models\\User', 26, 'MyApp', '3c62eae1cfc2373115ead81e0e06a5c8d8c0459434c93c7d02a0f5bca3cca430', '[\"*\"]', '2023-11-20 11:35:08', '2023-11-20 11:31:37', '2023-11-20 11:35:08'),
(66, 'App\\Models\\User', 3, 'MyApp', '99cf4a59fc9d11a08086868f58641bd9e8b97b6fdab3db4dc6ac5e8725d0b5bd', '[\"*\"]', '2023-11-26 11:26:58', '2023-11-23 06:33:55', '2023-11-26 11:26:58'),
(67, 'App\\Models\\User', 33, 'MyApp', 'ccb0e506c168c2229e678a701e6df665d0d9e5bb70cd519b3f021f17b6c3a1a4', '[\"*\"]', '2023-11-27 04:46:29', '2023-11-26 11:51:49', '2023-11-27 04:46:29'),
(68, 'App\\Models\\User', 35, 'MyApp', 'd5be7feab1d3cc42c83ce6a11d210f8544f580d5400840ccc1edfd35d32b8dea', '[\"*\"]', '2023-11-27 06:20:37', '2023-11-27 04:48:29', '2023-11-27 06:20:37'),
(69, 'App\\Models\\User', 36, 'MyApp', '6a1b54f4832ce857783d3bf880d85217735bb66684e9660815d3e6bafbf12c0d', '[\"*\"]', '2023-11-27 06:27:45', '2023-11-27 06:25:25', '2023-11-27 06:27:45'),
(70, 'App\\Models\\User', 3, 'MyApp', '682aff6e53d5d2042f5315a18b8c2cc72432061f7bc615d5278ac027fa7954f9', '[\"*\"]', '2023-12-11 02:18:22', '2023-11-27 06:38:34', '2023-12-11 02:18:22');

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
(19, '2023', '20/11/2023', 20231120, 13, 18, 22, 1, 3, 1, NULL, NULL);

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
(1, 'col', 'richard', 'lally', 'mlimila', '1', '0768448525', 'man.png', 'buza', 'Am staff at jitegemee secondary poaa majangili ndosisi yaaa pesaa yeaaa ok duuu', 'engrithom1@gmail.com', '15367', 3, 4, 15, '2023-04-10 11:44:58', '2023-11-19 16:23:06'),
(6, 'eng', 'fredy', 'focus', 'palapala', '1', '0686255811', 'man.png', 'manzese', 'Am staff at jitegemee secondary', 'fredy', '87005', 3, 4, 15, '2023-11-19 23:21:08', '2023-11-19 23:21:08'),
(7, 'tr', 'sample', 'ticha', 'mkali', '2', '0768448545', 'man.png', 'kibaha', 'Am staff at jitegemee secondary', 'tichamkali', '17598', 3, 2, 15, '2023-11-19 23:26:35', '2023-11-19 23:26:35'),
(8, 'Mr', 'admin2', 'admission', 'Thomson', '1', '0768448525', 'man.png', 'Sinza', 'Am staff at jitegemee secondary', 'admin2', '27935', 3, 3, 2, '2023-11-26 11:13:56', '2023-11-26 11:13:56'),
(9, 'Mr', 'Admin3', 'Bob', 'mikwala', '1', '0768448503', 'man.png', 'buza', 'Am staff at jitegemee secondary', 'admin3', '49426', 33, 3, 3, '2023-11-27 04:46:30', '2023-11-27 04:46:30'),
(10, 'Tr', 'admin1', 'George', 'Mlapulani', '1', '0768448525', 'man.png', 'mbezi kwa zena', 'Am staff at jitegemee secondary', 'admin1', '65976', 35, 3, 1, '2023-11-27 06:20:37', '2023-11-27 06:20:37');

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
(13, 'richard', 'thomson', 'mlimila', '1', '0768448525', 'man.png', 'kigamboni', 'no email', '2023', '2023', 'tanzanian', '2008-02-20', 'no comment', 'follow parent', '1', 'msamala sec', '2', '2', '1', 'free', 'songea', 'msamala sec', '400000', '12345', 1, 1, 22, 1, 11, 3, '2023-11-20 00:12:29', '2023-11-26 05:36:37'),
(14, 'sambokile', 'kindeki', 'thom', '1', '0788448525', 'man.png', 'kimara', 'no email', '2023', '2023', 'tanzanian', '2010-02-20', 'no comment', 'no comment', '2', 'no school', '1', '1', '1', 'christian', 'dar es salaam', 'mbombambili', '400001', '12346', 1, 1, 22, 1, 11, 3, '2023-11-20 00:16:18', '2023-11-26 05:27:44'),
(19, 'Kennan', 'George', 'Mlimila', '1', '0768448502', 'man.png', 'ukonga', 'no email', '2023', '2023', 'Tanzanian', '2005-02-25', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', 'christian', 'ukonga', 'air wings', '400002', '0', 1, 1, 18, 1, 12, 3, '2023-11-25 21:00:00', NULL),
(20, 'Edward', 'Thomas', 'Mlimira', '1', '0768448525', 'man.png', 'dar es salaam', 'no email', '2023', '2023', 'tanzanian', '2000-02-16', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', 'freee', 'songea', 'mkuranga', '400003', '0', 1, 1, 22, 1, 13, 33, '2023-11-25 21:00:00', '2023-11-27 06:46:08'),
(21, 'kennan', 'george', 'mlimila', '1', '0768448525', 'man.png', 'ukonga', 'no email', '2024', '2024', 'tanzania', '2001-11-20', 'no comment', 'no comment', '1', 'no school', '1', '2', '1', 'chrstian', 'dar es salaam', 'msamala', '400004', '0', 1, 1, 22, 1, 12, 3, '2023-12-10 21:00:00', '2023-12-10 23:46:41'),
(22, 'humphrey', 'george', 'mlimila', '1', '0768448525', 'man.png', 'darrr', 'no email', '2024', '2024', 'tanzanian', '2010-02-09', 'no comment', 'no comment', '3', 'no school', '1', '2', '1', 'free', 'dar', 'shjdjhsds', '400005', '0', 1, 2, 18, 1, 12, 3, '2023-12-10 21:00:00', '2023-12-11 02:05:40');

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
(21, 'biology', 7, 'b-11', 3, '2023-11-19 23:27:39', '2023-11-19 23:27:39'),
(22, 'physics', 7, 'p-11', 3, '2023-11-19 23:27:53', '2023-11-19 23:27:53'),
(23, 'chemistry', 7, '1320', 26, '2023-11-20 11:22:27', '2023-11-20 11:22:27'),
(24, 'civics', 7, '1110', 26, '2023-11-20 11:22:57', '2023-11-20 11:22:57'),
(25, 'history', 7, '1120', 26, '2023-11-20 11:23:19', '2023-11-20 11:23:19'),
(26, 'kiswahili', 7, '1230', 26, '2023-11-20 11:23:43', '2023-11-20 11:23:43'),
(27, 'geography', 7, '1130', 26, '2023-11-20 11:24:13', '2023-11-20 11:24:13'),
(28, 'english', 7, '1220', 26, '2023-11-20 11:24:34', '2023-11-20 11:24:34'),
(29, 'basic mathematics', 7, '1410', 26, '2023-11-20 11:25:05', '2023-11-20 11:25:05'),
(30, 'commerce', 7, '1420', 26, '2023-11-20 11:25:43', '2023-11-20 11:25:43'),
(31, 'computer', 7, '1360', 26, '2023-11-20 11:26:49', '2023-11-20 11:26:49'),
(32, 'advanced mathematics', 8, '151', 3, '2023-11-20 11:28:19', '2023-12-01 04:39:12'),
(33, 'basic applied mathematics', 8, '152', 3, '2023-11-20 11:28:57', '2023-12-01 04:38:58'),
(34, 'economics', 7, '1530', 26, '2023-11-20 11:29:31', '2023-11-20 11:29:31'),
(35, 'french', 7, '1340', 26, '2023-11-20 11:29:59', '2023-11-20 11:29:59'),
(36, 'music', 7, '1450', 26, '2023-11-20 11:30:17', '2023-11-20 11:30:17'),
(37, 'general studies', 8, '125', 3, '2023-11-20 11:31:03', '2023-12-01 04:36:27'),
(39, 'history', 8, '155', 3, '2023-12-01 04:56:39', '2023-12-01 04:56:39'),
(40, 'geography', 8, '177', 3, '2023-12-01 05:01:09', '2023-12-01 05:01:09');

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
(3, 'engrithom1@gmail.com', '$2y$10$jEI6ywGjkOCFcdmnBYm03ORAX6sCuPvPYNVyae3/Spt5Jx3yg1xLq', 'staff', 4, '15367', 'active', NULL, '2023-04-10 11:44:58', '2023-11-20 10:53:01'),
(26, 'fredy', '$2y$10$dUorIlG2fzg/pGSo7LL9Duil.AnLEzQeCqMSIsTDsI4T8tvDtq7CO', 'staff', 4, '87005', 'active', NULL, '2023-11-19 23:21:08', '2023-11-19 23:21:08'),
(27, 'tichamkali', '$2y$10$2lBdUHGZvZyn3vKmNQXmfuHnzgUgJH2BmBAEEaT4bclag24qryLOe', 'staff', 2, '17598', 'active', NULL, '2023-11-19 23:26:35', '2023-11-19 23:26:35'),
(28, '400000', '$2y$10$diC4WwBuLIeZCjntiQfoGOxM/JxX3KPim.0wodZeSxengs/ZDKrvq', 'student', 1, '400000', 'active', NULL, '2023-11-20 00:12:29', '2023-11-20 00:12:29'),
(29, '400001', '$2y$10$FgQOUBuLsS8YcsK0EkjXYO3pUWzB1/GMSF7GbF3oUcl297tatOU/m', 'student', 1, '400001', 'active', NULL, '2023-11-20 00:16:18', '2023-11-20 00:16:18'),
(32, '400002', '$2y$10$rtAbjJchEOoXG9uzQXfCeO//OxAwwUD5UjoGXXvXQJPbB67QPX82K', 'student', 1, '400002', 'active', NULL, '2023-11-26 05:02:11', '2023-11-26 05:02:11'),
(33, 'admin2', '$2y$10$7jXNPTURRiaE/UGcp2.CZOezv9aqPJYRZOATYi50piJ.d03TiFJ4O', 'staff', 3, '27935', 'active', NULL, '2023-11-26 11:13:56', '2023-11-26 11:13:56'),
(34, '400003', '$2y$10$gL28u9RVOMukjifzv25/3OyfadvVGYumxe0ifRoz3rEZUJCUwGPJ.', 'student', 1, '400003', 'active', NULL, '2023-11-26 16:23:18', '2023-11-26 16:23:18'),
(35, 'admin3', '$2y$10$ZX452P/isumpCIXkK9jNvuF8C8TURmrf3JKjcJrjKti8CYlkZPljO', 'staff', 3, '49426', 'active', NULL, '2023-11-27 04:46:30', '2023-11-27 04:46:30'),
(36, 'admin1', '$2y$10$Nf1Lw1Zu/fUnQM55TiihjuRA27J30S7M6jVUVCpP26H.nrNtUR5bu', 'staff', 3, '65976', 'active', NULL, '2023-11-27 06:20:37', '2023-11-27 06:20:37'),
(37, '400004', '$2y$10$WJbeECPXXd1GXElePixo2ODvn/KolsOOvp4PjXW2iRFT0H6nrmvQa', 'student', 1, '400004', 'active', NULL, '2023-12-10 23:45:48', '2023-12-10 23:45:48'),
(38, '400005', '$2y$10$sBpdBVnJyspHb0DqRqMBkerORt1i0MHabWcHywp9Qf7BRoTkKyQCC', 'student', 1, '400005', 'active', NULL, '2023-12-11 02:05:07', '2023-12-11 02:05:07');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `deposit_slips`
--
ALTER TABLE `deposit_slips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `duration_payments`
--
ALTER TABLE `duration_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `fee_balances`
--
ALTER TABLE `fee_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `fee_payments`
--
ALTER TABLE `fee_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `parent_statuses`
--
ALTER TABLE `parent_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `student_statuses`
--
ALTER TABLE `student_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

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
