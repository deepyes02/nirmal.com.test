-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 27, 2021 at 08:16 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nirmal.com`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-09-15 10:08:24', '2021-09-15 10:08:24', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://nirmal.com.test', 'yes'),
(2, 'home', 'http://nirmal.com.test', 'yes'),
(3, 'blogname', 'Aashura', 'yes'),
(4, 'blogdescription', 'Making things happen for good', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'deepyes@outlook.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '1', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:97:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '1', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'aashura', 'yes'),
(41, 'stylesheet', 'aashura', 'yes'),
(42, 'comment_registration', '', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'PG', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '300', 'yes'),
(57, 'thumbnail_size_h', '300', 'yes'),
(58, 'thumbnail_crop', '', 'yes'),
(59, 'medium_size_w', '1280', 'yes'),
(60, 'medium_size_h', '720', 'yes'),
(61, 'avatar_default', 'monsterid', 'yes'),
(62, 'large_size_w', '1920', 'yes'),
(63, 'large_size_h', '1080', 'yes'),
(64, 'image_default_link_type', '', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '', 'yes'),
(68, 'close_comments_days_old', '365', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'desc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Asia/Kathmandu', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1647252504', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:7:{i:3;a:1:{s:7:\"content\";s:123:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:71:\"<!-- wp:group -->\n<div class=\"wp-block-group\"></div>\n<!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:71:\"<!-- wp:group -->\n<div class=\"wp-block-group\"></div>\n<!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:71:\"<!-- wp:group -->\n<div class=\"wp-block-group\"></div>\n<!-- /wp:group -->\";}i:7;a:1:{s:7:\"content\";s:63:\"<!-- wp:paragraph -->\n<p>Hello World</p>\n<!-- /wp:paragraph -->\";}i:8;a:1:{s:7:\"content\";s:71:\"<!-- wp:paragraph -->\n<p>Hello I am a widget</p>\n<!-- /wp:paragraph -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-3\";i:1;s:7:\"block-4\";i:2;s:7:\"block-5\";i:3;s:7:\"block-6\";i:4;s:7:\"block-7\";}s:9:\"sidebar-1\";a:1:{i:0;s:7:\"block-8\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1632733705;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1632737305;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1632744022;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1632744032;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1632800404;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1632996505;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:1:{s:22:\"c3XLttfkiqudDcqBJS2ETr\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BcOy.iL8s/HVPPqjmXPG6R5Sxf9riS0\";s:10:\"created_at\";i:1632649505;}}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1631763639;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(128, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1632718332;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}', 'no'),
(129, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1632718333;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no'),
(130, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"deepyes@outlook.com\";s:7:\"version\";s:5:\"5.8.1\";s:9:\"timestamp\";i:1631700531;}', 'no'),
(137, 'can_compress_scripts', '1', 'no'),
(150, 'finished_updating_comment_type', '1', 'yes'),
(153, 'recently_activated', 'a:0:{}', 'yes'),
(161, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1632718335;s:7:\"checked\";a:1:{s:7:\"aashura\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(176, 'current_theme', 'Arsha Aashura', 'yes'),
(177, 'theme_mods_aashura', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:2;s:11:\"usefulLinks\";i:8;s:11:\"ourServices\";i:7;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1631763566;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(178, 'theme_switched', '', 'yes'),
(189, 'recovery_mode_email_last_sent', '1632649505', 'yes'),
(191, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(192, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(195, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(210, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":4,\"critical\":2}', 'yes'),
(237, 'WPLANG', '', 'yes'),
(238, 'new_admin_email', 'deepyes@outlook.com', 'yes'),
(282, 'hero_title', 'Elegant Business Solutions', 'yes'),
(291, 'hero_subtitle', 'We are team of talented designers making websites with Bootstrap', 'yes'),
(300, 'hero_get_started_link', '#about', 'yes'),
(301, 'hero_youtube_link', 'https://youtu.be/lClBMhzqwCs?list=RDlClBMhzqwCs', 'yes'),
(356, 'location', 'Koteshwor-32, Kathmandu, Nepal', 'yes'),
(357, 'email', 'deepyes@outlook.com', 'yes'),
(358, 'phone', '9860120956', 'yes'),
(359, 'googleMapEmbedSource', '', 'yes'),
(368, '_site_transient_timeout_php_check_7bd88c463d18d1395429260aa0d9ef54', '1632911289', 'no'),
(369, '_site_transient_php_check_7bd88c463d18d1395429260aa0d9ef54', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(392, '_site_transient_timeout_browser_03e911a5967ec7b63385b961401fc927', '1633068781', 'no'),
(393, '_site_transient_browser_03e911a5967ec7b63385b961401fc927', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"93.0.4577.82\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(412, '_site_transient_timeout_browser_1b45e80140dc46ace1901a7433351983', '1633101988', 'no'),
(413, '_site_transient_browser_1b45e80140dc46ace1901a7433351983', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"93.0.4577.82\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(421, '_site_transient_timeout_browser_09ac98cf143cc00b22e3e985ac6913e6', '1633254053', 'no'),
(422, '_site_transient_browser_09ac98cf143cc00b22e3e985ac6913e6', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"94.0.4606.61\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(427, '_site_transient_timeout_theme_roots', '1632720134', 'no'),
(428, '_site_transient_theme_roots', 'a:1:{s:7:\"aashura\";s:7:\"/themes\";}', 'no'),
(429, '_site_transient_timeout_browser_9ce43793f053f44813c639a27a5b3a48', '1633323178', 'no'),
(430, '_site_transient_browser_9ce43793f053f44813c639a27a5b3a48', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"92.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(440, 'googleMapEmbed', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621\" frameborder=\"0\" style=\"border:0; width: 100%; height: 290px;\" allowfullscreen></iframe>', 'yes'),
(452, 'twitterLink', 'https://www.twitter.com/deepyes02', 'yes'),
(453, 'facebookLink', 'facebook.com/deepyes02', 'yes'),
(454, 'instagramLink', 'instagram.com/deepyes02', 'yes'),
(455, 'skypeLink', 'live:deepesh_1', 'yes'),
(456, 'linkedinLink', 'linkedin.com/in/deepyes02', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1631778718:1'),
(4, 7, '_menu_item_type', 'post_type'),
(5, 7, '_menu_item_menu_item_parent', '0'),
(6, 7, '_menu_item_object_id', '5'),
(7, 7, '_menu_item_object', 'page'),
(8, 7, '_menu_item_target', ''),
(9, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(10, 7, '_menu_item_xfn', ''),
(11, 7, '_menu_item_url', ''),
(12, 7, '_menu_item_orphaned', '1631764575'),
(13, 8, '_menu_item_type', 'post_type'),
(14, 8, '_menu_item_menu_item_parent', '0'),
(15, 8, '_menu_item_object_id', '2'),
(16, 8, '_menu_item_object', 'page'),
(17, 8, '_menu_item_target', ''),
(18, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(19, 8, '_menu_item_xfn', ''),
(20, 8, '_menu_item_url', ''),
(21, 8, '_menu_item_orphaned', '1631764575'),
(31, 10, '_menu_item_type', 'custom'),
(32, 10, '_menu_item_menu_item_parent', '0'),
(33, 10, '_menu_item_object_id', '10'),
(34, 10, '_menu_item_object', 'custom'),
(35, 10, '_menu_item_target', ''),
(36, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 10, '_menu_item_xfn', ''),
(38, 10, '_menu_item_url', '#about'),
(40, 11, '_menu_item_type', 'custom'),
(41, 11, '_menu_item_menu_item_parent', '0'),
(42, 11, '_menu_item_object_id', '11'),
(43, 11, '_menu_item_object', 'custom'),
(44, 11, '_menu_item_target', ''),
(45, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 11, '_menu_item_xfn', ''),
(47, 11, '_menu_item_url', '#services'),
(49, 12, '_menu_item_type', 'custom'),
(50, 12, '_menu_item_menu_item_parent', '0'),
(51, 12, '_menu_item_object_id', '12'),
(52, 12, '_menu_item_object', 'custom'),
(53, 12, '_menu_item_target', ''),
(54, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 12, '_menu_item_xfn', ''),
(56, 12, '_menu_item_url', '#portfolio'),
(67, 14, '_menu_item_type', 'custom'),
(68, 14, '_menu_item_menu_item_parent', '0'),
(69, 14, '_menu_item_object_id', '14'),
(70, 14, '_menu_item_object', 'custom'),
(71, 14, '_menu_item_target', ''),
(72, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 14, '_menu_item_xfn', ''),
(74, 14, '_menu_item_url', '#team'),
(76, 15, '_menu_item_type', 'custom'),
(77, 15, '_menu_item_menu_item_parent', '0'),
(78, 15, '_menu_item_object_id', '15'),
(79, 15, '_menu_item_object', 'custom'),
(80, 15, '_menu_item_target', ''),
(81, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(82, 15, '_menu_item_xfn', ''),
(83, 15, '_menu_item_url', '#'),
(85, 16, '_menu_item_type', 'custom'),
(86, 16, '_menu_item_menu_item_parent', '15'),
(87, 16, '_menu_item_object_id', '16'),
(88, 16, '_menu_item_object', 'custom'),
(89, 16, '_menu_item_target', ''),
(90, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 16, '_menu_item_xfn', ''),
(92, 16, '_menu_item_url', '#'),
(94, 17, '_menu_item_type', 'custom'),
(95, 17, '_menu_item_menu_item_parent', '15'),
(96, 17, '_menu_item_object_id', '17'),
(97, 17, '_menu_item_object', 'custom'),
(98, 17, '_menu_item_target', ''),
(99, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(100, 17, '_menu_item_xfn', ''),
(101, 17, '_menu_item_url', '#'),
(103, 18, '_menu_item_type', 'custom'),
(104, 18, '_menu_item_menu_item_parent', '15'),
(105, 18, '_menu_item_object_id', '18'),
(106, 18, '_menu_item_object', 'custom'),
(107, 18, '_menu_item_target', ''),
(108, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(109, 18, '_menu_item_xfn', ''),
(110, 18, '_menu_item_url', '#'),
(112, 19, '_menu_item_type', 'custom'),
(113, 19, '_menu_item_menu_item_parent', '15'),
(114, 19, '_menu_item_object_id', '19'),
(115, 19, '_menu_item_object', 'custom'),
(116, 19, '_menu_item_target', ''),
(117, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(118, 19, '_menu_item_xfn', ''),
(119, 19, '_menu_item_url', '#'),
(121, 20, '_menu_item_type', 'custom'),
(122, 20, '_menu_item_menu_item_parent', '15'),
(123, 20, '_menu_item_object_id', '20'),
(124, 20, '_menu_item_object', 'custom'),
(125, 20, '_menu_item_target', ''),
(126, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(127, 20, '_menu_item_xfn', ''),
(128, 20, '_menu_item_url', '#'),
(130, 21, '_menu_item_type', 'custom'),
(131, 21, '_menu_item_menu_item_parent', '17'),
(132, 21, '_menu_item_object_id', '21'),
(133, 21, '_menu_item_object', 'custom'),
(134, 21, '_menu_item_target', ''),
(135, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(136, 21, '_menu_item_xfn', ''),
(137, 21, '_menu_item_url', '#'),
(139, 22, '_menu_item_type', 'custom'),
(140, 22, '_menu_item_menu_item_parent', '17'),
(141, 22, '_menu_item_object_id', '22'),
(142, 22, '_menu_item_object', 'custom'),
(143, 22, '_menu_item_target', ''),
(144, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(145, 22, '_menu_item_xfn', ''),
(146, 22, '_menu_item_url', '#'),
(148, 23, '_menu_item_type', 'custom'),
(149, 23, '_menu_item_menu_item_parent', '17'),
(150, 23, '_menu_item_object_id', '23'),
(151, 23, '_menu_item_object', 'custom'),
(152, 23, '_menu_item_target', ''),
(153, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(154, 23, '_menu_item_xfn', ''),
(155, 23, '_menu_item_url', '#'),
(157, 24, '_menu_item_type', 'custom'),
(158, 24, '_menu_item_menu_item_parent', '17'),
(159, 24, '_menu_item_object_id', '24'),
(160, 24, '_menu_item_object', 'custom'),
(161, 24, '_menu_item_target', ''),
(162, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(163, 24, '_menu_item_xfn', ''),
(164, 24, '_menu_item_url', '#'),
(166, 25, '_menu_item_type', 'custom'),
(167, 25, '_menu_item_menu_item_parent', '0'),
(168, 25, '_menu_item_object_id', '25'),
(169, 25, '_menu_item_object', 'custom'),
(170, 25, '_menu_item_target', ''),
(171, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(172, 25, '_menu_item_xfn', ''),
(173, 25, '_menu_item_url', '#hero'),
(175, 2, '_wp_trash_meta_status', 'publish'),
(176, 2, '_wp_trash_meta_time', '1632127309'),
(177, 2, '_wp_desired_post_slug', 'sample-page'),
(178, 3, '_wp_trash_meta_status', 'draft'),
(179, 3, '_wp_trash_meta_time', '1632127317'),
(180, 3, '_wp_desired_post_slug', 'privacy-policy'),
(181, 29, '_edit_lock', '1632128334:1'),
(182, 34, '_edit_last', '1'),
(183, 34, '_edit_lock', '1632128663:1'),
(184, 35, '_edit_last', '1'),
(185, 35, '_edit_lock', '1632128698:1'),
(186, 36, '_edit_last', '1'),
(187, 36, '_edit_lock', '1632130105:1'),
(188, 1, '_edit_lock', '1632204229:1'),
(189, 42, '_edit_last', '1'),
(190, 42, '_edit_lock', '1632208366:1'),
(191, 42, 'iconcode', 'bx bxl-dribbble'),
(192, 50, '_edit_last', '1'),
(193, 50, '_edit_lock', '1632206954:1'),
(194, 50, 'iconcode', 'bx bxs-file'),
(195, 51, '_edit_last', '1'),
(196, 51, '_edit_lock', '1632206954:1'),
(197, 51, 'iconcode', 'bx bxs-tachometer'),
(198, 52, '_edit_last', '1'),
(199, 52, '_edit_lock', '1632467068:1'),
(200, 52, 'iconcode', 'bx bxs-layer'),
(201, 60, '_edit_last', '1'),
(202, 60, '_edit_lock', '1632208531:1'),
(203, 61, '_wp_attached_file', '2021/09/portfolio-1.jpg'),
(204, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:873;s:6:\"height\";i:885;s:4:\"file\";s:23:\"2021/09/portfolio-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"portfolio-1-296x300.jpg\";s:5:\"width\";i:296;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"portfolio-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"portfolio-1-768x779.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:779;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(205, 62, '_wp_attached_file', '2021/09/portfolio-2.jpg'),
(206, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1302;s:6:\"height\";i:873;s:4:\"file\";s:23:\"2021/09/portfolio-2.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"portfolio-2-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"portfolio-2-1024x687.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:687;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"portfolio-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"portfolio-2-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(207, 63, '_wp_attached_file', '2021/09/portfolio-3.jpg'),
(208, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:450;s:4:\"file\";s:23:\"2021/09/portfolio-3.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"portfolio-3-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"portfolio-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"portfolio-3-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(209, 64, '_wp_attached_file', '2021/09/portfolio-4.jpg'),
(210, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:529;s:4:\"file\";s:23:\"2021/09/portfolio-4.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"portfolio-4-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"portfolio-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"portfolio-4-768x508.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(211, 65, '_wp_attached_file', '2021/09/portfolio-5.jpg'),
(212, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:582;s:6:\"height\";i:870;s:4:\"file\";s:23:\"2021/09/portfolio-5.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"portfolio-5-201x300.jpg\";s:5:\"width\";i:201;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"portfolio-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(213, 66, '_wp_attached_file', '2021/09/portfolio-6.jpg'),
(214, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:579;s:6:\"height\";i:861;s:4:\"file\";s:23:\"2021/09/portfolio-6.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"portfolio-6-202x300.jpg\";s:5:\"width\";i:202;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"portfolio-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(215, 67, '_wp_attached_file', '2021/09/portfolio-7.jpg'),
(216, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1197;s:6:\"height\";i:777;s:4:\"file\";s:23:\"2021/09/portfolio-7.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"portfolio-7-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"portfolio-7-1024x665.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:665;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"portfolio-7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"portfolio-7-768x499.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:499;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(217, 68, '_wp_attached_file', '2021/09/portfolio-8.jpg'),
(218, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:23:\"2021/09/portfolio-8.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"portfolio-8-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"portfolio-8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"portfolio-8-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(219, 69, '_wp_attached_file', '2021/09/portfolio-9.jpg'),
(220, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1269;s:6:\"height\";i:843;s:4:\"file\";s:23:\"2021/09/portfolio-9.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"portfolio-9-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"portfolio-9-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"portfolio-9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"portfolio-9-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(221, 70, '_wp_attached_file', '2021/09/portfolio-details-1.jpg'),
(222, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1288;s:6:\"height\";i:600;s:4:\"file\";s:31:\"2021/09/portfolio-details-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"portfolio-details-1-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"portfolio-details-1-1024x477.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"portfolio-details-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"portfolio-details-1-768x358.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:358;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(223, 71, '_wp_attached_file', '2021/09/portfolio-details-2.jpg'),
(224, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1288;s:6:\"height\";i:600;s:4:\"file\";s:31:\"2021/09/portfolio-details-2.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"portfolio-details-2-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"portfolio-details-2-1024x477.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"portfolio-details-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"portfolio-details-2-768x358.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:358;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(225, 72, '_wp_attached_file', '2021/09/portfolio-details-3.jpg'),
(226, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1288;s:6:\"height\";i:600;s:4:\"file\";s:31:\"2021/09/portfolio-details-3.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"portfolio-details-3-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"portfolio-details-3-1024x477.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"portfolio-details-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"portfolio-details-3-768x358.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:358;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(227, 61, '_wp_attachment_image_alt', 'app 1'),
(228, 60, '_thumbnail_id', '61'),
(229, 79, '_edit_last', '1'),
(230, 79, '_edit_lock', '1632211263:1'),
(231, 63, '_wp_attachment_image_alt', 'portfolio 3'),
(232, 79, '_thumbnail_id', '63'),
(233, 80, '_edit_last', '1'),
(234, 80, '_edit_lock', '1632211433:1'),
(235, 66, '_wp_attachment_image_alt', 'chair'),
(236, 81, '_edit_last', '1'),
(237, 81, '_edit_lock', '1632211324:1'),
(238, 67, '_wp_attachment_image_alt', 'lens'),
(239, 81, '_thumbnail_id', '67'),
(240, 82, '_edit_last', '1'),
(241, 82, '_edit_lock', '1632211345:1'),
(242, 64, '_wp_attachment_image_alt', 'card 2'),
(243, 82, '_thumbnail_id', '64'),
(244, 83, '_edit_last', '1'),
(245, 83, '_edit_lock', '1632211367:1'),
(246, 68, '_wp_attachment_image_alt', 'card 3'),
(247, 83, '_thumbnail_id', '68'),
(248, 84, '_edit_last', '1'),
(249, 84, '_edit_lock', '1632211399:1'),
(250, 69, '_wp_attachment_image_alt', 'watch'),
(251, 84, '_thumbnail_id', '69'),
(252, 85, '_edit_last', '1'),
(253, 85, '_edit_lock', '1632211427:1'),
(254, 65, '_wp_attachment_image_alt', 'lamp post'),
(255, 85, '_thumbnail_id', '65'),
(256, 86, '_edit_last', '1'),
(257, 86, '_edit_lock', '1632211453:1'),
(258, 62, '_wp_attachment_image_alt', 'can'),
(259, 86, '_thumbnail_id', '62'),
(260, 99, '_edit_last', '1'),
(261, 99, '_edit_lock', '1632216902:1'),
(262, 99, 'job_position', 'executive director'),
(263, 99, 'years', '10'),
(264, 99, 'twitter_profile_url', 'twitter.com/deepyes02'),
(265, 99, 'facebook_profile_url', 'facebook.com/deepyes02'),
(266, 99, 'instagram_profile_url', 'instagram.com/deepyes02'),
(267, 99, 'linkedin_profile_url', 'linkedin.com/in/deepyes02'),
(268, 100, '_wp_attached_file', '2021/09/team-1.jpg'),
(269, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2021/09/team-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"team-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"team-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(270, 101, '_wp_attached_file', '2021/09/team-2.jpg'),
(271, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2021/09/team-2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"team-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"team-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(272, 102, '_wp_attached_file', '2021/09/team-3.jpg'),
(273, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2021/09/team-3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"team-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"team-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(274, 103, '_wp_attached_file', '2021/09/team-4.jpg'),
(275, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2021/09/team-4.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"team-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"team-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(276, 103, '_wp_attachment_image_alt', 'team 4'),
(277, 102, '_wp_attachment_image_alt', 'team 3'),
(278, 101, '_wp_attachment_image_alt', 'team 2'),
(279, 100, '_wp_attachment_image_alt', 'team 1'),
(280, 99, '_thumbnail_id', '100'),
(281, 104, '_edit_last', '1'),
(282, 104, '_edit_lock', '1632216952:1'),
(283, 104, 'twitter_profile_url', 'twitter.com/deepyes02'),
(284, 104, 'facebook_profile_url', 'facebook.com/deepyes02'),
(285, 104, 'instagram_profile_url', 'instagram.com/deepyes02'),
(286, 104, 'linkedin_profile_url', 'linkedin.com/in/deepyes02'),
(287, 104, 'job_position', 'Product Manager'),
(288, 104, '_thumbnail_id', '101'),
(289, 105, '_edit_last', '1'),
(290, 105, '_edit_lock', '1632216997:1'),
(291, 105, 'twitter_profile_url', 'twitter.com/deepyes02'),
(292, 105, 'facebook_profile_url', 'facebook.com/deepyes02'),
(293, 105, 'instagram_profile_url', 'instagram.com/deepyes02'),
(294, 105, 'linkedin_profile_url', 'linkedin.com/in/deepyes02'),
(295, 105, 'job_position', 'CTO'),
(296, 105, '_thumbnail_id', '102'),
(297, 106, '_edit_last', '1'),
(298, 106, '_edit_lock', '1632497139:1'),
(299, 106, '_thumbnail_id', '129'),
(300, 106, 'twitter_profile_url', 'twitter.com/deepyes02'),
(301, 106, 'facebook_profile_url', 'facebook.com/deepyes02'),
(302, 106, 'instagram_profile_url', 'instagram.com/deepyes02'),
(303, 106, 'linkedin_profile_url', 'linkedin.com/in/deepyes02'),
(304, 106, 'job_position', 'Accountant'),
(305, 107, '_edit_last', '1'),
(306, 107, '_edit_lock', '1632218188:1'),
(307, 108, '_edit_last', '1'),
(308, 108, '_edit_lock', '1632218205:1'),
(309, 109, '_edit_last', '1'),
(310, 109, '_edit_lock', '1632218217:1'),
(311, 110, '_edit_last', '1'),
(312, 110, '_edit_lock', '1632218231:1'),
(313, 111, '_edit_last', '1'),
(314, 111, '_edit_lock', '1632220225:1'),
(315, 125, '_edit_last', '1'),
(316, 125, 'skillPercentage', '100'),
(317, 125, '_edit_lock', '1632296288:1'),
(318, 126, '_edit_last', '1'),
(319, 126, '_edit_lock', '1632296298:1'),
(320, 126, 'skillPercentage', '90'),
(321, 127, '_edit_last', '1'),
(322, 127, '_edit_lock', '1632296319:1'),
(323, 127, 'skillPercentage', '75'),
(324, 128, '_edit_last', '1'),
(325, 128, '_edit_lock', '1632296333:1'),
(326, 128, 'skillPercentage', '55'),
(327, 129, '_wp_attached_file', '2021/09/95324588_2581650578765401_7074146766731345920_n.jpg'),
(328, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:530;s:6:\"height\";i:594;s:4:\"file\";s:59:\"2021/09/95324588_2581650578765401_7074146766731345920_n.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"95324588_2581650578765401_7074146766731345920_n-268x300.jpg\";s:5:\"width\";i:268;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"95324588_2581650578765401_7074146766731345920_n-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(329, 129, '_wp_attachment_image_alt', 'bhola dhakal'),
(330, 106, '_wp_old_slug', 'amanda-jepson'),
(341, 132, '_edit_last', '1'),
(342, 132, '_edit_lock', '1632481018:1'),
(343, 133, '_edit_last', '1'),
(344, 133, '_edit_lock', '1632480252:1'),
(345, 134, '_edit_last', '1'),
(346, 134, '_edit_lock', '1632481207:1'),
(367, 133, '_wporg_meta_key', 'something'),
(368, 133, '_wporg_meta_key_2', ''),
(369, 133, 'feature1_field', 'else'),
(370, 133, 'feature2_field', 'something'),
(388, 134, 'pricing', '100'),
(389, 134, 'feature1', 'This costs 100 rupees'),
(390, 134, 'feature2', 'This costs 1000 rupees'),
(391, 134, 'feature3', 'This doesn\'t cost anything'),
(392, 134, 'feature4', 'This is free, take it.'),
(393, 134, 'feature5', 'This isn\'t free pay for it'),
(394, 134, 'feature1_val', 'notAvailable'),
(395, 134, 'feature2_val', 'available'),
(396, 134, 'feature3_val', 'available'),
(397, 134, 'feature4_val', 'available'),
(398, 134, 'feature5_val', 'notAvailable'),
(399, 135, '_edit_last', '1'),
(400, 135, '_edit_lock', '1632657026:1'),
(401, 136, '_menu_item_type', 'post_type'),
(402, 136, '_menu_item_menu_item_parent', '0'),
(403, 136, '_menu_item_object_id', '5'),
(404, 136, '_menu_item_object', 'page'),
(405, 136, '_menu_item_target', ''),
(406, 136, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(407, 136, '_menu_item_xfn', ''),
(408, 136, '_menu_item_url', ''),
(410, 137, '_menu_item_type', 'post_type'),
(411, 137, '_menu_item_menu_item_parent', '0'),
(412, 137, '_menu_item_object_id', '29'),
(413, 137, '_menu_item_object', 'page'),
(414, 137, '_menu_item_target', ''),
(415, 137, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(416, 137, '_menu_item_xfn', ''),
(417, 137, '_menu_item_url', ''),
(419, 138, '_menu_item_type', 'custom'),
(420, 138, '_menu_item_menu_item_parent', '0'),
(421, 138, '_menu_item_object_id', '138'),
(422, 138, '_menu_item_object', 'custom'),
(423, 138, '_menu_item_target', ''),
(424, 138, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(425, 138, '_menu_item_xfn', ''),
(426, 138, '_menu_item_url', '#'),
(428, 139, '_menu_item_type', 'custom'),
(429, 139, '_menu_item_menu_item_parent', '0'),
(430, 139, '_menu_item_object_id', '139'),
(431, 139, '_menu_item_object', 'custom'),
(432, 139, '_menu_item_target', ''),
(433, 139, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(434, 139, '_menu_item_xfn', ''),
(435, 139, '_menu_item_url', '#'),
(437, 140, '_menu_item_type', 'custom'),
(438, 140, '_menu_item_menu_item_parent', '0'),
(439, 140, '_menu_item_object_id', '140'),
(440, 140, '_menu_item_object', 'custom'),
(441, 140, '_menu_item_target', ''),
(442, 140, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(443, 140, '_menu_item_xfn', ''),
(444, 140, '_menu_item_url', '#'),
(491, 146, '_menu_item_type', 'post_type'),
(492, 146, '_menu_item_menu_item_parent', '0'),
(493, 146, '_menu_item_object_id', '134'),
(494, 146, '_menu_item_object', 'pricing'),
(495, 146, '_menu_item_target', ''),
(496, 146, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(497, 146, '_menu_item_xfn', ''),
(498, 146, '_menu_item_url', ''),
(500, 147, '_menu_item_type', 'post_type'),
(501, 147, '_menu_item_menu_item_parent', '0'),
(502, 147, '_menu_item_object_id', '133'),
(503, 147, '_menu_item_object', 'pricing'),
(504, 147, '_menu_item_target', ''),
(505, 147, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(506, 147, '_menu_item_xfn', ''),
(507, 147, '_menu_item_url', ''),
(509, 148, '_menu_item_type', 'post_type'),
(510, 148, '_menu_item_menu_item_parent', '0'),
(511, 148, '_menu_item_object_id', '132'),
(512, 148, '_menu_item_object', 'pricing'),
(513, 148, '_menu_item_target', ''),
(514, 148, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(515, 148, '_menu_item_xfn', ''),
(516, 148, '_menu_item_url', ''),
(518, 149, '_menu_item_type', 'post_type'),
(519, 149, '_menu_item_menu_item_parent', '0'),
(520, 149, '_menu_item_object_id', '127'),
(521, 149, '_menu_item_object', 'skills'),
(522, 149, '_menu_item_target', ''),
(523, 149, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(524, 149, '_menu_item_xfn', ''),
(525, 149, '_menu_item_url', ''),
(527, 150, '_menu_item_type', 'post_type'),
(528, 150, '_menu_item_menu_item_parent', '0'),
(529, 150, '_menu_item_object_id', '126'),
(530, 150, '_menu_item_object', 'skills'),
(531, 150, '_menu_item_target', ''),
(532, 150, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(533, 150, '_menu_item_xfn', ''),
(534, 150, '_menu_item_url', ''),
(536, 153, '_edit_last', '1'),
(537, 153, '_edit_lock', '1632723632:1'),
(538, 154, '_edit_last', '1'),
(539, 154, '_edit_lock', '1632723586:1'),
(540, 155, '_wp_attached_file', '2021/09/client-1.png'),
(541, 155, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:173;s:4:\"file\";s:20:\"2021/09/client-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"client-1-300x130.png\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(542, 156, '_wp_attached_file', '2021/09/client-2.png'),
(543, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:140;s:4:\"file\";s:20:\"2021/09/client-2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"client-2-300x105.png\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(544, 157, '_wp_attached_file', '2021/09/client-3.png'),
(545, 157, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:142;s:4:\"file\";s:20:\"2021/09/client-3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"client-3-300x107.png\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(546, 158, '_wp_attached_file', '2021/09/client-4.png'),
(547, 158, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:219;s:4:\"file\";s:20:\"2021/09/client-4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"client-4-300x164.png\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(548, 159, '_wp_attached_file', '2021/09/client-5.png'),
(549, 159, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:142;s:4:\"file\";s:20:\"2021/09/client-5.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"client-5-300x107.png\";s:5:\"width\";i:300;s:6:\"height\";i:107;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(550, 160, '_wp_attached_file', '2021/09/client-6.png'),
(551, 160, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:125;s:4:\"file\";s:20:\"2021/09/client-6.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"client-6-300x94.png\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(552, 154, '_thumbnail_id', '155'),
(553, 161, '_edit_last', '1'),
(554, 161, '_edit_lock', '1632723600:1'),
(555, 161, '_thumbnail_id', '156'),
(556, 162, '_edit_last', '1'),
(557, 162, '_edit_lock', '1632724177:1'),
(558, 163, '_edit_last', '1'),
(559, 163, '_edit_lock', '1632724225:1'),
(560, 164, '_edit_last', '1'),
(561, 164, '_edit_lock', '1632723651:1'),
(562, 164, '_thumbnail_id', '159'),
(563, 166, '_edit_last', '1'),
(564, 166, '_edit_lock', '1632724130:1'),
(565, 166, '_thumbnail_id', '160'),
(566, 162, '_thumbnail_id', '157'),
(567, 163, '_thumbnail_id', '158'),
(568, 167, '_edit_last', '1'),
(569, 167, '_edit_lock', '1632725258:1'),
(570, 171, '_edit_last', '1'),
(571, 171, 'contactName', 'radhe'),
(572, 171, '_edit_lock', '1632726292:1'),
(577, 171, '_wp_trash_meta_status', 'publish'),
(578, 171, '_wp_trash_meta_time', '1632726630'),
(579, 171, '_wp_desired_post_slug', 'radhe'),
(580, 167, '_wp_trash_meta_status', 'draft'),
(581, 167, '_wp_trash_meta_time', '1632726630'),
(582, 167, '_wp_desired_post_slug', ''),
(592, 174, '_edit_lock', '1632727094:1'),
(593, 173, '_edit_lock', '1632727098:1'),
(594, 174, '_wp_trash_meta_status', 'publish'),
(595, 174, '_wp_trash_meta_time', '1632727521'),
(596, 174, '_wp_desired_post_slug', 'rajesh-2'),
(597, 173, '_wp_trash_meta_status', 'publish'),
(598, 173, '_wp_trash_meta_time', '1632727521'),
(599, 173, '_wp_desired_post_slug', 'rajesh'),
(600, 172, '_wp_trash_meta_status', 'publish'),
(601, 172, '_wp_trash_meta_time', '1632727521'),
(602, 172, '_wp_desired_post_slug', 'deepesh'),
(603, 175, '_edit_lock', '1632727530:1'),
(604, 175, '_wp_trash_meta_status', 'publish'),
(605, 175, '_wp_trash_meta_time', '1632727679'),
(606, 175, '_wp_desired_post_slug', 'rajesh'),
(608, 176, '_edit_lock', '1632727612:1'),
(609, 176, '_wp_trash_meta_status', 'publish'),
(610, 176, '_wp_trash_meta_time', '1632727754'),
(611, 176, '_wp_desired_post_slug', 'rajesh'),
(615, 177, '_edit_lock', '1632727635:1'),
(622, 177, '_wp_trash_meta_status', 'publish'),
(623, 177, '_wp_trash_meta_time', '1632728296'),
(624, 177, '_wp_desired_post_slug', 'rajesh'),
(628, 180, '_edit_lock', '1632728186:1'),
(629, 180, '_wp_trash_meta_status', 'publish'),
(630, 180, '_wp_trash_meta_time', '1632728437'),
(631, 180, '_wp_desired_post_slug', 'rajesh'),
(632, 179, '_wp_trash_meta_status', 'publish'),
(633, 179, '_wp_trash_meta_time', '1632728437'),
(634, 179, '_wp_desired_post_slug', 'rajesh-3'),
(635, 178, '_wp_trash_meta_status', 'publish'),
(636, 178, '_wp_trash_meta_time', '1632728437'),
(637, 178, '_wp_desired_post_slug', 'rajesh-2'),
(638, 181, 'contactEmail', 'rajesh@gmail.com'),
(639, 181, 'contactSubject', 'this is the email subject'),
(640, 181, 'contactMessage', 'This is the email message'),
(641, 182, 'contactEmail', 'rajesh@gmail.com'),
(642, 182, 'contactSubject', 'this is the email subject'),
(643, 182, 'contactMessage', 'This is the email message');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-09-15 10:08:24', '2021-09-15 10:08:24', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-09-15 10:08:24', '2021-09-15 10:08:24', '', 0, 'http://nirmal.com.test/?p=1', 0, 'post', '', 1),
(2, 1, '2021-09-15 10:08:24', '2021-09-15 10:08:24', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://nirmal.com.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2021-09-20 14:26:49', '2021-09-20 08:41:49', '', 0, 'http://nirmal.com.test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-09-15 10:08:24', '2021-09-15 10:08:24', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://nirmal.com.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2021-09-20 14:26:57', '2021-09-20 08:41:57', '', 0, 'http://nirmal.com.test/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-09-16 03:40:19', '2021-09-16 03:40:19', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-09-16 03:40:53', '2021-09-16 03:40:53', '', 0, 'http://nirmal.com.test/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-09-16 03:40:19', '2021-09-16 03:40:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-16 03:40:19', '2021-09-16 03:40:19', '', 5, 'http://nirmal.com.test/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-09-16 03:56:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-16 03:56:15', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2021-09-16 03:56:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-16 03:56:15', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?p=8', 1, 'nav_menu_item', '', 0),
(10, 1, '2021-09-16 04:18:52', '2021-09-16 03:57:40', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2021-09-16 04:18:52', '2021-09-16 04:18:52', '', 0, 'http://nirmal.com.test/?p=10', 2, 'nav_menu_item', '', 0),
(11, 1, '2021-09-16 04:18:52', '2021-09-16 03:57:40', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2021-09-16 04:18:52', '2021-09-16 04:18:52', '', 0, 'http://nirmal.com.test/?p=11', 3, 'nav_menu_item', '', 0),
(12, 1, '2021-09-16 04:18:52', '2021-09-16 03:57:40', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2021-09-16 04:18:52', '2021-09-16 04:18:52', '', 0, 'http://nirmal.com.test/?p=12', 4, 'nav_menu_item', '', 0),
(14, 1, '2021-09-16 04:18:52', '2021-09-16 03:57:40', '', 'Team', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2021-09-16 04:18:52', '2021-09-16 04:18:52', '', 0, 'http://nirmal.com.test/?p=14', 5, 'nav_menu_item', '', 0),
(15, 1, '2021-09-16 04:18:52', '2021-09-16 03:57:40', '', 'Drop Down', '', 'publish', 'closed', 'closed', '', 'drop-down', '', '', '2021-09-16 04:18:52', '2021-09-16 04:18:52', '', 0, 'http://nirmal.com.test/?p=15', 6, 'nav_menu_item', '', 0),
(16, 1, '2021-09-16 04:18:52', '2021-09-16 03:59:44', '', 'Drop Down 1', '', 'publish', 'closed', 'closed', '', 'drop-down-1', '', '', '2021-09-16 04:18:52', '2021-09-16 04:18:52', '', 0, 'http://nirmal.com.test/?p=16', 7, 'nav_menu_item', '', 0),
(17, 1, '2021-09-16 04:18:52', '2021-09-16 03:59:44', '', 'Deep Drop Down', '', 'publish', 'closed', 'closed', '', 'deep-drop-down', '', '', '2021-09-16 04:18:52', '2021-09-16 04:18:52', '', 0, 'http://nirmal.com.test/?p=17', 8, 'nav_menu_item', '', 0),
(18, 1, '2021-09-16 04:18:52', '2021-09-16 03:59:44', '', 'Drop Down 2', '', 'publish', 'closed', 'closed', '', 'drop-down-2', '', '', '2021-09-16 04:18:52', '2021-09-16 04:18:52', '', 0, 'http://nirmal.com.test/?p=18', 13, 'nav_menu_item', '', 0),
(19, 1, '2021-09-16 04:18:52', '2021-09-16 03:59:44', '', 'Drop Down 3', '', 'publish', 'closed', 'closed', '', 'drop-down-3', '', '', '2021-09-16 04:18:52', '2021-09-16 04:18:52', '', 0, 'http://nirmal.com.test/?p=19', 14, 'nav_menu_item', '', 0),
(20, 1, '2021-09-16 04:18:52', '2021-09-16 03:59:44', '', 'Drop Down 4', '', 'publish', 'closed', 'closed', '', 'drop-down-4', '', '', '2021-09-16 04:18:52', '2021-09-16 04:18:52', '', 0, 'http://nirmal.com.test/?p=20', 15, 'nav_menu_item', '', 0),
(21, 1, '2021-09-16 04:18:52', '2021-09-16 03:59:44', '', 'Deep Drop Down 1', '', 'publish', 'closed', 'closed', '', 'deep-drop-down-1', '', '', '2021-09-16 04:18:52', '2021-09-16 04:18:52', '', 0, 'http://nirmal.com.test/?p=21', 9, 'nav_menu_item', '', 0),
(22, 1, '2021-09-16 04:18:52', '2021-09-16 03:59:44', '', 'Deep Drop Down 2', '', 'publish', 'closed', 'closed', '', 'deep-drop-down-2', '', '', '2021-09-16 04:18:52', '2021-09-16 04:18:52', '', 0, 'http://nirmal.com.test/?p=22', 10, 'nav_menu_item', '', 0),
(23, 1, '2021-09-16 04:18:52', '2021-09-16 03:59:44', '', 'Deep Drop Down 3', '', 'publish', 'closed', 'closed', '', 'deep-drop-down-3', '', '', '2021-09-16 04:18:52', '2021-09-16 04:18:52', '', 0, 'http://nirmal.com.test/?p=23', 11, 'nav_menu_item', '', 0),
(24, 1, '2021-09-16 04:18:52', '2021-09-16 03:59:44', '', 'Deep Drop Down 4', '', 'publish', 'closed', 'closed', '', 'deep-drop-down-4', '', '', '2021-09-16 04:18:52', '2021-09-16 04:18:52', '', 0, 'http://nirmal.com.test/?p=24', 12, 'nav_menu_item', '', 0),
(25, 1, '2021-09-16 04:18:52', '2021-09-16 04:09:07', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-09-16 04:18:52', '2021-09-16 04:18:52', '', 0, 'http://nirmal.com.test/?p=25', 1, 'nav_menu_item', '', 0),
(27, 1, '2021-09-20 14:26:49', '2021-09-20 08:41:49', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://nirmal.com.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-09-20 14:26:49', '2021-09-20 08:41:49', '', 2, 'http://nirmal.com.test/?p=27', 0, 'revision', '', 0),
(28, 1, '2021-09-20 14:26:57', '2021-09-20 08:41:57', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://nirmal.com.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-09-20 14:26:57', '2021-09-20 08:41:57', '', 3, 'http://nirmal.com.test/?p=28', 0, 'revision', '', 0),
(29, 1, '2021-09-20 14:27:24', '2021-09-20 08:42:24', '<!-- wp:html -->\n        <div class=\"col-lg-6\">\n          <p>\n            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et\n            dolore\n            magna aliqua.\n          </p>\n          <ul>\n            <li><i class=\"ri-check-double-line\"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat</li>\n            <li><i class=\"ri-check-double-line\"></i> Duis aute irure dolor in reprehenderit in voluptate velit</li>\n            <li><i class=\"ri-check-double-line\"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat</li>\n          </ul>\n        </div>\n        <div class=\"col-lg-6 pt-4 pt-lg-0\">\n          <p>\n            Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in\n            voluptate\n            velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in\n            culpa qui officia deserunt mollit anim id est laborum.\n          </p>\n          <a href=\"#\" class=\"btn-learn-more\">Learn More</a>\n        </div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2021-09-20 14:35:17', '2021-09-20 08:50:17', '', 0, 'http://nirmal.com.test/?page_id=29', 0, 'page', '', 0),
(30, 1, '2021-09-20 14:27:24', '2021-09-20 08:42:24', '', 'About', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2021-09-20 14:27:24', '2021-09-20 08:42:24', '', 29, 'http://nirmal.com.test/?p=30', 0, 'revision', '', 0),
(31, 1, '2021-09-20 14:28:01', '2021-09-20 08:43:01', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Ullamco laboris nisi ut aliquip ex ea commodo consequat</li><li>Duis aute irure dolor in reprehenderit in voluptate velit</li><li>Ullamco laboris nisi ut aliquip ex ea commodo consequat</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2021-09-20 14:28:01', '2021-09-20 08:43:01', '', 29, 'http://nirmal.com.test/?p=31', 0, 'revision', '', 0),
(32, 1, '2021-09-20 14:34:20', '2021-09-20 08:49:20', '', 'About', '', 'inherit', 'closed', 'closed', '', '29-autosave-v1', '', '', '2021-09-20 14:34:20', '2021-09-20 08:49:20', '', 29, 'http://nirmal.com.test/?p=32', 0, 'revision', '', 0),
(33, 1, '2021-09-20 14:35:17', '2021-09-20 08:50:17', '<!-- wp:html -->\n        <div class=\"col-lg-6\">\n          <p>\n            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et\n            dolore\n            magna aliqua.\n          </p>\n          <ul>\n            <li><i class=\"ri-check-double-line\"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat</li>\n            <li><i class=\"ri-check-double-line\"></i> Duis aute irure dolor in reprehenderit in voluptate velit</li>\n            <li><i class=\"ri-check-double-line\"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat</li>\n          </ul>\n        </div>\n        <div class=\"col-lg-6 pt-4 pt-lg-0\">\n          <p>\n            Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in\n            voluptate\n            velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in\n            culpa qui officia deserunt mollit anim id est laborum.\n          </p>\n          <a href=\"#\" class=\"btn-learn-more\">Learn More</a>\n        </div>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2021-09-20 14:35:17', '2021-09-20 08:50:17', '', 29, 'http://nirmal.com.test/?p=33', 0, 'revision', '', 0),
(34, 1, '2021-09-20 14:51:11', '2021-09-20 09:06:11', '', 'Statement number 1 is here', 'Feugiat pretium nibh ipsum consequat. Tempus iaculis urna id volutpat lacus laoreet non curabitur gravida. Venenatis lectus magna fringilla urna porttitor rhoncus dolor purus non. ', 'publish', 'closed', 'closed', '', 'non-consectetur-a-erat-nam-at-lectus-urna-duis', '', '', '2021-09-20 14:51:43', '2021-09-20 09:06:43', '', 0, 'http://nirmal.com.test/?post_type=statements&#038;p=34', 0, 'statements', '', 0),
(35, 1, '2021-09-20 14:52:19', '2021-09-20 09:07:19', '', 'And then there\'s the second statement', 'Meanwhile that doesn\'t mean anything. It\'s just that life goes on nevertheless and it doesn\'t matter whatever you put your mind in you can achieve it easily.', 'publish', 'closed', 'closed', '', 'and-then-theres-the-second-statement', '', '', '2021-09-20 14:52:19', '2021-09-20 09:07:19', '', 0, 'http://nirmal.com.test/?post_type=statements&#038;p=35', 0, 'statements', '', 0),
(36, 1, '2021-09-20 14:52:46', '2021-09-20 09:07:46', '', 'The third statement\'s a magic', 'lorem ipsum this is third statement lorem ipsum this is third statement lorem ipsum this is third statement lorem ipsum this is third statement lorem ipsum this is third statement lorem ipsum this is third statement.,', 'publish', 'closed', 'closed', '', 'the-third-statements-a-magic', '', '', '2021-09-20 14:52:46', '2021-09-20 09:07:46', '', 0, 'http://nirmal.com.test/?post_type=statements&#038;p=36', 0, 'statements', '', 0),
(37, 1, '2021-09-20 15:15:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-20 15:15:51', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=services&p=37', 0, 'services', '', 0),
(38, 1, '2021-09-20 15:16:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-20 15:16:02', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=services&p=38', 0, 'services', '', 0),
(39, 1, '2021-09-20 15:16:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-20 15:16:14', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=services&p=39', 0, 'services', '', 0),
(40, 1, '2021-09-20 20:18:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-20 20:18:35', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=services&p=40', 0, 'services', '', 0),
(41, 1, '2021-09-21 11:26:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 11:26:14', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=services&p=41', 0, 'services', '', 0),
(42, 1, '2021-09-21 12:02:59', '2021-09-21 06:17:59', '', 'It\'s a ball', 'Excerpts are optional hand-crafted summaries of your content that can be used in your theme. Learn more about manual excerpts.', 'publish', 'closed', 'closed', '', 'its-a-ball', '', '', '2021-09-21 12:31:47', '2021-09-21 06:46:47', '', 0, 'http://nirmal.com.test/?post_type=services&#038;p=42', 0, 'services', '', 0),
(43, 1, '2021-09-21 11:33:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 11:33:43', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=services&p=43', 0, 'services', '', 0),
(44, 1, '2021-09-21 11:34:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 11:34:07', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=statements&p=44', 0, 'statements', '', 0),
(45, 1, '2021-09-21 11:44:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 11:44:08', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=services&p=45', 0, 'services', '', 0),
(46, 1, '2021-09-21 11:44:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 11:44:23', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=services&p=46', 0, 'services', '', 0),
(47, 1, '2021-09-21 11:49:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 11:49:22', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=services&p=47', 0, 'services', '', 0),
(48, 1, '2021-09-21 11:49:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 11:49:28', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=services&p=48', 0, 'services', '', 0),
(49, 1, '2021-09-21 11:49:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 11:49:34', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=services&p=49', 0, 'services', '', 0),
(50, 1, '2021-09-21 12:18:22', '2021-09-21 06:33:22', '', 'Sed ut perspici', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore', 'publish', 'closed', 'closed', '', 'sed-ut-perspici', '', '', '2021-09-21 12:31:29', '2021-09-21 06:46:29', '', 0, 'http://nirmal.com.test/?post_type=services&#038;p=50', 0, 'services', '', 0),
(51, 1, '2021-09-21 12:18:55', '2021-09-21 06:33:55', '', 'Magni Dolores', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia', 'publish', 'closed', 'closed', '', 'magni-dolores', '', '', '2021-09-21 12:31:19', '2021-09-21 06:46:19', '', 0, 'http://nirmal.com.test/?post_type=services&#038;p=51', 0, 'services', '', 0),
(52, 1, '2021-09-21 12:19:19', '2021-09-21 06:34:19', '', 'Nemo Enim', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis', 'publish', 'closed', 'closed', '', 'nemo-enim', '', '', '2021-09-21 12:31:09', '2021-09-21 06:46:09', '', 0, 'http://nirmal.com.test/?post_type=services&#038;p=52', 0, 'services', '', 0),
(53, 1, '2021-09-21 12:44:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 12:44:31', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=portfolio&p=53', 0, 'portfolio', '', 0),
(54, 1, '2021-09-21 12:49:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 12:49:59', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=portfolio&p=54', 0, 'portfolio', '', 0),
(55, 1, '2021-09-21 12:50:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 12:50:27', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=portfolio&p=55', 0, 'portfolio', '', 0),
(56, 1, '2021-09-21 12:51:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 12:51:12', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=portfolio&p=56', 0, 'portfolio', '', 0),
(57, 1, '2021-09-21 12:51:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 12:51:24', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=portfolio&p=57', 0, 'portfolio', '', 0),
(58, 1, '2021-09-21 12:51:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 12:51:46', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=portfolio&p=58', 0, 'portfolio', '', 0),
(59, 1, '2021-09-21 12:52:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 12:52:21', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=portfolio&p=59', 0, 'portfolio', '', 0),
(60, 1, '2021-09-21 12:54:30', '2021-09-21 07:09:30', '', 'App1', '........................', 'publish', 'closed', 'closed', '', 'app1', '', '', '2021-09-21 12:59:10', '2021-09-21 07:14:10', '', 0, 'http://nirmal.com.test/?post_type=portfolio&#038;p=60', 0, 'portfolio', '', 0),
(61, 1, '2021-09-21 12:54:01', '2021-09-21 07:09:01', '', 'portfolio-1', '', 'inherit', 'open', 'closed', '', 'portfolio-1', '', '', '2021-09-21 12:54:21', '2021-09-21 07:09:21', '', 60, 'http://nirmal.com.test/wp-content/uploads/2021/09/portfolio-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2021-09-21 12:54:02', '2021-09-21 07:09:02', '', 'portfolio-2', '', 'inherit', 'open', 'closed', '', 'portfolio-2', '', '', '2021-09-21 13:51:32', '2021-09-21 08:06:32', '', 60, 'http://nirmal.com.test/wp-content/uploads/2021/09/portfolio-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2021-09-21 12:54:03', '2021-09-21 07:09:03', '', 'portfolio-3', '', 'inherit', 'open', 'closed', '', 'portfolio-3', '', '', '2021-09-21 13:48:14', '2021-09-21 08:03:14', '', 60, 'http://nirmal.com.test/wp-content/uploads/2021/09/portfolio-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2021-09-21 12:54:04', '2021-09-21 07:09:04', '', 'portfolio-4', '', 'inherit', 'open', 'closed', '', 'portfolio-4', '', '', '2021-09-21 13:49:42', '2021-09-21 08:04:42', '', 60, 'http://nirmal.com.test/wp-content/uploads/2021/09/portfolio-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2021-09-21 12:54:05', '2021-09-21 07:09:05', '', 'portfolio-5', '', 'inherit', 'open', 'closed', '', 'portfolio-5', '', '', '2021-09-21 13:51:02', '2021-09-21 08:06:02', '', 60, 'http://nirmal.com.test/wp-content/uploads/2021/09/portfolio-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2021-09-21 12:54:06', '2021-09-21 07:09:06', '', 'portfolio-6', '', 'inherit', 'open', 'closed', '', 'portfolio-6', '', '', '2021-09-21 13:48:51', '2021-09-21 08:03:51', '', 60, 'http://nirmal.com.test/wp-content/uploads/2021/09/portfolio-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2021-09-21 12:54:07', '2021-09-21 07:09:07', '', 'portfolio-7', '', 'inherit', 'open', 'closed', '', 'portfolio-7', '', '', '2021-09-21 13:49:21', '2021-09-21 08:04:21', '', 60, 'http://nirmal.com.test/wp-content/uploads/2021/09/portfolio-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2021-09-21 12:54:08', '2021-09-21 07:09:08', '', 'portfolio-8', '', 'inherit', 'open', 'closed', '', 'portfolio-8', '', '', '2021-09-21 13:50:03', '2021-09-21 08:05:03', '', 60, 'http://nirmal.com.test/wp-content/uploads/2021/09/portfolio-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2021-09-21 12:54:09', '2021-09-21 07:09:09', '', 'portfolio-9', '', 'inherit', 'open', 'closed', '', 'portfolio-9', '', '', '2021-09-21 13:50:38', '2021-09-21 08:05:38', '', 60, 'http://nirmal.com.test/wp-content/uploads/2021/09/portfolio-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2021-09-21 12:54:11', '2021-09-21 07:09:11', '', 'portfolio-details-1', '', 'inherit', 'open', 'closed', '', 'portfolio-details-1', '', '', '2021-09-21 12:54:11', '2021-09-21 07:09:11', '', 60, 'http://nirmal.com.test/wp-content/uploads/2021/09/portfolio-details-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2021-09-21 12:54:12', '2021-09-21 07:09:12', '', 'portfolio-details-2', '', 'inherit', 'open', 'closed', '', 'portfolio-details-2', '', '', '2021-09-21 12:54:12', '2021-09-21 07:09:12', '', 60, 'http://nirmal.com.test/wp-content/uploads/2021/09/portfolio-details-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2021-09-21 12:54:13', '2021-09-21 07:09:13', '', 'portfolio-details-3', '', 'inherit', 'open', 'closed', '', 'portfolio-details-3', '', '', '2021-09-21 12:54:13', '2021-09-21 07:09:13', '', 60, 'http://nirmal.com.test/wp-content/uploads/2021/09/portfolio-details-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2021-09-21 13:03:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 13:03:27', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=portfolio&p=73', 0, 'portfolio', '', 0),
(74, 1, '2021-09-21 13:04:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 13:04:04', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=portfolio&p=74', 0, 'portfolio', '', 0),
(75, 1, '2021-09-21 13:04:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 13:04:19', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=portfolio&p=75', 0, 'portfolio', '', 0),
(76, 1, '2021-09-21 13:04:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 13:04:23', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=portfolio&p=76', 0, 'portfolio', '', 0),
(77, 1, '2021-09-21 13:04:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 13:04:31', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=portfolio&p=77', 0, 'portfolio', '', 0),
(78, 1, '2021-09-21 13:04:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 13:04:39', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=portfolio&p=78', 0, 'portfolio', '', 0),
(79, 1, '2021-09-21 13:05:30', '2021-09-21 07:20:30', '', 'App2', '', 'publish', 'closed', 'closed', '', '79', '', '', '2021-09-21 13:48:17', '2021-09-21 08:03:17', '', 0, 'http://nirmal.com.test/?post_type=portfolio&#038;p=79', 0, 'portfolio', '', 0),
(80, 1, '2021-09-21 13:48:52', '2021-09-21 08:03:52', '', 'App3', '', 'publish', 'closed', 'closed', '', 'app3', '', '', '2021-09-21 13:48:52', '2021-09-21 08:03:52', '', 0, 'http://nirmal.com.test/?post_type=portfolio&#038;p=80', 0, 'portfolio', '', 0),
(81, 1, '2021-09-21 13:49:23', '2021-09-21 08:04:23', '', 'Card1', '', 'publish', 'closed', 'closed', '', 'card1', '', '', '2021-09-21 13:49:23', '2021-09-21 08:04:23', '', 0, 'http://nirmal.com.test/?post_type=portfolio&#038;p=81', 0, 'portfolio', '', 0),
(82, 1, '2021-09-21 13:49:46', '2021-09-21 08:04:46', '', 'Card2', '', 'publish', 'closed', 'closed', '', 'card2', '', '', '2021-09-21 13:49:46', '2021-09-21 08:04:46', '', 0, 'http://nirmal.com.test/?post_type=portfolio&#038;p=82', 0, 'portfolio', '', 0),
(83, 1, '2021-09-21 13:50:07', '2021-09-21 08:05:07', '', 'Card3', '', 'publish', 'closed', 'closed', '', 'card3', '', '', '2021-09-21 13:50:07', '2021-09-21 08:05:07', '', 0, 'http://nirmal.com.test/?post_type=portfolio&#038;p=83', 0, 'portfolio', '', 0),
(84, 1, '2021-09-21 13:50:40', '2021-09-21 08:05:40', '', 'Web1', '', 'publish', 'closed', 'closed', '', 'web1', '', '', '2021-09-21 13:50:40', '2021-09-21 08:05:40', '', 0, 'http://nirmal.com.test/?post_type=portfolio&#038;p=84', 0, 'portfolio', '', 0),
(85, 1, '2021-09-21 13:51:04', '2021-09-21 08:06:04', '', 'Web2', '', 'publish', 'closed', 'closed', '', 'web2', '', '', '2021-09-21 13:51:04', '2021-09-21 08:06:04', '', 0, 'http://nirmal.com.test/?post_type=portfolio&#038;p=85', 0, 'portfolio', '', 0),
(86, 1, '2021-09-21 13:51:34', '2021-09-21 08:06:34', '', 'Web3', '', 'publish', 'closed', 'closed', '', 'web3', '', '', '2021-09-21 13:51:34', '2021-09-21 08:06:34', '', 0, 'http://nirmal.com.test/?post_type=portfolio&#038;p=86', 0, 'portfolio', '', 0),
(87, 1, '2021-09-21 14:27:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 14:27:46', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=team&p=87', 0, 'team', '', 0),
(88, 1, '2021-09-21 14:32:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 14:32:08', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=team&p=88', 0, 'team', '', 0),
(89, 1, '2021-09-21 14:32:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 14:32:14', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=team&p=89', 0, 'team', '', 0),
(90, 1, '2021-09-21 14:32:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 14:32:26', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=team&p=90', 0, 'team', '', 0),
(91, 1, '2021-09-21 14:33:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 14:33:03', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=team&p=91', 0, 'team', '', 0),
(92, 1, '2021-09-21 14:33:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 14:33:14', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=team&p=92', 0, 'team', '', 0),
(93, 1, '2021-09-21 14:34:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 14:34:15', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=team&p=93', 0, 'team', '', 0),
(94, 1, '2021-09-21 14:34:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 14:34:33', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=team&p=94', 0, 'team', '', 0),
(95, 1, '2021-09-21 14:34:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 14:34:45', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=team&p=95', 0, 'team', '', 0),
(96, 1, '2021-09-21 14:35:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 14:35:02', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=team&p=96', 0, 'team', '', 0),
(97, 1, '2021-09-21 14:35:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 14:35:10', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=team&p=97', 0, 'team', '', 0),
(98, 1, '2021-09-21 14:36:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-21 14:36:20', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=team&p=98', 0, 'team', '', 0),
(99, 1, '2021-09-21 14:36:46', '2021-09-21 08:51:46', '', 'Walter White', 'Explicabo voluptatem mollitia et repellat qui dolorum quasi', 'publish', 'closed', 'closed', '', '99', '', '', '2021-09-21 15:22:18', '2021-09-21 09:37:18', '', 0, 'http://nirmal.com.test/?post_type=team&#038;p=99', 0, 'team', '', 0),
(100, 1, '2021-09-21 15:21:48', '2021-09-21 09:36:48', '', 'team-1', '', 'inherit', 'open', 'closed', '', 'team-1', '', '', '2021-09-21 15:22:14', '2021-09-21 09:37:14', '', 99, 'http://nirmal.com.test/wp-content/uploads/2021/09/team-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2021-09-21 15:21:50', '2021-09-21 09:36:50', '', 'team-2', '', 'inherit', 'open', 'closed', '', 'team-2', '', '', '2021-09-21 15:22:11', '2021-09-21 09:37:11', '', 99, 'http://nirmal.com.test/wp-content/uploads/2021/09/team-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2021-09-21 15:21:51', '2021-09-21 09:36:51', '', 'team-3', '', 'inherit', 'open', 'closed', '', 'team-3', '', '', '2021-09-21 15:22:07', '2021-09-21 09:37:07', '', 99, 'http://nirmal.com.test/wp-content/uploads/2021/09/team-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2021-09-21 15:21:52', '2021-09-21 09:36:52', '', 'team-4', '', 'inherit', 'open', 'closed', '', 'team-4', '', '', '2021-09-21 15:21:59', '2021-09-21 09:36:59', '', 99, 'http://nirmal.com.test/wp-content/uploads/2021/09/team-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2021-09-21 15:23:02', '2021-09-21 09:38:02', '', 'Sarah Johnson', 'Aut maiores voluptates amet et quis praesentium qui senda para', 'publish', 'closed', 'closed', '', 'sarah-johnson', '', '', '2021-09-21 15:23:10', '2021-09-21 09:38:10', '', 0, 'http://nirmal.com.test/?post_type=team&#038;p=104', 0, 'team', '', 0),
(105, 1, '2021-09-21 15:23:40', '2021-09-21 09:38:40', '', 'William Anderson', 'Quisquam facilis cum velit laborum corrupti fuga rerum quia', 'publish', 'closed', 'closed', '', 'william-anderson', '', '', '2021-09-21 15:23:52', '2021-09-21 09:38:52', '', 0, 'http://nirmal.com.test/?post_type=team&#038;p=105', 0, 'team', '', 0),
(106, 1, '2021-09-21 15:24:28', '2021-09-21 09:39:28', '', 'Bhola Prasad Dhakal', 'Hello everyone my name is Bhola Dhakal.', 'publish', 'closed', 'closed', '', 'bhola-dhakal', '', '', '2021-09-22 21:08:06', '2021-09-22 15:23:06', '', 0, 'http://nirmal.com.test/?post_type=team&#038;p=106', 0, 'team', '', 0),
(107, 1, '2021-09-21 15:43:43', '2021-09-21 09:58:43', '', 'Non consectetur a erat nam at lectus urna duis?', 'Feugiat pretium nibh ipsum consequat. Tempus iaculis urna id volutpat lacus laoreet non curabitur gravida. Venenatis lectus magna fringilla urna porttitor rhoncus dolor purus non. ', 'publish', 'closed', 'closed', '', 'non-consectetur-a-erat-nam-at-lectus-urna-duis', '', '', '2021-09-21 15:43:43', '2021-09-21 09:58:43', '', 0, 'http://nirmal.com.test/?post_type=faqs&#038;p=107', 0, 'faqs', '', 0),
(108, 1, '2021-09-21 15:44:00', '2021-09-21 09:59:00', '', 'Feugiat scelerisque varius morbi enim nunc?', 'Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in cursus turpis massa tincidunt dui. ', 'publish', 'closed', 'closed', '', 'feugiat-scelerisque-varius-morbi-enim-nunc', '', '', '2021-09-21 15:44:00', '2021-09-21 09:59:00', '', 0, 'http://nirmal.com.test/?post_type=faqs&#038;p=108', 0, 'faqs', '', 0),
(109, 1, '2021-09-21 15:44:17', '2021-09-21 09:59:17', '', 'Dolor sit amet consectetur adipiscing elit?', 'Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Faucibus pulvinar elementum integer enim. Sem nulla pharetra diam sit amet nisl suscipit. Rutrum tellus pellentesque eu tincidunt. Lectus urna duis convallis convallis tellus. Urna molestie at elementum eu facilisis sed odio morbi quis ', 'publish', 'closed', 'closed', '', 'dolor-sit-amet-consectetur-adipiscing-elit', '', '', '2021-09-21 15:44:17', '2021-09-21 09:59:17', '', 0, 'http://nirmal.com.test/?post_type=faqs&#038;p=109', 0, 'faqs', '', 0),
(110, 1, '2021-09-21 15:44:30', '2021-09-21 09:59:30', '', 'Tempus quam pellentesque nec nam aliquam sem et tortor consequat?', 'Molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim suspendisse in est ante in. Nunc vel risus commodo viverra maecenas accumsan. Sit amet nisl suscipit adipiscing bibendum est. Purus gravida quis blandit turpis cursus in. ', 'publish', 'closed', 'closed', '', 'tempus-quam-pellentesque-nec-nam-aliquam-sem-et-tortor-consequat', '', '', '2021-09-21 15:44:30', '2021-09-21 09:59:30', '', 0, 'http://nirmal.com.test/?post_type=faqs&#038;p=110', 0, 'faqs', '', 0),
(111, 1, '2021-09-21 15:44:42', '2021-09-21 09:59:42', '', 'Tortor vitae purus faucibus ornare. Varius vel pharetra vel turpis nunc eget lorem dolor?', 'Laoreet sit amet cursus sit amet dictum sit amet justo. Mauris vitae ultricies leo integer malesuada nunc vel. Tincidunt eget nullam non nisi est sit amet. Turpis nunc eget lorem dolor sed. Ut venenatis tellus in metus vulputate eu scelerisque. ', 'publish', 'closed', 'closed', '', 'tortor-vitae-purus-faucibus-ornare-varius-vel-pharetra-vel-turpis-nunc-eget-lorem-dolor', '', '', '2021-09-21 15:44:42', '2021-09-21 09:59:42', '', 0, 'http://nirmal.com.test/?post_type=faqs&#038;p=111', 0, 'faqs', '', 0),
(112, 1, '2021-09-22 13:08:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-09-22 13:08:08', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?p=112', 0, 'post', '', 0),
(113, 1, '2021-09-22 13:11:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-22 13:11:08', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=skills&p=113', 0, 'skills', '', 0),
(114, 1, '2021-09-22 13:14:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-22 13:14:30', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=skills&p=114', 0, 'skills', '', 0),
(115, 1, '2021-09-22 13:14:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-22 13:14:53', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=skills&p=115', 0, 'skills', '', 0),
(116, 1, '2021-09-22 13:15:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-22 13:15:11', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=skills&p=116', 0, 'skills', '', 0),
(117, 1, '2021-09-22 13:15:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-22 13:15:34', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=skills&p=117', 0, 'skills', '', 0),
(118, 1, '2021-09-22 13:15:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-22 13:15:42', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=skills&p=118', 0, 'skills', '', 0),
(119, 1, '2021-09-22 13:16:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-22 13:16:56', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=skills&p=119', 0, 'skills', '', 0),
(120, 1, '2021-09-22 13:18:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-22 13:18:21', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=skills&p=120', 0, 'skills', '', 0),
(121, 1, '2021-09-22 13:18:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-22 13:18:36', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=skills&p=121', 0, 'skills', '', 0),
(122, 1, '2021-09-22 13:19:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-22 13:19:19', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=skills&p=122', 0, 'skills', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(123, 1, '2021-09-22 13:20:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-22 13:20:13', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=skills&p=123', 0, 'skills', '', 0),
(124, 1, '2021-09-22 13:21:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-22 13:21:18', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=skills&p=124', 0, 'skills', '', 0),
(125, 1, '2021-09-22 13:23:28', '2021-09-22 07:38:28', '', 'HTML', '', 'publish', 'closed', 'closed', '', '125', '', '', '2021-09-22 13:25:28', '2021-09-22 07:40:28', '', 0, 'http://nirmal.com.test/?post_type=skills&#038;p=125', 0, 'skills', '', 0),
(126, 1, '2021-09-22 13:25:38', '2021-09-22 07:40:38', '', 'CSS', '', 'publish', 'closed', 'closed', '', 'css', '', '', '2021-09-22 13:25:38', '2021-09-22 07:40:38', '', 0, 'http://nirmal.com.test/?post_type=skills&#038;p=126', 0, 'skills', '', 0),
(127, 1, '2021-09-22 13:25:59', '2021-09-22 07:40:59', '', 'JAVASCRIPT', '', 'publish', 'closed', 'closed', '', 'javascript', '', '', '2021-09-22 13:25:59', '2021-09-22 07:40:59', '', 0, 'http://nirmal.com.test/?post_type=skills&#038;p=127', 0, 'skills', '', 0),
(128, 1, '2021-09-22 13:26:14', '2021-09-22 07:41:14', '', 'PHOTOSHOP', '', 'publish', 'closed', 'closed', '', 'photoshop', '', '', '2021-09-22 13:26:14', '2021-09-22 07:41:14', '', 0, 'http://nirmal.com.test/?post_type=skills&#038;p=128', 0, 'skills', '', 0),
(129, 1, '2021-09-22 21:05:36', '2021-09-22 15:20:36', '', '95324588_2581650578765401_7074146766731345920_n', '', 'inherit', 'open', 'closed', '', '95324588_2581650578765401_7074146766731345920_n', '', '', '2021-09-22 21:05:40', '2021-09-22 15:20:40', '', 106, 'http://nirmal.com.test/wp-content/uploads/2021/09/95324588_2581650578765401_7074146766731345920_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2021-09-24 12:46:51', '2021-09-24 07:01:51', '', 'Free Plan', '', 'publish', 'closed', 'closed', '', 'free-plan', '', '', '2021-09-24 16:45:27', '2021-09-24 11:00:27', '', 0, 'http://nirmal.com.test/?post_type=pricing&#038;p=132', 0, 'pricing', '', 0),
(133, 1, '2021-09-24 12:47:03', '2021-09-24 07:02:03', '', 'Business Plan', '', 'publish', 'closed', 'closed', '', 'business-plan', '', '', '2021-09-24 16:45:27', '2021-09-24 11:00:27', '', 0, 'http://nirmal.com.test/?post_type=pricing&#038;p=133', 0, 'pricing', '', 0),
(134, 1, '2021-09-24 12:47:11', '2021-09-24 07:02:11', '', 'Developer Plan', '', 'publish', 'closed', 'closed', '', 'developer-plan', '', '', '2021-09-24 16:46:49', '2021-09-24 11:01:49', '', 0, 'http://nirmal.com.test/?post_type=pricing&#038;p=134', 0, 'pricing', '', 0),
(135, 1, '2021-09-26 16:25:27', '2021-09-26 10:40:27', '', 'Why is the sky blue?', 'The sky is blue because during most part of the day, the sun\'s blue ray is reflected towards earth due to it\'s properties.', 'publish', 'closed', 'closed', '', 'why-is-the-sky-blue', '', '', '2021-09-26 16:25:27', '2021-09-26 10:40:27', '', 0, 'http://nirmal.com.test/?post_type=faqs&#038;p=135', 0, 'faqs', '', 0),
(136, 1, '2021-09-27 10:42:15', '2021-09-27 04:57:15', ' ', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2021-09-27 10:42:15', '2021-09-27 04:57:15', '', 0, 'http://nirmal.com.test/?p=136', 1, 'nav_menu_item', '', 0),
(137, 1, '2021-09-27 10:42:15', '2021-09-27 04:57:15', '', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-09-27 10:42:15', '2021-09-27 04:57:15', '', 0, 'http://nirmal.com.test/?p=137', 2, 'nav_menu_item', '', 0),
(138, 1, '2021-09-27 10:42:15', '2021-09-27 04:57:15', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services-2', '', '', '2021-09-27 10:42:15', '2021-09-27 04:57:15', '', 0, 'http://nirmal.com.test/?p=138', 3, 'nav_menu_item', '', 0),
(139, 1, '2021-09-27 10:42:15', '2021-09-27 04:57:15', '', 'Terms of service', '', 'publish', 'closed', 'closed', '', 'terms-of-service', '', '', '2021-09-27 10:42:15', '2021-09-27 04:57:15', '', 0, 'http://nirmal.com.test/?p=139', 4, 'nav_menu_item', '', 0),
(140, 1, '2021-09-27 10:42:15', '2021-09-27 04:57:15', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2021-09-27 10:42:15', '2021-09-27 04:57:15', '', 0, 'http://nirmal.com.test/?p=140', 5, 'nav_menu_item', '', 0),
(146, 1, '2021-09-27 11:29:55', '2021-09-27 05:44:55', ' ', '', '', 'publish', 'closed', 'closed', '', '146', '', '', '2021-09-27 11:29:55', '2021-09-27 05:44:55', '', 0, 'http://nirmal.com.test/?p=146', 1, 'nav_menu_item', '', 0),
(147, 1, '2021-09-27 11:29:55', '2021-09-27 05:44:55', ' ', '', '', 'publish', 'closed', 'closed', '', '147', '', '', '2021-09-27 11:29:55', '2021-09-27 05:44:55', '', 0, 'http://nirmal.com.test/?p=147', 2, 'nav_menu_item', '', 0),
(148, 1, '2021-09-27 11:29:55', '2021-09-27 05:44:55', ' ', '', '', 'publish', 'closed', 'closed', '', '148', '', '', '2021-09-27 11:29:55', '2021-09-27 05:44:55', '', 0, 'http://nirmal.com.test/?p=148', 3, 'nav_menu_item', '', 0),
(149, 1, '2021-09-27 11:29:55', '2021-09-27 05:44:55', ' ', '', '', 'publish', 'closed', 'closed', '', '149', '', '', '2021-09-27 11:29:55', '2021-09-27 05:44:55', '', 0, 'http://nirmal.com.test/?p=149', 4, 'nav_menu_item', '', 0),
(150, 1, '2021-09-27 11:29:55', '2021-09-27 05:44:55', ' ', '', '', 'publish', 'closed', 'closed', '', '150', '', '', '2021-09-27 11:29:55', '2021-09-27 05:44:55', '', 0, 'http://nirmal.com.test/?p=150', 5, 'nav_menu_item', '', 0),
(151, 1, '2021-09-27 12:04:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-27 12:04:54', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=brands&p=151', 0, 'brands', '', 0),
(152, 1, '2021-09-27 12:05:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-27 12:05:13', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=brands&p=152', 0, 'brands', '', 0),
(153, 1, '2021-09-27 12:05:32', '0000-00-00 00:00:00', '', 'myob', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-09-27 12:05:32', '2021-09-27 06:20:32', '', 0, 'http://nirmal.com.test/?post_type=brands&#038;p=153', 0, 'brands', '', 0),
(154, 1, '2021-09-27 12:07:06', '2021-09-27 06:22:06', '', 'myob', '', 'publish', 'closed', 'closed', '', 'myob', '', '', '2021-09-27 12:07:06', '2021-09-27 06:22:06', '', 0, 'http://nirmal.com.test/?post_type=clients&#038;p=154', 0, 'clients', '', 0),
(155, 1, '2021-09-27 12:06:54', '2021-09-27 06:21:54', '', 'client-1', '', 'inherit', 'open', 'closed', '', 'client-1', '', '', '2021-09-27 12:06:54', '2021-09-27 06:21:54', '', 154, 'http://nirmal.com.test/wp-content/uploads/2021/09/client-1.png', 0, 'attachment', 'image/png', 0),
(156, 1, '2021-09-27 12:06:55', '2021-09-27 06:21:55', '', 'client-2', '', 'inherit', 'open', 'closed', '', 'client-2', '', '', '2021-09-27 12:06:55', '2021-09-27 06:21:55', '', 154, 'http://nirmal.com.test/wp-content/uploads/2021/09/client-2.png', 0, 'attachment', 'image/png', 0),
(157, 1, '2021-09-27 12:06:57', '2021-09-27 06:21:57', '', 'client-3', '', 'inherit', 'open', 'closed', '', 'client-3', '', '', '2021-09-27 12:06:57', '2021-09-27 06:21:57', '', 154, 'http://nirmal.com.test/wp-content/uploads/2021/09/client-3.png', 0, 'attachment', 'image/png', 0),
(158, 1, '2021-09-27 12:06:58', '2021-09-27 06:21:58', '', 'client-4', '', 'inherit', 'open', 'closed', '', 'client-4', '', '', '2021-09-27 12:06:58', '2021-09-27 06:21:58', '', 154, 'http://nirmal.com.test/wp-content/uploads/2021/09/client-4.png', 0, 'attachment', 'image/png', 0),
(159, 1, '2021-09-27 12:06:59', '2021-09-27 06:21:59', '', 'client-5', '', 'inherit', 'open', 'closed', '', 'client-5', '', '', '2021-09-27 12:06:59', '2021-09-27 06:21:59', '', 154, 'http://nirmal.com.test/wp-content/uploads/2021/09/client-5.png', 0, 'attachment', 'image/png', 0),
(160, 1, '2021-09-27 12:07:00', '2021-09-27 06:22:00', '', 'client-6', '', 'inherit', 'open', 'closed', '', 'client-6', '', '', '2021-09-27 12:07:00', '2021-09-27 06:22:00', '', 154, 'http://nirmal.com.test/wp-content/uploads/2021/09/client-6.png', 0, 'attachment', 'image/png', 0),
(161, 1, '2021-09-27 12:07:20', '2021-09-27 06:22:20', '', 'belimo', '', 'publish', 'closed', 'closed', '', 'belimo', '', '', '2021-09-27 12:07:20', '2021-09-27 06:22:20', '', 0, 'http://nirmal.com.test/?post_type=clients&#038;p=161', 0, 'clients', '', 0),
(162, 1, '2021-09-27 12:07:33', '2021-09-27 06:22:33', '', 'lifegroups', '', 'publish', 'closed', 'closed', '', 'lifegroups', '', '', '2021-09-27 12:16:50', '2021-09-27 06:31:50', '', 0, 'http://nirmal.com.test/?post_type=clients&#038;p=162', 0, 'clients', '', 0),
(163, 1, '2021-09-27 12:07:53', '2021-09-27 06:22:53', '', 'Lilly', '', 'publish', 'closed', 'closed', '', 'lilly', '', '', '2021-09-27 12:17:13', '2021-09-27 06:32:13', '', 0, 'http://nirmal.com.test/?post_type=clients&#038;p=163', 0, 'clients', '', 0),
(164, 1, '2021-09-27 12:08:11', '2021-09-27 06:23:11', '', 'citrus', '', 'publish', 'closed', 'closed', '', 'citrus', '', '', '2021-09-27 12:08:11', '2021-09-27 06:23:11', '', 0, 'http://nirmal.com.test/?post_type=clients&#038;p=164', 0, 'clients', '', 0),
(165, 1, '2021-09-27 12:08:14', '2021-09-27 06:23:14', '', 'citrus', '', 'inherit', 'closed', 'closed', '', '164-autosave-v1', '', '', '2021-09-27 12:08:14', '2021-09-27 06:23:14', '', 164, 'http://nirmal.com.test/?p=165', 0, 'revision', '', 0),
(166, 1, '2021-09-27 12:08:24', '2021-09-27 06:23:24', '', 'trustly', '', 'publish', 'closed', 'closed', '', 'trustly', '', '', '2021-09-27 12:08:24', '2021-09-27 06:23:24', '', 0, 'http://nirmal.com.test/?post_type=clients&#038;p=166', 0, 'clients', '', 0),
(167, 1, '2021-09-27 12:55:30', '2021-09-27 07:10:30', '', 'Radhe', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2021-09-27 12:55:30', '2021-09-27 07:10:30', '', 0, 'http://nirmal.com.test/?post_type=contacts&#038;p=167', 0, 'contacts', '', 0),
(168, 1, '2021-09-27 12:32:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-27 12:32:51', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=contacts&p=168', 0, 'contacts', '', 0),
(169, 1, '2021-09-27 12:33:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-27 12:33:17', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=contacts&p=169', 0, 'contacts', '', 0),
(170, 1, '2021-09-27 12:33:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-27 12:33:29', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=contacts&p=170', 0, 'contacts', '', 0),
(171, 1, '2021-09-27 12:33:54', '2021-09-27 06:48:54', '', 'Radhe', '', 'trash', 'closed', 'closed', '', 'radhe__trashed', '', '', '2021-09-27 12:55:30', '2021-09-27 07:10:30', '', 0, 'http://nirmal.com.test/?post_type=contacts&#038;p=171', 0, 'contacts', '', 0),
(172, 1, '2021-09-27 13:00:09', '2021-09-27 07:15:09', '', 'deepesh', '', 'trash', 'closed', 'closed', '', 'deepesh__trashed', '', '', '2021-09-27 13:10:21', '2021-09-27 07:25:21', '', 0, 'http://nirmal.com.test/contacts/deepesh/', 0, 'contacts', '', 0),
(173, 1, '2021-09-27 13:04:09', '2021-09-27 07:19:09', '', 'rajesh', '', 'trash', 'closed', 'closed', '', 'rajesh__trashed', '', '', '2021-09-27 13:10:21', '2021-09-27 07:25:21', '', 0, 'http://nirmal.com.test/contacts/rajesh/', 0, 'contacts', '', 0),
(174, 1, '2021-09-27 13:04:34', '2021-09-27 07:19:34', '', 'rajesh', '', 'trash', 'closed', 'closed', '', 'rajesh-2__trashed', '', '', '2021-09-27 13:10:21', '2021-09-27 07:25:21', '', 0, 'http://nirmal.com.test/contacts/rajesh-2/', 0, 'contacts', '', 0),
(175, 1, '2021-09-27 13:10:40', '2021-09-27 07:25:40', '', 'rajesh', '', 'trash', 'closed', 'closed', '', 'rajesh__trashed-2', '', '', '2021-09-27 13:12:59', '2021-09-27 07:27:59', '', 0, 'http://nirmal.com.test/contacts/rajesh/', 0, 'contacts', '', 0),
(176, 1, '2021-09-27 13:13:30', '2021-09-27 07:28:30', '', 'rajesh', '', 'trash', 'closed', 'closed', '', 'rajesh__trashed-3', '', '', '2021-09-27 13:14:14', '2021-09-27 07:29:14', '', 0, 'http://nirmal.com.test/contacts/rajesh/', 0, 'contacts', '', 0),
(177, 1, '2021-09-27 13:14:21', '2021-09-27 07:29:21', '', 'rajesh', '', 'trash', 'closed', 'closed', '', 'rajesh__trashed-4', '', '', '2021-09-27 13:23:17', '2021-09-27 07:38:17', '', 0, 'http://nirmal.com.test/contacts/rajesh/', 0, 'contacts', '', 0),
(178, 1, '2021-09-27 13:20:40', '2021-09-27 07:35:40', '', 'rajesh', '', 'trash', 'closed', 'closed', '', 'rajesh-2__trashed-2', '', '', '2021-09-27 13:25:37', '2021-09-27 07:40:37', '', 0, 'http://nirmal.com.test/contacts/rajesh-2/', 0, 'contacts', '', 0),
(179, 1, '2021-09-27 13:22:22', '2021-09-27 07:37:22', '', 'rajesh', '', 'trash', 'closed', 'closed', '', 'rajesh-3__trashed', '', '', '2021-09-27 13:25:37', '2021-09-27 07:40:37', '', 0, 'http://nirmal.com.test/contacts/rajesh-3/', 0, 'contacts', '', 0),
(180, 1, '2021-09-27 13:23:33', '2021-09-27 07:38:33', '', 'rajesh', '', 'trash', 'closed', 'closed', '', 'rajesh__trashed-5', '', '', '2021-09-27 13:25:37', '2021-09-27 07:40:37', '', 0, 'http://nirmal.com.test/contacts/rajesh/', 0, 'contacts', '', 0),
(181, 1, '2021-09-27 13:25:50', '2021-09-27 07:40:50', '', 'rajesh', '', 'publish', 'closed', 'closed', '', 'rajesh', '', '', '2021-09-27 13:25:50', '2021-09-27 07:40:50', '', 0, 'http://nirmal.com.test/contacts/rajesh/', 0, 'contacts', '', 0),
(182, 1, '2021-09-27 13:27:01', '2021-09-27 07:42:01', '', 'rajesh', '', 'publish', 'closed', 'closed', '', 'rajesh-2', '', '', '2021-09-27 13:27:01', '2021-09-27 07:42:01', '', 0, 'http://nirmal.com.test/contacts/rajesh-2/', 0, 'contacts', '', 0),
(183, 1, '2021-09-27 13:28:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-27 13:28:58', '0000-00-00 00:00:00', '', 0, 'http://nirmal.com.test/?post_type=newsletters&p=183', 0, 'newsletters', '', 0),
(193, 1, '2021-09-27 13:45:34', '2021-09-27 08:00:34', '', 'deepeshisisr@gmail.com', '', 'publish', 'closed', 'closed', '', 'deepeshisisrgmail-com', '', '', '2021-09-27 13:45:34', '2021-09-27 08:00:34', '', 0, 'http://nirmal.com.test/newsletters/deepeshisisrgmail-com/', 0, 'newsletters', '', 0),
(194, 1, '2021-09-27 13:46:26', '2021-09-27 08:01:26', '', 'deepeshisisr@gmail.com', '', 'publish', 'closed', 'closed', '', 'deepeshisisrgmail-com-2', '', '', '2021-09-27 13:46:26', '2021-09-27 08:01:26', '', 0, 'http://nirmal.com.test/newsletters/deepeshisisrgmail-com-2/', 0, 'newsletters', '', 0),
(195, 1, '2021-09-27 13:48:56', '2021-09-27 08:03:56', '', 'deepeshisisr@gmail.com', '', 'publish', 'closed', 'closed', '', 'deepeshisisrgmail-com-3', '', '', '2021-09-27 13:48:56', '2021-09-27 08:03:56', '', 0, 'http://nirmal.com.test/newsletters/deepeshisisrgmail-com-3/', 0, 'newsletters', '', 0),
(196, 1, '2021-09-27 13:49:16', '2021-09-27 08:04:16', '', 'deepeshisisr@gmail.com', '', 'publish', 'closed', 'closed', '', 'deepeshisisrgmail-com-4', '', '', '2021-09-27 13:49:16', '2021-09-27 08:04:16', '', 0, 'http://nirmal.com.test/newsletters/deepeshisisrgmail-com-4/', 0, 'newsletters', '', 0),
(197, 1, '2021-09-27 13:50:26', '2021-09-27 08:05:26', '', 'deepeshisisr@gmail.com', '', 'publish', 'closed', 'closed', '', 'deepeshisisrgmail-com-5', '', '', '2021-09-27 13:50:26', '2021-09-27 08:05:26', '', 0, 'http://nirmal.com.test/newsletters/deepeshisisrgmail-com-5/', 0, 'newsletters', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary Menu', 'primary-menu', 0),
(3, 'app', 'app', 0),
(4, 'web', 'web', 0),
(5, 'card', 'card', 0),
(7, 'Our Services', 'our-services', 0),
(8, 'Useful Links', 'useful-links', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(60, 3, 0),
(60, 4, 0),
(79, 3, 0),
(80, 3, 0),
(81, 5, 0),
(82, 5, 0),
(83, 5, 0),
(84, 4, 0),
(85, 4, 0),
(86, 4, 0),
(136, 7, 0),
(137, 7, 0),
(138, 7, 0),
(139, 7, 0),
(140, 7, 0),
(146, 8, 0),
(147, 8, 0),
(148, 8, 0),
(149, 8, 0),
(150, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 15),
(3, 3, 'type', '', 0, 3),
(4, 4, 'type', '', 0, 4),
(5, 5, 'type', '', 0, 3),
(7, 7, 'nav_menu', '', 0, 5),
(8, 8, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'deepesh'),
(2, 1, 'first_name', 'Deepesh'),
(3, 1, 'last_name', 'Dhakal'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'modern'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"66864e537cf27832a44201a475f0d1dd0fdafdce78b9dd1da4e16cdfe8ac5f6e\";a:4:{s:10:\"expiration\";i:1632910128;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36\";s:5:\"login\";i:1631700528;}s:64:\"6b4a6d5aa7fc75c38c3d021872bf5e3745ebbcadcd151baa88b1b6370c81341d\";a:4:{s:10:\"expiration\";i:1632970218;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:130:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36 Edg/93.0.961.47\";s:5:\"login\";i:1631760618;}s:64:\"bef27ae7b9652e866d8e7263008d928584affc0afbb52188d810a02a295dd37c\";a:4:{s:10:\"expiration\";i:1632822051;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:130:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36 Edg/94.0.992.31\";s:5:\"login\";i:1632649251;}s:64:\"44e1ea98ae798b35d7f68fe6cdebc6133b95feac091151d0b863380c0cce7d08\";a:4:{s:10:\"expiration\";i:1632891176;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0\";s:5:\"login\";i:1632718376;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '112'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '8'),
(22, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:78:\"aashura_sitepoint,dashboard_site_health,dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(23, 1, 'meta-box-order_post', 'a:3:{s:4:\"side\";s:13:\"services_icon\";s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(24, 1, 'closedpostboxes_portfolio', 'a:0:{}'),
(25, 1, 'metaboxhidden_portfolio', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(26, 1, 'meta-box-order_portfolio', 'a:3:{s:4:\"side\";s:35:\"submitdiv,tagsdiv-type,postimagediv\";s:6:\"normal\";s:19:\"postexcerpt,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(27, 1, 'screen_layout_portfolio', '2'),
(28, 1, 'wp_user-settings', 'libraryContent=browse'),
(29, 1, 'wp_user-settings-time', '1632208166'),
(30, 1, 'closedpostboxes_team', 'a:1:{i:0;s:11:\"postexcerpt\";}'),
(31, 1, 'metaboxhidden_team', 'a:0:{}'),
(32, 1, 'meta-box-order_team', 'a:3:{s:4:\"side\";s:22:\"postimagediv,submitdiv\";s:6:\"normal\";s:67:\"postexcerpt,slugdiv,aashura_team_position,aashura_team_social_media\";s:8:\"advanced\";s:0:\"\";}'),
(33, 1, 'screen_layout_team', '2'),
(34, 1, 'closedpostboxes_pricing', 'a:0:{}'),
(35, 1, 'metaboxhidden_pricing', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(36, 1, 'meta-box-order_pricing', 'a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:23:\"slugdiv,pricing,feature\";s:8:\"advanced\";s:0:\"\";}'),
(37, 1, 'screen_layout_pricing', '2'),
(38, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(39, 1, 'metaboxhidden_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'deepesh', '$P$Bg./HVB3.5kD4CtF1KgZGZtVlO2EQ71', 'deepesh', 'deepyes@outlook.com', 'http://nirmal.com.test', '2021-09-15 10:08:24', '', 0, 'deepesh');

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=465;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=671;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
