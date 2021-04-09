-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2021 at 11:00 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boss_palace`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-04-08 17:13:46', '2021-04-08 17:13:46', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080/branch/boss-palace', 'yes'),
(2, 'home', 'http://localhost:8080/branch/boss-palace', 'yes'),
(3, 'blogname', 'Boss Palace', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'erickwarui28@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:29:\"acf-extended/acf-extended.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:72:\"D:\\Software\\xampp\\htdocs\\boss-palace/wp-content/themes/dostart/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'dostart', 'yes'),
(41, 'stylesheet', 'dostart', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', 'large', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
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
(91, 'admin_email_lifespan', '1633454019', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:\"title\";s:15:\"Recent products\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:14:\"footer-widgets\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:7:{i:1618002828;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1618031628;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1618074827;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618074865;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618074868;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618593228;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1617904049;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(121, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.7-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1617988539;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}', 'no'),
(127, '_site_transient_timeout_browser_83f75fe8d5c2f40c243760c04f60cc4e', '1618506866', 'no'),
(128, '_site_transient_browser_83f75fe8d5c2f40c243760c04f60cc4e', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"89.0.4389.114\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(129, '_site_transient_timeout_php_check_f9714bbe413cc376a70847d9c1f86fcc', '1618506867', 'no'),
(130, '_site_transient_php_check_f9714bbe413cc376a70847d9c1f86fcc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(132, 'can_compress_scripts', '1', 'no'),
(147, 'finished_updating_comment_type', '1', 'yes'),
(152, 'current_theme', 'Dostart', 'yes'),
(153, 'theme_mods_big-store', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1617904616;s:4:\"data\";a:16:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:22:\"top-header-widget-col1\";a:0:{}s:22:\"top-header-widget-col2\";a:0:{}s:22:\"top-header-widget-col3\";a:0:{}s:18:\"main-header-widget\";a:0:{}s:16:\"footer-top-first\";a:0:{}s:17:\"footer-top-second\";a:0:{}s:16:\"footer-top-third\";a:0:{}s:18:\"footer-below-first\";a:0:{}s:19:\"footer-below-second\";a:0:{}s:18:\"footer-below-third\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(154, 'theme_switched', '', 'yes'),
(156, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1617985547;s:7:\"checked\";a:5:{s:9:\"big-store\";s:5:\"1.5.2\";s:7:\"dostart\";s:6:\"1.0.16\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:5:{s:9:\"big-store\";a:6:{s:5:\"theme\";s:9:\"big-store\";s:11:\"new_version\";s:5:\"1.5.2\";s:3:\"url\";s:39:\"https://wordpress.org/themes/big-store/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/big-store.1.5.2.zip\";s:8:\"requires\";s:3:\"4.5\";s:12:\"requires_php\";s:3:\"7.0\";}s:7:\"dostart\";a:6:{s:5:\"theme\";s:7:\"dostart\";s:11:\"new_version\";s:6:\"1.0.16\";s:3:\"url\";s:37:\"https://wordpress.org/themes/dostart/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/dostart.1.0.16.zip\";s:8:\"requires\";s:3:\"5.4\";s:12:\"requires_php\";s:3:\"5.6\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(158, 'theme_mods_dostart', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(169, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1617988539;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.5\";s:29:\"acf-extended/acf-extended.php\";s:7:\"0.8.8.1\";s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"acf-extended/acf-extended.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/acf-extended\";s:4:\"slug\";s:12:\"acf-extended\";s:6:\"plugin\";s:29:\"acf-extended/acf-extended.php\";s:11:\"new_version\";s:7:\"0.8.8.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/acf-extended/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/acf-extended.0.8.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-256x256.png?rev=2071550\";s:2:\"1x\";s:65:\"https://ps.w.org/acf-extended/assets/icon-128x128.png?rev=2071550\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/acf-extended/assets/banner-1544x500.png?rev=2071550\";s:2:\"1x\";s:67:\"https://ps.w.org/acf-extended/assets/banner-772x250.png?rev=2071550\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(170, 'recently_activated', 'a:0:{}', 'yes'),
(171, 'acf_version', '5.9.5', 'yes'),
(188, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":1}', 'yes'),
(201, '_site_transient_timeout_theme_roots', '1618002392', 'no'),
(202, '_site_transient_theme_roots', 'a:5:{s:9:\"big-store\";s:7:\"/themes\";s:7:\"dostart\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1617910617:1'),
(4, 1, '_edit_lock', '1617912615:1'),
(5, 5, '_edit_lock', '1617910594:1'),
(6, 6, '_menu_item_type', 'custom'),
(7, 6, '_menu_item_menu_item_parent', '0'),
(8, 6, '_menu_item_object_id', '6'),
(9, 6, '_menu_item_object', 'custom'),
(10, 6, '_menu_item_target', ''),
(11, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(12, 6, '_menu_item_xfn', ''),
(13, 6, '_menu_item_url', 'http://localhost:8080/branch/boss-palace/'),
(14, 6, '_menu_item_orphaned', '1617910829'),
(15, 6, '_menu_item_template', ''),
(16, 6, '_menu_item_mega_template', ''),
(17, 6, '_menu_item_nolink', ''),
(18, 6, '_menu_item_category_post', ''),
(19, 6, '_menu_item_megamenu', ''),
(20, 6, '_menu_item_megamenu_auto_width', ''),
(21, 6, '_menu_item_megamenu_col', ''),
(22, 6, '_menu_item_megamenu_heading', ''),
(23, 6, '_menu_item_megamenu_widgetarea', ''),
(24, 6, '_menu_item_icon', ''),
(25, 7, '_menu_item_type', 'post_type'),
(26, 7, '_menu_item_menu_item_parent', '0'),
(27, 7, '_menu_item_object_id', '2'),
(28, 7, '_menu_item_object', 'page'),
(29, 7, '_menu_item_target', ''),
(30, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(31, 7, '_menu_item_xfn', ''),
(32, 7, '_menu_item_url', ''),
(33, 7, '_menu_item_orphaned', '1617910830'),
(34, 7, '_menu_item_template', ''),
(35, 7, '_menu_item_mega_template', ''),
(36, 7, '_menu_item_nolink', ''),
(37, 7, '_menu_item_category_post', ''),
(38, 7, '_menu_item_megamenu', ''),
(39, 7, '_menu_item_megamenu_auto_width', ''),
(40, 7, '_menu_item_megamenu_col', ''),
(41, 7, '_menu_item_megamenu_heading', ''),
(42, 7, '_menu_item_megamenu_widgetarea', ''),
(43, 7, '_menu_item_icon', ''),
(44, 8, '_edit_lock', '1617910762:1'),
(45, 3, '_edit_lock', '1617910769:1'),
(46, 9, '_menu_item_type', 'custom'),
(47, 9, '_menu_item_menu_item_parent', '0'),
(48, 9, '_menu_item_object_id', '9'),
(49, 9, '_menu_item_object', 'custom'),
(50, 9, '_menu_item_target', ''),
(51, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 9, '_menu_item_xfn', ''),
(53, 9, '_menu_item_url', 'http://localhost:8080/boss-palace/'),
(54, 9, '_menu_item_orphaned', '1617910930'),
(55, 9, '_menu_item_template', ''),
(56, 9, '_menu_item_mega_template', ''),
(57, 9, '_menu_item_nolink', ''),
(58, 9, '_menu_item_category_post', ''),
(59, 9, '_menu_item_megamenu', ''),
(60, 9, '_menu_item_megamenu_auto_width', ''),
(61, 9, '_menu_item_megamenu_col', ''),
(62, 9, '_menu_item_megamenu_heading', ''),
(63, 9, '_menu_item_megamenu_widgetarea', ''),
(64, 9, '_menu_item_icon', ''),
(65, 10, '_menu_item_type', 'post_type'),
(66, 10, '_menu_item_menu_item_parent', '0'),
(67, 10, '_menu_item_object_id', '2'),
(68, 10, '_menu_item_object', 'page'),
(69, 10, '_menu_item_target', ''),
(70, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 10, '_menu_item_xfn', ''),
(72, 10, '_menu_item_url', ''),
(73, 10, '_menu_item_orphaned', '1617910932'),
(74, 10, '_menu_item_template', ''),
(75, 10, '_menu_item_mega_template', ''),
(76, 10, '_menu_item_nolink', ''),
(77, 10, '_menu_item_category_post', ''),
(78, 10, '_menu_item_megamenu', ''),
(79, 10, '_menu_item_megamenu_auto_width', ''),
(80, 10, '_menu_item_megamenu_col', ''),
(81, 10, '_menu_item_megamenu_heading', ''),
(82, 10, '_menu_item_megamenu_widgetarea', ''),
(83, 10, '_menu_item_icon', ''),
(84, 11, '_edit_lock', '1617997301:1'),
(85, 15, '_edit_last', '1'),
(86, 15, '_edit_lock', '1617914609:1'),
(87, 21, '_edit_lock', '1617912728:1'),
(90, 23, '_edit_lock', '1618001511:1'),
(91, 24, '_wp_attached_file', '2021/04/IGSalesGuideLogo_1024x1024.png'),
(92, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:814;s:6:\"height\";i:1024;s:4:\"file\";s:38:\"2021/04/IGSalesGuideLogo_1024x1024.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"IGSalesGuideLogo_1024x1024-238x300.png\";s:5:\"width\";i:238;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"IGSalesGuideLogo_1024x1024-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"IGSalesGuideLogo_1024x1024-768x966.png\";s:5:\"width\";i:768;s:6:\"height\";i:966;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"dostart-thumb\";a:4:{s:4:\"file\";s:38:\"IGSalesGuideLogo_1024x1024-740x367.png\";s:5:\"width\";i:740;s:6:\"height\";i:367;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 23, '_edit_last', '1'),
(98, 23, 'image', '24'),
(99, 23, '_image', 'field_606f6014f92f3'),
(100, 23, 'title', 'Instagram Sales Strategies (Guide)(Instantly Emailed)'),
(101, 23, '_title', 'field_606f6046f92f4'),
(102, 23, 'price', '115'),
(103, 23, '_price', 'field_606f6078f92f5'),
(104, 23, 'description', 'Learn simple formulas that will help you run an effective Instagram marketing campaign. These strategies have been tested and proven. In addition, they are responsible for helping several stores reach 6 figures!\r\n\r\n1. Easy strategies that you will be able to implement within 10 mins\r\n\r\n2. Anyone will be able to use these strategies from age 14-65+\r\n\r\n3. No matter how big or small your business is, these strategies WILL work.\r\n\r\n4. These strategies will increase your followers, website traffic &amp; sales <strong><em>ONLY</em></strong> if followed corrected!'),
(105, 23, '_description', 'field_606f6149f92f6'),
(106, 26, 'image', '24'),
(107, 26, '_image', 'field_606f6014f92f3'),
(108, 26, 'title', 'Instagram Sales Strategies (Guide)(Instantly Emailed)'),
(109, 26, '_title', 'field_606f6046f92f4'),
(110, 26, 'price', '115'),
(111, 26, '_price', 'field_606f6078f92f5'),
(112, 26, 'description', 'Learn simple formulas that will help you run an effective Instagram marketing campaign. These strategies have been tested and proven. In addition, they are responsible for helping several stores reach 6 figures!\r\n\r\n1. Easy strategies that you will be able to implement within 10 mins\r\n\r\n2. Anyone will be able to use these strategies from age 14-65+\r\n\r\n3. No matter how big or small your business is, these strategies WILL work.\r\n\r\n4. These strategies will increase your followers, website traffic &amp; sales <strong><em>ONLY</em></strong> if followed corrected!'),
(113, 26, '_description', 'field_606f6149f92f6'),
(114, 21, '_wp_trash_meta_status', 'publish'),
(115, 21, '_wp_trash_meta_time', '1617913160'),
(116, 21, '_wp_desired_post_slug', 'products'),
(117, 1, '_wp_trash_meta_status', 'publish'),
(118, 1, '_wp_trash_meta_time', '1617913162'),
(119, 1, '_wp_desired_post_slug', 'hello-world'),
(120, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(121, 11, '_wp_page_template', 'products.php'),
(122, 28, '_edit_lock', '1618000453:1'),
(123, 29, '_wp_attached_file', '2021/04/image_1421f909-d8d8-46a1-a075-a677dd1edde9_1024x1024.jpg'),
(124, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"file\";s:64:\"2021/04/image_1421f909-d8d8-46a1-a075-a677dd1edde9_1024x1024.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:64:\"image_1421f909-d8d8-46a1-a075-a677dd1edde9_1024x1024-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"image_1421f909-d8d8-46a1-a075-a677dd1edde9_1024x1024-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:64:\"image_1421f909-d8d8-46a1-a075-a677dd1edde9_1024x1024-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"dostart-thumb\";a:4:{s:4:\"file\";s:64:\"image_1421f909-d8d8-46a1-a075-a677dd1edde9_1024x1024-740x367.jpg\";s:5:\"width\";i:740;s:6:\"height\";i:367;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 28, '_edit_last', '1'),
(130, 28, 'image', '29'),
(131, 28, '_image', 'field_606f6014f92f3'),
(132, 28, 'title', 'The Ultimate Business Bundle Start Up Kit (Instantly Emailed)'),
(133, 28, '_title', 'field_606f6046f92f4'),
(134, 28, 'price', '175'),
(135, 28, '_price', 'field_606f6078f92f5'),
(136, 28, 'description', '<p class=\"p1\"><em>Over 300 VENDORS instantly emailed!\r\n</em>\r\nSave yourself time and money by starting your business today with a small investment! We\'ve done all of the hard work for you! Everything you need to start a successful boutique is right here!</p>\r\n<strong>What’s included in your digital vendor package?</strong>\r\n\r\nFor Your Business:\r\n<ul>\r\n 	<li>A How To Guide On Contacting Vendors (template provided)</li>\r\n 	<li>A How To Guide On Deciding Your Business Model (Business Plan)</li>\r\n 	<li>How To Start A Business/Become A Boss (e-book)</li>\r\n 	<li>\"10k in 30 Days\" webinar (E-commerce learning course)</li>\r\n 	<li>Custom Business Card  Vendors</li>\r\n 	<li>Custom Website Design Vendors</li>\r\n 	<li>Graphic Design Vendors</li>\r\n</ul>\r\nFor Clothing:\r\n<ul>\r\n 	<li>Custom Clothing Brand Vendors</li>\r\n 	<li>Fashion Clothing Vendors\r\n(boutique clothing with styles identical to Fashionnova, Pretty Little Thing, etc.)</li>\r\n 	<li>Fitness Vendors</li>\r\n 	<li>Swimwear Vendors</li>\r\n 	<li>Sleepwear Vendors</li>\r\n</ul>\r\nFor Beauty:\r\n<ul>\r\n 	<li>Makeup Vendors (Both U.S &amp; Overseas)</li>\r\n 	<li>Mink Lash Vendors</li>\r\n 	<li>Hair Care Vendors</li>\r\n 	<li>Celebrity &amp; Quality Hair Vendors\r\n(lace wigs, extensions, bundles, closures + MORE!)</li>\r\n 	<li>Hot Styling Tools Vendors</li>\r\n 	<li>Men’s Grooming Vendors</li>\r\n 	<li>Skin Care Vendors</li>\r\n</ul>\r\nFor Jewelry/Accessories:\r\n<ul>\r\n 	<li>Jewelry Vendors</li>\r\n 	<li>Sunglass Vendors</li>\r\n 	<li>Watch Vendors</li>\r\n</ul>\r\nFor Electronics:\r\n<ul>\r\n 	<li>Electronic Product Vendors</li>\r\n 	<li>Phone Case Vendors</li>\r\n</ul>'),
(137, 28, '_description', 'field_606f6149f92f6'),
(138, 31, 'image', '29'),
(139, 31, '_image', 'field_606f6014f92f3'),
(140, 31, 'title', 'The Ultimate Business Bundle Start Up Kit (Instantly Emailed)'),
(141, 31, '_title', 'field_606f6046f92f4'),
(142, 31, 'price', '175'),
(143, 31, '_price', 'field_606f6078f92f5'),
(144, 31, 'description', '<p class=\"p1\"><em>Over 300 VENDORS instantly emailed!\r\n</em>\r\nSave yourself time and money by starting your business today with a small investment! We\'ve done all of the hard work for you! Everything you need to start a successful boutique is right here!</p>\r\n<strong>What’s included in your digital vendor package?\r\n\r\n</strong>For Your Business:\r\n<ul>\r\n 	<li>A How To Guide On Contacting Vendors (template provided)</li>\r\n 	<li>A How To Guide On Deciding Your Business Model (Business Plan)</li>\r\n 	<li>How To Start A Business/Become A Boss (e-book)</li>\r\n 	<li>\"10k in 30 Days\" webinar (E-commerce learning course)</li>\r\n 	<li>Custom Business Card  Vendors</li>\r\n 	<li>Custom Website Design Vendors</li>\r\n 	<li>Graphic Design Vendors</li>\r\n</ul>\r\nFor Clothing:\r\n<ul>\r\n 	<li>Custom Clothing Brand Vendors</li>\r\n 	<li>Fashion Clothing Vendors\r\n(boutique clothing with styles identical to Fashionnova, Pretty Little Thing, etc.)</li>\r\n 	<li>Fitness Vendors</li>\r\n 	<li>Swimwear Vendors</li>\r\n 	<li>Sleepwear Vendors</li>\r\n</ul>\r\nFor Beauty:\r\n<ul>\r\n 	<li>Makeup Vendors (Both U.S &amp; Overseas)</li>\r\n 	<li>Mink Lash Vendors</li>\r\n 	<li>Hair Care Vendors</li>\r\n 	<li>Celebrity &amp; Quality Hair Vendors\r\n(lace wigs, extensions, bundles, closures + MORE!)</li>\r\n 	<li>Hot Styling Tools Vendors</li>\r\n 	<li>Men’s Grooming Vendors</li>\r\n 	<li>Skin Care Vendors</li>\r\n</ul>\r\nFor Jewelry/Accessories:\r\n<ul>\r\n 	<li>Jewelry Vendors</li>\r\n 	<li>Sunglass Vendors</li>\r\n 	<li>Watch Vendors</li>\r\n</ul>\r\n<p class=\"p1\"></p>\r\nFor Electronics:\r\n<ul>\r\n 	<li>Electronic Product Vendors</li>\r\n 	<li>Phone Case Vendors</li>\r\n</ul>'),
(145, 31, '_description', 'field_606f6149f92f6'),
(152, 28, '_thumbnail_id', '29'),
(155, 32, 'image', '29'),
(156, 32, '_image', 'field_606f6014f92f3'),
(157, 32, 'title', 'The Ultimate Business Bundle Start Up Kit (Instantly Emailed)'),
(158, 32, '_title', 'field_606f6046f92f4'),
(159, 32, 'price', '175'),
(160, 32, '_price', 'field_606f6078f92f5'),
(161, 32, 'description', '<p class=\"p1\"><em>Over 300 VENDORS instantly emailed!\r\n</em>\r\nSave yourself time and money by starting your business today with a small investment! We\'ve done all of the hard work for you! Everything you need to start a successful boutique is right here!</p>\r\n<strong>What’s included in your digital vendor package?</strong>\r\n\r\nFor Your Business:\r\n<ul>\r\n 	<li>A How To Guide On Contacting Vendors (template provided)</li>\r\n 	<li>A How To Guide On Deciding Your Business Model (Business Plan)</li>\r\n 	<li>How To Start A Business/Become A Boss (e-book)</li>\r\n 	<li>\"10k in 30 Days\" webinar (E-commerce learning course)</li>\r\n 	<li>Custom Business Card  Vendors</li>\r\n 	<li>Custom Website Design Vendors</li>\r\n 	<li>Graphic Design Vendors</li>\r\n</ul>\r\nFor Clothing:\r\n<ul>\r\n 	<li>Custom Clothing Brand Vendors</li>\r\n 	<li>Fashion Clothing Vendors\r\n(boutique clothing with styles identical to Fashionnova, Pretty Little Thing, etc.)</li>\r\n 	<li>Fitness Vendors</li>\r\n 	<li>Swimwear Vendors</li>\r\n 	<li>Sleepwear Vendors</li>\r\n</ul>\r\nFor Beauty:\r\n<ul>\r\n 	<li>Makeup Vendors (Both U.S &amp; Overseas)</li>\r\n 	<li>Mink Lash Vendors</li>\r\n 	<li>Hair Care Vendors</li>\r\n 	<li>Celebrity &amp; Quality Hair Vendors\r\n(lace wigs, extensions, bundles, closures + MORE!)</li>\r\n 	<li>Hot Styling Tools Vendors</li>\r\n 	<li>Men’s Grooming Vendors</li>\r\n 	<li>Skin Care Vendors</li>\r\n</ul>\r\nFor Jewelry/Accessories:\r\n<ul>\r\n 	<li>Jewelry Vendors</li>\r\n 	<li>Sunglass Vendors</li>\r\n 	<li>Watch Vendors</li>\r\n</ul>\r\nFor Electronics:\r\n<ul>\r\n 	<li>Electronic Product Vendors</li>\r\n 	<li>Phone Case Vendors</li>\r\n</ul>'),
(162, 32, '_description', 'field_606f6149f92f6'),
(163, 33, '_edit_lock', '1618000578:1'),
(164, 33, '_wp_page_template', 'cart.php'),
(167, 23, '_thumbnail_id', '24'),
(168, 23, '_pingme', '1'),
(169, 23, '_encloseme', '1'),
(170, 35, 'image', '24'),
(171, 35, '_image', 'field_606f6014f92f3'),
(172, 35, 'title', 'Instagram Sales Strategies (Guide)(Instantly Emailed)'),
(173, 35, '_title', 'field_606f6046f92f4'),
(174, 35, 'price', '115'),
(175, 35, '_price', 'field_606f6078f92f5'),
(176, 35, 'description', 'Learn simple formulas that will help you run an effective Instagram marketing campaign. These strategies have been tested and proven. In addition, they are responsible for helping several stores reach 6 figures!\r\n\r\n1. Easy strategies that you will be able to implement within 10 mins\r\n\r\n2. Anyone will be able to use these strategies from age 14-65+\r\n\r\n3. No matter how big or small your business is, these strategies WILL work.\r\n\r\n4. These strategies will increase your followers, website traffic &amp; sales <strong><em>ONLY</em></strong> if followed corrected!'),
(177, 35, '_description', 'field_606f6149f92f6');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-04-08 17:13:46', '2021-04-08 17:13:46', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2021-04-08 20:19:22', '2021-04-08 20:19:22', '', 0, 'http://localhost:8080/boss-palace/?p=1', 0, 'post', '', 1),
(2, 1, '2021-04-08 17:13:46', '2021-04-08 17:13:46', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8080/boss-palace/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-04-08 17:13:46', '2021-04-08 17:13:46', '', 0, 'http://localhost:8080/boss-palace/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-04-08 17:13:46', '2021-04-08 17:13:46', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8080/boss-palace.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-04-08 17:13:46', '2021-04-08 17:13:46', '', 0, 'http://localhost:8080/boss-palace/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-04-08 17:14:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-04-08 17:14:28', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/boss-palace/?p=4', 0, 'post', '', 0),
(5, 1, '2021-04-08 19:37:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-08 19:37:55', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/boss-palace/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-04-08 19:40:28', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-04-08 19:40:28', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/boss-palace/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2021-04-08 19:40:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-04-08 19:40:30', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/boss-palace/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2021-04-08 19:40:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-08 19:40:50', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/boss-palace/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-04-08 19:42:09', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-04-08 19:42:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/boss-palace/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2021-04-08 19:42:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-04-08 19:42:11', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/boss-palace/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2021-04-08 19:49:05', '2021-04-08 19:49:05', '', 'Products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2021-04-08 20:33:01', '2021-04-08 20:33:01', '', 0, 'http://localhost:8080/boss-palace/?page_id=11', 0, 'page', '', 0),
(12, 1, '2021-04-08 19:49:05', '2021-04-08 19:49:05', '', 'Products', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-04-08 19:49:05', '2021-04-08 19:49:05', '', 11, 'http://localhost:8080/boss-palace/?p=12', 0, 'revision', '', 0),
(13, 1, '2021-04-08 19:49:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-08 19:49:22', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/boss-palace/?post_type=acf-field-group&p=13', 0, 'acf-field-group', '', 0),
(14, 1, '2021-04-08 19:52:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-08 19:52:19', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/boss-palace/?post_type=acf-field-group&p=14', 0, 'acf-field-group', '', 0),
(15, 1, '2021-04-08 20:03:45', '2021-04-08 20:03:45', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Products Meta', 'products-meta', 'publish', 'closed', 'closed', '', 'group_606f5ff934db4', '', '', '2021-04-08 20:39:42', '2021-04-08 20:39:42', '', 0, 'http://localhost:8080/boss-palace/?post_type=acf-field-group&#038;p=15', 0, 'acf-field-group', '', 0),
(16, 1, '2021-04-08 20:03:45', '2021-04-08 20:03:45', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_606f6014f92f3', '', '', '2021-04-08 20:39:42', '2021-04-08 20:39:42', '', 15, 'http://localhost:8080/boss-palace/?post_type=acf-field&#038;p=16', 0, 'acf-field', '', 0),
(17, 1, '2021-04-08 20:03:45', '2021-04-08 20:03:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_606f6046f92f4', '', '', '2021-04-08 20:03:45', '2021-04-08 20:03:45', '', 15, 'http://localhost:8080/boss-palace/?post_type=acf-field&p=17', 1, 'acf-field', '', 0),
(18, 1, '2021-04-08 20:03:45', '2021-04-08 20:03:45', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Price', 'price', 'publish', 'closed', 'closed', '', 'field_606f6078f92f5', '', '', '2021-04-08 20:03:45', '2021-04-08 20:03:45', '', 15, 'http://localhost:8080/boss-palace/?post_type=acf-field&p=18', 2, 'acf-field', '', 0),
(19, 1, '2021-04-08 20:03:45', '2021-04-08 20:03:45', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_606f6149f92f6', '', '', '2021-04-08 20:03:45', '2021-04-08 20:03:45', '', 15, 'http://localhost:8080/boss-palace/?post_type=acf-field&p=19', 3, 'acf-field', '', 0),
(20, 1, '2021-04-08 20:12:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-04-08 20:12:04', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/boss-palace/?post_type=acf-field-group&p=20', 0, 'acf-field-group', '', 0),
(21, 1, '2021-04-08 20:13:44', '2021-04-08 20:13:44', '', 'Products', '', 'trash', 'open', 'open', '', 'products__trashed', '', '', '2021-04-08 20:19:20', '2021-04-08 20:19:20', '', 0, 'http://localhost:8080/boss-palace/?p=21', 0, 'post', '', 0),
(22, 1, '2021-04-08 20:13:44', '2021-04-08 20:13:44', '', 'Products', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-04-08 20:13:44', '2021-04-08 20:13:44', '', 21, 'http://localhost:8080/boss-palace/?p=22', 0, 'revision', '', 0),
(23, 1, '2021-04-08 20:18:21', '2021-04-08 20:18:21', '<!-- wp:paragraph -->\n<p>Learn simple formulas that will help you run an effective Instagram marketing campaign. These strategies have been tested and proven. In addition, they are responsible for helping several stores reach 6 figures!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1. Easy strategies that you will be able to implement within 10 mins</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2. Anyone will be able to use these strategies from age 14-65+</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3. No matter how big or small your business is, these strategies WILL work.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4. These strategies will increase your followers, website traffic &amp; sales&nbsp;<strong><em>ONLY</em></strong>&nbsp;if followed corrected!</p>\n<!-- /wp:paragraph -->', 'Instagram Sales Strategies (Guide)(Instantly Emailed)', '', 'publish', 'open', 'open', '', 'instagram-sales-strategies-guideinstantly-emailed', '', '', '2021-04-09 20:37:29', '2021-04-09 20:37:29', '', 0, 'http://localhost:8080/boss-palace/?p=23', 0, 'post', '', 0),
(24, 1, '2021-04-08 20:16:05', '2021-04-08 20:16:05', '', 'IGSalesGuideLogo_1024x1024', '', 'inherit', 'open', 'closed', '', 'igsalesguidelogo_1024x1024', '', '', '2021-04-08 20:16:05', '2021-04-08 20:16:05', '', 23, 'http://localhost:8080/boss-palace/wp-content/uploads/2021/04/IGSalesGuideLogo_1024x1024.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2021-04-08 20:18:21', '2021-04-08 20:18:21', '', 'Instagram Sales Strategies (Guide)(Instantly Emailed)', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-04-08 20:18:21', '2021-04-08 20:18:21', '', 23, 'http://localhost:8080/boss-palace/?p=25', 0, 'revision', '', 0),
(26, 1, '2021-04-08 20:18:23', '2021-04-08 20:18:23', '', 'Instagram Sales Strategies (Guide)(Instantly Emailed)', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-04-08 20:18:23', '2021-04-08 20:18:23', '', 23, 'http://localhost:8080/boss-palace/?p=26', 0, 'revision', '', 0),
(27, 1, '2021-04-08 20:19:22', '2021-04-08 20:19:22', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-04-08 20:19:22', '2021-04-08 20:19:22', '', 1, 'http://localhost:8080/boss-palace/?p=27', 0, 'revision', '', 0),
(28, 1, '2021-04-08 20:46:59', '2021-04-08 20:46:59', '<!-- wp:paragraph -->\n<p><em>Over 300 VENDORS instantly emailed!<br></em><br>Save yourself time and money by starting your business today with a small investment! We\'ve done all of the hard&nbsp;work for you!&nbsp;Everything you need to start a successful boutique is right here!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>What’s included in your digital vendor package?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Your Business:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>A How To Guide On Contacting Vendors (template provided)</li><li>A How To Guide On Deciding Your Business Model (Business Plan)</li><li>How To Start A Business/Become A Boss (e-book)</li><li>\"10k in 30 Days\" webinar (E-commerce learning course)</li><li>Custom Business Card&nbsp; Vendors</li><li>Custom Website Design Vendors</li><li>Graphic Design Vendors</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>For Clothing:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Custom Clothing Brand Vendors</li><li>Fashion Clothing Vendors<br>(boutique clothing with styles identical to Fashionnova, Pretty Little Thing, etc.)</li><li>Fitness Vendors</li><li>Swimwear Vendors</li><li>Sleepwear Vendors</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>For Beauty:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Makeup Vendors (Both U.S &amp; Overseas)</li><li>Mink Lash Vendors</li><li>Hair Care Vendors</li><li>Celebrity &amp; Quality Hair Vendors<br>(lace wigs, extensions, bundles, closures + MORE!)</li><li>Hot Styling Tools Vendors</li><li>Men’s Grooming Vendors</li><li>Skin Care Vendors</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>For Jewelry/Accessories:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Jewelry Vendors</li><li>Sunglass Vendors</li><li>Watch Vendors</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>For Electronics:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Electronic Product Vendors</li><li>Phone Case Vendors</li></ul>\n<!-- /wp:list -->', 'The Ultimate Business Bundle Start Up Kit (Instantly Emailed)', '', 'publish', 'open', 'open', '', 'the-ultimate-business-bundle-start-up-kit-instantly-emailed', '', '', '2021-04-09 18:15:41', '2021-04-09 18:15:41', '', 0, 'http://localhost:8080/boss-palace/?p=28', 0, 'post', '', 0),
(29, 1, '2021-04-08 20:46:17', '2021-04-08 20:46:17', '', 'image_1421f909-d8d8-46a1-a075-a677dd1edde9_1024x1024', '', 'inherit', 'open', 'closed', '', 'image_1421f909-d8d8-46a1-a075-a677dd1edde9_1024x1024', '', '', '2021-04-08 20:46:17', '2021-04-08 20:46:17', '', 28, 'http://localhost:8080/boss-palace/wp-content/uploads/2021/04/image_1421f909-d8d8-46a1-a075-a677dd1edde9_1024x1024.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2021-04-08 20:46:59', '2021-04-08 20:46:59', '', 'The Ultimate Business Bundle Start Up Kit (Instantly Emailed)', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2021-04-08 20:46:59', '2021-04-08 20:46:59', '', 28, 'http://localhost:8080/boss-palace/?p=30', 0, 'revision', '', 0),
(31, 1, '2021-04-08 20:47:02', '2021-04-08 20:47:02', '', 'The Ultimate Business Bundle Start Up Kit (Instantly Emailed)', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2021-04-08 20:47:02', '2021-04-08 20:47:02', '', 28, 'http://localhost:8080/boss-palace/?p=31', 0, 'revision', '', 0),
(32, 1, '2021-04-09 18:15:39', '2021-04-09 18:15:39', '<!-- wp:paragraph -->\n<p><em>Over 300 VENDORS instantly emailed!<br></em><br>Save yourself time and money by starting your business today with a small investment! We\'ve done all of the hard&nbsp;work for you!&nbsp;Everything you need to start a successful boutique is right here!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>What’s included in your digital vendor package?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For Your Business:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>A How To Guide On Contacting Vendors (template provided)</li><li>A How To Guide On Deciding Your Business Model (Business Plan)</li><li>How To Start A Business/Become A Boss (e-book)</li><li>\"10k in 30 Days\" webinar (E-commerce learning course)</li><li>Custom Business Card&nbsp; Vendors</li><li>Custom Website Design Vendors</li><li>Graphic Design Vendors</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>For Clothing:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Custom Clothing Brand Vendors</li><li>Fashion Clothing Vendors<br>(boutique clothing with styles identical to Fashionnova, Pretty Little Thing, etc.)</li><li>Fitness Vendors</li><li>Swimwear Vendors</li><li>Sleepwear Vendors</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>For Beauty:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Makeup Vendors (Both U.S &amp; Overseas)</li><li>Mink Lash Vendors</li><li>Hair Care Vendors</li><li>Celebrity &amp; Quality Hair Vendors<br>(lace wigs, extensions, bundles, closures + MORE!)</li><li>Hot Styling Tools Vendors</li><li>Men’s Grooming Vendors</li><li>Skin Care Vendors</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>For Jewelry/Accessories:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Jewelry Vendors</li><li>Sunglass Vendors</li><li>Watch Vendors</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>For Electronics:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Electronic Product Vendors</li><li>Phone Case Vendors</li></ul>\n<!-- /wp:list -->', 'The Ultimate Business Bundle Start Up Kit (Instantly Emailed)', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2021-04-09 18:15:39', '2021-04-09 18:15:39', '', 28, 'http://localhost:8080/branch/boss-palace/?p=32', 0, 'revision', '', 0),
(33, 1, '2021-04-09 20:08:35', '2021-04-09 20:08:35', '', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2021-04-09 20:08:35', '2021-04-09 20:08:35', '', 0, 'http://localhost:8080/branch/boss-palace/?page_id=33', 0, 'page', '', 0),
(34, 1, '2021-04-09 20:08:35', '2021-04-09 20:08:35', '', 'Cart', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-04-09 20:08:35', '2021-04-09 20:08:35', '', 33, 'http://localhost:8080/branch/boss-palace/?p=34', 0, 'revision', '', 0),
(35, 1, '2021-04-09 20:37:26', '2021-04-09 20:37:26', '<!-- wp:paragraph -->\n<p>Learn simple formulas that will help you run an effective Instagram marketing campaign. These strategies have been tested and proven. In addition, they are responsible for helping several stores reach 6 figures!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1. Easy strategies that you will be able to implement within 10 mins</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2. Anyone will be able to use these strategies from age 14-65+</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3. No matter how big or small your business is, these strategies WILL work.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4. These strategies will increase your followers, website traffic &amp; sales&nbsp;<strong><em>ONLY</em></strong>&nbsp;if followed corrected!</p>\n<!-- /wp:paragraph -->', 'Instagram Sales Strategies (Guide)(Instantly Emailed)', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-04-09 20:37:26', '2021-04-09 20:37:26', '', 23, 'http://localhost:8080/branch/boss-palace/?p=35', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(21, 1, 0),
(23, 1, 0),
(28, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'bosspalace'),
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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"1a322666567d6b5c75ab20da842d315d93ad540c656bdff52fcb7b26dbd114cd\";a:4:{s:10:\"expiration\";i:1618074865;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36\";s:5:\"login\";i:1617902065;}s:64:\"09e70792722993eaedaaee57ce8f668e6b2024f9dda174b037a6a1197de6b7fc\";a:4:{s:10:\"expiration\";i:1618161534;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36\";s:5:\"login\";i:1617988734;}s:64:\"e8717c7231f627dfddf88efeb5ad321ef30ce4cbd816185ad3986ee725e2f2dd\";a:4:{s:10:\"expiration\";i:1618161546;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36\";s:5:\"login\";i:1617988746;}s:64:\"9a84bc78c37dc15207960b06788bd2141bc32ccc561f227314ada0188f75745a\";a:4:{s:10:\"expiration\";i:1618161895;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36\";s:5:\"login\";i:1617989095;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'closedpostboxes_', 'a:0:{}'),
(21, 1, 'metaboxhidden_', 'a:0:{}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1617913100');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'bosspalace', '$P$BL8KBcsoQcXkF83b34wjlyvrAbhjyL/', 'bosspalace', 'erickwarui28@gmail.com', 'http://localhost:8080/branch/boss-palace', '2021-04-08 17:13:45', '', 0, 'bosspalace');

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
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
