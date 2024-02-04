-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2024 at 03:47 PM
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
-- Database: `imedgeer`
--

-- --------------------------------------------------------

--
-- Table structure for table `audios`
--

CREATE TABLE `audios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audios`
--

INSERT INTO `audios` (`id`, `title`, `description`, `created_by`, `status`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 'JINSI YA KUCLOSE MTEJA YEYOTE', 'Katika kozi hii utaweza kufahamu takribani mbinu KUMI muhimu katika kufanya biashara na mteja yeyote\r\n', 20, 1, 1, '2024-01-23 20:19:45', '2024-01-23 20:19:45'),
(2, 'Unachopaswa Kuwaza Kuhusu Biashara Ili usifeli Biashara', 'Kwenye kozi hii fupi ya dakika nane nimefundisha mambo muhimu unayopaswa kuwaza katika biashara ambayo yatakusaidia ili usifeli kwenye biashara hiyo\r\n', 20, 1, 1, '2024-01-23 20:19:45', '2024-01-23 20:19:45'),
(3, 'Package Nzima ya Unachotakiwa Kukijua Na Kukifanya Ili Kufanikiwa Kwenye Biashara Katika Ulimwengu wa Kidigitali', 'Utakachojifunza kwenye KOZI HII NI: 1, Mambo muhimu Kufikiri Katika Biashara || 2, Kwanini Hupaswi Kuwaza FAIDA || 3, madhara ya Kupost Sana INSTAGRAM || 4, usijadili BEI na MTEJA || 5, kipi muhimu kati ya BRANDING na MARKETING || 6, Njia Rahisi ya KUUA biashara Yako || 7,  kwanini Usitafute wateja wapya kila siku || 8, aina ya FEEDBACK zinazokufanya Uonekane TAPELI || 9, Jinsi OFA ZINAVYOFELISHA biashara || 10, Muda Sahihi wa Kutafuta Mteja na muda sahihi wa KUUZA.', 20, 1, 2, '2024-01-23 20:23:56', '2024-01-23 20:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `audio_lists`
--

CREATE TABLE `audio_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `audio_url` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `audios_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audio_lists`
--

INSERT INTO `audio_lists` (`id`, `sub_title`, `audio_url`, `label`, `created_by`, `order`, `audios_id`, `created_at`, `updated_at`) VALUES
(1, 'Madhara Ya Kupost Sana Instagram', 'audio.mp4', 'Episode', 20, 1, 1, '2024-01-23 20:25:29', '2024-01-23 20:25:29'),
(2, 'Kati Ya Branding Na Marketing Kipi Muhimu Kama Unaanza Biashara', 'audio.mp4', 'Episode', 20, 2, 1, '2024-01-23 20:25:29', '2024-01-23 20:25:29'),
(3, 'Njia Rahisi Ya Kuua Biashara Yako', 'audio.mp4', 'Episode', 20, 1, 2, '2024-01-23 20:28:43', '2024-01-23 20:28:43'),
(4, 'Feedback Zinazokufanya Uonekane Tapeli', 'audio.mp4', 'Episode', 20, 2, 2, '2024-01-23 20:28:43', '2024-01-23 20:28:43'),
(5, 'Jinsi Ofa Zinavyofelisha Biashara', 'audio.mp4', 'Episode', 20, 1, 3, '2024-01-23 20:31:13', '2024-01-23 20:31:13'),
(6, 'Mambo Muhimu Unayopaswa Kufikiria Kuhusu Biashara', 'audio.mp4', 'Episode', 20, 2, 3, '2024-01-23 20:31:13', '2024-01-23 20:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `auth_statuses`
--

CREATE TABLE `auth_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `applied` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_statuses`
--

INSERT INTO `auth_statuses` (`id`, `applied`, `description`, `created_at`, `updated_at`) VALUES
(0, 'only student', 'when phone no verified id=0', '2024-01-13 06:06:27', '2024-01-13 06:06:27'),
(1, 'only student', 'Before doing test id=1', '2024-01-13 06:06:27', '2024-01-13 06:06:27'),
(2, 'only student', 'After test but not enrolled id=2', '2024-01-13 06:06:27', '2024-01-13 06:06:27'),
(3, 'only student', 'Failure test (marks low or fail test rules) id=3 ', '2024-01-13 06:06:27', '2024-01-13 06:06:27'),
(4, 'only student', 'Successful enrolled id=4', '2024-01-13 06:06:27', '2024-01-13 06:06:27'),
(5, 'both', 'active user id=5', '2024-01-13 06:06:27', '2024-01-13 06:06:27'),
(6, 'both', 'Un Active user, contact to adimin id=6', '2024-01-13 06:50:01', '2024-01-13 06:50:01'),
(7, 'only student', 'graduate students id=7', '2024-01-13 06:50:01', '2024-01-13 06:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(500) NOT NULL,
  `likes` int(11) NOT NULL,
  `comment_by` int(11) NOT NULL,
  `forums_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `likes`, `comment_by`, `forums_id`, `created_at`, `updated_at`) VALUES
(1, 'Kmaa unadhani ni Muhimu futa business whatsup au', 12, 20, 1, NULL, NULL),
(2, 'Hiyo ni kawaida kaka, matangazo yote lazima yapite kwenye review ili kukaguliwa..  review inaweza kuchukua mpaka masaa 24, inategemea na aina ya tangazo lako', 65, 20, 1, NULL, NULL),
(3, 'saivi tatizo limeisha video zina play poa tuu', 8, 20, 1, NULL, NULL),
(4, 'Hiyo ipo kwenye WHATSAPP ya KAWAIDA, unachotakiwa kufanya ni Kuwa na namba nyingine iunganishe kwenye Whatsapp ya Kawaida, kisha ipe uadimin kwenye Groups Zoote ambazo unataka kuziunganisha kwenye COMMUNITY yako.. kisha tengeneza community kupitia whatsap', 33, 20, 2, NULL, NULL),
(5, 'Kufuta Whatsapp Business sio Uamuzi Mzuri, maana whatsapp business ni muhimu sana kwa mfanyabiashara yeyote yule', 21, 20, 2, NULL, NULL),
(6, 'Kama utafanya hivyo na haitafunguka, watakuambia kwasababu gani wamekataa kuifungua.. mara nyingi sababu inaweza kuwa taarifa zilizo katika kitambulishi ulichotuma zikawa ni tofauti na taarifa za akaunti iliyofungwa.. hapa namaanisha inawezekana Picha ya ', 34, 20, 2, NULL, NULL),
(7, 'Kama utafanya hivyo na haitafunguka, watakuambia kwasababu gani wamekataa kuifungua.. mara nyingi sababu inaweza kuwa taarifa zilizo katika kitambulishi ulichotuma zikawa ni tofauti na taarifa za akaunti iliyofungwa.. hapa namaanisha inawezekana Picha ya kwenye kitambulisho ikawa ni tofauti, tarehe ', 346, 20, 3, NULL, '2024-01-29 06:58:12'),
(8, 'Endapo taarifa zikiwa ni Tofauti huwa tunashauri mtu kabla hajaomba akaunti kufunguliwa anapaswa kubadili taarifa hizo na kuiacha hiyo akaunti kwa siku 7 kisha ndio aje aombe ifunguliwe', 235, 20, 3, NULL, '2024-01-29 06:58:08'),
(9, 'hello am adding anaza comment', 1, 20, 1, '2024-01-27 11:17:11', '2024-01-28 23:22:45'),
(10, 'hello am adding anaza comment', 3, 20, 1, '2024-01-27 11:22:40', '2024-02-03 03:52:47'),
(11, 'some comments', 2, 20, 3, '2024-01-28 22:00:45', '2024-01-28 22:43:53'),
(12, 'onother student comments', 1, 22, 3, '2024-01-28 22:44:09', '2024-01-29 06:58:03'),
(13, 'cant sleeep', 1, 20, 3, '2024-01-29 06:47:56', '2024-01-29 06:48:02'),
(14, 'hello am adding anaza comment', 0, 21, 1, '2024-02-03 03:47:54', '2024-02-03 03:47:54'),
(15, 'this is news man', 0, 21, 1, '2024-02-03 03:48:17', '2024-02-03 03:48:17');

-- --------------------------------------------------------

--
-- Table structure for table `c_likes`
--

CREATE TABLE `c_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` int(11) NOT NULL,
  `like_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c_likes`
--

INSERT INTO `c_likes` (`id`, `comment_id`, `like_id`, `created_at`, `updated_at`) VALUES
(3, 11, 20, '2024-01-28 22:00:49', '2024-01-28 22:00:49'),
(4, 11, 22, '2024-01-28 22:43:53', '2024-01-28 22:43:53'),
(5, 10, 25, '2024-01-28 23:18:02', '2024-01-28 23:18:02'),
(7, 9, 25, '2024-01-28 23:22:45', '2024-01-28 23:22:45'),
(9, 13, 20, '2024-01-29 06:48:02', '2024-01-29 06:48:02'),
(10, 12, 20, '2024-01-29 06:58:03', '2024-01-29 06:58:03'),
(11, 8, 20, '2024-01-29 06:58:08', '2024-01-29 06:58:08'),
(12, 7, 20, '2024-01-29 06:58:12', '2024-01-29 06:58:12'),
(13, 10, 21, '2024-02-03 03:52:47', '2024-02-03 03:52:47');

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
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `title`, `thumb`, `description`, `created_by`, `status`, `views`, `created_at`, `updated_at`) VALUES
(1, 'JE NI MAUDHUI GANI YANALETA WATEJA KWA URAHISI MITANDAONI? ', 'forum.jpg', 'INATEGEMEA NA LENGO: nasema hivi kwasababu kila kizuri au kibaya huwa kinategemea na LENGO, \r\n\r\nkununua FOLLOWERS inaweza ikawa ni jambo jema kwa mtu anayetaka kupita SHORTCUT, lakini ni JAMBO BAYA kwa mtu anayetaka kutumia akaunti hiyo kufanya BIASHARA,\r\n\r\nni kweli BRAND ili iaminike idadi ya followers ina mchango, lakini unahisi ni followers wa aina hiyo wa kununua? HAPANA ni real followers.\r\n\r\nSHERIA, kwa upande wa sheria za instagram hawaruhusu kabisa kununua followers na wakigundua akaunti yako ina followers wengi ambao sio halali basi huifunga hiyo akaunti mara moja na kuiondoa kabisa kwenye mtandao wao.\r\n\r\nndio maana nikasema kibiashara sio sahihi lakini kama lengo lako ni kudanganya watu basi kununua followers ni sahihi.\r\n\r\nWEWE UNA LIPI LA KUONGEZA? dondoka chini kwenye comment.\r\n', 20, 1, 2, NULL, NULL),
(2, 'KIPI MUHIMU SANA KATI YA LIKES NA COMMENT', 'forum.jpg', 'Kama unafanya matangazo kwenye mitandao ya kijamii, kati ya Likes na Comment Kitu Cha Muhimu Sana Ni COMMENTS \r\n\r\nMaana bila comment huwezi kujua watu wameielewa vipi Taarifa yako au Tangazo lako.\r\n\r\nComment zitakupa picha kufahamu kama umeeleweka au hujaeleweka.\r\n', 20, 0, 10, NULL, NULL),
(3, 'Tunapaswa kuweka maudhui Yale Yale Kwenye mitandao Yote?', 'forum.jpg', 'Kuna Mitandao Mingi Siku Hizi, Je Tunapaswa kuweka maudhui Yale Yale Kwenye mitandao Yote?\r\n\r\nMaudhui Yapi Hasa Wewe Unapendelea kuweka mitandaoni,? Je yanakupa Wateja au ni Mpaka Ufanye Matangazo Ya Kulipia?\r\n\r\nTIRIRIKA HAPA CHINI..', 20, 1, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `thumb`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tourism and Hospitality', '. The Foundation was established by entrepreneurship and management professionals. The motivation was to contribute to bridging the glaring gap between the substantial natural resource endowment of the country and high levels of poverty using a two-pronged approach -  innovative economic empowerment models that simultaneously address the challenge of climate change, and change agency towards a conducive environment for innovation and entrepreneurship', 'group1.jpg', 20, 1, '2024-01-23 07:45:35', '2024-01-23 07:45:35'),
(2, 'Construction', '. The Foundation was established by entrepreneurship and management professionals. The motivation was to contribute to bridging the glaring gap between the substantial natural resource endowment of the country and high levels of poverty using a two-pronged approach -  innovative economic empowerment models that simultaneously address the challenge of climate change, and change agency towards a conducive environment for innovation and entrepreneurship', 'group2.jpg', 20, 1, '2024-01-23 07:45:35', '2024-01-23 07:45:35');

-- --------------------------------------------------------

--
-- Table structure for table `intakes`
--

CREATE TABLE `intakes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `intakes`
--

INSERT INTO `intakes` (`id`, `name`, `description`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Green First Intake 2024', 'The Entrepreneurship Management and Development Foundation (IMED Foundation) is a non-profit organization registered with the Registrar of Societies in 2010. The Foundation was established by entrepreneurship and management professionals. The motivation was to contribute to bridging the glaring gap between the substantial natural resource endowment of the country and high levels of poverty using a two-pronged approach -  innovative economic.', 20, 1, NULL, NULL),
(2, 'Blue Second Intake 2024', 'Management professionals. The motivation was to contribute to bridging the glaring gap between the substantial natural resource endowment of the country and high levels of poverty using a two-pronged approach -  innovative economic empowerment models that simultaneously address the challenge of climate change, and change agency towards a conducive environment for innovation and entrepreneurship', 20, 1, '2024-01-23 07:25:35', '2024-01-23 07:25:35');

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
(1, '2013_01_13_041901_create_roles_table', 1),
(2, '2013_01_13_041956_create_auth_statuses_table', 1),
(3, '2014_10_12_000000_create_users_table', 2),
(4, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(5, '2019_08_19_000000_create_failed_jobs_table', 2),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(7, '2024_01_18_190316_create_student_profiles_table', 3),
(8, '2024_01_18_190341_create_student_employments_table', 3),
(9, '2024_01_18_190401_create_student_needs_table', 3),
(10, '2024_01_23_065055_create_intakes_table', 4),
(11, '2024_01_23_065111_create_groups_table', 4),
(13, '2024_01_23_084408_create_videos_table', 6),
(14, '2024_01_23_085027_create_video_lists_table', 6),
(16, '2024_01_23_190611_create_audios_table', 8),
(17, '2024_01_23_190626_create_audio_lists_table', 8),
(18, '2024_01_23_191900_create_notes_table', 9),
(19, '2024_01_23_065141_create_students_table', 10),
(20, '2024_01_25_074352_create_news_table', 11),
(21, '2024_01_25_074424_create_forums_table', 11),
(22, '2024_01_25_074443_create_comments_table', 11),
(23, '2024_01_25_074509_create_c_likes_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `datenum` int(11) NOT NULL,
  `expired_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `created_by`, `datenum`, `expired_date`, `created_at`, `updated_at`) VALUES
(1, 'Usajiri wa wanafunzi wapya utaanza 10-feb-2024 Admin kuweni Tayali.', '1. Discussion forum, sehemu ambayo italeta interaction kwa users, \r\nwatachaguliwa watu kadhaa ambao watakua wanaanzisha mada kwa ajili \r\nya discussions.\r\n2. Platform iruhusu guest mentor katika live conference, ambaye anaweza \r\nkualikwa na kujoin kwa kupitia link bila kutengeneza account.\r\n3. Kipengele cha mtu kutoa feedback kwenye kila kozi au module anayoshiriki.\r\n4. User aweze kuona progress yake, mfano module aliyochagua ina kozi 20 \r\ntayari amesoma kozi kadhaa zimebaki kadhaa,\r\n5. Kuwe na sehemu ya kuweka video clip inayoonesha HOW TO REGISTER, \r\nmwanzoni kabisa wakati mtu anataka kujisajili kwenye project.', 20, 20240126, '23/02/2024', '2024-01-25 08:14:48', '2024-01-25 08:14:48'),
(2, 'Hatutokua na Live Confeence yoyote adi kuanzia 8-feb-2024 Maboresho yanafanyika', '1. Discussion forum, sehemu ambayo italeta interaction kwa users, \r\nwatachaguliwa watu kadhaa ambao watakua wanaanzisha mada kwa ajili \r\nya discussions.\r\n2. Platform iruhusu guest mentor katika live conference, ambaye anaweza \r\nkualikwa na kujoin kwa kupitia link bila kutengeneza account.\r\n3. Kipengele cha mtu kutoa feedback kwenye kila kozi au module anayoshiriki.\r\n4. User aweze kuona progress yake, mfano module aliyochagua ina kozi 20 \r\ntayari amesoma kozi kadhaa zimebaki kadhaa,\r\n5. Kuwe na sehemu ya kuweka video clip inayoonesha HOW TO REGISTER, \r\nmwanzoni kabisa wakati mtu anataka kujisajili kwenye project.', 20, 20240127, '23/02/2024', '2024-01-25 08:14:48', '2024-01-25 08:14:48'),
(3, 'Habari iwena title fupi chini ya 100 characters sawa mr admin', '1. Discussion forum, sehemu ambayo italeta interaction kwa users, \r\nwatachaguliwa watu kadhaa ambao watakua wanaanzisha mada kwa ajili \r\nya discussions.\r\n2. Platform iruhusu guest mentor katika live conference, ambaye anaweza \r\nkualikwa na kujoin kwa kupitia link bila kutengeneza account.\r\n3. Kipengele cha mtu kutoa feedback kwenye kila kozi au module anayoshiriki.\r\n4. User aweze kuona progress yake, mfano module aliyochagua ina kozi 20 \r\ntayari amesoma kozi kadhaa zimebaki kadhaa,\r\n5. Kuwe na sehemu ya kuweka video clip inayoonesha HOW TO REGISTER, \r\nmwanzoni kabisa wakati mtu anataka kujisajili kwenye project.', 20, 20240125, '23/02/2024', '2024-01-25 08:14:48', '2024-01-25 08:14:48');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `note_url` mediumtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `title`, `note_url`, `created_by`, `status`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 'GEER TOR-Digital learning platform-Final approved', 'pdf1.pdf', 20, 1, 1, '2024-01-23 20:34:13', '2024-01-23 20:34:13'),
(2, 'GEER-Need Assessment Revised 20 Dec-23-Final', 'pdf2.pdf', 20, 1, 2, '2024-01-23 20:34:13', '2024-01-23 20:34:13'),
(3, 'REPORT OF 1ST PRESENTATION GEER PROJECT', 'pdf3.pdf', 20, 1, 2, '2024-01-23 20:36:37', '2024-01-23 20:36:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(13, 'App\\Models\\User', 11, 'MyApp', 'c832a8a9684ad10421d5947d1cc26c8688c0fef351150294fe4b605e091f7bae', '[\"*\"]', NULL, NULL, '2024-01-14 04:27:52', '2024-01-14 04:27:52'),
(14, 'App\\Models\\User', 12, 'MyApp', '6f566bc9db02535363c0bea64feaaba040fe2d42fe42f6a02f666f7d71dc245a', '[\"*\"]', NULL, NULL, '2024-01-14 04:28:46', '2024-01-14 04:28:46'),
(15, 'App\\Models\\User', 13, 'MyApp', 'dbfb16234577229446d03b44ef0457aa7eb46c978ef4dff6bbbe4c3b187cce5b', '[\"*\"]', NULL, NULL, '2024-01-14 06:08:22', '2024-01-14 06:08:22'),
(16, 'App\\Models\\User', 14, 'MyApp', 'bf129050ac8e27fdbc3c68865cf91fd72cdd7ab0fdf1c270aed5063d93ea0966', '[\"*\"]', NULL, NULL, '2024-01-14 06:09:42', '2024-01-14 06:09:42'),
(17, 'App\\Models\\User', 15, 'MyApp', '25d275e403f97bac768b5c7bdc5715ce718caf32349bc94f8f51a0964760cae7', '[\"*\"]', NULL, NULL, '2024-01-16 03:28:51', '2024-01-16 03:28:51'),
(19, 'App\\Models\\User', 16, 'MyApp', '74e02c263f98d8158ced15d57182550bdcaac70b620e7d32ce09085436af4deb', '[\"*\"]', NULL, NULL, '2024-01-16 04:08:01', '2024-01-16 04:08:01'),
(20, 'App\\Models\\User', 11, 'MyApp', '735ee825ee5133a12e449245a829dcdd1a2bb9d4de78e65950a2e48ca07c2225', '[\"*\"]', NULL, NULL, '2024-01-20 04:31:10', '2024-01-20 04:31:10'),
(21, 'App\\Models\\User', 11, 'MyApp', '2e663b9f13b03e0b016fc52f3c860a33c2990e81fbaaa4e7db6e103168b0d4c3', '[\"*\"]', NULL, NULL, '2024-01-20 04:33:56', '2024-01-20 04:33:56'),
(22, 'App\\Models\\User', 11, 'MyApp', '6b3d9fee977f710cac43d59c6600acc349e81f4dc56a50ab29d660702fd85fdf', '[\"*\"]', '2024-01-20 07:37:17', NULL, '2024-01-20 04:36:36', '2024-01-20 07:37:17'),
(23, 'App\\Models\\User', 11, 'MyApp', '0fa5a31ce75d59652b80f6ae2843abaea0778d448184eb74be73ceec8e9fbe25', '[\"*\"]', '2024-01-20 11:04:59', NULL, '2024-01-20 07:45:38', '2024-01-20 11:04:59'),
(24, 'App\\Models\\User', 11, 'MyApp', '6495ced2fb50a3414336222a8e0a91180b00a27c02d9a02034652e0fad7df7ba', '[\"*\"]', NULL, NULL, '2024-01-20 11:44:28', '2024-01-20 11:44:28'),
(25, 'App\\Models\\User', 11, 'MyApp', '64a22be2d67bdbba7a724f33f52b2f7011e0ee9963365c5b1e35a3adae76853d', '[\"*\"]', NULL, NULL, '2024-01-20 11:51:18', '2024-01-20 11:51:18'),
(26, 'App\\Models\\User', 11, 'MyApp', '297ffe51bc3a7fe53a5e92d09ba4ed13cafa17dde843d14e7ea9ef396ba63e4b', '[\"*\"]', NULL, NULL, '2024-01-20 11:52:15', '2024-01-20 11:52:15'),
(27, 'App\\Models\\User', 11, 'MyApp', '5418a712c6c3a586682c42860d2d1075d3404600fe1408eb0e6a59f3760534af', '[\"*\"]', NULL, NULL, '2024-01-20 11:56:12', '2024-01-20 11:56:12'),
(28, 'App\\Models\\User', 11, 'MyApp', 'a2f070b32a807ba3f1e20e97f711938a0d2c6c739628beee855c0f44df2c8090', '[\"*\"]', NULL, NULL, '2024-01-20 12:04:42', '2024-01-20 12:04:42'),
(29, 'App\\Models\\User', 11, 'MyApp', '8ad197896ec9c500b161d06230af469af77fcd980f793a22a84305628a6d09d4', '[\"*\"]', '2024-01-20 12:07:30', NULL, '2024-01-20 12:06:25', '2024-01-20 12:07:30'),
(30, 'App\\Models\\User', 11, 'MyApp', 'beb3a4920cabac2d939fc17a1c2578291b41cf8d4910b385846ac375c936d930', '[\"*\"]', NULL, NULL, '2024-01-20 16:09:21', '2024-01-20 16:09:21'),
(38, 'App\\Models\\User', 20, 'MyApp', '43c560aee0b9f600d5c557606302ca2955df234de23658dc7b76382b49078f73', '[\"*\"]', NULL, NULL, '2024-01-21 02:29:37', '2024-01-21 02:29:37'),
(39, 'App\\Models\\User', 20, 'MyApp', '2b4500f57862920404e58d428c7da5a7221aed4eaf82d70a05eaf2e26bf32854', '[\"*\"]', NULL, NULL, '2024-01-21 02:32:54', '2024-01-21 02:32:54'),
(40, 'App\\Models\\User', 20, 'MyApp', '19e174c8f160c35fa6203be947ec72fdfd8457fb4cb8cc52438304e599be7c55', '[\"*\"]', NULL, NULL, '2024-01-23 18:04:50', '2024-01-23 18:04:50'),
(41, 'App\\Models\\User', 20, 'MyApp', 'e262ede82639bc9fd431104784bfda6c33f0bb7b26e70ec6f05a4c0bbf76beed', '[\"*\"]', NULL, NULL, '2024-01-23 18:06:17', '2024-01-23 18:06:17'),
(43, 'App\\Models\\User', 22, 'MyApp', '589be7e4201380fbca35c022f9ea9174a6f036183bec4346cc2263555bcde4cb', '[\"*\"]', '2024-01-24 03:49:03', NULL, '2024-01-24 01:04:52', '2024-01-24 03:49:03'),
(44, 'App\\Models\\User', 23, 'MyApp', '8bcefee7628ac2ceefb66d00567fc67fd02137a5c1098a3accc998c336a95650', '[\"*\"]', NULL, NULL, '2024-01-24 01:06:02', '2024-01-24 01:06:02'),
(45, 'App\\Models\\User', 21, 'MyApp', '2ca1dcabb64ff5cbfb94a7dc8db93e1209fa13792af5f53e39849125a489af53', '[\"*\"]', '2024-02-03 03:52:46', NULL, '2024-01-24 03:36:46', '2024-02-03 03:52:46'),
(46, 'App\\Models\\User', 21, 'MyApp', 'ed6b787431acdfd6cad9183438499f1654fe1e88fd2b9517517e1d10526bf9e0', '[\"*\"]', '2024-01-27 05:50:49', NULL, '2024-01-24 05:50:00', '2024-01-27 05:50:49'),
(47, 'App\\Models\\User', 20, 'MyApp', '3a2595586c928754562e11feb288279b6175c1699d8e4a04e6cbe8467f5e8dde', '[\"*\"]', '2024-01-29 06:58:12', NULL, '2024-01-28 18:15:46', '2024-01-29 06:58:12'),
(48, 'App\\Models\\User', 22, 'MyApp', '210f1ef6f5f391b7b20abc0506755c6d44b649e68bb31318230ac01f467652d6', '[\"*\"]', '2024-01-28 22:44:09', NULL, '2024-01-28 22:42:47', '2024-01-28 22:44:09'),
(49, 'App\\Models\\User', 24, 'MyApp', 'b78d427ba2eb64262fe4095071a5b1b61966367d6dc4732786cd95c98f2726c4', '[\"*\"]', '2024-01-28 23:12:11', NULL, '2024-01-28 22:46:47', '2024-01-28 23:12:11'),
(50, 'App\\Models\\User', 25, 'MyApp', '8524eae6f2b29274f4569039762e9c1b7d1bcc86bc490e5e54634ab65079fd65', '[\"*\"]', '2024-01-28 23:15:45', NULL, '2024-01-28 23:13:37', '2024-01-28 23:15:45'),
(51, 'App\\Models\\User', 25, 'MyApp', 'a81091e6743bb805cb3074bb4f9ad5757bce25480c1c271239a61ebbcf63733e', '[\"*\"]', '2024-01-28 23:22:44', NULL, '2024-01-28 23:17:35', '2024-01-28 23:22:44'),
(52, 'App\\Models\\User', 24, 'MyApp', '030326f88ba6b2d5ad1a4efb6950b17c0ef544c97085f228d8c5dc1ef6f13f2f', '[\"*\"]', '2024-01-29 13:03:48', NULL, '2024-01-29 07:06:27', '2024-01-29 13:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `description`, `created_at`, `updated_at`) VALUES
(1, 'student', 'this is for student id=1', '2024-01-13 05:22:29', '2024-01-13 05:22:29'),
(2, 'mentor', 'mentor id=2', '2024-01-13 05:22:29', '2024-01-13 05:22:29'),
(3, 'admin', 'this is for admin id=3', '2024-01-13 05:22:29', '2024-01-13 05:22:29');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `intakes_id` bigint(20) UNSIGNED NOT NULL,
  `groups_id` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_id`, `intakes_id`, `groups_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 21, 1, '1,2', 20, '2024-01-24 04:17:20', '2024-01-24 04:17:20'),
(2, 22, 1, '1', 20, '2024-01-24 04:17:20', '2024-01-24 04:17:20'),
(3, 23, 1, '2', 20, '2024-01-24 04:17:20', '2024-01-24 04:17:20'),
(4, 18, 1, '1', 20, '2024-01-28 22:32:15', '2024-01-28 22:32:15'),
(5, 25, 1, '2', 20, '2024-01-28 23:16:44', '2024-01-28 23:16:44'),
(6, 24, 1, '2,1', 20, '2024-01-29 05:54:18', '2024-01-29 05:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `student_employments`
--

CREATE TABLE `student_employments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `obstacles` varchar(255) NOT NULL,
  `carrier_path` varchar(255) NOT NULL,
  `engaged` varchar(255) NOT NULL,
  `income` varchar(255) NOT NULL,
  `job_seeker` varchar(255) NOT NULL,
  `activity` varchar(500) NOT NULL,
  `enterprise` varchar(500) NOT NULL,
  `enterprise_challenge` varchar(500) NOT NULL,
  `job_applied` varchar(255) NOT NULL,
  `interviews` varchar(255) NOT NULL,
  `student_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_employments`
--

INSERT INTO `student_employments` (`id`, `obstacles`, `carrier_path`, `engaged`, `income`, `job_seeker`, `activity`, `enterprise`, `enterprise_challenge`, `job_applied`, `interviews`, `student_id`, `created_at`, `updated_at`) VALUES
(2, 'Lack of employability skills and competence,Discriminatory prejudices (for example, disability, religion, appearance, etc.),Mismatch between skills demanded by employees and skills possessed by graduates', 'Paid employment', 'Salaried job', 'Below 500,000', 'Yes', 'Searching for employment opportunities', 'sdsfsfsdf', 'sdfsdfsdfsdfsd', '3', '3', 11, '2024-01-20 09:52:05', '2024-01-20 09:52:05'),
(3, 'Mismatch between skills demanded by employees and skills possessed by graduates,Gender related issues,Discriminatory prejudices (for example, disability, religion, appearance, etc.)', 'Paid employment', 'Internship/apprenticeship', 'Below 500,000', 'Yes', 'Searching for employment opportunities', 'saghashgghas', 'sghahgsghas', '4', '5', 11, '2024-01-20 09:54:47', '2024-01-20 09:54:47'),
(4, 'Lack of employability skills and competence,Age limitation (Considered too young/old),Not aware', 'Self-employment through entrepreneurship', 'Internship/apprenticeship', 'Between 500,000 to 1,000,000', 'Yes', 'Searching for employment opportunities', 'dfgdgdfgdfgd', 'dfgdgdfgdfg', '4', '5', 18, '2024-01-20 16:36:15', '2024-01-20 16:36:15'),
(5, 'Lack of employability skills and competence,Lack of prior work experience,Age limitation (Considered too young/old)', 'Paid employment', 'Salaried job', 'Below 500,000', 'No', 'Helping in family business', 'hjdsfkjshfjhsf', 'sdfnsdfnjskjdf', '4', '4', 19, '2024-01-20 17:00:28', '2024-01-20 17:00:28'),
(6, 'Lack of prior work experience,High competition in the labour market ,Gender related issues', 'Paid employment', 'Salaried job', 'Between 500,000 to 1,000,000', 'Yes', 'Transforming my business idea into reality', 'sadfsdfsafds  fgdfgdfgds dfgdfdfgd fgdfgdsdf', 'dfghdfgfd fdgdfgdfgdf dfgdfggfdf dfgdfg', '2', '2', 24, '2024-01-28 23:03:02', '2024-01-28 23:03:02'),
(7, 'Lack of employability skills and competence,Mismatch between skills demanded by employees and skills possessed by graduates,Discriminatory prejudices (for example, disability, religion, appearance, etc.)', 'Paid employment', 'Internship/apprenticeship', 'Between 500,000 to 1,000,000', 'Yes', 'Helping with household activities', 'If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Capacity For Salaried Job Or Self-Employment?', 'If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Capacity For Salaried Job Or Self-Employment?', '3', '1', 25, '2024-01-28 23:15:11', '2024-01-28 23:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `student_needs`
--

CREATE TABLE `student_needs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `capacity_institution` varchar(500) NOT NULL,
  `capacity_type` varchar(500) NOT NULL,
  `training` varchar(500) NOT NULL,
  `why_training` varchar(500) NOT NULL,
  `skill_need` varchar(500) NOT NULL,
  `critical_skills` varchar(500) NOT NULL,
  `training_time` varchar(255) NOT NULL,
  `disability` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_needs`
--

INSERT INTO `student_needs` (`id`, `capacity`, `capacity_institution`, `capacity_type`, `training`, `why_training`, `skill_need`, `critical_skills`, `training_time`, `disability`, `student_id`, `created_at`, `updated_at`) VALUES
(1, 'Yes', 'dsfsfsdfdsfdsv sdsdfds', 'Face to face support on mentorship and coaching on job readiness', 'Yes', 'sdfsdfsdfsd', 'sdfsdfsfdsfsdfs', 'sdfsdfsdxcvds', 'Between 12:00 - 02:00 PM', 'Yes', '11', '2024-01-20 10:02:19', '2024-01-20 10:02:19'),
(2, 'Yes', 'dsfsdfsdfds', 'Job related online training/workshop', 'Yes', 'sdfsfsdfsd', 'sdfsdfsdfsdf', 'sdfsfsfsfsfd', 'Between 09:00 - 11:00 AM', 'Yes', '11', '2024-01-20 12:07:38', '2024-01-20 12:07:38'),
(3, 'Yes', 'dfgdfgdfg', 'Online entrepreneurship related training/workshop', 'Yes', 'dfgdfgdfgd', 'dfgdfgdfgdfgd', 'dfgdfgdfgdfgd', 'Between 12:00 - 02:00 PM', 'Yes', '18', '2024-01-20 16:36:47', '2024-01-20 16:36:47'),
(4, 'Yes', 'sdhgfghsdhf', 'Class/physical entrepreneurship related training/workshop', 'Yes', 'dsfsdfsdf', 'dsfsdfsdfds', 'sdfsdfsdf', 'Between 12:00 - 02:00 PM', 'Yes', '19', '2024-01-20 17:01:00', '2024-01-20 17:01:00'),
(5, 'Yes', 'fgdfgdfgdfgdgdgdg If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Capacity For Salaried Job Or Self-Employment?If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Capacity For Salaried Job Or Self-Employment?If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Cap', 'Job related online training/workshop', 'No', 'If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Capacity For Salaried Job Or Self-Employment?If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Capacity For Salaried Job Or Self-Employment?If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Capacity For Salaried', 'If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Capacity For Salaried Job Or Self-Employment?If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Capacity For Salaried Job Or Self-Employment?If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Capacity For Salaried', 'If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Capacity For Salaried Job Or Self-Employment?If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Capacity For Salaried Job Or Self-Employment?If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Capacity For Salaried', 'Between 09:00 - 11:00 AM', 'Yes', '24', '2024-01-28 23:12:11', '2024-01-28 23:12:11'),
(6, 'Yes', 'If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Capacity For Salaried Job Or Self-Employment?If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Capacity For Salaried Job Or Self-Employment?', 'Online entrepreneurship related training/workshop', 'Yes', 'If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Capacity For Salaried Job Or Self-Employment?', 'If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Capacity For Salaried Job Or Self-Employment?', 'If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Capacity For Salaried Job Or Self-Employment?If The Answer Is YES From The Question Above, What Are The Names Of Institutions Supported You For Employability Capacity For Salaried Job Or Self-Employment?', 'Between 12:00 - 02:00 PM', 'Yes', '25', '2024-01-28 23:15:45', '2024-01-28 23:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `student_profiles`
--

CREATE TABLE `student_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `age` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `merital` varchar(255) NOT NULL,
  `education_level` varchar(255) NOT NULL,
  `graduate_year` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `sector` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `device` varchar(255) NOT NULL,
  `student_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_profiles`
--

INSERT INTO `student_profiles` (`id`, `age`, `sex`, `merital`, `education_level`, `graduate_year`, `college`, `course`, `sector`, `contact`, `device`, `student_id`, `created_at`, `updated_at`) VALUES
(4, '18 to 24', 'male', 'single', 'Bachelor', '2020', 'dit', 'electrical eng', 'Transport and Logistics', '+255768448525, +255768448525, engrithom1@gmail.com, Mwanza, songea', 'Tablet', 11, '2024-01-20 08:18:33', '2024-01-20 08:18:33'),
(5, '18 to 24', 'male', 'single', 'Bachelor', '2011', 'dit', 'electrical eng', 'Tourism and Hospitality', '+255768448525, +255768448525, engrithom1@gmail.com, Pemba, songea', 'Laptop Computer', 18, '2024-01-20 16:31:20', '2024-01-20 16:31:20'),
(6, '18 to 24', 'female', 'married', 'Certificate', '2009', 'dit', 'electrical eng', 'Tourism and Hospitality', '+255768448525, +255768448525, engrithom1@gmail.com, Mtwara, wewe', 'Tablet', 18, '2024-01-20 16:35:29', '2024-01-20 16:35:29'),
(7, '18 to 24', 'male', 'single', 'Master', '2012', 'dit', 'electrical eng', 'Tourism and Hospitality', '+255768448525, +255768448525, engrithom1@gmail.com, Njombe, songea', 'Laptop Computer', 19, '2024-01-20 16:59:53', '2024-01-20 16:59:53'),
(8, '25 to 30', 'male', 'single', 'Diploma', '2023', 'ud', 'umeme', 'Tourism and Hospitality', '0765656555, 0767676777, mrakilikubwa@gmail.com, Manyara, types', 'Tablet', 24, '2024-01-28 23:01:52', '2024-01-28 23:01:52'),
(9, '31 to 35', 'male', 'single', 'Diploma', '2023', 'st agastin', 'civil eng', 'Tourism and Hospitality', '0765656555, 0767676777, mrakilikubwa@gmail.com, Manyara, types', 'Smart Phone', 25, '2024-01-28 23:14:32', '2024-01-28 23:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `auth_statuses_id` bigint(20) UNSIGNED NOT NULL,
  `about_me` varchar(255) NOT NULL DEFAULT 'member at IMED-GEER',
  `my_code` int(10) NOT NULL,
  `roles_id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.jpg',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `phone_verified_at`, `password`, `auth_statuses_id`, `about_me`, `my_code`, `roles_id`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'mambo mengi', '0614928525', NULL, '$2y$12$3indy7LDUsOsmi7RHJolOudaSRGxkWeRRz8BYEEy6P7PeRvoDYhaC', 5, 'member at IMED-GEER', 47018, 1, 'avatar.jpg', NULL, '2024-01-14 04:27:52', '2024-01-21 12:52:32'),
(12, 'mambo kidogo', '0768668525', NULL, '$2y$12$Jd04oNrqY3SA3oGPinQ.U.BwpNn6bc1n1SX6i77f9KRKuNOcO9Pe2', 0, 'member at IMED-GEER', 93898, 1, 'avatar.jpg', NULL, '2024-01-14 04:28:46', '2024-01-14 04:28:46'),
(13, 'mdada', '0676952722', NULL, '$2y$12$HSszhkabr5E4enRBfaWpZumAuTy9N9Kq9RiLG1sOKcmyGhPP6bxPi', 0, 'member at IMED-GEER', 79260, 1, 'avatar.jpg', NULL, '2024-01-14 06:08:21', '2024-01-14 06:08:21'),
(14, 'mdada', '0759701242', NULL, '$2y$12$FmcVgbjAKCeTpiLRmGEnPOcaQ3fvnNNWFFAlsQz9wzaNSTA2hk.wi', 0, 'member at IMED-GEER', 71378, 1, 'avatar.jpg', NULL, '2024-01-14 06:09:42', '2024-01-14 06:09:42'),
(16, 'voda shidaa', '0768448525', NULL, '$2y$12$Brj92h2gejLjdbTkW8a09en0OoZj53N/dnyLvFvVJFmL.e7U0vty6', 1, 'member at IMED-GEER', 0, 1, 'avatar.jpg', NULL, '2024-01-16 03:32:14', '2024-01-16 03:58:35'),
(17, 'bob rich', '0715021559', NULL, '$2y$12$vNyA4JOI46awaQJ.zlIXheeoiM0lDXAqxb/2k20U0b9EXWj26sOPu', 0, 'member at IMED-GEER', 51776, 1, 'avatar.jpg', NULL, '2024-01-20 03:36:41', '2024-01-20 03:36:41'),
(18, 'richard mlimila', '0768448510', NULL, '$2y$12$kZlZuIcICgFGDAnxa/YsTOi.skNPQdr2mIH6DQY4rFLns4KBzon52', 5, 'member at IMED-GEER', 93632, 1, 'avatar.jpg', NULL, '2024-01-20 16:26:44', '2024-01-28 22:32:16'),
(19, 'Sambokile kindeki', '0768448511', NULL, '$2y$12$YF1Wk4RICR3xzk06KGQ2K.0YW3vuyIytCm6O5QmIGePyK2TNAlLDW', 5, 'member at IMED-GEER', 73740, 1, 'avatar.jpg', NULL, '2024-01-20 16:58:59', '2024-01-22 01:54:17'),
(20, 'bob admin', '0768444444', NULL, '$2y$12$u20d7e/ci78cw4aj7JlkXOg19ZHEyiRKGRvIh0AFA8f.aWy01id2C', 5, 'member at IMED-GEER', 84802, 3, 'avatar.jpg', NULL, '2024-01-21 02:29:37', '2024-01-21 02:29:37'),
(21, 'student One', '0715000000', NULL, '$2y$12$JhT4nLChBiClI/vFlMeNxOERIMukOjHlxCwtFLGefp.e/wDtmOQd.', 5, 'member at IMED-GEER', 29363, 1, 'avatar.jpg', NULL, '2024-01-24 01:03:59', '2024-01-24 01:03:59'),
(22, 'student Two', '0715111111', NULL, '$2y$12$ULgAWhELjHGEHaZimRrLK.e83TwgGYco/djFFW7gYTU0ZtxXgeb9m', 5, 'member at IMED-GEER', 64208, 1, 'avatar.jpg', NULL, '2024-01-24 01:04:52', '2024-01-24 01:04:52'),
(23, 'Student Three', '0715222222', NULL, '$2y$12$6fmmTu/2BgtWuVz0UbC2iOm59Pqr9rHIc5AaZpYsD6lAEvIMQwMrq', 5, 'member at IMED-GEER', 12799, 1, 'avatar.jpg', NULL, '2024-01-24 01:06:02', '2024-01-24 01:06:02'),
(24, 'Navac Mbweso', '0768010101', NULL, '$2y$12$o.PL4qg5oYvHQBEdVoon1eBDJD220kvBt0OS4kXzOtHfxI4JQ28uO', 5, 'member at IMED-GEER', 95419, 1, 'avatar.jpg', NULL, '2024-01-28 22:46:47', '2024-01-29 05:54:19'),
(25, 'Rosh Richard', '0768020202', NULL, '$2y$12$30GU8X9ZOljNGNPcocGMzegmz6wwCsNAperYsDAO6Mq60aEQpXLSG', 5, 'member at IMED-GEER', 31835, 1, 'avatar.jpg', NULL, '2024-01-28 23:13:36', '2024-01-28 23:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `thumb`, `description`, `created_by`, `status`, `group_id`, `created_at`, `updated_at`) VALUES
(22, 'HATUA KWA HATUA - KUSET INSTAGRAM AKAUNTI KUWA YA KIBIASHARA  (kwa kutumia SIMU)', 'video1.jpg', 'Katika Kozi Hii utaweza kufahamu Maandalizi muhimu kabla ya kuset Akaunti Pamoja na Hatua kwa Hatua Jinsi ya kuset Instagram kuwa ya kibiashara itakayoweza KUSPONSOR matangazo yatakayokupa wateja kama MVUA.... (Ingiza Namba yako Ya Simu Kisha Bonyeza Lipa Hapa).\r\n', 20, 1, 1, '2024-01-23 09:19:01', '2024-01-23 09:19:01'),
(23, 'JINSI YA KUSPONSOR TANGAZO INSTAGRAM KWA USAHIHI', 'video2.jpg', 'Katika video hii utaweza kuona namna ya kuset GOALS kwa usahihi (kila Goal Imeelezewa Matokeo yake unayoweza kupata ukiichagua), namna ya kuset AUDIENCE, pamoja na aina ya BAJETI inayoweza kukupa matokeo mazuri. Enjoy.\r\n', 20, 1, 1, '2024-01-23 09:19:01', '2024-01-23 09:19:01'),
(24, 'JINSI YA KUFUNGUA ACCOUNT ILIYOFUNGWA KWA KUTUMIA SIMU (Hatua Kwa Hatua)', 'video3.jpg', 'Katika kozi hii utafahamu hatua za kufungua akaunti zilizofungwa za Instagram na Facebook, (Disabled, Restricted au No Permission) . Utaweza kufungua kwa kutumia simu. \r\n', 20, 1, 2, '2024-01-23 09:19:01', '2024-01-23 09:19:01');

-- --------------------------------------------------------

--
-- Table structure for table `video_lists`
--

CREATE TABLE `video_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `videos_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_lists`
--

INSERT INTO `video_lists` (`id`, `sub_title`, `video_url`, `label`, `created_by`, `order`, `videos_id`, `created_at`, `updated_at`) VALUES
(1, 'MAANDALIZI MUHIMU Kabla ya kuset Account', 'https://player.vimeo.com/progressive_redirect/playback/743367717/rendition/540p/file.mp4?loc=external&signature=fec7b7eb4617b2266579134a08fecfd8870ffc46a430b69cf2b9939042568bb0', 'Episode', 20, 1, 22, '2024-01-23 09:38:31', '2024-01-23 09:38:31'),
(2, 'KUSET AKAUNTI YA INSTAGRAM HATUA KWA HATUA', 'https://player.vimeo.com/progressive_redirect/playback/743366377/rendition/1080p/file.mp4?loc=external&signature=eae7bb4b77a049d1edf44e1228796981a56d038471153bfefc12f45f87713669', 'Episode', 20, 2, 22, '2024-01-23 09:38:31', '2024-01-23 09:38:31'),
(3, 'KUSET AKAUNTI YA INSTAGRAM HATUA KWA HATUA', 'https://player.vimeo.com/progressive_redirect/playback/743366780/rendition/1080p/file.mp4?loc=external&signature=4f8131b77eaf99046e6ce8f75f260d07bc615128fd27faf38e9e745e3fc1f3ae', 'Episode', 20, 3, 22, '2024-01-23 09:43:07', '2024-01-23 09:43:07'),
(4, 'MAANDALIZI MUHIMU KABLA YA KUSET TANGAZO', 'https://player.vimeo.com/progressive_redirect/playback/743421963/rendition/540p/file.mp4?loc=external&signature=fcb82b85b260305460b1b376709353e23ec612bb5a1323e4c1331671112306d5', 'Episode', 20, 1, 23, '2024-01-23 09:44:37', '2024-01-23 09:44:37'),
(5, 'JINSI YA KUSET GOALS..', 'https://player.vimeo.com/progressive_redirect/playback/743416333/rendition/1080p/file.mp4?loc=external&signature=ae49fa7b8e94d3150be368152faa779222fdf8d5af0674e7f657dfac0df34a13', 'Episode', 20, 2, 23, '2024-01-23 09:44:37', '2024-01-24 09:44:37'),
(6, 'KUSET AUDIENCE..', 'https://player.vimeo.com/progressive_redirect/playback/743417014/rendition/1080p/file.mp4?loc=external&signature=5307317d0d33ee8c1d690410f627bb6f1ae7c22942b53448b022b9664119ab85', 'Episode', 20, 3, 23, '2024-01-23 09:44:37', '2024-01-23 09:44:37'),
(7, 'MAANDALIZI MUHIMU KABLA YA KUANZA MCHAKATO', 'https://player.vimeo.com/progressive_redirect/playback/743425221/rendition/540p/file.mp4?loc=external&signature=d20c78841e3ff97ebe04d53035dba34afc6bd37d1d176c58c6eb272cc19cf9f7', 'Episode', 20, 1, 24, '2024-01-23 09:49:17', '2024-01-23 09:49:17'),
(8, 'KULOGIN NA KUINGIA KWENYE ADS MANAGER', 'https://player.vimeo.com/progressive_redirect/playback/743423052/rendition/1080p/file.mp4?loc=external&signature=21a88cf2d3b35d34c41e845001fd6c47216a5196fe96c56661158afc228c9995', 'Episode', 20, 2, 24, '2024-01-23 09:49:17', '2024-01-23 09:49:17'),
(9, 'KUTUMA OMBI LA REVIEW KWENYE ADS MANAGER', 'https://player.vimeo.com/progressive_redirect/playback/743423835/rendition/1080p/file.mp4?loc=external&signature=a3c9ec2b8f746b8b4b7be1f3197b3781c148810fe0a89ab80471831e58f4be90', 'Episode', 20, 3, 24, '2024-01-23 09:49:17', '2024-01-23 09:49:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audios`
--
ALTER TABLE `audios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audio_lists`
--
ALTER TABLE `audio_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audio_lists_audios_id_foreign` (`audios_id`);

--
-- Indexes for table `auth_statuses`
--
ALTER TABLE `auth_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_forums_id_foreign` (`forums_id`);

--
-- Indexes for table `c_likes`
--
ALTER TABLE `c_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intakes`
--
ALTER TABLE `intakes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_intakes_id_foreign` (`intakes_id`);

--
-- Indexes for table `student_employments`
--
ALTER TABLE `student_employments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_needs`
--
ALTER TABLE `student_needs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_auth_statuses_id_foreign` (`auth_statuses_id`),
  ADD KEY `users_roles_id_foreign` (`roles_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_lists`
--
ALTER TABLE `video_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_lists_videos_id_foreign` (`videos_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audios`
--
ALTER TABLE `audios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `audio_lists`
--
ALTER TABLE `audio_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_statuses`
--
ALTER TABLE `auth_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `c_likes`
--
ALTER TABLE `c_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `intakes`
--
ALTER TABLE `intakes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_employments`
--
ALTER TABLE `student_employments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_needs`
--
ALTER TABLE `student_needs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_profiles`
--
ALTER TABLE `student_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `video_lists`
--
ALTER TABLE `video_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audio_lists`
--
ALTER TABLE `audio_lists`
  ADD CONSTRAINT `audio_lists_audios_id_foreign` FOREIGN KEY (`audios_id`) REFERENCES `audios` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_forums_id_foreign` FOREIGN KEY (`forums_id`) REFERENCES `forums` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_intakes_id_foreign` FOREIGN KEY (`intakes_id`) REFERENCES `intakes` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_auth_statuses_id_foreign` FOREIGN KEY (`auth_statuses_id`) REFERENCES `auth_statuses` (`id`),
  ADD CONSTRAINT `users_roles_id_foreign` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `video_lists`
--
ALTER TABLE `video_lists`
  ADD CONSTRAINT `video_lists_videos_id_foreign` FOREIGN KEY (`videos_id`) REFERENCES `videos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
