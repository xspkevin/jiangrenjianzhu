-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2017-08-28 17:57:36
-- 服务器版本： 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jiangrenjianzhu`
--

-- --------------------------------------------------------

--
-- 表的结构 `jrjz_commentmeta`
--

CREATE TABLE `jrjz_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `jrjz_comments`
--

CREATE TABLE `jrjz_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `jrjz_links`
--

CREATE TABLE `jrjz_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `jrjz_options`
--

CREATE TABLE `jrjz_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `jrjz_options`
--

INSERT INTO `jrjz_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.jiangrenjz.com', 'yes'),
(2, 'home', 'http://www.jiangrenjz.com', 'yes'),
(3, 'blogname', '匠人建筑', 'yes'),
(4, 'blogdescription', '我们只做设计，不卖图纸', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'xspkevin@163.com', 'yes'),
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
(23, 'date_format', 'Y年n月j日', 'yes'),
(24, 'time_format', 'ag:i', 'yes'),
(25, 'links_updated_date_format', 'Y年n月j日ag:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:52:\"(company_news)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"(company_news)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"(company_news)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:51:\"(design_case)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:34:\"(design_case)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:16:\"(design_case)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:14:\"category/(.*)$\";s:39:\"index.php?category_redirect=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:72:\"/Users/ping/Projects/jiangrenjianzhu/wp-content/themes/xsbrand/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'xsbrand', 'yes'),
(41, 'stylesheet', 'xsbrand', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Asia/Shanghai', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '55', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'jrjz_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'zh_CN', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1503964257;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1504007478;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1504012428;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'nonce_key', '9i9_1za$Om.Z_i[RREIB%F/YWmvjHo= R*r{bvxA$=p,byOpbv^h6EH}UI4A2PDv', 'no'),
(111, 'nonce_salt', 'WblR@ nFbec}Y>zHCl-{f0vo&Cl_L0!^*hdUBiYZ#X]-%TpBq=sJa.tZ&D]phXs]', 'no'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1503402797;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(126, 'auth_key', 'SeMci:S:>.5n+/3KL=5/?,-ZS+L66e_,n<rY/R~F]qLw?3BxQi/zP~U u_2!%kie', 'no'),
(127, 'auth_salt', 'cd4<E}d,71BqlA=wrDQ0IZr0/$||`.NMfr%Ie9at|%EsTWWxWQ2OCdS::9a=oEFt', 'no'),
(128, 'logged_in_key', '~[}Ex^`Ulr8}H#=[j9i=|^>1M|@%1mu`7SCu|@#=eoPYoOUI15I5j#,^XZ3zwjeE', 'no'),
(129, 'logged_in_salt', 'Tu0dHc dkeamisqkiHob)Mmz%%z:^CdR7&TTolWVd@d}$DO{z3B4zF4:v2zu:}Zp', 'no'),
(130, '_site_transient_timeout_browser_15035ac2d483f3f4b647e2409491ff40', '1504007479', 'no'),
(131, '_site_transient_browser_15035ac2d483f3f4b647e2409491ff40', 'a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"54.0\";s:10:\"update_url\";s:23:\"http://www.firefox.com/\";s:7:\"img_src\";s:50:\"http://s.wordpress.org/images/browsers/firefox.png\";s:11:\"img_src_ssl\";s:49:\"https://wordpress.org/images/browsers/firefox.png\";s:15:\"current_version\";s:2:\"16\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(148, '_site_transient_timeout_wporg_theme_feature_list', '1503413569', 'no'),
(149, '_site_transient_wporg_theme_feature_list', 'a:3:{s:6:\"Layout\";a:7:{i:0;s:11:\"grid-layout\";i:1;s:10:\"one-column\";i:2;s:11:\"two-columns\";i:3;s:13:\"three-columns\";i:4;s:12:\"four-columns\";i:5;s:12:\"left-sidebar\";i:6;s:13:\"right-sidebar\";}s:8:\"Features\";a:20:{i:0;s:19:\"accessibility-ready\";i:1;s:10:\"buddypress\";i:2;s:17:\"custom-background\";i:3;s:13:\"custom-colors\";i:4;s:13:\"custom-header\";i:5;s:11:\"custom-menu\";i:6;s:12:\"editor-style\";i:7;s:21:\"featured-image-header\";i:8;s:15:\"featured-images\";i:9;s:15:\"flexible-header\";i:10;s:14:\"footer-widgets\";i:11;s:20:\"front-page-post-form\";i:12;s:19:\"full-width-template\";i:13;s:12:\"microformats\";i:14;s:12:\"post-formats\";i:15;s:20:\"rtl-language-support\";i:16;s:11:\"sticky-post\";i:17;s:13:\"theme-options\";i:18;s:17:\"threaded-comments\";i:19;s:17:\"translation-ready\";}s:7:\"Subject\";a:9:{i:0;s:4:\"blog\";i:1;s:10:\"e-commerce\";i:2;s:9:\"education\";i:3;s:13:\"entertainment\";i:4;s:14:\"food-and-drink\";i:5;s:7:\"holiday\";i:6;s:4:\"news\";i:7;s:11:\"photography\";i:8;s:9:\"portfolio\";}}', 'no'),
(150, 'current_theme', 'XSbrand主题', 'yes'),
(151, 'theme_mods_xsbrand', 'a:4:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:3:{s:8:\"main-nav\";i:2;s:9:\"intro-nav\";i:0;s:11:\"service-nav\";i:0;}s:16:\"background_color\";s:6:\"ffffff\";}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(153, 'widget_links', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(154, 'acf_version', '5.4.7', 'yes'),
(155, '_transient_timeout_plugin_slugs', '1503843756', 'no'),
(156, '_transient_plugin_slugs', 'a:2:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";}', 'no'),
(157, 'recently_activated', 'a:0:{}', 'yes'),
(158, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(206, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1503623292', 'no'),
(207, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:0:{}}', 'no'),
(222, 'options_title', '匠人建筑', 'no'),
(223, '_options_title', 'field_59342d66c82c1', 'no'),
(224, 'options_keywords', '匠人建筑，匠人，建筑，设计，建筑设计，建筑方案', 'no'),
(225, '_options_keywords', 'field_59342d74c82c2', 'no'),
(226, 'options_description', '匠人建筑', 'no'),
(227, '_options_description', 'field_59342d87c82c3', 'no'),
(228, 'options_logo', '52', 'no'),
(229, '_options_logo', 'field_59342e07b4566', 'no'),
(230, 'options_fav', '5', 'no'),
(231, '_options_fav', 'field_59342e43b4567', 'no'),
(232, 'options_sliders', '1', 'no'),
(233, '_options_sliders', 'field_5940954ba8f50', 'no'),
(234, 'options_intro', '<b><img class=\"wp-image-41 alignleft\" src=\"http://localhost/wp-content/uploads/2017/08/cefc1e178a82b9016af92faf798da9773812efd2-300x300.jpg\" alt=\"\" width=\"118\" height=\"114\" /></b>匠人建筑房屋设计有限公司成立于2010年，公司位于深圳宝安道鸿隆广场。我们承接独栋自助房，厂区规划，四合院，农家乐，商住楼，祠堂，双拼自建房设计，无论您选择哪种设计需求，我们都无偿无条件为您提供设计与施工指导服务。我们只做设计，不卖图纸。', 'no'),
(235, '_options_intro', 'field_59448e31d13b9', 'no'),
(236, 'options_contact', '<img class=\"alignleft wp-image-40\" src=\"http://localhost/wp-content/uploads/2017/08/jrjz_qrcode.png\" alt=\"\" width=\"80\" height=\"80\" />\r\n\r\n<strong>匠人建筑房屋设计</strong><strong>\r\n</strong>TEL：18898363613  刘工      15989318545 田工\r\nQ Q：10966183 刘工      286374061 田工\r\n地址：广东省深圳市宝安区西乡街道鸿隆广场C1010', 'no'),
(237, '_options_contact', 'field_594493a3d13ba', 'no'),
(238, 'options_news1', '1', 'no'),
(239, '_options_news1', 'field_59409ae5a8f5a', 'no'),
(240, 'options_news2', '', 'no'),
(241, '_options_news2', 'field_59409b54a8f5b', 'no'),
(242, 'options_news3', '3', 'no'),
(243, '_options_news3', 'field_59450e51b6d35', 'no'),
(244, 'options_wechat', '40', 'no'),
(245, '_options_wechat', 'field_5945f23300e51', 'no'),
(246, 'options_qq', '10966183', 'no'),
(247, '_options_qq', 'field_5945f2da00e51', 'no'),
(248, 'options_weibo', '', 'no'),
(249, '_options_weibo', 'field_5945f2da00e52', 'no'),
(250, 'options_icp', '', 'no'),
(251, '_options_icp', 'field_59351a6f16edb', 'no'),
(252, 'options_tjgj', '', 'no'),
(253, '_options_tjgj', 'field_59351af616edc', 'no'),
(262, '_site_transient_timeout_browser_4bded5c48ffc5ed77e9f9c9a2ae92966', '1504348549', 'no'),
(263, '_site_transient_browser_4bded5c48ffc5ed77e9f9c9a2ae92966', 'a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"60.0.3112.101\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no'),
(274, 'zh_cn_l10n_icp_num', '', 'yes'),
(279, 'options_sliders_0_images', '27', 'no'),
(280, '_options_sliders_0_images', 'field_594095f9a8f51', 'no'),
(281, 'options_sliders_0_title', '', 'no'),
(282, '_options_sliders_0_title', 'field_5940960ca8f52', 'no'),
(283, 'options_sliders_0_url', '', 'no'),
(284, '_options_sliders_0_url', 'field_59409619a8f53', 'no'),
(299, 'category_1_title', '', 'no'),
(300, '_category_1_title', 'field_5934bd20d71d8', 'no'),
(301, 'category_1_keywords', '', 'no'),
(302, '_category_1_keywords', 'field_5934ba7e959a5', 'no'),
(303, 'category_1_description', '', 'no'),
(304, '_category_1_description', 'field_5934bb39959a6', 'no'),
(306, 'category_3_title', '', 'no'),
(307, '_category_3_title', 'field_5934bd20d71d8', 'no'),
(308, 'category_3_keywords', '', 'no'),
(309, '_category_3_keywords', 'field_5934ba7e959a5', 'no'),
(310, 'category_3_description', '', 'no'),
(311, '_category_3_description', 'field_5934bb39959a6', 'no'),
(312, 'category_children', 'a:0:{}', 'yes'),
(366, '_site_transient_timeout_browser_7b54248f31d5ea275e3994eda9dbbe2b', '1504496443', 'no'),
(367, '_site_transient_browser_7b54248f31d5ea275e3994eda9dbbe2b', 'a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"60.0.3112.101\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no'),
(377, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/zh_CN/wordpress-4.8.1.zip\";s:6:\"locale\";s:5:\"zh_CN\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/zh_CN/wordpress-4.8.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.8.1\";s:7:\"version\";s:5:\"4.8.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.8.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.8.1\";s:7:\"version\";s:5:\"4.8.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1503932995;s:15:\"version_checked\";s:5:\"4.8.1\";s:12:\"translations\";a:0:{}}', 'no'),
(378, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1503932998;s:7:\"checked\";a:1:{s:7:\"xsbrand\";s:5:\"1.0.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(379, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1503932997;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":8:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.3.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.3.4.zip\";s:6:\"tested\";s:5:\"4.8.1\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"3.3.3\";s:7:\"updated\";s:19:\"2017-07-13 22:14:48\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/3.3.3/zh_CN.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}}}', 'no'),
(380, '_site_transient_timeout_available_translations', '1503944098', 'no');
INSERT INTO `jrjz_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(381, '_site_transient_available_translations', 'a:108:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-28 12:25:41\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-29 08:49:40\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.5/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-30 18:40:55\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.1/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-09 09:24:45\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-04 16:58:43\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-05 09:44:12\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-08 21:01:45\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 08:46:26\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:12:\"Čeština‎\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 14:28:04\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-27 19:10:04\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-26 06:22:33\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-23 12:13:52\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-23 09:23:18\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.8.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-26 06:24:08\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.8.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 10:51:51\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-25 10:03:08\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-25 19:47:01\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-01-26 15:53:43\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.5/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-25 17:31:04\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-02 03:57:05\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-26 10:38:53\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-30 16:09:17\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/es_VE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-13 17:00:30\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/es_CO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-01-26 15:54:37\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.5/es_GT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-28 20:09:49\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-01 04:48:11\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/es_AR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-31 15:12:02\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/es_MX.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-27 12:42:17\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/es_ES.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"es\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 16:37:11\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-28 12:06:36\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"4.8\";s:7:\"updated\";s:19:\"2017-06-09 15:50:45\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 11:00:29\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 09:14:18\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-26 13:33:05\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 12:37:07\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-26 12:45:35\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-07 20:55:07\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-18 00:52:02\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 10:29:26\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-22 17:25:42\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:39\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 12:45:08\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.5/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-04 08:42:00\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-03 23:23:50\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:3:\"4.8\";s:7:\"updated\";s:19:\"2017-06-12 09:20:11\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-22 15:33:00\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.1/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 10:48:16\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 11:02:15\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.5/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.5/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:3:\"4.8\";s:7:\"updated\";s:19:\"2017-07-05 19:40:47\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.8/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-03-05 09:45:10\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.5/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.18\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.18/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-02 21:02:39\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-31 08:47:10\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-27 16:44:39\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-17 08:10:48\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-02-16 13:24:21\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.7.5/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-01 07:32:10\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.1/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-04 20:03:38\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.18\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.18/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-26 21:35:20\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-14 14:20:07\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 10:26:15\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-24 22:01:11\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-09 13:26:18\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 14:03:23\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-04-24 08:35:30\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.5/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 12:07:44\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-03 22:53:12\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:43\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-31 11:38:12\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-05 09:23:39\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:9:\"Uyƣurqə\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-10 15:50:30\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 14:27:29\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-05-13 09:55:38\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.5/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-19 01:07:53\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-03 15:43:25\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-04 07:53:05\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-14 16:47:28\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(382, '_site_transient_timeout_theme_roots', '1503937127', 'no'),
(383, '_site_transient_theme_roots', 'a:1:{s:7:\"xsbrand\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- 表的结构 `jrjz_postmeta`
--

CREATE TABLE `jrjz_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `jrjz_postmeta`
--

INSERT INTO `jrjz_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(7, 4, '_wp_trash_meta_status', 'publish'),
(8, 4, '_wp_trash_meta_time', '1503407206'),
(9, 7, '_wp_trash_meta_status', 'publish'),
(10, 7, '_wp_trash_meta_time', '1503453546'),
(11, 8, '_wp_trash_meta_status', 'publish'),
(12, 8, '_wp_trash_meta_time', '1503453556'),
(13, 9, '_wp_trash_meta_status', 'publish'),
(14, 9, '_wp_trash_meta_time', '1503453598'),
(15, 11, '_menu_item_type', 'custom'),
(16, 11, '_menu_item_menu_item_parent', '0'),
(17, 11, '_menu_item_object_id', '11'),
(18, 11, '_menu_item_object', 'custom'),
(19, 11, '_menu_item_target', ''),
(20, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(21, 11, '_menu_item_xfn', ''),
(22, 11, '_menu_item_url', 'http://localhost'),
(31, 13, '_menu_item_type', 'custom'),
(32, 13, '_menu_item_menu_item_parent', '0'),
(33, 13, '_menu_item_object_id', '13'),
(34, 13, '_menu_item_object', 'custom'),
(35, 13, '_menu_item_target', ''),
(36, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 13, '_menu_item_xfn', ''),
(38, 13, '_menu_item_url', 'http://localhost'),
(39, 14, '_menu_item_type', 'custom'),
(40, 14, '_menu_item_menu_item_parent', '0'),
(41, 14, '_menu_item_object_id', '14'),
(42, 14, '_menu_item_object', 'custom'),
(43, 14, '_menu_item_target', ''),
(44, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 14, '_menu_item_xfn', ''),
(46, 14, '_menu_item_url', 'http://localhost'),
(47, 10, '_wp_trash_meta_status', 'publish'),
(48, 10, '_wp_trash_meta_time', '1503453625'),
(49, 16, '_customize_draft_post_name', 'aaaaaaa'),
(50, 18, '_edit_last', '1'),
(51, 18, '_edit_lock', '1503753127:1'),
(53, 18, 'title', ''),
(54, 18, '_title', 'field_5934bd20d71d8'),
(55, 18, 'keywords', ''),
(56, 18, '_keywords', 'field_5934ba7e959a5'),
(57, 18, 'description', ''),
(58, 18, '_description', 'field_5934bb39959a6'),
(70, 25, '_menu_item_type', 'post_type'),
(71, 25, '_menu_item_menu_item_parent', '0'),
(72, 25, '_menu_item_object_id', '22'),
(73, 25, '_menu_item_object', 'page'),
(74, 25, '_menu_item_target', ''),
(75, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 25, '_menu_item_xfn', ''),
(77, 25, '_menu_item_url', ''),
(78, 23, '_wp_trash_meta_status', 'publish'),
(79, 23, '_wp_trash_meta_time', '1503744972'),
(80, 26, '_wp_trash_meta_status', 'publish'),
(81, 26, '_wp_trash_meta_time', '1503745009'),
(82, 27, '_wp_attached_file', '2017/08/500467152.jpg'),
(83, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:7243;s:6:\"height\";i:2285;s:4:\"file\";s:21:\"2017/08/500467152.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"500467152-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"500467152-300x95.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"500467152-768x242.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:242;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"500467152-1024x323.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(84, 28, '_wp_attached_file', '2017/08/a8fd1d699c34814a68a072f73449b52b.jpg'),
(85, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:900;s:4:\"file\";s:44:\"2017/08/a8fd1d699c34814a68a072f73449b52b.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"a8fd1d699c34814a68a072f73449b52b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"a8fd1d699c34814a68a072f73449b52b-300x141.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"a8fd1d699c34814a68a072f73449b52b-768x360.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"a8fd1d699c34814a68a072f73449b52b-1024x480.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 1, '_edit_lock', '1503753175:1'),
(89, 1, '_edit_last', '1'),
(92, 1, 'title', ''),
(93, 1, '_title', 'field_5934bd20d71d8'),
(94, 1, 'keywords', ''),
(95, 1, '_keywords', 'field_5934ba7e959a5'),
(96, 1, 'description', ''),
(97, 1, '_description', 'field_5934bb39959a6'),
(98, 29, '_edit_last', '1'),
(101, 29, 'title', ''),
(102, 29, '_title', 'field_5934bd20d71d8'),
(103, 29, 'keywords', ''),
(104, 29, '_keywords', 'field_5934ba7e959a5'),
(105, 29, 'description', ''),
(106, 29, '_description', 'field_5934bb39959a6'),
(107, 29, '_edit_lock', '1503753285:1'),
(108, 30, '_edit_last', '1'),
(111, 30, 'title', ''),
(112, 30, '_title', 'field_5934bd20d71d8'),
(113, 30, 'keywords', ''),
(114, 30, '_keywords', 'field_5934ba7e959a5'),
(115, 30, 'description', ''),
(116, 30, '_description', 'field_5934bb39959a6'),
(117, 30, '_edit_lock', '1503753433:1'),
(118, 31, '_edit_last', '1'),
(121, 31, 'title', ''),
(122, 31, '_title', 'field_5934bd20d71d8'),
(123, 31, 'keywords', ''),
(124, 31, '_keywords', 'field_5934ba7e959a5'),
(125, 31, 'description', ''),
(126, 31, '_description', 'field_5934bb39959a6'),
(127, 31, '_edit_lock', '1503753509:1'),
(128, 32, '_edit_last', '1'),
(131, 32, 'title', ''),
(132, 32, '_title', 'field_5934bd20d71d8'),
(133, 32, 'keywords', ''),
(134, 32, '_keywords', 'field_5934ba7e959a5'),
(135, 32, 'description', ''),
(136, 32, '_description', 'field_5934bb39959a6'),
(137, 32, '_edit_lock', '1503753547:1'),
(138, 33, '_edit_last', '1'),
(139, 33, '_edit_lock', '1503754415:1'),
(140, 34, '_wp_attached_file', '2017/08/psb.jpeg'),
(141, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:853;s:6:\"height\";i:640;s:4:\"file\";s:16:\"2017/08/psb.jpeg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"psb-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"psb-300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"psb-768x576.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 33, '_thumbnail_id', '34'),
(145, 33, 'title', ''),
(146, 33, '_title', 'field_5934bd20d71d8'),
(147, 33, 'keywords', ''),
(148, 33, '_keywords', 'field_5934ba7e959a5'),
(149, 33, 'description', ''),
(150, 33, '_description', 'field_5934bb39959a6'),
(153, 33, '_wp_old_slug', '%e6%b9%96%e5%8d%97%e9%82%b5%e9%98%b3%e6%9f%90%e4%bd%8f%e5%ae%85%e8%ae%be%e8%ae%a1'),
(154, 35, '_edit_last', '1'),
(155, 35, '_edit_lock', '1503754526:1'),
(156, 36, '_wp_attached_file', '2017/08/psb-1.jpeg'),
(157, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:853;s:6:\"height\";i:640;s:4:\"file\";s:18:\"2017/08/psb-1.jpeg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"psb-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"psb-1-300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"psb-1-768x576.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 35, '_thumbnail_id', '36'),
(161, 35, 'title', ''),
(162, 35, '_title', 'field_5934bd20d71d8'),
(163, 35, 'keywords', ''),
(164, 35, '_keywords', 'field_5934ba7e959a5'),
(165, 35, 'description', ''),
(166, 35, '_description', 'field_5934bb39959a6'),
(169, 38, '_wp_attached_file', '2017/08/psb-2.jpeg'),
(170, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:150;s:4:\"file\";s:18:\"2017/08/psb-2.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"psb-2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(171, 37, '_edit_last', '1'),
(174, 37, 'title', ''),
(175, 37, '_title', 'field_5934bd20d71d8'),
(176, 37, 'keywords', ''),
(177, 37, '_keywords', 'field_5934ba7e959a5'),
(178, 37, 'description', ''),
(179, 37, '_description', 'field_5934bb39959a6'),
(180, 37, '_edit_lock', '1503757070:1'),
(181, 37, '_thumbnail_id', '38'),
(184, 37, '_wp_old_slug', '%e5%b9%bf%e4%b8%9c%e6%b9%9b%e6%b1%9f%e6%9f%90%e4%bd%8f%e5%ae%85%e8%ae%be%e8%ae%a1'),
(185, 39, '_wp_trash_meta_status', 'publish'),
(186, 39, '_wp_trash_meta_time', '1503757257'),
(187, 40, '_wp_attached_file', '2017/08/jrjz_qrcode.png'),
(188, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:191;s:6:\"height\";i:191;s:4:\"file\";s:23:\"2017/08/jrjz_qrcode.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"jrjz_qrcode-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(189, 41, '_wp_attached_file', '2017/08/cefc1e178a82b9016af92faf798da9773812efd2.jpg'),
(190, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:480;s:4:\"file\";s:52:\"2017/08/cefc1e178a82b9016af92faf798da9773812efd2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"cefc1e178a82b9016af92faf798da9773812efd2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"cefc1e178a82b9016af92faf798da9773812efd2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(191, 43, '_menu_item_type', 'taxonomy'),
(192, 43, '_menu_item_menu_item_parent', '0'),
(193, 43, '_menu_item_object_id', '3'),
(194, 43, '_menu_item_object', 'category'),
(195, 43, '_menu_item_target', ''),
(196, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(197, 43, '_menu_item_xfn', ''),
(198, 43, '_menu_item_url', ''),
(200, 44, '_edit_last', '1'),
(201, 44, '_edit_lock', '1503765795:1'),
(202, 47, '_edit_last', '1'),
(203, 47, '_edit_lock', '1503765743:1'),
(204, 47, '_wp_trash_meta_status', 'publish'),
(205, 47, '_wp_trash_meta_time', '1503765979'),
(206, 47, '_wp_desired_post_slug', 'group_59a1a4f8e62cc'),
(207, 48, '_wp_trash_meta_status', 'publish'),
(208, 48, '_wp_trash_meta_time', '1503765980'),
(209, 48, '_wp_desired_post_slug', 'field_59a1a51f5afb9'),
(210, 44, '_wp_trash_meta_status', 'publish'),
(211, 44, '_wp_trash_meta_time', '1503765980'),
(212, 44, '_wp_desired_post_slug', 'group_59a1a3a4baa93'),
(213, 45, '_wp_trash_meta_status', 'publish'),
(214, 45, '_wp_trash_meta_time', '1503765980'),
(215, 45, '_wp_desired_post_slug', 'field_59a1a3ec6690e'),
(216, 52, '_wp_attached_file', '2017/08/jrjz_logo-1.png'),
(217, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:157;s:6:\"height\";i:157;s:4:\"file\";s:23:\"2017/08/jrjz_logo-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"jrjz_logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(221, 54, '_wp_attached_file', '2017/08/jiangrenjz.com_2017-08-28_15-38-16.jpg'),
(222, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:157;s:6:\"height\";i:157;s:4:\"file\";s:46:\"2017/08/jiangrenjz.com_2017-08-28_15-38-16.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"jiangrenjz.com_2017-08-28_15-38-16-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1420043205\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(223, 55, '_wp_attached_file', '2017/08/cropped-jiangrenjz.com_2017-08-28_15-38-16.jpg'),
(224, 55, '_wp_attachment_context', 'site-icon'),
(225, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:54:\"2017/08/cropped-jiangrenjz.com_2017-08-28_15-38-16.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:54:\"cropped-jiangrenjz.com_2017-08-28_15-38-16-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:54:\"cropped-jiangrenjz.com_2017-08-28_15-38-16-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:54:\"cropped-jiangrenjz.com_2017-08-28_15-38-16-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:54:\"cropped-jiangrenjz.com_2017-08-28_15-38-16-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:54:\"cropped-jiangrenjz.com_2017-08-28_15-38-16-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:52:\"cropped-jiangrenjz.com_2017-08-28_15-38-16-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(226, 56, '_wp_trash_meta_status', 'publish'),
(227, 56, '_wp_trash_meta_time', '1503934715');

-- --------------------------------------------------------

--
-- 表的结构 `jrjz_posts`
--

CREATE TABLE `jrjz_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `jrjz_posts`
--

INSERT INTO `jrjz_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-08-22 19:50:57', '2017-08-22 11:50:57', '目前中国的别墅私人独立住宅主要分为这样几种情况，一是开发商开发的别墅片区，二是城市近郊尚存的“城中村”，三是在农村独立宅基地上建设起来的农村住宅。城中村和农村住宅由于业主平均文化层次不高，对居住的条件要求也不高，再加上造价极其低廉，基本上都是一些粗制滥造的、没有文化含量的，而且是千篇一律的垃圾建筑。\r\n\r\n而开发商开发的别墅片区显然就漂亮多了，但是对于一个准备购买的人来说，有这样几个问题：\r\n\r\n首先，价格昂贵。在一般的大城市，一栋别墅的价格都会在数百万元以上，在经济比较发达的京、沪、广、深等地更是在千万元以上。而我们知道，一栋别墅土建加装修的造价不会超过50万-80万，加上地价和环境、市政其总造价也就在百余万。发展商的利润是一个天文数字。\r\n\r\n第二，户型的选择余地很少。一般一个别墅片区数十栋楼总共就只有三、五种户型，而且基本上都是互相抄袭或者直接拷贝海外图纸，很难有让业主很满意的户型。相邻的十几户都是一模一样的，毫无个性可言。大部分低水平别墅其文化含量更是一个负值。\r\n\r\n第三，不同户型之间环境景观资源的巨大差异。一般别墅片区的景观资源比如山峦、湖海，都是整个片区的居民共享的资源，但是真正的“近水楼台”往往只占总数的较少部分，其他同样昂贵的别墅只能靠想象来构成窗前被遮挡的风景。\r\n\r\n综上所述，笔者认为中国目前的别墅和私人独立住宅的现状实在有些不堪，并且和经济发展程度不相符合，究其原因，可能有以下两个:\r\n\r\n第一，还是因为土地没有私有化，一般民众很难通过正规渠道买到一块属于自己的永久性土地，但是现在在中国的各个地方都已经普遍地出现了私人买地建房的情况，这是民意的表现。\r\n\r\n第二，建筑师在别墅方面投入的精力很少，无非是因为别墅的设计费太低。传统上<a class=\"relatedlink\" href=\"http://lu-24.com/\" target=\"_blank\" rel=\"noopener\">建筑设计</a>都是按照面积或者造价来收取费用，别墅由于面积和造价都无法和普通住宅甚至公共建筑相提并论，所以很少有建筑师愿意投身其中，而且，别墅的设计难度却远在普通住宅之上。于是造成了现今<a class=\"relatedlink\" href=\"http://www.lu-24.com/\" target=\"_blank\" rel=\"noopener\">别墅设计</a>水平低的尴尬局面。', '中国别墅和私人独立住宅的低水平现状', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-08-26 21:15:00', '2017-08-26 13:15:00', '', 0, 'http://jurenjianzhu.com/?p=1', 0, 'post', '', 0),
(2, 1, '2017-08-22 19:50:57', '2017-08-22 11:50:57', '这是示范页面。页面和博客文章不同，它的位置是固定的，通常会在站点导航栏显示。很多用户都创建一个“关于”页面，向访客介绍自己。例如：\n\n<blockquote>欢迎！我白天是个邮递员，晚上就是个有抱负的演员。这是我的博客。我住在天朝的帝都，有条叫做Jack的狗。</blockquote>\n\n……或这个：\n\n<blockquote>XYZ Doohickey公司成立于1971年，自从建立以来，我们一直向社会贡献着优秀doohickies。我们的公司总部位于天朝魔都，有着超过两千名员工，对魔都政府税收有着巨大贡献。</blockquote>\n\n而您，作为一个WordPress用户，我们建议您访问<a href=\"http://jurenjianzhu.com/wp-admin/\">控制板</a>，删除本页面，然后添加您自己的页面。祝您使用愉快！', '示例页面', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-08-22 19:50:57', '2017-08-22 11:50:57', '', 0, 'http://jurenjianzhu.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-08-22 19:51:19', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-08-22 19:51:19', '0000-00-00 00:00:00', '', 0, 'http://jurenjianzhu.com/?p=3', 0, 'post', '', 0),
(4, 1, '2017-08-22 21:06:46', '2017-08-22 13:06:46', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"site_icon\": {\n        \"value\": 6,\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e2905073-7ea3-4a5f-ab75-2ea3a8ba2913', '', '', '2017-08-22 21:06:46', '2017-08-22 13:06:46', '', 0, 'http://jurenjianzhu.com/?p=4', 0, 'customize_changeset', '', 0),
(7, 1, '2017-08-23 09:59:06', '2017-08-23 01:59:06', '{\n    \"blogdescription\": {\n        \"value\": \"\\u5de8\\u4eba\\u5efa\\u7b51\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c8719634-83fc-405c-bcab-b3ade32575b2', '', '', '2017-08-23 09:59:06', '2017-08-23 01:59:06', '', 0, 'http://jurenjianzhu.com/index.php/2017/08/23/c8719634-83fc-405c-bcab-b3ade32575b2/', 0, 'customize_changeset', '', 0),
(8, 1, '2017-08-23 09:59:16', '2017-08-23 01:59:16', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '934191df-f26f-4952-84de-4a3b81c2c01b', '', '', '2017-08-23 09:59:16', '2017-08-23 01:59:16', '', 0, 'http://jurenjianzhu.com/?p=8', 0, 'customize_changeset', '', 0),
(9, 1, '2017-08-23 09:59:58', '2017-08-23 01:59:58', '{\n    \"xsbrand::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dc8cbc1c-3cb6-4b3b-ab0a-897b40b44f29', '', '', '2017-08-23 09:59:58', '2017-08-23 01:59:58', '', 0, 'http://jurenjianzhu.com/index.php/2017/08/23/dc8cbc1c-3cb6-4b3b-ab0a-897b40b44f29/', 0, 'customize_changeset', '', 0),
(10, 1, '2017-08-23 10:00:25', '2017-08-23 02:00:25', '{\n    \"nav_menu_item[-3477385744920720400]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"\\u9996\\u9875\",\n            \"url\": \"http://jurenjianzhu.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u9996\\u9875\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u81ea\\u5b9a\\u4e49\\u94fe\\u63a5\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-2037140886841092000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"\\u9996\\u9875\",\n            \"url\": \"http://jurenjianzhu.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u9996\\u9875\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u81ea\\u5b9a\\u4e49\\u94fe\\u63a5\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-4610499202422837000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"\\u9996\\u9875\",\n            \"url\": \"http://jurenjianzhu.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u9996\\u9875\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u81ea\\u5b9a\\u4e49\\u94fe\\u63a5\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-4048020201651330000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"\\u9996\\u9875\",\n            \"url\": \"http://jurenjianzhu.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u9996\\u9875\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u81ea\\u5b9a\\u4e49\\u94fe\\u63a5\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '49aa03c3-0cf4-45ae-bf44-aeb89e3482c5', '', '', '2017-08-23 10:00:25', '2017-08-23 02:00:25', '', 0, 'http://jurenjianzhu.com/?p=10', 0, 'customize_changeset', '', 0),
(11, 1, '2017-08-23 10:00:25', '2017-08-23 02:00:25', '', '首页', '', 'publish', 'closed', 'closed', '', '%e9%a6%96%e9%a1%b5', '', '', '2017-08-26 23:49:15', '2017-08-26 15:49:15', '', 0, 'http://jurenjianzhu.com/index.php/2017/08/23/%e9%a6%96%e9%a1%b5/', 1, 'nav_menu_item', '', 0),
(13, 1, '2017-08-23 10:00:25', '2017-08-23 02:00:25', '', '合作流程', '', 'publish', 'closed', 'closed', '', '%e9%a6%96%e9%a1%b5-3', '', '', '2017-08-26 23:49:15', '2017-08-26 15:49:15', '', 0, 'http://jurenjianzhu.com/index.php/2017/08/23/%e9%a6%96%e9%a1%b5-3/', 3, 'nav_menu_item', '', 0),
(14, 1, '2017-08-23 10:00:25', '2017-08-23 02:00:25', '', '设计报价', '', 'publish', 'closed', 'closed', '', '%e9%a6%96%e9%a1%b5-4', '', '', '2017-08-26 23:49:15', '2017-08-26 15:49:15', '', 0, 'http://jurenjianzhu.com/index.php/2017/08/23/%e9%a6%96%e9%a1%b5-4/', 4, 'nav_menu_item', '', 0),
(15, 1, '2017-08-23 10:01:53', '0000-00-00 00:00:00', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"page_on_front\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            16\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '63afb907-c5f1-4450-aaeb-697d79a3e24a', '', '', '2017-08-23 10:01:53', '2017-08-23 02:01:53', '', 0, 'http://jurenjianzhu.com/?p=15', 0, 'customize_changeset', '', 0),
(16, 1, '2017-08-23 10:01:53', '0000-00-00 00:00:00', '', 'aaaaaaa', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-23 10:01:20', '0000-00-00 00:00:00', '', 0, 'http://jurenjianzhu.com/?page_id=16', 0, 'page', '', 0),
(17, 1, '2017-08-24 21:08:55', '0000-00-00 00:00:00', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '5cff9feb-2a49-4fe0-b896-31b45f2753e3', '', '', '2017-08-24 21:08:55', '0000-00-00 00:00:00', '', 0, 'http://jurenjianzhu.com/?p=17', 0, 'customize_changeset', '', 0),
(18, 1, '2017-08-24 21:14:22', '2017-08-24 13:14:22', '现今保有的别墅和私人住宅的设计过程大致有这样几种情况：\r\n\r\n开发商开发的别墅片区全部都是找建筑师设计的，但是这里面良莠不齐，有些是正规设计院做的，有些是炒更者，一般建筑师不太愿意过多地参与到别墅的设计中去，因为设计费用实在很低。专门在这个领域作研究工作的就更少。设计院之所以愿意设计别墅是因为与别墅配套的会所、其他多层、高层住宅，以及整个别墅社区的规划设计有很高的利润，但是具体到别墅本身，设计院也往往是应付了事，最常见的办法就是用三、五种抄袭来的户型一下子复制数十栋别墅。其设计质量可想而知。\r\n\r\n私人住宅也有人请熟悉的建筑师设计，这些明智的业主大多是文化层次比较高或者有海外背景的人士。但是大多数私人住宅还是沿用新中国数十年的老办法，那就是业主自己设计，工匠师傅从旁协助，这样产生出来的建筑难以避免一个毛病，就是“土得掉渣”。而且非专业人士的胡乱操刀，很容易让建筑看上去要么死板要么凌乱，而且95%的情况下是死板。\r\n\r\n所以笔者认为别墅和私人拥有的独立住宅应该有这样一个设计过程：首先寻找一个专业的建筑师，然后把你的详细要求告诉他，比如你家有多少人口，你喜欢哪一种风格的建筑，你需要多少个房间等等，然后带建筑师到现场踏勘，经过建筑师的专业设计之后，再经过反复沟通和调整，产生一个只适合现场地形，也只适合业主一家人的方案。这就是所谓“量身定做”的建筑。这些建筑师都是经过很多年专业训练的，在空间造型、美学修养、材料的使用、结构分析等方面都有研究，绝不是一般业余人士可以随便客串和取代的。', '别墅和私人住宅应该有怎样一个设计过程?', '', 'publish', 'open', 'open', '', 'abc', '', '', '2017-08-26 21:13:53', '2017-08-26 13:13:53', '', 0, 'http://jurenjianzhu.com/?p=18', 0, 'post', '', 0),
(19, 1, '2017-08-24 21:14:58', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-08-24 21:14:58', '0000-00-00 00:00:00', '', 0, 'http://jurenjianzhu.com/?p=19', 0, 'post', '', 0),
(20, 1, '2017-08-24 21:15:43', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-24 21:15:43', '0000-00-00 00:00:00', '', 0, 'http://jurenjianzhu.com/?post_type=acf-field-group&p=20', 0, 'acf-field-group', '', 0),
(21, 1, '2017-08-24 21:15:46', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-24 21:15:46', '0000-00-00 00:00:00', '', 0, 'http://jurenjianzhu.com/?post_type=acf-field-group&p=21', 0, 'acf-field-group', '', 0),
(22, 1, '2017-08-26 18:56:11', '2017-08-26 10:56:11', '', '公司新闻', '', 'publish', 'closed', 'closed', '', '%e5%85%ac%e5%8f%b8%e6%96%b0%e9%97%bb', '', '', '2017-08-26 18:56:11', '2017-08-26 10:56:11', '', 0, 'http://localhost/?page_id=22', 0, 'page', '', 0),
(23, 1, '2017-08-26 18:56:11', '2017-08-26 10:56:11', '{\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            22\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[-8627876533704829000]\": {\n        \"value\": {\n            \"object_id\": 22,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"\\u516c\\u53f8\\u65b0\\u95fb\",\n            \"url\": \"http://localhost/?page_id=22\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u516c\\u53f8\\u65b0\\u95fb\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u9875\\u9762\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2e1fd97d-fef4-403e-8335-d13d05e02d7b', '', '', '2017-08-26 18:56:11', '2017-08-26 10:56:11', '', 0, 'http://localhost/index.php/2017/08/26/2e1fd97d-fef4-403e-8335-d13d05e02d7b/', 0, 'customize_changeset', '', 0),
(25, 1, '2017-08-26 18:56:12', '2017-08-26 10:56:12', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2017-08-26 23:49:15', '2017-08-26 15:49:15', '', 0, 'http://localhost/index.php/2017/08/26/25/', 5, 'nav_menu_item', '', 0),
(26, 1, '2017-08-26 18:56:49', '2017-08-26 10:56:49', '{\n    \"nav_menu_item[24]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4f2b5f8e-059f-4e8f-b8d2-7049b6eb2203', '', '', '2017-08-26 18:56:49', '2017-08-26 10:56:49', '', 0, 'http://localhost/index.php/2017/08/26/4f2b5f8e-059f-4e8f-b8d2-7049b6eb2203/', 0, 'customize_changeset', '', 0),
(27, 1, '2017-08-26 19:07:30', '2017-08-26 11:07:30', '', '500467152', '', 'inherit', 'open', 'closed', '', '500467152', '', '', '2017-08-26 19:07:39', '2017-08-26 11:07:39', '', 0, 'http://localhost/wp-content/uploads/2017/08/500467152.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2017-08-26 19:11:31', '2017-08-26 11:11:31', '', 'a8fd1d699c34814a68a072f73449b52b', '', 'inherit', 'open', 'closed', '', 'a8fd1d699c34814a68a072f73449b52b', '', '', '2017-08-26 19:11:33', '2017-08-26 11:11:33', '', 0, 'http://localhost/wp-content/uploads/2017/08/a8fd1d699c34814a68a072f73449b52b.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2017-08-26 21:15:38', '2017-08-26 13:15:38', '根据建筑材料的不同，可分为框架结构、砖混结构、钢结构、木结构等。以下就针对不同结构形式进行一些简单介绍。\r\n\r\n一、土建部分\r\n\r\n1.框架结构：单方造价一般在600元左右，根据不同的地区经济发展程度会有上下的浮动，广东省一般在650-750元左右。框架结构住宅的优点是抗震性能好，结构牢固，使用寿命长，且住宅内可以自由分隔，大开间住宅均采用此结构。\r\n\r\n2.砖混结构：一般在400元/平方米左右，部分地区由于人工低廉可低至300余元。其优点是造价低廉，施工简单，材料易采购;缺点是房屋结构不可改动，房间小，开窗小，平面、立面设计受结构制约多，设计自由度小，且抗震能力差。1999年之前开发建设的多层住宅一般均采用砖混结构。发展至今，发达地区基本已不再采用此类建筑结构。\r\n\r\n3.钢结构：钢结构的造价约在11000元/吨，如果折算成建筑面积的话，一般会达到1500元每平方米。\r\n\r\n该房屋体系具有以下特点：\r\n\r\n1结构稳定性高，抗震，可抗御8级以上的地震和风速达50米/秒的飓风。在发生强烈地震的时候，只会出现变形但不会有崩塌、断裂的情况出现，对人员伤害小，有利于逃生。\r\n\r\n2工业规模化生产，构件尺寸精度高。\r\n\r\n3建造快捷。\r\n\r\n4室内空间分隔灵活，使用率高： 轻钢结构房屋跨度可达6～15米，为住户提供了更大的空间分割自由;且比传统建筑增加7%-10%左右的使用面积。5节能、环保，具有良好的保温、隔热、隔音性能。\r\n\r\n名词解释：\r\n\r\n1框架结构：即由钢筋混凝土浇捣成承重梁柱，组成骨架，再用空心砖或预制的加气混凝土砌块做成隔墙，分户 装配而成的住宅。墙主要是起围护和隔离的作用，由于墙体不承重，可以用各种轻质材料制成。梁、板、柱等承重构件，可以预制，也可以浇注，我市当前采用现场浇注。\r\n\r\n2砖混结构：是指房屋主要承重结构为砖砌墙体。楼板、过梁、楼梯、阳台、挑檐等构件由钢筋混凝土浇制(或预制)建造的房屋。“砖”指的是一种尺寸统一的建筑材料;“混”指的是由钢筋、水泥、砂石、水按一定比例配制的钢筋混凝土配件，与砖做的承重墙相结合，称为砖混结构。\r\n\r\n3钢结构：以单元构件组成的钢结构为主体，采用镀锌钢龙骨与结构板材组成密肋板式承重墙体，并采用集成方式，经工业化生产和机械化施工而建成的新型轻钢结构建筑体系房屋。\r\n\r\n4.木结构：木结构的建筑实现了艺术加工与结构造型的统一，包括斗拱、柱子、房梁等在内的建筑构件均体现了力与美的完美结合，舒展朴实，庄重大方，色调简洁明快，木材有很好的耐磨性和可塑性，但木质材料制作的梁柱不易形成巨大的内部空间从而制约着一定的<a class=\"relatedlink\" href=\"http://lu-24.com/\" target=\"_blank\" rel=\"noopener\">建筑设计</a>构思。只是考虑在门和窗，楼梯，拦杆，扶手等地板和拼花地板，护墙板，柜子和台面，装饰线脚，家俱，等选择适合的木结构。而我们在选择木材的时候需注意其木纹紧密、表面结构匀称度、密度、湿度等技术指标。单价约为18元/立方米。\r\n\r\n二、门\r\n\r\n1.实木门：价格在3000元一扇以上，一般市场上的纯实木门非常少。纯实木门如果做工不好，非常容易变形。红松、杉木、柞木等均属于比较低档的木门用材，高档实木有胡桃木、樱桃木、沙比利等\r\n\r\n2.实木复合门：主要是实木做骨架，表面贴高级木皮做的门，造型一般非常美观，价格合理，在1200-3000元一扇左右。主要的优点是不变形，不开裂。\r\n\r\n3.模压门：价格最便宜，约在200元一扇左右，模压门的施工工艺比较简单，看上去没有实木门厚重美观。这类门主要用在阳台、储物间等不经常开启的地方。模压门有一个非常重要的缺点，那就是它有害气体的释放可能造成室内污染。\r\n\r\n4.铁艺门：材质为不锈钢，美观与安全兼备，价位在500-700元/平之间。\r\n\r\n5.其它：车库通常使用的自动卷帘门;室内使用的玻璃工艺门，其价位约900元/平，业主可根据自己的喜欢订制，尽情打造属于自己的领域。\r\n\r\n三、窗：\r\n\r\n窗按材料分为塑钢窗和木窗。需根据整个建筑的整体风格去选择使用何种材质。窗的尺寸大小均可量身定做。\r\n\r\n1.塑钢窗具有轻质、耐腐蚀的优点，价位一般在180-230元之间。\r\n\r\n2.木窗则能体现返朴归真的田园风格，生活变得更从容，但其成本也是偏高，目前的市场价位约为1600-2400元/平米。\r\n\r\n四、地板：\r\n\r\n主要分为实木复合地板和软木地板和瓷砖地板。其材质的价格差异非常大，由几十到 几百元/平不等。业主亦需根据自身的实际情况去考量。\r\n\r\n五、橱柜：\r\n\r\n六、厨柜是整个厨房的骨架，是需要量身定做、设计为先的工程。分为吊柜、地柜、特殊柜形三大类，其功能包括洗涤、料理、烹饪、存贮四种。整个厨房用具包括橱柜、厨电、餐具、燃气灶具、以及其它配件。一般现在都选择同类品牌的整体橱柜，量身定做，适合各种空间，多种风格选择。因其用材有天壤之别，因为价格也从几千元至几万元不等。\r\n\r\n六、空调：\r\n\r\n有壁挂机、柜机以及中央空调三种。根据建筑室内空间的大小选择不同的机种。一般卧室可选用壁挂机即可，厅内选用柜机，如是大空间、多房间形式也可考虑中央空调。重点介绍一下家用中央空调，其最突出特点是产生舒适的居住环境，其次从审美观点和最佳空间利用上考虑，使室内装饰更灵活，更容易实现各种装饰效果，即使您不喜欢原来的装饰，重新装修，原来的中央空调系统稍微改变即可与新的装修和谐一致。因此称家用中央空调为一步到位、永不落后的选择。家用中央空调的局限性是：a布置上：设计和安装要与装修结合才能达到良好的舒适性和装饰效果;b电源负荷要求较大;价格方面，一幢二三百平方米的独体别墅联体别墅或跃层建筑，大约三到五万元左右.\r\n\r\n七、外墙：\r\n\r\n防墙需要防水、防晒、防侵蚀等等，所以它的装饰性能没有内墙那么高，主要强调其功能性以及与建筑的整体风格协调。\r\n\r\n八、内墙：\r\n\r\n内墙主要和涮墙漆及贴瓷砖两种装饰方式。\r\n\r\n九、电梯：\r\n\r\n电梯亦可视为活动的艺术体，并且赋予建筑物有生命的个性，为现代建筑的造型开辟了一条新路。电梯壁可采用双层防碎玻璃，安全而舒适，豪华实用，节省能源。选择小直径绳轮和绳轮的下置结构的电梯，节约建筑空间，使建筑更趋完美。 (参考价位17000元/部左右，参考供方：SEC住宅电梯)\r\n\r\n十、玻璃幕墙：\r\n\r\n钢化玻璃、中空玻璃、夹胶玻璃、热弯玻璃、防弹玻璃、烤漆玻璃、等各种玻璃。1200元/平米\r\n\r\n十一、屋顶部分\r\n\r\n吊顶\r\n\r\n屋瓦\r\n\r\n装饰物件\r\n\r\n功能物件\r\n\r\n建筑艺术是通过建筑群体组织、建筑物的形体、平面布置、立体形式、结构造型、内外空间组合、装修和装饰、色彩、质感等方面的审美处理所形成的一种综合性实用造型艺术。', '别墅私宅自建房造价调查', '', 'publish', 'open', 'open', '', '%e5%88%ab%e5%a2%85%e7%a7%81%e5%ae%85%e8%87%aa%e5%bb%ba%e6%88%bf%e9%80%a0%e4%bb%b7%e8%b0%83%e6%9f%a5', '', '', '2017-08-26 21:15:38', '2017-08-26 13:15:38', '', 0, 'http://localhost/?p=29', 0, 'post', '', 0),
(30, 1, '2017-08-26 21:17:34', '2017-08-26 13:17:34', '前言：\r\n\r\n目前很多业主朋友通过各种各样的途径获得设计图纸，但除了外观可以根据自己的喜好来定之外，基本上没有其它的方法来识别一套图纸的优劣。本工室根据专业知识以及从事农村自建房设计多年的经验，给各位业主朋友总结出判断一个设计好坏的基本要素，希望对大家有帮助。您只需要拿着您的那套图纸，对照以下各要素去核对，便心里有底了。\r\n\r\n朝向：\r\n\r\n客厅、卧室等主要空间朝阳\r\n\r\n采光：\r\n\r\n使用率最高的空间要放到采光最好的地方，比如客厅、厨房、餐厅\r\n\r\n客厅和卧室的采光，宜多方向采光，使室内光线柔和而不致于太强烈\r\n\r\n厨房最好能朝东，接受早上阳光的洗礼，一是有利于干燥消毒，二是避免家庭主妇准备午、晚餐时有西晒(特别是在夏季很长的南方要注意)\r\n\r\n洗手间最好能朝西，接受强烈的阳光杀菌，保持干燥，晚上再用的时候就非常舒适\r\n\r\n通风：\r\n\r\n尽量做到南北向有进风及出风口\r\n\r\n客厅、卧室需要有两个方向的开窗\r\n\r\n<center><img src=\"http://www.lu-24.com/data/attachment/forum/201302/21/194914iwwswwwf8fntr8wr.png\" alt=\"wps_clip_image13363_thumb.png\" width=\"300\" height=\"212\" /></center><center></center>交通：\r\n\r\n楼梯口最好位于建筑的中心部位，避免长长的过道\r\n\r\n厨房、餐厅、客厅最好能在同一区域，可互借空间，减少浪费\r\n\r\n客厅和餐厅最好为尽端空间，不宜成为过道\r\n\r\n<center><img src=\"http://www.lu-24.com/data/attachment/forum/201302/21/194916s36whtya9aah1aye.png\" alt=\"wps_clip_image13432_thumb.png\" width=\"200\" height=\"305\" /></center><center></center>布局：\r\n\r\n宜有正式的门厅入口，增加空间的转折\r\n\r\n<center><img src=\"http://www.lu-24.com/data/attachment/forum/201302/21/194916wg9wbsgq29xe7ieq.png\" alt=\"wps_clip_image13494_thumb.png\" width=\"200\" height=\"291\" /></center><center></center>厨房宜与餐厅直接相连，忌转折\r\n\r\n洗手间宜与卧室相近，方便使用\r\n\r\n洗手间开门不宜对着公共区，如客厅、餐厅、厨房、门厅等\r\n\r\n老人房宜安排在一层\r\n\r\n老人房宜安排在较安静的一端\r\n\r\n宜每层有一套较大的主卧室套房\r\n\r\n除主卧室以外的其它卧室宜设计较均等的条件\r\n\r\n有独立的后勤区(择菜、晾晒等)\r\n\r\n<center><img src=\"http://lu-24.com/data/attachment/forum/201302/21/194918zgrcc91rzw1ps91e.png\" alt=\"\" width=\"400\" height=\"359\" /></center><center></center>外观：\r\n\r\n平面宜凹凸\r\n\r\n<center><img src=\"http://www.lu-24.com/data/attachment/forum/201302/21/194920vjhjj5kbkf9kh859.png\" alt=\"wps_clip_image13680_thumb.png\" width=\"400\" height=\"309\" /></center><center></center>立面宜错落\r\n\r\n<center><img src=\"http://www.lu-24.com/data/attachment/forum/201302/21/194925r57q5kibhwmqmhm9.png\" alt=\"wps_clip_image13746_thumb.png\" width=\"400\" height=\"291\" /></center><center></center>尺度：\r\n\r\n会客厅面宽4-6米之间，若需要摆放电视，最好不超过5米\r\n\r\n家庭厅3-4米之间为宜\r\n\r\n卧室3.5米为宜\r\n\r\n楼梯间2.6-3米\r\n\r\n厨房餐厅3-4米\r\n\r\n洗手间1.5-3米\r\n\r\n书房3-4米\r\n\r\n悬挑一般不超过2米\r\n\r\n结构：\r\n\r\n柱网方正\r\n\r\n空间上下对齐\r\n\r\n柱跨度适中，保持在3-6米之间\r\n\r\n节能：\r\n\r\n有屋顶隔热\r\n\r\n防止西晒\r\n\r\n开窗大小的控制适度，背阴面开窗不宜过大\r\n\r\n墙体厚度的确定，北方地区宜24-37墙厚，南方地区宜18-24墙厚\r\n\r\n层高的控制，各层层高不宜过高，一般一层3.5米，二层以上3米，在空间窄小的情况下尤其不能让层高太高\r\n\r\n沟通：\r\n\r\n是否有根据您的人口居住结构来建议布局及房间数量\r\n\r\n是否有前瞻性地考虑将来的居住需求\r\n\r\n是否有根据您的造价预算进行成本控制\r\n\r\n是否有根据您的阅历、地位、背景进行建筑气质分析\r\n\r\n是否有尊重当地的习俗风水及建筑形态\r\n\r\n总结：设计的优化是个无止境的过程，我们在不断地研究空间的每一个细部，甚至家具的舒适尺寸，尽量在设计过程中做到感同身受。只有这样的用心，才能真正赋予建筑生命力，才能让您的宅院有足可传世的灵魂。\r\n\r\n<center><img src=\"http://www.lu-24.com/data/attachment/forum/201302/21/194914gtjk6ff4lz96pfpj.jpg\" alt=\"DSC_3003.jpg\" width=\"350\" height=\"233\" /></center><center><img src=\"http://www.lu-24.com/data/attachment/forum/201302/21/194913s2p44bbyg4rtcckk.jpg\" alt=\"3331.jpg\" width=\"350\" height=\"232\" /></center>', '如何判断一套别墅设计图纸的好坏', '', 'publish', 'open', 'open', '', '%e5%a6%82%e4%bd%95%e5%88%a4%e6%96%ad%e4%b8%80%e5%a5%97%e5%88%ab%e5%a2%85%e8%ae%be%e8%ae%a1%e5%9b%be%e7%ba%b8%e7%9a%84%e5%a5%bd%e5%9d%8f', '', '', '2017-08-26 21:17:34', '2017-08-26 13:17:34', '', 0, 'http://localhost/?p=30', 0, 'post', '', 0),
(31, 1, '2017-08-26 21:20:14', '2017-08-26 13:20:14', '1.屋顶架空隔热：\r\n\r\n屋顶架空隔热在80年代以前被广泛采用，后来因为预制隔热板质量低劣，寿命极短，维护困难，最终被淘汰。但是其原理是很先进的，即在屋顶上方再加设一层轻质楼板，遮挡阳光辐射的热量，自然风穿过两层楼板之间的空隙，带走热量，使得顶层房间在夏季不会因暴晒而酷热。\r\n\r\n90年代至今广泛采用的屋顶保温隔热层的做法有明显的弊端，即隔热层只能延缓热量的穿透，而无法阻断，白天屋顶被晒烫，热量不会立即穿过屋面板，但会蓄积在厚厚的保温层和找坡层里面，到了晚上持续地、缓慢地向室内传递热量，甚至直到凌晨。\r\n\r\n<center><img src=\"http://www.lu-24.com/data/attachment/forum/201307/26/111751jbgoem5ne9tbftet.jpg\" alt=\"QQ截图20130726111356.jpg\" width=\"315\" height=\"182\" /></center><center></center><center><img src=\"http://www.lu-24.com/data/attachment/forum/201307/26/111751zuuodkgiofowfugi.jpg\" alt=\"QQ截图20130726111342.jpg\" width=\"311\" height=\"235\" /></center><center></center>因此架空隔热在概念上是先进的，但是需要改进隔热楼板的构造和质量，现在，国家工业基础已经今非昔比，制造合格的隔热楼板变得很容易。\r\n\r\n通过我们在实践中的总结，构造上的改进主要包括以下几点：\r\n\r\n第一，架空层高度从原来的200左右，提高到400。\r\n\r\n第二，被女儿墙遮挡进风口的问题，由外墙直接开设通风孔来解决。\r\n\r\n第三，找坡层由结构找坡替代，瓷砖面层由可承重的太阳能板替代。\r\n\r\n第四，保温层不能取消。(因为要兼顾冬季的防寒)\r\n\r\n2.墙体隔热：\r\n\r\n墙体隔热现在一般采用外贴保温板的做法，施工难度和造价都不低，效果却不理想，还有导致火灾的隐患(比如上海胶州路2010年大火)。另一种外墙保温就是传统的厚墙或者双墙做法，两层墙体之间加保温材料。\r\n\r\n在工业化预制的要求下，砖被混凝土预制墙板取代，墙板本身能够做夹心的保温层，其厚度很薄，一般90左右，保温指标也足够，但是我们认为，从建筑物理的角度分析，预制墙板只考虑了热量的传导，没有考虑热量的蓄积问题，也就是“热容量”的问题。\r\n\r\n<center><img src=\"http://www.lu-24.com/data/attachment/forum/201307/26/112919g8p8q2ll2kkf855p.jpg\" alt=\"QQ截图20130726112745.jpg\" width=\"293\" height=\"229\" /></center><center></center><center><img src=\"http://www.lu-24.com/data/attachment/forum/201307/26/112900hmc3hh5cb3qzhght.jpg\" alt=\"QQ截图20130726112759.jpg\" width=\"314\" height=\"217\" /></center><center></center>以前的老房子，采用土砖，墙厚都非常厚，其热容性能很好，所以可以达到冬暖夏凉的效果。\r\n\r\n活动板房的墙体很薄，里面有保温层，开上空调热量被隔绝，似乎效率很高，但如果不开空调，房间温度不能低于室外，因为薄薄的墙体热容量低，不具有保持热量的能力。砖石或者泥土砌筑的老房子，却可以实现室内温度明显低于室外，感觉很凉快。所以墙体越厚，其热容量越大，温度就越难改变。\r\n\r\n因此，热容量是不可忽视的保温因素，而墙体厚度的增加是增加热容量的最有效措施。\r\n\r\n另外，从感官上讲，中国人一向认为房子是厚重的，我们已经采用了轻巧的钢结构，如果再采用轻巧的墙体材料，可能很难被市场接受。活动板房造价再低也无法用于民居。\r\n\r\n我们的建议是：外墙采用双层构造，外侧采用有夹心保温板的预制混凝土墙板，厚度150，内侧采用可以走电线的90厚空心墙板，总厚度240，基本达到传统建筑的墙体厚度，在保温和蓄热两方面都有兼顾。\r\n\r\n<center><img src=\"http://www.lu-24.com/data/attachment/forum/201307/26/112340ss3sw7e67swg437b.jpg\" alt=\"QQ截图20130726112232.jpg\" width=\"368\" height=\"432\" /></center><center></center>3.悬挑屋檐\r\n\r\n中国大部分传统建筑都有巨大的悬挑屋檐，这不仅是形式上的需要，还有防晒、防雨、保护外墙的作用。夏季的时候，最热的时段是下午2点左右，太阳高度角很高，接近90度，只需要悬挑一点屋檐，就可轻易避免大部分阳光直接照射在外墙和窗户上，根据我们的软件计算，宁波地区在最热的7、8两月，朝南的房间，屋檐悬挑只需要达到1米，即可避免阳光直射外墙和窗户。\r\n\r\n4.窗户节能措施：\r\n\r\n1)主要开窗朝南\r\n\r\n2)减小开窗面积\r\n\r\n3)三层中空玻璃\r\n\r\n4)塑钢窗框\r\n\r\n这些农村自建房中可以使用的隔热保温措施都非常简单，而且在我们的设计过程中也一直应用着，我们会不断地理出新的实用的措施供自建房业主参考。\r\n\r\n<center><img src=\"http://lu-24.com/data/attachment/portal/201309/06/105918ce4gnzypcdagp1c4.jpg\" alt=\"\" width=\"340\" height=\"340\" /></center>', '农村自建房中可以使用的一些隔热保温措施', '', 'publish', 'open', 'open', '', '%e5%86%9c%e6%9d%91%e8%87%aa%e5%bb%ba%e6%88%bf%e4%b8%ad%e5%8f%af%e4%bb%a5%e4%bd%bf%e7%94%a8%e7%9a%84%e4%b8%80%e4%ba%9b%e9%9a%94%e7%83%ad%e4%bf%9d%e6%b8%a9%e6%8e%aa%e6%96%bd', '', '', '2017-08-26 21:20:14', '2017-08-26 13:20:14', '', 0, 'http://localhost/?p=31', 0, 'post', '', 0),
(32, 1, '2017-08-26 21:21:15', '2017-08-26 13:21:15', '<table class=\"vwtb\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td id=\"article_content\">从事<a class=\"relatedlink\" href=\"http://www.lu-24.com/\" target=\"_blank\" rel=\"noopener\">别墅设计</a>这么多年以来，风水学的讨论从来没有停止过。\r\n\r\n研究风水的人和书籍在市场上大量存在，他们各抒己见，也各执一词。我没有真正研究过风水，也没有资格参与这些争论，但是作为建筑师，我接触了大量的跟风水有关的民间需求，所以我是有观察的，也是有观点的。\r\n\r\n一直以来，我都是怀着敬畏的心情在处理别墅设计中有关于风水的事情，虽然我自己并不笃信风水，但我毕竟是服务者，要有服务者的心态才行。我充分地尊重客户的风水需求，尊重风水先生的结论，并切实地在设计中贯彻执行。\r\n\r\n只是敬畏的背后，我一直有疑虑。\r\n\r\n90年代，我在西安上大学的时候，众多混日子的老师中间有一个比较罕见的、有见解的老师，名叫汪海峰，他在建筑历史课上给我们讲了一些关于建筑风水的课程，让我印象深刻。比如什么是“汭位”，什么是理想的建筑选址等等。\r\n\r\n通过这些课程，我第一次建立起关于风水的基本概念，以至于后来自己创办公司的时候，我竟根据自己仅有的一点风水知识，设计了公司的logo。\r\n\r\n<center><img src=\"http://www.lu-24.com/data/attachment/forum/201307/23/113611kumu5tlau3a37gtn.jpg\" alt=\"a7c6a7e54e2102897ae8b&amp;690.jpg\" width=\"609\" height=\"364\" /></center><center></center><center><img src=\"http://www.lu-24.com/data/attachment/forum/201307/23/112851opzld7wejwelvvdw.png\" alt=\"a7c6a7e54e21028c590d7&amp;690.png\" width=\"200\" height=\"115\" /></center><center><img src=\"http://www.lu-24.com/data/attachment/forum/201307/23/112851pmo8bmoorp353o3o.jpg\" alt=\"a7c6a7e54e21028b5bb9e&amp;690.jpg\" width=\"200\" height=\"115\" /></center><center><img src=\"http://www.lu-24.com/data/attachment/forum/201307/23/112851egj2sqbpyppysejp.jpg\" alt=\"a7c6a7e54e21028c5b423&amp;690.jpg\" width=\"195\" height=\"101\" /></center><center></center>我这些风水知识都只是皮毛。\r\n\r\n好的风水师比我就专业多了，他们有丰富的知识、阅历，更有灵活应对不同业主和不同地形的智慧。一般来说，风水的要求会定下建筑的朝向、厨房的方位以及卫生间的忌讳等等这些重要的事项，建筑师在进行别墅设计中一般不会违背这些基本的原则。\r\n\r\n下图为甘肃某项目的风水师在现场确定建筑的朝向，老人家蹲在地上，手扶地面，透过老花镜仔细地观看细线和罗盘之间的夹角，持续观察了近一个小时。他是很慎重的。最后，他对业主说：无论你建什么样的房子，都不要破坏周围的环境，被人骂的话，你自己也不会舒服。\r\n\r\n<center><img src=\"http://www.lu-24.com/data/attachment/forum/201307/23/113342y9w9gz4ww77hohua.jpg\" alt=\"a7c6a7e54e21028e536b2&amp;690.jpg\" width=\"450\" height=\"502\" /></center><center></center>我相信这位风水师不仅对风水有研究，同时对环境、对人生，都有不少朴素、实用的理解。\r\n\r\n在广东，风水更是风靡民间，几乎所有的别墅设计项目都经过风水师的勘查，在多年的别墅设计服务中，我也听说了很多对于风水的不同理解，有坚信不疑的，有盲目从众的，有附庸风雅的。于是，我逐渐对风水在建筑中的应用产生了疑虑，因为我见到的大部分案例，风水都扮演着一种类似宗教信仰的角色。\r\n\r\n一般人没有能力去分辨传统文化中的精华和糟粕，我也不能，但是出于对风水的敬畏，很长一段时间里，我都处于一种冷漠的状态。在别墅设计中既不推崇风水的应用，也不反对，直到有一天，我听到这样一个理论：好的风水和人在现场的细微感觉是一致的。\r\n\r\n哦，原来风水、感觉和理性还可以并存。\r\n\r\n风水的理论玄妙莫测，风水师的水平良莠不齐，有时候真的很难判断风水师的结论是不是值得信赖，尤其是当风水师的结论和现场的情况发生很大矛盾的时候。\r\n\r\n甘肃那个项目就是这样，风水师最初的结论是从场地的东南面进入大门，当客户把这个要求告诉我的时候，我第一反应就是不合适。因为南面是高山，北面是开阔的平原并且有河流经过，东南面虽然有方便的道路，但实际是场地的背面。然后我盯着测绘图看，十几秒钟以后，我提出应该改变大门的方向，从北面进入。业主是一个有智慧的企业家，他一下子就感觉到我的提议是有价值的。\r\n\r\n<center><img src=\"http://www.lu-24.com/data/attachment/forum/201307/23/113542gs9df66f7rs669wd.jpg\" alt=\"a7c6a7e54e21028f2cbe5&amp;690.jpg\" width=\"635\" height=\"510\" /></center><center></center><center><img src=\"http://www.lu-24.com/data/attachment/forum/201307/23/113705cd1j76wjhj8dfuj6.jpg\" alt=\"a7c6a7e5gx6BfAnhlbuc4&amp;690.jpg\" width=\"750\" height=\"417\" /></center><center></center>然后经过好多天，好多人飞赴现场，好多的讨论，包括把那位德高望重的风水师再次请到现场，反复勘测，最后还是决定把大门的方向改到北面。\r\n\r\n在大西北广袤的高原上，盛夏时节的气温只有20度左右，业主站在场地中央对我说，鲁工，我告诉你，好的风水和现场的细微感觉是一致的，我没有说话。凉风吹过山谷，我想，当时我正在打开所有的感官，接收周围的气场能够带给我的各种触动。\r\n\r\n<center><img src=\"http://lu-24.com/data/attachment/portal/201309/06/110207ll31pu5yyuu5ui6r.jpg\" alt=\"\" width=\"340\" height=\"340\" /></center></td>\r\n</tr>\r\n</tbody>\r\n</table>', '在别墅设计中对于风水学的思考', '', 'publish', 'open', 'open', '', '%e5%9c%a8%e5%88%ab%e5%a2%85%e8%ae%be%e8%ae%a1%e4%b8%ad%e5%af%b9%e4%ba%8e%e9%a3%8e%e6%b0%b4%e5%ad%a6%e7%9a%84%e6%80%9d%e8%80%83', '', '', '2017-08-26 21:21:15', '2017-08-26 13:21:15', '', 0, 'http://localhost/?p=32', 0, 'post', '', 0),
(33, 1, '2017-08-26 21:23:55', '2017-08-26 13:23:55', '<img class=\"alignnone size-medium wp-image-34\" src=\"http://localhost/wp-content/uploads/2017/08/psb-300x225.jpeg\" alt=\"\" width=\"300\" height=\"225\" />', '湖南邵阳某住宅设计', '', 'publish', 'open', 'open', '', '2125', '', '', '2017-08-26 21:25:23', '2017-08-26 13:25:23', '', 0, 'http://localhost/?p=33', 0, 'post', '', 0),
(34, 1, '2017-08-26 21:23:38', '2017-08-26 13:23:38', '', 'psb', '', 'inherit', 'open', 'closed', '', 'psb', '', '', '2017-08-26 21:23:38', '2017-08-26 13:23:38', '', 33, 'http://localhost/wp-content/uploads/2017/08/psb.jpeg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2017-08-26 21:37:00', '2017-08-26 13:37:00', '<img class=\"alignnone size-medium wp-image-36\" src=\"http://localhost/wp-content/uploads/2017/08/psb-1-300x225.jpeg\" alt=\"\" width=\"300\" height=\"225\" />', '河源某住宅设计', '', 'publish', 'open', 'open', '', '2136', '', '', '2017-08-26 21:37:09', '2017-08-26 13:37:09', '', 0, 'http://localhost/?p=35', 0, 'post', '', 0),
(36, 1, '2017-08-26 21:36:35', '2017-08-26 13:36:35', '', 'psb (1)', '', 'inherit', 'open', 'closed', '', 'psb-1', '', '', '2017-08-26 21:36:35', '2017-08-26 13:36:35', '', 35, 'http://localhost/wp-content/uploads/2017/08/psb-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2017-08-26 21:38:19', '2017-08-26 13:38:19', '<img class=\"alignnone size-full wp-image-38\" src=\"http://localhost/wp-content/uploads/2017/08/psb-2.jpeg\" alt=\"\" width=\"200\" height=\"150\" />', '广东湛江某住宅设计', '', 'publish', 'open', 'open', '', '213812', '', '', '2017-08-26 21:38:35', '2017-08-26 13:38:35', '', 0, 'http://localhost/?p=37', 0, 'post', '', 0),
(38, 1, '2017-08-26 21:38:12', '2017-08-26 13:38:12', '', 'psb (2)', '', 'inherit', 'open', 'closed', '', 'psb-2', '', '', '2017-08-26 21:38:12', '2017-08-26 13:38:12', '', 37, 'http://localhost/wp-content/uploads/2017/08/psb-2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2017-08-26 22:20:57', '2017-08-26 14:20:57', '{\n    \"blogdescription\": {\n        \"value\": \"\\u6211\\u4eec\\u53ea\\u505a\\u8bbe\\u8ba1\\uff0c\\u4e0d\\u5356\\u56fe\\u7eb8\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '52954f05-aaa2-4cf7-97fd-ef746b45d782', '', '', '2017-08-26 22:20:57', '2017-08-26 14:20:57', '', 0, 'http://localhost/?p=39', 0, 'customize_changeset', '', 0),
(40, 1, '2017-08-26 22:23:27', '2017-08-26 14:23:27', '', 'jrjz_qrcode', '', 'inherit', 'open', 'closed', '', 'jrjz_qrcode', '', '', '2017-08-26 22:23:34', '2017-08-26 14:23:34', '', 0, 'http://localhost/wp-content/uploads/2017/08/jrjz_qrcode.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2017-08-26 23:30:15', '2017-08-26 15:30:15', '', 'cefc1e178a82b9016af92faf798da9773812efd2', '', 'inherit', 'open', 'closed', '', 'cefc1e178a82b9016af92faf798da9773812efd2', '', '', '2017-08-26 23:30:15', '2017-08-26 15:30:15', '', 0, 'http://localhost/wp-content/uploads/2017/08/cefc1e178a82b9016af92faf798da9773812efd2.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2017-08-26 23:47:12', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-08-26 23:47:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=42', 0, 'post', '', 0),
(43, 1, '2017-08-26 23:49:15', '2017-08-26 15:49:15', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2017-08-26 23:49:15', '2017-08-26 15:49:15', '', 0, 'http://localhost/?p=43', 2, 'nav_menu_item', '', 0),
(44, 1, '2017-08-27 00:41:42', '2017-08-26 16:41:42', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '联系我们（侧边栏）', '%e8%81%94%e7%b3%bb%e6%88%91%e4%bb%ac%ef%bc%88%e4%be%a7%e8%be%b9%e6%a0%8f%ef%bc%89', 'trash', 'closed', 'closed', '', 'group_59a1a3a4baa93__trashed', '', '', '2017-08-27 00:46:20', '2017-08-26 16:46:20', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=44', 0, 'acf-field-group', '', 0),
(45, 1, '2017-08-27 00:41:42', '2017-08-26 16:41:42', 'a:9:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;}', '联系我们', 'sidebar_contactus', 'trash', 'closed', 'closed', '', 'field_59a1a3ec6690e__trashed', '', '', '2017-08-27 00:46:20', '2017-08-26 16:46:20', '', 44, 'http://localhost/?post_type=acf-field&#038;p=45', 0, 'acf-field', '', 0),
(47, 1, '2017-08-27 00:44:05', '2017-08-26 16:44:05', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '侧边栏', '%e4%be%a7%e8%be%b9%e6%a0%8f', 'trash', 'closed', 'closed', '', 'group_59a1a4f8e62cc__trashed', '', '', '2017-08-27 00:46:19', '2017-08-26 16:46:19', '', 0, 'http://localhost/?post_type=acf-field-group&#038;p=47', 0, 'acf-field-group', '', 0),
(48, 1, '2017-08-27 00:44:05', '2017-08-26 16:44:05', 'a:9:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;}', '联系我们', 'sidebar_contactus', 'trash', 'closed', 'closed', '', 'field_59a1a51f5afb9__trashed', '', '', '2017-08-27 00:46:20', '2017-08-26 16:46:20', '', 47, 'http://localhost/?post_type=acf-field&#038;p=48', 0, 'acf-field', '', 0),
(49, 1, '2017-08-27 00:45:15', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-27 00:45:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/?post_type=acf-field-group&p=49', 0, 'acf-field-group', '', 0),
(50, 1, '2017-08-27 23:31:07', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-08-27 23:31:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=50', 0, 'post', '', 0),
(51, 1, '2017-08-28 23:29:14', '0000-00-00 00:00:00', '{\n    \"site_icon\": {\n        \"value\": 6,\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '16c5b74b-088e-483a-acd7-816dd8e78954', '', '', '2017-08-28 23:29:14', '2017-08-28 15:29:14', '', 0, 'http://www.jiangrenjz.com/?p=51', 0, 'customize_changeset', '', 0),
(52, 1, '2017-08-28 23:28:13', '2017-08-28 15:28:13', '', 'jrjz_logo', '', 'inherit', 'open', 'closed', '', 'jrjz_logo-2', '', '', '2017-08-28 23:28:13', '2017-08-28 15:28:13', '', 0, 'http://www.jiangrenjz.com/wp-content/uploads/2017/08/jrjz_logo-1.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2017-08-28 23:38:16', '2017-08-28 15:38:16', '', 'jiangrenjz.com_2017-08-28_15-38-16', '', 'inherit', 'open', 'closed', '', 'jiangrenjz-com_2017-08-28_15-38-16', '', '', '2017-08-28 23:38:16', '2017-08-28 15:38:16', '', 0, 'http://www.jiangrenjz.com/wp-content/uploads/2017/08/jiangrenjz.com_2017-08-28_15-38-16.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2017-08-28 23:38:29', '2017-08-28 15:38:29', 'http://www.jiangrenjz.com/wp-content/uploads/2017/08/cropped-jiangrenjz.com_2017-08-28_15-38-16.jpg', 'cropped-jiangrenjz.com_2017-08-28_15-38-16.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-jiangrenjz-com_2017-08-28_15-38-16-jpg', '', '', '2017-08-28 23:38:29', '2017-08-28 15:38:29', '', 0, 'http://www.jiangrenjz.com/wp-content/uploads/2017/08/cropped-jiangrenjz.com_2017-08-28_15-38-16.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2017-08-28 23:38:35', '2017-08-28 15:38:35', '{\n    \"site_icon\": {\n        \"value\": 55,\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0014b0ac-ef09-4641-8ecc-5e411da7fd09', '', '', '2017-08-28 23:38:35', '2017-08-28 15:38:35', '', 0, 'http://www.jiangrenjz.com/0014b0ac-ef09-4641-8ecc-5e411da7fd09/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `jrjz_termmeta`
--

CREATE TABLE `jrjz_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `jrjz_terms`
--

CREATE TABLE `jrjz_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `jrjz_terms`
--

INSERT INTO `jrjz_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, '公司新闻', 'company_news', 0),
(2, '首页导航', '%e9%a6%96%e9%a1%b5%e5%af%bc%e8%88%aa', 0),
(3, '设计案例', 'design_case', 0);

-- --------------------------------------------------------

--
-- 表的结构 `jrjz_term_relationships`
--

CREATE TABLE `jrjz_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `jrjz_term_relationships`
--

INSERT INTO `jrjz_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 2, 0),
(13, 2, 0),
(14, 2, 0),
(18, 1, 0),
(25, 2, 0),
(29, 1, 0),
(30, 1, 0),
(31, 1, 0),
(32, 1, 0),
(33, 3, 0),
(35, 3, 0),
(37, 3, 0),
(43, 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `jrjz_term_taxonomy`
--

CREATE TABLE `jrjz_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `jrjz_term_taxonomy`
--

INSERT INTO `jrjz_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- 表的结构 `jrjz_usermeta`
--

CREATE TABLE `jrjz_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `jrjz_usermeta`
--

INSERT INTO `jrjz_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'jurenjianzhu'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'jrjz_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'jrjz_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'session_tokens', 'a:5:{s:64:\"bdf1ed6084fde32ce8c84e50c75d59a66be8ff70b1f2a6ae68fbef7a362cecdd\";a:4:{s:10:\"expiration\";i:1504020597;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36\";s:5:\"login\";i:1503847797;}s:64:\"45b13666cdca945a46a79e9392e5979c186e711802a0844484b16e03fa31d655\";a:4:{s:10:\"expiration\";i:1504023876;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36\";s:5:\"login\";i:1503851076;}s:64:\"d1b85a912b14a8e2a063c917656ef3d20eaed198c03af6b4bb682fcdb5c4bedd\";a:4:{s:10:\"expiration\";i:1504064443;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36\";s:5:\"login\";i:1503891643;}s:64:\"fc81f399c7a6d292ea74a66a9ebf31441d9f0bb2d9473a777301a062f968efdf\";a:4:{s:10:\"expiration\";i:1504105978;s:2:\"ip\";s:14:\"223.74.155.189\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36\";s:5:\"login\";i:1503933178;}s:64:\"954c41ea0cb8a0e98e2a9417531eea819d7813b539e9253a063f322ce10ccfcc\";a:4:{s:10:\"expiration\";i:1504106205;s:2:\"ip\";s:14:\"223.74.155.189\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36\";s:5:\"login\";i:1503933405;}}'),
(16, 1, 'jrjz_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"223.74.155.0\";}'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'jrjz_user-settings', 'libraryContent=browse&editor=tinymce&advImgDetails=show&mfold=o'),
(22, 1, 'jrjz_user-settings-time', '1503765987'),
(23, 1, 'acf_user_settings', 'a:0:{}'),
(24, 1, 'closedpostboxes_toplevel_page_theme-general-settings', 'a:1:{i:0;s:23:\"acf-group_59342d49a048e\";}'),
(25, 1, 'metaboxhidden_toplevel_page_theme-general-settings', 'a:0:{}'),
(26, 1, 'meta-box-order_toplevel_page_theme-general-settings', 'a:2:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:23:\"acf-group_59342d49a048e\";}'),
(27, 1, 'meta-box-order_toplevel_page_theme-general-settings', 'a:2:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:23:\"acf-group_59342d49a048e\";}'),
(28, 1, 'screen_layout_toplevel_page_theme-general-settings', '2'),
(29, 1, 'screen_layout_toplevel_page_theme-general-settings', '2'),
(30, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(31, 1, 'metaboxhidden_dashboard', 'a:3:{i:0;s:19:\"dashboard_right_now\";i:1;s:21:\"dashboard_quick_press\";i:2;s:17:\"dashboard_primary\";}');

-- --------------------------------------------------------

--
-- 表的结构 `jrjz_users`
--

CREATE TABLE `jrjz_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `jrjz_users`
--

INSERT INTO `jrjz_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'jiangrenjianzhu', '$P$BGPa0RdqKWQbPuyQ0FmeYd8FYBUomV.', 'jiangrenjianzhu', 'xspkevin@163.com', '', '2017-08-22 11:50:57', '', 0, 'jiangrenjianzhu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jrjz_commentmeta`
--
ALTER TABLE `jrjz_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jrjz_comments`
--
ALTER TABLE `jrjz_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `jrjz_links`
--
ALTER TABLE `jrjz_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `jrjz_options`
--
ALTER TABLE `jrjz_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `jrjz_postmeta`
--
ALTER TABLE `jrjz_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jrjz_posts`
--
ALTER TABLE `jrjz_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `jrjz_termmeta`
--
ALTER TABLE `jrjz_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jrjz_terms`
--
ALTER TABLE `jrjz_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `jrjz_term_relationships`
--
ALTER TABLE `jrjz_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `jrjz_term_taxonomy`
--
ALTER TABLE `jrjz_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `jrjz_usermeta`
--
ALTER TABLE `jrjz_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jrjz_users`
--
ALTER TABLE `jrjz_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `jrjz_commentmeta`
--
ALTER TABLE `jrjz_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `jrjz_comments`
--
ALTER TABLE `jrjz_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `jrjz_links`
--
ALTER TABLE `jrjz_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `jrjz_options`
--
ALTER TABLE `jrjz_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;
--
-- 使用表AUTO_INCREMENT `jrjz_postmeta`
--
ALTER TABLE `jrjz_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
--
-- 使用表AUTO_INCREMENT `jrjz_posts`
--
ALTER TABLE `jrjz_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- 使用表AUTO_INCREMENT `jrjz_termmeta`
--
ALTER TABLE `jrjz_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `jrjz_terms`
--
ALTER TABLE `jrjz_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `jrjz_term_taxonomy`
--
ALTER TABLE `jrjz_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `jrjz_usermeta`
--
ALTER TABLE `jrjz_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- 使用表AUTO_INCREMENT `jrjz_users`
--
ALTER TABLE `jrjz_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
