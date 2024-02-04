-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 04, 2024 at 09:44 AM
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
-- Database: `jiteitzg_jitegemee`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_litespeed_url`
--

CREATE TABLE `wp_litespeed_url` (
  `id` bigint(20) NOT NULL,
  `url` varchar(500) NOT NULL,
  `cache_tags` varchar(1000) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_litespeed_url_file`
--

CREATE TABLE `wp_litespeed_url_file` (
  `id` bigint(20) NOT NULL,
  `url_id` bigint(20) NOT NULL,
  `vary` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'md5 of final vary',
  `filename` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'md5 of file content',
  `type` tinyint(4) NOT NULL COMMENT 'css=1,js=2,ccss=3,ucss=4',
  `expired` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://jitegemeesec.ac.tz', 'yes'),
(2, 'home', 'https://jitegemeesec.ac.tz', 'yes'),
(3, 'blogname', 'jitegemee secondary', 'yes'),
(4, 'blogdescription', 'High Quarity Edecation for all', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'engrithom1@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:35:\"litespeed-cache/litespeed-cache.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'jitegemee', 'yes'),
(41, 'stylesheet', 'jitegemee', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '800', 'yes'),
(57, 'thumbnail_size_h', '450', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', '', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:35:\"litespeed-cache/litespeed-cache.php\";s:47:\"LiteSpeed\\Activation::uninstall_litespeed_cache\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1716723169', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'disabled', 'no'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '4', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:9:{i:1707056726;a:2:{s:27:\"litespeed_task_imgoptm_pull\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:16:\"litespeed_filter\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}s:19:\"litespeed_task_lqip\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:16:\"litespeed_filter\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1707057962;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1707086762;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1707086809;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1707129961;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1707130009;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1707130011;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1707302761;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(124, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1680000440;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(129, 'https_detection_errors', 'a:0:{}', 'yes'),
(138, 'can_compress_scripts', '1', 'no'),
(139, 'current_theme', 'Awesome from Rich', 'yes'),
(140, 'theme_mods_jitegemee', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(146, 'finished_updating_comment_type', '1', 'yes'),
(335, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":3,\"critical\":1}', 'yes'),
(348, 'litespeed.conf.__activation', '-1', 'yes'),
(349, 'litespeed.purge.queue', '-1', 'yes'),
(350, 'litespeed.purge.queue2', '-1', 'yes'),
(397, 'litespeed.cloud._summary', '{\"curr_request.ver\":0,\"last_request.ver\":1701171187,\"news.utime\":1682308321,\"curr_request.news\":0,\"last_request.news\":1682308321}', 'yes'),
(398, 'litespeed.conf._version', '5.2', 'yes'),
(399, 'litespeed.conf.hash', 'ztvgdA0DLxNve66Q7b9UL2hfd6YW8DVD', 'yes'),
(400, 'litespeed.conf.auto_upgrade', '', 'yes'),
(401, 'litespeed.conf.api_key', '', 'yes'),
(402, 'litespeed.conf.server_ip', '', 'yes'),
(403, 'litespeed.conf.guest', '', 'yes'),
(404, 'litespeed.conf.guest_optm', '', 'yes'),
(405, 'litespeed.conf.news', '1', 'yes'),
(406, 'litespeed.conf.guest_uas', '[\"Lighthouse\",\"GTmetrix\",\"Google\",\"Pingdom\",\"bot\",\"PTST\",\"HeadlessChrome\"]', 'yes'),
(407, 'litespeed.conf.guest_ips', '[\"208.70.247.157\",\"172.255.48.130\",\"172.255.48.131\",\"172.255.48.132\",\"172.255.48.133\",\"172.255.48.134\",\"172.255.48.135\",\"172.255.48.136\",\"172.255.48.137\",\"172.255.48.138\",\"172.255.48.139\",\"172.255.48.140\",\"172.255.48.141\",\"172.255.48.142\",\"172.255.48.143\",\"172.255.48.144\",\"172.255.48.145\",\"172.255.48.146\",\"172.255.48.147\",\"52.229.122.240\",\"104.214.72.101\",\"13.66.7.11\",\"13.85.24.83\",\"13.85.24.90\",\"13.85.82.26\",\"40.74.242.253\",\"40.74.243.13\",\"40.74.243.176\",\"104.214.48.247\",\"157.55.189.189\",\"104.214.110.135\",\"70.37.83.240\",\"65.52.36.250\",\"13.78.216.56\",\"52.162.212.163\",\"23.96.34.105\",\"65.52.113.236\",\"172.255.61.34\",\"172.255.61.35\",\"172.255.61.36\",\"172.255.61.37\",\"172.255.61.38\",\"172.255.61.39\",\"172.255.61.40\",\"104.41.2.19\",\"191.235.98.164\",\"191.235.99.221\",\"191.232.194.51\",\"52.237.235.185\",\"52.237.250.73\",\"52.237.236.145\",\"104.211.143.8\",\"104.211.165.53\",\"52.172.14.87\",\"40.83.89.214\",\"52.175.57.81\",\"20.188.63.151\",\"20.52.36.49\",\"52.246.165.153\",\"51.144.102.233\",\"13.76.97.224\",\"102.133.169.66\",\"52.231.199.170\",\"13.53.162.7\",\"40.123.218.94\"]', 'yes'),
(408, 'litespeed.conf.cache', '1', 'yes'),
(409, 'litespeed.conf.cache-priv', '1', 'yes'),
(410, 'litespeed.conf.cache-commenter', '1', 'yes'),
(411, 'litespeed.conf.cache-rest', '1', 'yes'),
(412, 'litespeed.conf.cache-page_login', '1', 'yes'),
(413, 'litespeed.conf.cache-favicon', '1', 'yes'),
(414, 'litespeed.conf.cache-resources', '1', 'yes'),
(415, 'litespeed.conf.cache-mobile', '', 'yes'),
(416, 'litespeed.conf.cache-mobile_rules', '[\"Mobile\",\"Android\",\"Silk\\/\",\"Kindle\",\"BlackBerry\",\"Opera Mini\",\"Opera Mobi\"]', 'yes'),
(417, 'litespeed.conf.cache-browser', '', 'yes'),
(418, 'litespeed.conf.cache-exc_useragents', '[]', 'yes'),
(419, 'litespeed.conf.cache-exc_cookies', '[]', 'yes'),
(420, 'litespeed.conf.cache-exc_qs', '[]', 'yes'),
(421, 'litespeed.conf.cache-exc_cat', '[]', 'yes'),
(422, 'litespeed.conf.cache-exc_tag', '[]', 'yes'),
(423, 'litespeed.conf.cache-force_uri', '[]', 'yes'),
(424, 'litespeed.conf.cache-force_pub_uri', '[]', 'yes'),
(425, 'litespeed.conf.cache-priv_uri', '[]', 'yes'),
(426, 'litespeed.conf.cache-exc', '[]', 'yes'),
(427, 'litespeed.conf.cache-exc_roles', '[]', 'yes'),
(428, 'litespeed.conf.cache-drop_qs', '[\"fbclid\",\"gclid\",\"utm*\",\"_ga\"]', 'yes'),
(429, 'litespeed.conf.cache-ttl_pub', '604800', 'yes'),
(430, 'litespeed.conf.cache-ttl_priv', '1800', 'yes'),
(431, 'litespeed.conf.cache-ttl_frontpage', '604800', 'yes'),
(432, 'litespeed.conf.cache-ttl_feed', '604800', 'yes'),
(433, 'litespeed.conf.cache-ttl_rest', '604800', 'yes'),
(434, 'litespeed.conf.cache-ttl_browser', '31557600', 'yes'),
(435, 'litespeed.conf.cache-ttl_status', '[\"403 3600\",\"404 3600\",\"500 3600\"]', 'yes'),
(436, 'litespeed.conf.cache-login_cookie', '', 'yes'),
(437, 'litespeed.conf.cache-vary_group', '[]', 'yes'),
(438, 'litespeed.conf.purge-upgrade', '1', 'yes'),
(439, 'litespeed.conf.purge-stale', '', 'yes'),
(440, 'litespeed.conf.purge-post_all', '', 'yes'),
(441, 'litespeed.conf.purge-post_f', '1', 'yes'),
(442, 'litespeed.conf.purge-post_h', '1', 'yes'),
(443, 'litespeed.conf.purge-post_p', '1', 'yes'),
(444, 'litespeed.conf.purge-post_pwrp', '1', 'yes'),
(445, 'litespeed.conf.purge-post_a', '1', 'yes'),
(446, 'litespeed.conf.purge-post_y', '', 'yes'),
(447, 'litespeed.conf.purge-post_m', '1', 'yes'),
(448, 'litespeed.conf.purge-post_d', '', 'yes'),
(449, 'litespeed.conf.purge-post_t', '1', 'yes'),
(450, 'litespeed.conf.purge-post_pt', '1', 'yes'),
(451, 'litespeed.conf.purge-timed_urls', '[]', 'yes'),
(452, 'litespeed.conf.purge-timed_urls_time', '', 'yes'),
(453, 'litespeed.conf.purge-hook_all', '[\"switch_theme\",\"wp_create_nav_menu\",\"wp_update_nav_menu\",\"wp_delete_nav_menu\",\"create_term\",\"edit_terms\",\"delete_term\",\"add_link\",\"edit_link\",\"delete_link\"]', 'yes'),
(454, 'litespeed.conf.esi', '', 'yes'),
(455, 'litespeed.conf.esi-cache_admbar', '1', 'yes'),
(456, 'litespeed.conf.esi-cache_commform', '1', 'yes'),
(457, 'litespeed.conf.esi-nonce', '[\"stats_nonce\",\"subscribe_nonce\"]', 'yes'),
(458, 'litespeed.conf.util-instant_click', '', 'yes'),
(459, 'litespeed.conf.util-no_https_vary', '', 'yes'),
(460, 'litespeed.conf.debug-disable_all', '', 'yes'),
(461, 'litespeed.conf.debug', '', 'yes'),
(462, 'litespeed.conf.debug-ips', '[\"127.0.0.1\"]', 'yes'),
(463, 'litespeed.conf.debug-level', '', 'yes'),
(464, 'litespeed.conf.debug-filesize', '3', 'yes'),
(465, 'litespeed.conf.debug-cookie', '', 'yes'),
(466, 'litespeed.conf.debug-collaps_qs', '', 'yes'),
(467, 'litespeed.conf.debug-inc', '[]', 'yes'),
(468, 'litespeed.conf.debug-exc', '[]', 'yes'),
(469, 'litespeed.conf.debug-exc_strings', '[]', 'yes'),
(470, 'litespeed.conf.db_optm-revisions_max', '0', 'yes'),
(471, 'litespeed.conf.db_optm-revisions_age', '0', 'yes'),
(472, 'litespeed.conf.optm-css_min', '', 'yes'),
(473, 'litespeed.conf.optm-css_comb', '', 'yes'),
(474, 'litespeed.conf.optm-css_comb_ext_inl', '1', 'yes'),
(475, 'litespeed.conf.optm-ucss', '', 'yes'),
(476, 'litespeed.conf.optm-ucss_inline', '', 'yes'),
(477, 'litespeed.conf.optm-ucss_whitelist', '[]', 'yes'),
(478, 'litespeed.conf.optm-ucss_exc', '[]', 'yes'),
(479, 'litespeed.conf.optm-css_exc', '[]', 'yes'),
(480, 'litespeed.conf.optm-js_min', '', 'yes'),
(481, 'litespeed.conf.optm-js_comb', '', 'yes'),
(482, 'litespeed.conf.optm-js_comb_ext_inl', '1', 'yes'),
(483, 'litespeed.conf.optm-js_exc', '[\"jquery.js\",\"jquery.min.js\"]', 'yes'),
(484, 'litespeed.conf.optm-html_min', '', 'yes'),
(485, 'litespeed.conf.optm-html_lazy', '[]', 'yes'),
(486, 'litespeed.conf.optm-qs_rm', '', 'yes'),
(487, 'litespeed.conf.optm-ggfonts_rm', '', 'yes'),
(488, 'litespeed.conf.optm-css_async', '', 'yes'),
(489, 'litespeed.conf.optm-ccss_per_url', '', 'yes'),
(490, 'litespeed.conf.optm-ccss_sep_posttype', '[\"page\"]', 'yes'),
(491, 'litespeed.conf.optm-ccss_sep_uri', '[]', 'yes'),
(492, 'litespeed.conf.optm-css_async_inline', '1', 'yes'),
(493, 'litespeed.conf.optm-css_font_display', '', 'yes'),
(494, 'litespeed.conf.optm-js_defer', '', 'yes'),
(495, 'litespeed.conf.optm-emoji_rm', '', 'yes'),
(496, 'litespeed.conf.optm-noscript_rm', '', 'yes'),
(497, 'litespeed.conf.optm-ggfonts_async', '', 'yes'),
(498, 'litespeed.conf.optm-exc_roles', '[]', 'yes'),
(499, 'litespeed.conf.optm-ccss_con', '', 'yes'),
(500, 'litespeed.conf.optm-js_defer_exc', '[\"jquery.js\",\"jquery.min.js\",\"gtm.js\",\"analytics.js\"]', 'yes'),
(501, 'litespeed.conf.optm-gm_js_exc', '[]', 'yes'),
(502, 'litespeed.conf.optm-dns_prefetch', '[]', 'yes'),
(503, 'litespeed.conf.optm-dns_prefetch_ctrl', '', 'yes'),
(504, 'litespeed.conf.optm-exc', '[]', 'yes'),
(505, 'litespeed.conf.optm-guest_only', '1', 'yes'),
(506, 'litespeed.conf.object', '', 'yes'),
(507, 'litespeed.conf.object-kind', '', 'yes'),
(508, 'litespeed.conf.object-host', 'localhost', 'yes'),
(509, 'litespeed.conf.object-port', '11211', 'yes'),
(510, 'litespeed.conf.object-life', '360', 'yes'),
(511, 'litespeed.conf.object-persistent', '1', 'yes'),
(512, 'litespeed.conf.object-admin', '1', 'yes'),
(513, 'litespeed.conf.object-transients', '1', 'yes'),
(514, 'litespeed.conf.object-db_id', '0', 'yes'),
(515, 'litespeed.conf.object-user', '', 'yes'),
(516, 'litespeed.conf.object-pswd', '', 'yes'),
(517, 'litespeed.conf.object-global_groups', '[\"users\",\"userlogins\",\"useremail\",\"userslugs\",\"usermeta\",\"user_meta\",\"site-transient\",\"site-options\",\"site-lookup\",\"site-details\",\"blog-lookup\",\"blog-details\",\"blog-id-cache\",\"rss\",\"global-posts\",\"global-cache-test\"]', 'yes'),
(518, 'litespeed.conf.object-non_persistent_groups', '[\"comment\",\"counts\",\"plugins\",\"wc_session_id\"]', 'yes'),
(519, 'litespeed.conf.discuss-avatar_cache', '', 'yes'),
(520, 'litespeed.conf.discuss-avatar_cron', '', 'yes'),
(521, 'litespeed.conf.discuss-avatar_cache_ttl', '604800', 'yes'),
(522, 'litespeed.conf.optm-localize', '', 'yes'),
(523, 'litespeed.conf.optm-localize_domains', '[\"### Popular scripts ###\",\"https:\\/\\/platform.twitter.com\\/widgets.js\",\"https:\\/\\/connect.facebook.net\\/en_US\\/fbevents.js\"]', 'yes'),
(524, 'litespeed.conf.media-lazy', '', 'yes'),
(525, 'litespeed.conf.media-lazy_placeholder', '', 'yes'),
(526, 'litespeed.conf.media-placeholder_resp', '', 'yes'),
(527, 'litespeed.conf.media-placeholder_resp_color', '#cfd4db', 'yes'),
(528, 'litespeed.conf.media-placeholder_resp_svg', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"{width}\" height=\"{height}\" viewBox=\"0 0 {width} {height}\"><rect width=\"100%\" height=\"100%\" style=\"fill:{color};fill-opacity: 0.1;\"/></svg>', 'yes'),
(529, 'litespeed.conf.media-lqip', '', 'yes'),
(530, 'litespeed.conf.media-lqip_qual', '4', 'yes'),
(531, 'litespeed.conf.media-lqip_min_w', '150', 'yes'),
(532, 'litespeed.conf.media-lqip_min_h', '150', 'yes'),
(533, 'litespeed.conf.media-placeholder_resp_async', '1', 'yes'),
(534, 'litespeed.conf.media-iframe_lazy', '', 'yes'),
(535, 'litespeed.conf.media-add_missing_sizes', '', 'yes'),
(536, 'litespeed.conf.media-lazy_exc', '[]', 'yes'),
(537, 'litespeed.conf.media-lazy_cls_exc', '[\"wmu-preview-img\"]', 'yes'),
(538, 'litespeed.conf.media-lazy_parent_cls_exc', '[]', 'yes'),
(539, 'litespeed.conf.media-iframe_lazy_cls_exc', '[]', 'yes'),
(540, 'litespeed.conf.media-iframe_lazy_parent_cls_exc', '[]', 'yes'),
(541, 'litespeed.conf.media-lazy_uri_exc', '[]', 'yes'),
(542, 'litespeed.conf.media-lqip_exc', '[]', 'yes'),
(543, 'litespeed.conf.media-vpi', '', 'yes'),
(544, 'litespeed.conf.media-vpi_cron', '', 'yes'),
(545, 'litespeed.conf.img_optm-auto', '', 'yes'),
(546, 'litespeed.conf.img_optm-cron', '1', 'yes'),
(547, 'litespeed.conf.img_optm-ori', '1', 'yes'),
(548, 'litespeed.conf.img_optm-rm_bkup', '', 'yes'),
(549, 'litespeed.conf.img_optm-webp', '1', 'yes'),
(550, 'litespeed.conf.img_optm-lossless', '', 'yes'),
(551, 'litespeed.conf.img_optm-exif', '1', 'yes'),
(552, 'litespeed.conf.img_optm-webp_replace', '', 'yes'),
(553, 'litespeed.conf.img_optm-webp_attr', '[\"img.src\",\"div.data-thumb\",\"img.data-src\",\"img.data-lazyload\",\"div.data-large_image\",\"img.retina_logo_url\",\"div.data-parallax-image\",\"div.data-vc-parallax-image\",\"video.poster\"]', 'yes'),
(554, 'litespeed.conf.img_optm-webp_replace_srcset', '', 'yes'),
(555, 'litespeed.conf.img_optm-jpg_quality', '82', 'yes'),
(556, 'litespeed.conf.crawler', '', 'yes'),
(557, 'litespeed.conf.crawler-usleep', '500', 'yes'),
(558, 'litespeed.conf.crawler-run_duration', '400', 'yes'),
(559, 'litespeed.conf.crawler-run_interval', '600', 'yes'),
(560, 'litespeed.conf.crawler-crawl_interval', '302400', 'yes'),
(561, 'litespeed.conf.crawler-threads', '3', 'yes'),
(562, 'litespeed.conf.crawler-timeout', '30', 'yes'),
(563, 'litespeed.conf.crawler-load_limit', '1', 'yes'),
(564, 'litespeed.conf.crawler-sitemap', '', 'yes'),
(565, 'litespeed.conf.crawler-drop_domain', '1', 'yes'),
(566, 'litespeed.conf.crawler-map_timeout', '120', 'yes'),
(567, 'litespeed.conf.crawler-roles', '[]', 'yes'),
(568, 'litespeed.conf.crawler-cookies', '[]', 'yes'),
(569, 'litespeed.conf.misc-heartbeat_front', '', 'yes'),
(570, 'litespeed.conf.misc-heartbeat_front_ttl', '60', 'yes'),
(571, 'litespeed.conf.misc-heartbeat_back', '', 'yes'),
(572, 'litespeed.conf.misc-heartbeat_back_ttl', '60', 'yes'),
(573, 'litespeed.conf.misc-heartbeat_editor', '', 'yes'),
(574, 'litespeed.conf.misc-heartbeat_editor_ttl', '15', 'yes'),
(575, 'litespeed.conf.cdn', '', 'yes'),
(576, 'litespeed.conf.cdn-ori', '[]', 'yes'),
(577, 'litespeed.conf.cdn-ori_dir', '[\"wp-content\",\"wp-includes\"]', 'yes'),
(578, 'litespeed.conf.cdn-exc', '[]', 'yes'),
(579, 'litespeed.conf.cdn-quic', '', 'yes'),
(580, 'litespeed.conf.cdn-cloudflare', '', 'yes'),
(581, 'litespeed.conf.cdn-cloudflare_email', '', 'yes'),
(582, 'litespeed.conf.cdn-cloudflare_key', '', 'yes'),
(583, 'litespeed.conf.cdn-cloudflare_name', '', 'yes'),
(584, 'litespeed.conf.cdn-cloudflare_zone', '', 'yes'),
(585, 'litespeed.conf.cdn-mapping', '[{\"url\":\"\",\"inc_img\":\"1\",\"inc_css\":\"1\",\"inc_js\":\"1\",\"filetype\":[\".aac\",\".css\",\".eot\",\".gif\",\".jpeg\",\".jpg\",\".js\",\".less\",\".mp3\",\".mp4\",\".ogg\",\".otf\",\".pdf\",\".png\",\".svg\",\".ttf\",\".webp\",\".woff\",\".woff2\"]}]', 'yes'),
(586, 'litespeed.conf.cdn-attr', '[\".src\",\".data-src\",\".href\",\".poster\",\"source.srcset\"]', 'yes'),
(587, 'litespeed.conf.qc-token', '', 'yes'),
(588, 'litespeed.conf.qc-nameservers', '', 'yes'),
(589, 'litespeed.admin_display.thirdparty_litespeed_check', '1', 'yes'),
(597, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"engrithom1@gmail.com\";s:7:\"version\";s:5:\"6.2.4\";s:9:\"timestamp\";i:1706708495;}', 'no'),
(603, 'litespeed.gui.lscwp_whm_install', '-1', 'yes'),
(604, 'litespeed.gui.dismiss', '-1', 'yes'),
(605, 'litespeed.gui._summary', '{\"new_version\":1680767087,\"score\":1681371887}', 'yes'),
(606, 'litespeed.data.upgrading', '-1', 'yes'),
(607, 'litespeed.admin_display.messages', '-1', 'yes'),
(626, 'WPLANG', '', 'yes'),
(627, 'new_admin_email', 'engrithom1@gmail.com', 'yes'),
(653, 'litespeed.optimize.timestamp_purge_css', '1701171186', 'yes'),
(882, 'litespeed.admin_display._summary', '{\"new_version.last_check\":1701171187,\"new_version.v\":\"5.7.0.1\"}', 'yes'),
(1034, 'recently_activated', 'a:0:{}', 'yes'),
(1035, 'acf_version', '5.11.4', 'yes'),
(1180, 'category_children', 'a:0:{}', 'yes'),
(1233, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(6600, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.4.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.3\";s:7:\"version\";s:5:\"6.4.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.4.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.3\";s:7:\"version\";s:5:\"6.4.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.3\";s:7:\"version\";s:5:\"6.3.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1707056709;s:15:\"version_checked\";s:5:\"6.2.4\";s:12:\"translations\";a:0:{}}', 'no'),
(6603, '_site_transient_timeout_php_check_38979a08dcd71638878b7b4419751271', '1707313296', 'no'),
(6604, '_site_transient_php_check_38979a08dcd71638878b7b4419751271', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(6653, '_site_transient_timeout_theme_roots', '1707058509', 'no'),
(6654, '_site_transient_theme_roots', 'a:2:{s:9:\"jitegemee\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";}', 'no'),
(6655, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1707056710;s:7:\"checked\";a:2:{s:9:\"jitegemee\";s:3:\"0.1\";s:17:\"twentytwentythree\";s:3:\"1.0\";}s:8:\"response\";a:1:{s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.3.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(6656, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1707056710;s:8:\"response\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.4.3\";s:12:\"requires_php\";s:3:\"7.0\";s:14:\"upgrade_notice\";s:245:\"<p>From ACF 6.2.5, the shortcode will now escape unsafe HTML automatically. This may be a breaking change. Please view <a href=\"https://www.advancedcustomfields.com/blog/acf-6-2-5-security-release/\">our release blog</a> for more information.</p>\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.4.3\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:35:\"litespeed-cache/litespeed-cache.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:29:\"w.org/plugins/litespeed-cache\";s:4:\"slug\";s:15:\"litespeed-cache\";s:6:\"plugin\";s:35:\"litespeed-cache/litespeed-cache.php\";s:11:\"new_version\";s:7:\"6.0.0.1\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/litespeed-cache/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/litespeed-cache.6.0.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-256x256.png?rev=2554181\";s:2:\"1x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-128x128.png?rev=2554181\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/litespeed-cache/assets/banner-1544x500.png?rev=2554181\";s:2:\"1x\";s:70:\"https://ps.w.org/litespeed-cache/assets/banner-772x250.png?rev=2554181\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";s:6:\"tested\";s:5:\"6.4.3\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.11.4\";s:19:\"akismet/akismet.php\";s:5:\"5.0.1\";s:9:\"hello.php\";s:5:\"1.7.2\";s:35:\"litespeed-cache/litespeed-cache.php\";s:3:\"5.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 6, '_edit_lock', '1683019613:4'),
(5, 8, '_edit_lock', '1679640885:1'),
(6, 10, '_edit_lock', '1679640925:1'),
(7, 12, '_edit_lock', '1679640969:1'),
(8, 14, '_edit_lock', '1679640994:1'),
(9, 16, '_edit_lock', '1679662410:1'),
(10, 18, '_edit_lock', '1679662290:1'),
(11, 20, '_edit_lock', '1679662321:1'),
(12, 22, '_edit_lock', '1679662346:1'),
(13, 24, '_edit_lock', '1679662374:1'),
(14, 26, '_edit_lock', '1679663360:1'),
(15, 28, '_edit_lock', '1679663379:1'),
(16, 30, '_edit_lock', '1679663408:1'),
(17, 32, '_edit_lock', '1680001207:1'),
(23, 37, '_edit_lock', '1682589292:1'),
(24, 37, '_edit_last', '1'),
(27, 43, '_edit_lock', '1689658202:4'),
(28, 44, '_wp_attached_file', '2023/04/plak1.jpg'),
(29, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:541;s:4:\"file\";s:17:\"2023/04/plak1.jpg\";s:8:\"filesize\";i:106902;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"plak1-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16293;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"plak1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7428;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"plak1-768x519.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:519;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66909;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 43, '_thumbnail_id', '44'),
(33, 43, '_edit_last', '1'),
(34, 43, 'day', '27'),
(35, 43, '_day', 'field_64451bd6cabac'),
(36, 43, 'month', 'september'),
(37, 43, '_month', 'field_64451d24cabad'),
(38, 43, 'year', '2023'),
(39, 43, '_year', 'field_64451f1acabae'),
(40, 46, 'day', '27'),
(41, 46, '_day', 'field_64451bd6cabac'),
(42, 46, 'month', 'april'),
(43, 46, '_month', 'field_64451d24cabad'),
(44, 46, 'year', '4'),
(45, 46, '_year', 'field_64451f1acabae'),
(50, 47, 'day', '27'),
(51, 47, '_day', 'field_64451bd6cabac'),
(52, 47, 'month', 'april'),
(53, 47, '_month', 'field_64451d24cabad'),
(54, 47, 'year', '2023'),
(55, 47, '_year', 'field_64451f1acabae'),
(57, 50, 'day', '27'),
(58, 50, '_day', 'field_64451bd6cabac'),
(59, 50, 'month', 'april'),
(60, 50, '_month', 'field_64451d24cabad'),
(61, 50, 'year', '2023'),
(62, 50, '_year', 'field_64451f1acabae'),
(66, 51, 'day', '27'),
(67, 51, '_day', 'field_64451bd6cabac'),
(68, 51, 'month', 'april'),
(69, 51, '_month', 'field_64451d24cabad'),
(70, 51, 'year', '2023'),
(71, 51, '_year', 'field_64451f1acabae'),
(73, 53, '_edit_lock', '1682307195:2'),
(74, 55, '_wp_attached_file', '2023/04/FORM-ONE-APLICATION-FORM.pdf'),
(75, 55, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:368186;}'),
(76, 56, '_wp_attached_file', '2023/04/FORM-V-APPLICATION-FORM.pdf'),
(77, 56, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:155348;}'),
(81, 59, 'day', '27'),
(82, 59, '_day', 'field_64451bd6cabac'),
(83, 59, 'month', 'september'),
(84, 59, '_month', 'field_64451d24cabad'),
(85, 59, 'year', '2023'),
(86, 59, '_year', 'field_64451f1acabae'),
(89, 43, 'views', '38'),
(90, 43, '_views', 'field_644a46c2acc55'),
(91, 61, 'day', '27'),
(92, 61, '_day', 'field_64451bd6cabac'),
(93, 61, 'month', 'september'),
(94, 61, '_month', 'field_64451d24cabad'),
(95, 61, 'year', '2023'),
(96, 61, '_year', 'field_64451f1acabae'),
(97, 61, 'views', '3'),
(98, 61, '_views', 'field_644a46c2acc55'),
(101, 64, '_wp_attached_file', '2023/04/WhatsApp-Image-2023-04-27-at-13.49.19.jpeg'),
(102, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:50:\"2023/04/WhatsApp-Image-2023-04-27-at-13.49.19.jpeg\";s:8:\"filesize\";i:146281;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"WhatsApp-Image-2023-04-27-at-13.49.19-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15682;}s:5:\"large\";a:5:{s:4:\"file\";s:51:\"WhatsApp-Image-2023-04-27-at-13.49.19-1024x682.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:111183;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"WhatsApp-Image-2023-04-27-at-13.49.19-800x450.jpeg\";s:5:\"width\";i:800;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:67931;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:50:\"WhatsApp-Image-2023-04-27-at-13.49.19-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:71338;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 68, '_wp_attached_file', '2023/04/WhatsApp-Image-2023-04-27-at-13.49.19-1.jpeg'),
(126, 68, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:52:\"2023/04/WhatsApp-Image-2023-04-27-at-13.49.19-1.jpeg\";s:8:\"filesize\";i:146281;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2023-04-27-at-13.49.19-1-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15682;}s:5:\"large\";a:5:{s:4:\"file\";s:53:\"WhatsApp-Image-2023-04-27-at-13.49.19-1-1024x682.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:111183;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2023-04-27-at-13.49.19-1-800x450.jpeg\";s:5:\"width\";i:800;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:67931;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2023-04-27-at-13.49.19-1-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:71338;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 68, '_wp_attachment_image_alt', 'Jitegemee'),
(226, 85, '_wp_attached_file', '2023/07/FOMU-YA-WAHAMIAJI-2023.docx'),
(227, 85, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:24378;}'),
(228, 86, '_wp_attached_file', '2023/07/A-LEVEL-JOINING-INSTRUCTION-2023.docx'),
(229, 86, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:29600;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2023-03-24 06:37:26', '2023-03-24 06:37:26', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://jitegemeesec.ac.tz/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-03-24 06:37:26', '2023-03-24 06:37:26', '', 0, 'https://jitegemeesec.ac.tz/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-03-24 06:37:26', '2023-03-24 06:37:26', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-03-24 06:37:26', '2023-03-24 06:37:26', '', 0, 'https://jitegemeesec.ac.tz/?page_id=3', 0, 'page', '', 0),
(6, 1, '2023-03-24 06:45:51', '2023-03-24 06:45:51', '', 'contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2023-03-24 06:45:51', '2023-03-24 06:45:51', '', 0, 'https://jitegemeesec.ac.tz/?page_id=6', 0, 'page', '', 0),
(7, 1, '2023-03-24 06:45:51', '2023-03-24 06:45:51', '', 'contact', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-03-24 06:45:51', '2023-03-24 06:45:51', '', 6, 'https://jitegemeesec.ac.tz/?p=7', 0, 'revision', '', 0),
(8, 1, '2023-03-24 06:51:21', '2023-03-24 06:51:21', '', 'School Profile', '', 'publish', 'closed', 'closed', '', 'school-profile', '', '', '2023-03-24 06:51:21', '2023-03-24 06:51:21', '', 0, 'https://jitegemeesec.ac.tz/?page_id=8', 0, 'page', '', 0),
(9, 1, '2023-03-24 06:51:21', '2023-03-24 06:51:21', '', 'School Profile', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-03-24 06:51:21', '2023-03-24 06:51:21', '', 8, 'https://jitegemeesec.ac.tz/?p=9', 0, 'revision', '', 0),
(10, 1, '2023-03-24 06:57:46', '2023-03-24 06:57:46', '', 'School Leadership', '', 'publish', 'closed', 'closed', '', 'school-leadership', '', '', '2023-03-24 06:57:46', '2023-03-24 06:57:46', '', 0, 'https://jitegemeesec.ac.tz/?page_id=10', 0, 'page', '', 0),
(11, 1, '2023-03-24 06:57:46', '2023-03-24 06:57:46', '', 'School Leadership', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-03-24 06:57:46', '2023-03-24 06:57:46', '', 10, 'https://jitegemeesec.ac.tz/?p=11', 0, 'revision', '', 0),
(12, 1, '2023-03-24 06:58:11', '2023-03-24 06:58:11', '', 'School Life', '', 'publish', 'closed', 'closed', '', 'school-life', '', '', '2023-03-24 06:58:11', '2023-03-24 06:58:11', '', 0, 'https://jitegemeesec.ac.tz/?page_id=12', 0, 'page', '', 0),
(13, 1, '2023-03-24 06:58:11', '2023-03-24 06:58:11', '', 'School Life', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-03-24 06:58:11', '2023-03-24 06:58:11', '', 12, 'https://jitegemeesec.ac.tz/?p=13', 0, 'revision', '', 0),
(14, 1, '2023-03-24 06:58:43', '2023-03-24 06:58:43', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2023-03-24 06:58:43', '2023-03-24 06:58:43', '', 0, 'https://jitegemeesec.ac.tz/?page_id=14', 0, 'page', '', 0),
(15, 1, '2023-03-24 06:58:43', '2023-03-24 06:58:43', '', 'Events', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2023-03-24 06:58:43', '2023-03-24 06:58:43', '', 14, 'https://jitegemeesec.ac.tz/?p=15', 0, 'revision', '', 0),
(16, 1, '2023-03-24 06:59:12', '2023-03-24 06:59:12', '', 'Year Calender', '', 'publish', 'closed', 'closed', '', 'year-calender', '', '', '2023-03-24 06:59:12', '2023-03-24 06:59:12', '', 0, 'https://jitegemeesec.ac.tz/?page_id=16', 0, 'page', '', 0),
(17, 1, '2023-03-24 06:59:12', '2023-03-24 06:59:12', '', 'Year Calender', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-03-24 06:59:12', '2023-03-24 06:59:12', '', 16, 'https://jitegemeesec.ac.tz/?p=17', 0, 'revision', '', 0),
(18, 1, '2023-03-24 12:53:45', '2023-03-24 12:53:45', '', 'School Programs', '', 'publish', 'closed', 'closed', '', 'school-programs', '', '', '2023-03-24 12:53:45', '2023-03-24 12:53:45', '', 0, 'https://jitegemeesec.ac.tz/?page_id=18', 0, 'page', '', 0),
(19, 1, '2023-03-24 12:53:45', '2023-03-24 12:53:45', '', 'School Programs', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2023-03-24 12:53:45', '2023-03-24 12:53:45', '', 18, 'https://jitegemeesec.ac.tz/?p=19', 0, 'revision', '', 0),
(20, 1, '2023-03-24 12:54:15', '2023-03-24 12:54:15', '', 'Discipline &amp; Policy', '', 'publish', 'closed', 'closed', '', 'discipline-policy', '', '', '2023-03-24 12:54:15', '2023-03-24 12:54:15', '', 0, 'https://jitegemeesec.ac.tz/?page_id=20', 0, 'page', '', 0),
(21, 1, '2023-03-24 12:54:15', '2023-03-24 12:54:15', '', 'Discipline &amp; Policy', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2023-03-24 12:54:15', '2023-03-24 12:54:15', '', 20, 'https://jitegemeesec.ac.tz/?p=21', 0, 'revision', '', 0),
(22, 1, '2023-03-24 12:54:48', '2023-03-24 12:54:48', '', 'Libraly', '', 'publish', 'closed', 'closed', '', 'libraly', '', '', '2023-03-24 12:54:48', '2023-03-24 12:54:48', '', 0, 'https://jitegemeesec.ac.tz/?page_id=22', 0, 'page', '', 0),
(23, 1, '2023-03-24 12:54:48', '2023-03-24 12:54:48', '', 'Libraly', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-03-24 12:54:48', '2023-03-24 12:54:48', '', 22, 'https://jitegemeesec.ac.tz/?p=23', 0, 'revision', '', 0),
(24, 1, '2023-03-24 12:55:09', '2023-03-24 12:55:09', '', 'Counseling', '', 'publish', 'closed', 'closed', '', 'counseling', '', '', '2023-03-24 12:55:09', '2023-03-24 12:55:09', '', 0, 'https://jitegemeesec.ac.tz/?page_id=24', 0, 'page', '', 0),
(25, 1, '2023-03-24 12:55:09', '2023-03-24 12:55:09', '', 'Counseling', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-03-24 12:55:09', '2023-03-24 12:55:09', '', 24, 'https://jitegemeesec.ac.tz/?p=25', 0, 'revision', '', 0),
(26, 1, '2023-03-24 13:11:34', '2023-03-24 13:11:34', '', 'why us', '', 'publish', 'closed', 'closed', '', 'why-us', '', '', '2023-03-24 13:11:34', '2023-03-24 13:11:34', '', 0, 'https://jitegemeesec.ac.tz/?page_id=26', 0, 'page', '', 0),
(27, 1, '2023-03-24 13:11:34', '2023-03-24 13:11:34', '', 'why us', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2023-03-24 13:11:34', '2023-03-24 13:11:34', '', 26, 'https://jitegemeesec.ac.tz/?p=27', 0, 'revision', '', 0),
(28, 1, '2023-03-24 13:11:56', '2023-03-24 13:11:56', '', 'fees', '', 'publish', 'closed', 'closed', '', 'fees', '', '', '2023-03-24 13:11:56', '2023-03-24 13:11:56', '', 0, 'https://jitegemeesec.ac.tz/?page_id=28', 0, 'page', '', 0),
(29, 1, '2023-03-24 13:11:56', '2023-03-24 13:11:56', '', 'fees', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2023-03-24 13:11:56', '2023-03-24 13:11:56', '', 28, 'https://jitegemeesec.ac.tz/?p=29', 0, 'revision', '', 0),
(30, 1, '2023-03-24 13:12:29', '2023-03-24 13:12:29', '', 'entry requirements', '', 'publish', 'closed', 'closed', '', 'entry-requirements', '', '', '2023-03-24 13:12:29', '2023-03-24 13:12:29', '', 0, 'https://jitegemeesec.ac.tz/?page_id=30', 0, 'page', '', 0),
(31, 1, '2023-03-24 13:12:29', '2023-03-24 13:12:29', '', 'entry requirements', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2023-03-24 13:12:29', '2023-03-24 13:12:29', '', 30, 'https://jitegemeesec.ac.tz/?p=31', 0, 'revision', '', 0),
(32, 1, '2023-03-24 14:01:00', '2023-03-24 14:01:00', '', 'departments', '', 'publish', 'closed', 'closed', '', 'departments', '', '', '2023-03-24 14:01:00', '2023-03-24 14:01:00', '', 0, 'https://jitegemeesec.ac.tz/?page_id=32', 0, 'page', '', 0),
(33, 1, '2023-03-24 14:01:00', '2023-03-24 14:01:00', '', 'departments', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2023-03-24 14:01:00', '2023-03-24 14:01:00', '', 32, 'https://jitegemeesec.ac.tz/?p=33', 0, 'revision', '', 0),
(37, 1, '2023-04-23 12:08:45', '2023-04-23 12:08:45', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'events', 'events', 'publish', 'closed', 'closed', '', 'group_64451bb2b143d', '', '', '2023-04-27 09:57:06', '2023-04-27 09:57:06', '', 0, 'https://jitegemeesec.ac.tz/?post_type=acf-field-group&#038;p=37', 0, 'acf-field-group', '', 0),
(38, 1, '2023-04-23 12:08:45', '2023-04-23 12:08:45', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:31:{i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:1:\"5\";i:6;s:1:\"6\";i:7;s:1:\"7\";i:8;s:1:\"8\";i:9;s:1:\"9\";i:10;s:2:\"10\";i:11;s:2:\"11\";i:12;s:2:\"12\";i:13;s:2:\"13\";i:14;s:2:\"14\";i:15;s:2:\"15\";i:16;s:2:\"16\";i:17;s:2:\"17\";i:18;s:2:\"18\";i:19;s:2:\"19\";i:20;s:2:\"20\";i:21;s:2:\"21\";i:22;s:2:\"22\";i:23;s:2:\"23\";i:24;s:2:\"24\";i:25;s:2:\"25\";i:26;s:2:\"26\";i:27;s:2:\"27\";i:28;s:2:\"28\";i:29;s:2:\"29\";i:30;s:2:\"30\";i:31;s:2:\"31\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Day', 'day', 'publish', 'closed', 'closed', '', 'field_64451bd6cabac', '', '', '2023-04-23 12:18:48', '2023-04-23 12:18:48', '', 37, 'https://jitegemeesec.ac.tz/?post_type=acf-field&#038;p=38', 0, 'acf-field', '', 0),
(39, 1, '2023-04-23 12:08:46', '2023-04-23 12:08:46', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:12:{s:7:\"january\";s:7:\"January\";s:8:\"february\";s:8:\"February\";s:5:\"march\";s:5:\"March\";s:5:\"april\";s:5:\"April\";s:3:\"may\";s:3:\"May\";s:4:\"june\";s:4:\"June\";s:4:\"july\";s:4:\"July\";s:6:\"august\";s:6:\"August\";s:9:\"september\";s:9:\"September\";s:7:\"october\";s:7:\"October\";s:8:\"november\";s:8:\"November\";s:8:\"december\";s:8:\"December\";}s:13:\"default_value\";b:0;s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Month', 'month', 'publish', 'closed', 'closed', '', 'field_64451d24cabad', '', '', '2023-04-23 12:08:46', '2023-04-23 12:08:46', '', 37, 'https://jitegemeesec.ac.tz/?post_type=acf-field&p=39', 1, 'acf-field', '', 0),
(40, 1, '2023-04-23 12:08:46', '2023-04-23 12:08:46', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:2023;s:11:\"placeholder\";i:2023;s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Year', 'year', 'publish', 'closed', 'closed', '', 'field_64451f1acabae', '', '', '2023-04-23 12:36:18', '2023-04-23 12:36:18', '', 37, 'https://jitegemeesec.ac.tz/?post_type=acf-field&#038;p=40', 2, 'acf-field', '', 0),
(43, 1, '2023-04-23 12:34:57', '2023-04-23 12:34:57', '<!-- wp:html -->\n<p>\n              <img src=\"https://jitegemeesec.ac.tz/wp-content/uploads/2023/04/plak1.jpg\" alt=\"\" class=\"img-fluid\">\n            </p>\n            \n            <p>Temporibus ad error suscipit exercitationem hic molestiae totam obcaecati rerum, eius aut, in. Exercitationem atque quidem tempora maiores ex architecto voluptatum aut officia doloremque. Error dolore voluptas, omnis molestias odio dignissimos culpa ex earum nisi consequatur quos odit quasi repellat qui officiis reiciendis incidunt hic non? Debitis commodi aut, adipisci.</p>\n            \n            <p>Quisquam esse aliquam fuga distinctio, quidem delectus veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde aut non tenetur tempore, nisi culpa voluptate maiores officiis quis vel ab consectetur suscipit veritatis nulla quos quia aspernatur perferendis, libero sint. Error, velit, porro. Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p>\n            <p>Odit voluptatibus, eveniet vel nihil cum ullam dolores laborum, quo velit commodi rerum eum quidem pariatur! Quia fuga iste tenetur, ipsa vel nisi in dolorum consequatur, veritatis porro explicabo soluta commodi libero voluptatem similique id quidem? Blanditiis voluptates aperiam non magni. Reprehenderit nobis odit inventore, quia laboriosam harum excepturi ea.</p>\n            <p>Adipisci vero culpa, eius nobis soluta. Dolore, maxime ullam ipsam quidem, dolor distinctio similique asperiores voluptas enim, exercitationem ratione aut adipisci modi quod quibusdam iusto, voluptates beatae iure nemo itaque laborum. Consequuntur et pariatur totam fuga eligendi vero dolorum provident. Voluptatibus, veritatis. Beatae numquam nam ab voluptatibus culpa, tenetur recusandae!</p>\n            <p>Voluptas dolores dignissimos dolorum temporibus, autem aliquam ducimus at officia adipisci quasi nemo a perspiciatis provident magni laboriosam repudiandae iure iusto commodi debitis est blanditiis alias laborum sint dolore. Dolores, iure, reprehenderit. Error provident, pariatur cupiditate soluta doloremque aut ratione. Harum voluptates mollitia illo minus praesentium, rerum ipsa debitis, inventore?</p>\n<!-- /wp:html -->', 'The Practical competition Form 4 vs Form 3', '', 'publish', 'open', 'open', '', 'practical-competetion-form-4-vs-form-3', '', '', '2023-04-27 09:57:53', '2023-04-27 09:57:53', '', 0, 'https://jitegemeesec.ac.tz/?p=43', 0, 'post', '', 0),
(44, 1, '2023-04-23 12:34:07', '2023-04-23 12:34:07', '', 'plak1', '', 'inherit', 'open', 'closed', '', 'plak1', '', '', '2023-04-23 12:34:07', '2023-04-23 12:34:07', '', 43, 'https://jitegemeesec.ac.tz/wp-content/uploads/2023/04/plak1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2023-04-23 12:34:57', '2023-04-23 12:34:57', 'mo text hia', 'Practical competetion Form 4 vs Form 3', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2023-04-23 12:34:57', '2023-04-23 12:34:57', '', 43, 'https://jitegemeesec.ac.tz/?p=45', 0, 'revision', '', 0),
(46, 1, '2023-04-23 12:35:00', '2023-04-23 12:35:00', 'mo text hia', 'Practical competetion Form 4 vs Form 3', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2023-04-23 12:35:00', '2023-04-23 12:35:00', '', 43, 'https://jitegemeesec.ac.tz/?p=46', 0, 'revision', '', 0),
(47, 1, '2023-04-23 12:36:45', '2023-04-23 12:36:45', 'mo text hia', 'Practical competetion Form 4 vs Form 3', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2023-04-23 12:36:45', '2023-04-23 12:36:45', '', 43, 'https://jitegemeesec.ac.tz/?p=47', 0, 'revision', '', 0),
(50, 2, '2023-04-24 02:39:26', '2023-04-24 02:39:26', '<!-- wp:html -->\n\n<p>\n              <img src=\"images/image_2.jpg\" alt=\"\" class=\"img-fluid\">\n            </p>\n            \n            <p>Temporibus ad error suscipit exercitationem hic molestiae totam obcaecati rerum, eius aut, in. Exercitationem atque quidem tempora maiores ex architecto voluptatum aut officia doloremque. Error dolore voluptas, omnis molestias odio dignissimos culpa ex earum nisi consequatur quos odit quasi repellat qui officiis reiciendis incidunt hic non? Debitis commodi aut, adipisci.</p>\n            \n            <p>Quisquam esse aliquam fuga distinctio, quidem delectus veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde aut non tenetur tempore, nisi culpa voluptate maiores officiis quis vel ab consectetur suscipit veritatis nulla quos quia aspernatur perferendis, libero sint. Error, velit, porro. Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p>\n            <p>Odit voluptatibus, eveniet vel nihil cum ullam dolores laborum, quo velit commodi rerum eum quidem pariatur! Quia fuga iste tenetur, ipsa vel nisi in dolorum consequatur, veritatis porro explicabo soluta commodi libero voluptatem similique id quidem? Blanditiis voluptates aperiam non magni. Reprehenderit nobis odit inventore, quia laboriosam harum excepturi ea.</p>\n            <p>Adipisci vero culpa, eius nobis soluta. Dolore, maxime ullam ipsam quidem, dolor distinctio similique asperiores voluptas enim, exercitationem ratione aut adipisci modi quod quibusdam iusto, voluptates beatae iure nemo itaque laborum. Consequuntur et pariatur totam fuga eligendi vero dolorum provident. Voluptatibus, veritatis. Beatae numquam nam ab voluptatibus culpa, tenetur recusandae!</p>\n            <p>Voluptas dolores dignissimos dolorum temporibus, autem aliquam ducimus at officia adipisci quasi nemo a perspiciatis provident magni laboriosam repudiandae iure iusto commodi debitis est blanditiis alias laborum sint dolore. Dolores, iure, reprehenderit. Error provident, pariatur cupiditate soluta doloremque aut ratione. Harum voluptates mollitia illo minus praesentium, rerum ipsa debitis, inventore?</p>\n<!-- /wp:html -->', 'Practical competition Form 4 vs Form 3', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2023-04-24 02:39:26', '2023-04-24 02:39:26', '', 43, 'https://jitegemeesec.ac.tz/?p=50', 0, 'revision', '', 0),
(51, 2, '2023-04-24 02:41:05', '2023-04-24 02:41:05', '<!-- wp:html -->\n<p>\n              <img src=\"https://jitegemeesec.ac.tz/wp-content/uploads/2023/04/plak1.jpg\" alt=\"\" class=\"img-fluid\">\n            </p>\n            \n            <p>Temporibus ad error suscipit exercitationem hic molestiae totam obcaecati rerum, eius aut, in. Exercitationem atque quidem tempora maiores ex architecto voluptatum aut officia doloremque. Error dolore voluptas, omnis molestias odio dignissimos culpa ex earum nisi consequatur quos odit quasi repellat qui officiis reiciendis incidunt hic non? Debitis commodi aut, adipisci.</p>\n            \n            <p>Quisquam esse aliquam fuga distinctio, quidem delectus veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde aut non tenetur tempore, nisi culpa voluptate maiores officiis quis vel ab consectetur suscipit veritatis nulla quos quia aspernatur perferendis, libero sint. Error, velit, porro. Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p>\n            <p>Odit voluptatibus, eveniet vel nihil cum ullam dolores laborum, quo velit commodi rerum eum quidem pariatur! Quia fuga iste tenetur, ipsa vel nisi in dolorum consequatur, veritatis porro explicabo soluta commodi libero voluptatem similique id quidem? Blanditiis voluptates aperiam non magni. Reprehenderit nobis odit inventore, quia laboriosam harum excepturi ea.</p>\n            <p>Adipisci vero culpa, eius nobis soluta. Dolore, maxime ullam ipsam quidem, dolor distinctio similique asperiores voluptas enim, exercitationem ratione aut adipisci modi quod quibusdam iusto, voluptates beatae iure nemo itaque laborum. Consequuntur et pariatur totam fuga eligendi vero dolorum provident. Voluptatibus, veritatis. Beatae numquam nam ab voluptatibus culpa, tenetur recusandae!</p>\n            <p>Voluptas dolores dignissimos dolorum temporibus, autem aliquam ducimus at officia adipisci quasi nemo a perspiciatis provident magni laboriosam repudiandae iure iusto commodi debitis est blanditiis alias laborum sint dolore. Dolores, iure, reprehenderit. Error provident, pariatur cupiditate soluta doloremque aut ratione. Harum voluptates mollitia illo minus praesentium, rerum ipsa debitis, inventore?</p>\n<!-- /wp:html -->', 'Practical competition Form 4 vs Form 3', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2023-04-24 02:41:05', '2023-04-24 02:41:05', '', 43, 'https://jitegemeesec.ac.tz/?p=51', 0, 'revision', '', 0),
(53, 2, '2023-04-24 02:52:34', '2023-04-24 02:52:34', '', 'join', '', 'publish', 'closed', 'closed', '', 'join', '', '', '2023-04-24 02:52:34', '2023-04-24 02:52:34', '', 0, 'https://jitegemeesec.ac.tz/?page_id=53', 0, 'page', '', 0),
(54, 2, '2023-04-24 02:52:34', '2023-04-24 02:52:34', '', 'join', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2023-04-24 02:52:34', '2023-04-24 02:52:34', '', 53, 'https://jitegemeesec.ac.tz/?p=54', 0, 'revision', '', 0),
(55, 2, '2023-04-24 03:33:49', '2023-04-24 03:33:49', '', 'FORM ONE APLICATION FORM', 'jitegee sec', 'inherit', 'open', 'closed', '', 'form-one-aplication-form', '', '', '2023-04-24 03:34:20', '2023-04-24 03:34:20', '', 0, 'https://jitegemeesec.ac.tz/wp-content/uploads/2023/04/FORM-ONE-APLICATION-FORM.pdf', 0, 'attachment', 'application/pdf', 0),
(56, 2, '2023-04-24 03:34:51', '2023-04-24 03:34:51', '', 'FORM V APPLICATION FORM', '', 'inherit', 'open', 'closed', '', 'form-v-application-form', '', '', '2023-04-24 03:34:51', '2023-04-24 03:34:51', '', 0, 'https://jitegemeesec.ac.tz/wp-content/uploads/2023/04/FORM-V-APPLICATION-FORM.pdf', 0, 'attachment', 'application/pdf', 0),
(57, 2, '2023-04-24 04:28:10', '2023-04-24 04:28:10', '<!-- wp:html -->\n<p>\n              <img src=\"https://jitegemeesec.ac.tz/wp-content/uploads/2023/04/plak1.jpg\" alt=\"\" class=\"img-fluid\">\n            </p>\n            \n            <p>Temporibus ad error suscipit exercitationem hic molestiae totam obcaecati rerum, eius aut, in. Exercitationem atque quidem tempora maiores ex architecto voluptatum aut officia doloremque. Error dolore voluptas, omnis molestias odio dignissimos culpa ex earum nisi consequatur quos odit quasi repellat qui officiis reiciendis incidunt hic non? Debitis commodi aut, adipisci.</p>\n            \n            <p>Quisquam esse aliquam fuga distinctio, quidem delectus veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde aut non tenetur tempore, nisi culpa voluptate maiores officiis quis vel ab consectetur suscipit veritatis nulla quos quia aspernatur perferendis, libero sint. Error, velit, porro. Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p>\n            <p>Odit voluptatibus, eveniet vel nihil cum ullam dolores laborum, quo velit commodi rerum eum quidem pariatur! Quia fuga iste tenetur, ipsa vel nisi in dolorum consequatur, veritatis porro explicabo soluta commodi libero voluptatem similique id quidem? Blanditiis voluptates aperiam non magni. Reprehenderit nobis odit inventore, quia laboriosam harum excepturi ea.</p>\n            <p>Adipisci vero culpa, eius nobis soluta. Dolore, maxime ullam ipsam quidem, dolor distinctio similique asperiores voluptas enim, exercitationem ratione aut adipisci modi quod quibusdam iusto, voluptates beatae iure nemo itaque laborum. Consequuntur et pariatur totam fuga eligendi vero dolorum provident. Voluptatibus, veritatis. Beatae numquam nam ab voluptatibus culpa, tenetur recusandae!</p>\n            <p>Voluptas dolores dignissimos dolorum temporibus, autem aliquam ducimus at officia adipisci quasi nemo a perspiciatis provident magni laboriosam repudiandae iure iusto commodi debitis est blanditiis alias laborum sint dolore. Dolores, iure, reprehenderit. Error provident, pariatur cupiditate soluta doloremque aut ratione. Harum voluptates mollitia illo minus praesentium, rerum ipsa debitis, inventore?</p>\n<!-- /wp:html -->', 'The Practical competition Form 4 vs Form 3', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2023-04-24 04:28:10', '2023-04-24 04:28:10', '', 43, 'https://jitegemeesec.ac.tz/?p=57', 0, 'revision', '', 0),
(59, 2, '2023-04-24 04:30:14', '2023-04-24 04:30:14', '<!-- wp:html -->\n<p>\n              <img src=\"https://jitegemeesec.ac.tz/wp-content/uploads/2023/04/plak1.jpg\" alt=\"\" class=\"img-fluid\">\n            </p>\n            \n            <p>Temporibus ad error suscipit exercitationem hic molestiae totam obcaecati rerum, eius aut, in. Exercitationem atque quidem tempora maiores ex architecto voluptatum aut officia doloremque. Error dolore voluptas, omnis molestias odio dignissimos culpa ex earum nisi consequatur quos odit quasi repellat qui officiis reiciendis incidunt hic non? Debitis commodi aut, adipisci.</p>\n            \n            <p>Quisquam esse aliquam fuga distinctio, quidem delectus veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde aut non tenetur tempore, nisi culpa voluptate maiores officiis quis vel ab consectetur suscipit veritatis nulla quos quia aspernatur perferendis, libero sint. Error, velit, porro. Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p>\n            <p>Odit voluptatibus, eveniet vel nihil cum ullam dolores laborum, quo velit commodi rerum eum quidem pariatur! Quia fuga iste tenetur, ipsa vel nisi in dolorum consequatur, veritatis porro explicabo soluta commodi libero voluptatem similique id quidem? Blanditiis voluptates aperiam non magni. Reprehenderit nobis odit inventore, quia laboriosam harum excepturi ea.</p>\n            <p>Adipisci vero culpa, eius nobis soluta. Dolore, maxime ullam ipsam quidem, dolor distinctio similique asperiores voluptas enim, exercitationem ratione aut adipisci modi quod quibusdam iusto, voluptates beatae iure nemo itaque laborum. Consequuntur et pariatur totam fuga eligendi vero dolorum provident. Voluptatibus, veritatis. Beatae numquam nam ab voluptatibus culpa, tenetur recusandae!</p>\n            <p>Voluptas dolores dignissimos dolorum temporibus, autem aliquam ducimus at officia adipisci quasi nemo a perspiciatis provident magni laboriosam repudiandae iure iusto commodi debitis est blanditiis alias laborum sint dolore. Dolores, iure, reprehenderit. Error provident, pariatur cupiditate soluta doloremque aut ratione. Harum voluptates mollitia illo minus praesentium, rerum ipsa debitis, inventore?</p>\n<!-- /wp:html -->', 'The Practical competition Form 4 vs Form 3', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2023-04-24 04:30:14', '2023-04-24 04:30:14', '', 43, 'https://jitegemeesec.ac.tz/?p=59', 0, 'revision', '', 0),
(60, 1, '2023-04-27 09:57:06', '2023-04-27 09:57:06', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'views', 'views', 'publish', 'closed', 'closed', '', 'field_644a46c2acc55', '', '', '2023-04-27 09:57:06', '2023-04-27 09:57:06', '', 37, 'https://jitegemeesec.ac.tz/?post_type=acf-field&p=60', 3, 'acf-field', '', 0),
(61, 1, '2023-04-27 09:57:53', '2023-04-27 09:57:53', '<!-- wp:html -->\n<p>\n              <img src=\"https://jitegemeesec.ac.tz/wp-content/uploads/2023/04/plak1.jpg\" alt=\"\" class=\"img-fluid\">\n            </p>\n            \n            <p>Temporibus ad error suscipit exercitationem hic molestiae totam obcaecati rerum, eius aut, in. Exercitationem atque quidem tempora maiores ex architecto voluptatum aut officia doloremque. Error dolore voluptas, omnis molestias odio dignissimos culpa ex earum nisi consequatur quos odit quasi repellat qui officiis reiciendis incidunt hic non? Debitis commodi aut, adipisci.</p>\n            \n            <p>Quisquam esse aliquam fuga distinctio, quidem delectus veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde aut non tenetur tempore, nisi culpa voluptate maiores officiis quis vel ab consectetur suscipit veritatis nulla quos quia aspernatur perferendis, libero sint. Error, velit, porro. Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p>\n            <p>Odit voluptatibus, eveniet vel nihil cum ullam dolores laborum, quo velit commodi rerum eum quidem pariatur! Quia fuga iste tenetur, ipsa vel nisi in dolorum consequatur, veritatis porro explicabo soluta commodi libero voluptatem similique id quidem? Blanditiis voluptates aperiam non magni. Reprehenderit nobis odit inventore, quia laboriosam harum excepturi ea.</p>\n            <p>Adipisci vero culpa, eius nobis soluta. Dolore, maxime ullam ipsam quidem, dolor distinctio similique asperiores voluptas enim, exercitationem ratione aut adipisci modi quod quibusdam iusto, voluptates beatae iure nemo itaque laborum. Consequuntur et pariatur totam fuga eligendi vero dolorum provident. Voluptatibus, veritatis. Beatae numquam nam ab voluptatibus culpa, tenetur recusandae!</p>\n            <p>Voluptas dolores dignissimos dolorum temporibus, autem aliquam ducimus at officia adipisci quasi nemo a perspiciatis provident magni laboriosam repudiandae iure iusto commodi debitis est blanditiis alias laborum sint dolore. Dolores, iure, reprehenderit. Error provident, pariatur cupiditate soluta doloremque aut ratione. Harum voluptates mollitia illo minus praesentium, rerum ipsa debitis, inventore?</p>\n<!-- /wp:html -->', 'The Practical competition Form 4 vs Form 3', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2023-04-27 09:57:53', '2023-04-27 09:57:53', '', 43, 'https://jitegemeesec.ac.tz/?p=61', 0, 'revision', '', 0),
(64, 2, '2023-04-27 10:49:47', '2023-04-27 10:49:47', '', 'WhatsApp Image 2023-04-27 at 13.49.19', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2023-04-27-at-13-49-19', '', '', '2023-04-27 10:49:47', '2023-04-27 10:49:47', '', 0, 'https://jitegemeesec.ac.tz/wp-content/uploads/2023/04/WhatsApp-Image-2023-04-27-at-13.49.19.jpeg', 0, 'attachment', 'image/jpeg', 0),
(68, 2, '2023-04-27 10:56:54', '2023-04-27 10:56:54', 'hawa ni baadhi ya wanafunzi wa form six', 'WhatsApp Image 2023-04-27 at 13.49.19', 'secondary', 'inherit', 'open', 'closed', '', 'whatsapp-image-2023-04-27-at-13-49-19-2', '', '', '2023-04-27 10:58:37', '2023-04-27 10:58:37', '', 0, 'https://jitegemeesec.ac.tz/wp-content/uploads/2023/04/WhatsApp-Image-2023-04-27-at-13.49.19-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(85, 4, '2023-07-18 05:35:30', '2023-07-18 05:35:30', '', 'FOMU YA WAHAMIAJI 2023', '', 'inherit', 'open', 'closed', '', 'fomu-ya-wahamiaji-2023', '', '', '2023-07-18 05:35:30', '2023-07-18 05:35:30', '', 0, 'https://jitegemeesec.ac.tz/wp-content/uploads/2023/07/FOMU-YA-WAHAMIAJI-2023.docx', 0, 'attachment', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 0),
(86, 4, '2023-07-18 05:36:12', '2023-07-18 05:36:12', '', 'A-LEVEL JOINING INSTRUCTION - 2023', '', 'inherit', 'open', 'closed', '', 'a-level-joining-instruction-2023', '', '', '2023-07-18 05:36:12', '2023-07-18 05:36:12', '', 0, 'https://jitegemeesec.ac.tz/wp-content/uploads/2023/07/A-LEVEL-JOINING-INSTRUCTION-2023.docx', 0, 'attachment', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Wanafunzi wa Form Six', 'https-jitegemeesec-ac-tz-wp-content-uploads-2023-04-whatsapp-image-2023-04-27-at-13-49-19-jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(43, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'post_tag', 'hawa ni baadhi ya wanafunzi wa form six', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'rithom'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '87'),
(19, 1, 'session_tokens', 'a:2:{s:64:\"d260ec43939779e89172c86be864ef73fc74a8ba3dfdcca1e0c86736ed71f714\";a:4:{s:10:\"expiration\";i:1701327824;s:2:\"ip\";s:15:\"197.250.197.243\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1701155024;}s:64:\"6918d7518e6deaf742857f89b7983888d7cb1d2eee0e1617ed4ef6424bb5cf86\";a:4:{s:10:\"expiration\";i:1701343945;s:2:\"ip\";s:12:\"41.59.198.34\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1701171145;}}'),
(20, 2, 'nickname', 'fredy'),
(21, 2, 'first_name', 'fredy'),
(22, 2, 'last_name', 'focus'),
(23, 2, 'description', ''),
(24, 2, 'rich_editing', 'true'),
(25, 2, 'syntax_highlighting', 'true'),
(26, 2, 'comment_shortcuts', 'false'),
(27, 2, 'admin_color', 'fresh'),
(28, 2, 'use_ssl', '0'),
(29, 2, 'show_admin_bar_front', 'true'),
(30, 2, 'locale', ''),
(31, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(32, 2, 'wp_user_level', '10'),
(33, 2, 'dismissed_wp_pointers', ''),
(34, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:4:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:4:{i:0;s:15:\"page-attributes\";i:1;s:16:\"discussion-panel\";i:2;s:14:\"featured-image\";i:3;s:11:\"post-status\";}s:10:\"editorMode\";s:4:\"text\";}s:9:\"_modified\";s:24:\"2023-04-23T11:50:12.820Z\";}'),
(35, 1, 'wp_user-settings', 'libraryContent=browse'),
(36, 1, 'wp_user-settings-time', '1682253299'),
(38, 2, 'wp_dashboard_quick_press_last_post_id', '72'),
(39, 2, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:14:\"featured-image\";i:2;s:23:\"taxonomy-panel-category\";i:3;s:23:\"taxonomy-panel-post_tag\";}}s:9:\"_modified\";s:24:\"2023-04-27T11:01:30.575Z\";}'),
(40, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:13:\"197.250.100.0\";}'),
(41, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"41.59.198.0\";}'),
(42, 2, 'wp_user-settings', 'libraryContent=browse'),
(43, 2, 'wp_user-settings-time', '1682593181'),
(44, 3, 'nickname', 'Ambakisye'),
(45, 3, 'first_name', 'John'),
(46, 3, 'last_name', 'Ambakisye'),
(47, 3, 'description', ''),
(48, 3, 'rich_editing', 'true'),
(49, 3, 'syntax_highlighting', 'true'),
(50, 3, 'comment_shortcuts', 'false'),
(51, 3, 'admin_color', 'fresh'),
(52, 3, 'use_ssl', '0'),
(53, 3, 'show_admin_bar_front', 'true'),
(54, 3, 'locale', ''),
(55, 3, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(56, 3, 'wp_user_level', '10'),
(57, 3, 'dismissed_wp_pointers', ''),
(58, 4, 'nickname', 'Abel'),
(59, 4, 'first_name', 'Abel'),
(60, 4, 'last_name', 'Malaba'),
(61, 4, 'description', ''),
(62, 4, 'rich_editing', 'true'),
(63, 4, 'syntax_highlighting', 'true'),
(64, 4, 'comment_shortcuts', 'false'),
(65, 4, 'admin_color', 'fresh'),
(66, 4, 'use_ssl', '0'),
(67, 4, 'show_admin_bar_front', 'true'),
(68, 4, 'locale', ''),
(69, 4, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(70, 4, 'wp_user_level', '10'),
(71, 4, 'dismissed_wp_pointers', ''),
(72, 4, 'session_tokens', 'a:1:{s:64:\"8690205f9a6785398d3a415efed969da1a2bcef49de160b36bb07838d8350ede\";a:4:{s:10:\"expiration\";i:1690867636;s:2:\"ip\";s:13:\"154.74.154.46\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.37\";s:5:\"login\";i:1689658036;}}'),
(73, 4, 'wp_dashboard_quick_press_last_post_id', '81'),
(74, 4, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"154.74.154.0\";}'),
(75, 4, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:14:\"featured-image\";}}s:9:\"_modified\";s:24:\"2023-05-02T09:25:50.994Z\";}'),
(76, 4, 'wp_user-settings', 'libraryContent=browse'),
(77, 4, 'wp_user-settings-time', '1683019600');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'rithom', '$P$B1.hpxjVw9bFT/oW944L703QOj0hXf0', 'rithom', 'engrithom1@gmail.com', 'http://localhost/wordpress', '2023-03-28 10:45:57', '', 0, 'rithom'),
(2, 'fredy', '$P$BATRws5zcPVkyTHcVw/uec1FX6GeTi.', 'fredy', 'fredy@gmail.com', 'http://www.computerbookz.com', '2023-04-23 11:45:19', '1682250320:$P$Bqp1op7XDy.pqFPyUrl.seJ6AnPC5a1', 0, 'fredy focus'),
(3, 'Ambakisye', '$P$B9Ifmbf4gW2FZj1/c0HJZfyaBAsfkZ0', 'ambakisye', 'johnambakisye2021@gmail.com', '', '2023-05-02 09:03:15', '1683018195:$P$BbHfRwpPsWMvR5opkH5Vz9vr5XpSti/', 0, 'John Ambakisye'),
(4, 'Abel', '$P$B4ojbwkUi9O8xq8Bms0DuNcQAN/0xa.', 'abel', 'aelcmalaba20@gmail.com', '', '2023-05-02 09:05:51', '1683791645:$P$B3fn64/kCED3NpPQ.7lP13DtqgT1M71', 0, 'Abel Malaba');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_litespeed_url`
--
ALTER TABLE `wp_litespeed_url`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`(191)),
  ADD KEY `cache_tags` (`cache_tags`(191));

--
-- Indexes for table `wp_litespeed_url_file`
--
ALTER TABLE `wp_litespeed_url_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filename` (`filename`),
  ADD KEY `type` (`type`),
  ADD KEY `url_id_2` (`url_id`,`vary`,`type`),
  ADD KEY `filename_2` (`filename`,`expired`),
  ADD KEY `url_id` (`url_id`,`expired`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_litespeed_url`
--
ALTER TABLE `wp_litespeed_url`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_litespeed_url_file`
--
ALTER TABLE `wp_litespeed_url_file`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6657;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
