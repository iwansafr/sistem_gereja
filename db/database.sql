SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int NOT NULL,
  `par_id` int DEFAULT NULL,
  `user_role_ids` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '1',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `admin_menu` (`id`, `par_id`, `user_role_ids`, `title`, `icon`, `link`, `sort_order`, `created`) VALUES
(1, 0, ',1,2,3,', 'Dashboard', 'fa fa-tachometer-alt', '/', 1, '2019-03-30 03:05:59'),
(2, 0, ',1,2,3,', 'Content', 'fa fa-file-alt', '/content', 2, '2019-03-30 03:24:19'),
(3, 2, ',1,2,3,', 'Category', 'fa fa-list', '/content/category', 21, '2019-03-30 03:26:22'),
(4, 2, ',1,2,3,', 'Add Content', 'fa fa-pencil-alt', '/content/edit', 22, '2019-03-30 03:35:27'),
(5, 2, ',1,2,3,', 'Content List', 'fa fa-list', '/content/list', 23, '2019-03-30 03:35:44'),
(6, 2, ',1,2,3,', 'Tag', 'fa fa-list', '/content/tag', 24, '2019-03-30 03:36:06'),
(7, 0, ',1,2,3,', 'Gallery', 'fa fa-images', '/gallery', 3, '2019-03-31 22:53:29'),
(8, 7, ',1,2,3,', 'Images', 'fa fa-image', '/gallery', 31, '2019-03-31 22:53:57'),
(9, 0, ',1,2,', 'User', 'fa fa-user', '/user', 4, '2019-03-31 22:54:25'),
(10, 9, ',1,2,', 'User List', 'fa fa-dot-circle', '/user/list', 41, '2019-03-31 22:55:32'),
(11, 9, ',1,2,', 'User Edit', 'fa fa-dot-circle', '/user/edit', 42, '2019-03-31 22:58:48'),
(12, 9, ',1,', 'User Role', 'fa fa-dot-circle', '/user/role', 43, '2019-03-31 22:59:13'),
(13, 0, ',1,2,', 'Menu', 'fa fa-list', '/menu', 5, '2019-03-31 22:59:33'),
(14, 13, ',1,2,', 'Add Menu', 'fa fa-pencil-alt', '/menu/edit', 51, '2019-03-31 22:59:58'),
(15, 13, ',1,2,', 'Menu List', 'fa fa-pencil-alt', '/menu/list', 52, '2019-03-31 23:00:18'),
(16, 13, ',1,2,', 'Menu Position', 'fa fa-list', '/menu/position', 53, '2019-03-31 23:00:37'),
(17, 0, ',1,', 'Admin Menu', 'fa fa-list', '/admin_menu', 6, '2019-03-31 23:01:10'),
(18, 17, ',1,', 'Add Menu', 'fa fa-pencil-alt', '/admin_menu/edit', 61, '2019-04-01 05:45:00'),
(19, 17, ',1,', 'Menu List', 'fa fa-list', '/admin_menu/list', 62, '2019-04-01 05:45:20'),
(20, 17, ',1,', 'Menu Parent', 'fa fa-list', '/admin_menu/list?id=0', 63, '2019-04-01 05:46:00'),
(21, 0, ',1,2,', 'Data', 'fa fa-database', '/visitor', 7, '2019-04-01 05:46:34'),
(22, 21, ',1,2,', 'Visitor', 'fa fa-chart-bar', '/visitor', 72, '2019-04-01 05:46:56'),
(23, 0, ',1,2,', 'Configuration', 'fa fa-cog', '/config', 8, '2019-04-01 06:03:37'),
(24, 23, ',1,2,', 'Logo', 'fa fa-cog', '/config/logo', 81, '2019-04-01 06:04:28'),
(25, 23, ',1,2,', 'Site', 'fa fa-cog', '/config/site', 82, '2019-04-01 06:04:41'),
(26, 23, ',1,2,', 'Templates', 'fa fa-cog', '/config/templates', 83, '2019-04-01 06:04:57'),
(27, 23, ',1,2,', 'Contact', 'fa fa-cog', '/config/contact', 84, '2019-04-01 06:05:14'),
(28, 23, ',1,2,', 'Style', 'fa fa-cog', '/config/style', 86, '2019-04-01 06:06:52'),
(29, 23, ',1,2,', 'Script', 'fa fa-cog', '/config/script', 87, '2019-04-01 06:07:29'),
(30, 21, ',1,2,', 'Backup', 'fa fa-download', '/backup', 73, '2019-04-01 06:08:04'),
(31, 21, ',1,2,', 'Restore', 'fa fa-upload', '/restore', 74, '2019-04-01 06:08:15'),
(32, 21, ',1,2,', 'Delete Cache', 'fa fa-trash', '/config/delete_cache', 75, '2019-04-04 00:08:10'),
(33, 21, ',1,2,', 'Invoice', 'fa fa-money', '/invoice', 71, '2019-04-05 23:07:23'),
(34, 23, ',1,2,', 'Bank Account', 'fa fa-user', '/bank_account', 85, '2019-04-06 01:37:09'),
(35, 23, ',1,', 'Dashboard', 'fa fa-chart-bar', '/config/dashboard', 88, '2019-04-19 18:37:39'),
(37, 21, ',1,', 'Subscribers', 'fa fa-user', '/subscriber', 1, '2019-04-22 06:37:13'),
(38, 0, ',1,2,4,5,', 'Jemaat', 'fa fa-user', '#', 2, '2020-10-18 06:55:37'),
(39, 38, ',1,2,4,5,', 'Tambah Jemaat', 'fa fa-plus', '/user/jemaat_edit', 1, '2020-10-18 06:56:18'),
(40, 38, ',1,2,4,5,', 'Data Jemaat', 'fa fa-list', '/user/jemaat_list', 1, '2020-10-18 06:56:38'),
(41, 0, ',1,2,4,', 'Pengurus', 'fa fa-user', '#', 2, '2020-10-18 10:05:06'),
(42, 41, ',1,2,4,', 'Data Pengurus', 'fa fa-list', '/user/pengurus_list', 1, '2020-10-18 10:05:41'),
(43, 41, ',1,2,4,', 'Tambah Pengurus', 'fa fa-plus', '/user/pengurus_edit', 1, '2020-10-18 10:05:56'),
(44, 0, ',1,2,', 'Team IT', 'fa fa-laptop', '#', 2, '2020-10-18 10:18:33'),
(45, 44, ',1,2,', 'Data Admin', 'fa fa-list', '/user/admin_list', 1, '2020-10-18 10:18:57'),
(46, 44, ',1,2,', 'Tambah Admin', 'fa fa-plus', '/user/admin_edit', 1, '2020-10-18 10:19:09'),
(47, 44, ',1,2,', 'Data Operator', 'fa fa-list', '/user/operator_list', 1, '2020-10-18 10:19:24'),
(48, 44, ',1,2,', 'Tambah Operator', 'fa fa-plus', '/user/operator_edit', 1, '2020-10-18 10:19:43'),
(49, 0, ',1,2,4,5,', 'kegiatan', 'fa fa-calendar', '#', 2, '2020-10-18 17:00:15'),
(50, 49, ',1,2,4,5,', 'Data Kegiatan', 'fa fa-list', '/kegiatan/list', 1, '2020-10-18 17:00:47'),
(51, 49, ',1,2,4,5,', 'Tambah Kegiatan', 'fa fa-plus', '/kegiatan/edit', 1, '2020-10-18 17:01:01');

DROP TABLE IF EXISTS `bank_account`;
CREATE TABLE `bank_account` (
  `id` int UNSIGNED NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `person_name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `bank_number` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `bank_account` (`id`, `bank_name`, `person_name`, `icon`, `bank_number`, `created`) VALUES
(1, 'BCA', 'Iwan Safrudin', 'icon_BCA.png', '0312609779', '2019-04-14 16:18:57'),
(2, 'BNI', 'Iwan Safrudin', 'icon_BNI.png', '0813920638', '2019-04-14 16:19:55');

DROP TABLE IF EXISTS `bps`;
CREATE TABLE `bps` (
  `id` int NOT NULL,
  `tipe` tinyint(1) NOT NULL COMMENT '1=baptis, 2= pernikahan, 3 = sidi',
  `kode` varchar(9) NOT NULL,
  `tgl` date DEFAULT NULL,
  `jemaat_id` int NOT NULL COMMENT 'user id role jemaat',
  `pengurus_id` int NOT NULL COMMENT 'user id role pengurus',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='baptis , pernikahan, sidi';

INSERT INTO `bps` (`id`, `tipe`, `kode`, `tgl`, `jemaat_id`, `pengurus_id`, `created`) VALUES
(1, 1, 'B20201031', '2020-10-31', 3, 5, '2020-10-31 10:14:51'),
(2, 2, 'N20201031', '2020-10-31', 3, 5, '2020-10-31 10:17:09');

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int NOT NULL,
  `par_id` int NOT NULL,
  `module` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=content,2=product',
  `module_id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unread, 1=read',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `config` (`id`, `name`, `value`) VALUES
(1, 'templates', '{\"public_template\":\"property\",\"admin_template\":\"AdminLTE\"}'),
(2, 'sites', '{\"title\":\"SISPUDES\",\"link\":\"https:\\/\\/sispudes.mdw.co.id\",\"image\":\"image_PRAMESTHA_MOUNTAIN_CITY.png\",\"keyword\":\"\",\"description\":\"\",\"year\":\"2020\",\"lang\":\"id\",\"use_cache\":\"0\"}'),
(3, 'logo', '{\"title\":\"SISPUDES\",\"image\":\"\",\"width\":\"100\",\"height\":\"50\",\"display\":\"image\"}'),
(4, 'one-night_widget', '{\"template\":\"one-night\",\"menu_top\":{\"content\":\"1\"},\"content_slider\":{\"content\":\"latest\",\"limit\":\"7\"},\"content_hot\":{\"content\":\"latest\",\"limit\":\"7\"},\"content_top\":{\"content\":\"latest\",\"limit\":\"7\"},\"content\":{\"content\":\"latest\",\"limit\":\"7\"},\"content_bottom\":{\"content\":\"latest\",\"limit\":\"7\"},\"right\":{\"content\":\"1\",\"limit\":\"7\"},\"menu_right\":{\"content\":\"1\"},\"right_extra\":{\"content\":\"2\",\"limit\":\"7\"},\"menu_bottom_1\":{\"content\":\"2\"},\"menu_bottom_2\":{\"content\":\"2\"},\"menu_bottom_3\":{\"content\":\"2\"},\"menu_footer\":{\"content\":\"2\"}}'),
(5, 'contact', '{\"image\":\"image_esoftgreat.jpeg\",\"name\":\"sispudes\",\"description\":\"\",\"address\":\"\",\"phone\":\"+6285290335332\",\"wa\":\"6285290335332\",\"email\":\"iwansafr@gmail.com\",\"google\":\"\",\"facebook\":\"\",\"twitter\":\"\",\"instagram\":\"\",\"linkedin\":\"\",\"wordpress\":\"\",\"yahoo\":\"\",\"youtube\":\"\"}'),
(6, 'header', '{\"image\":\"image_Selamat_Datang_di_Esoftgreat_1547957588.jpeg\",\"title\":\"Selamat Datang di Esoftgreat\",\"description\":\"JASA PEMBUATAN WEBSITE, DESAIN, ARTIKEL SEO, SOSIAL MEDIA MARKETING\"}'),
(7, 'Avilon_widget', '{\"template\":\"Avilon\",\"menu_top\":{\"content\":\"1\"},\"content_thumbnail\":{\"content\":\"4\",\"limit\":\"3\"},\"content_hot\":{\"content\":\"5\",\"limit\":\"1\"},\"content_top\":{\"content\":\"6\",\"limit\":\"4\"},\"content\":{\"content\":\"7\",\"limit\":\"3\"},\"content_banner\":{\"content\":\"8\",\"limit\":\"1\"},\"content_bottom\":{\"content\":\"9\",\"limit\":\"4\"},\"content_brand\":{\"content\":\"10\",\"limit\":\"10\"},\"content_pricing\":{\"content\":\"11\",\"limit\":\"3\"},\"content_question\":{\"content\":\"12\",\"limit\":\"7\"},\"content_team\":{\"content\":\"13\",\"limit\":\"7\"},\"content_gallery\":{\"content\":\"14\",\"limit\":\"6\"},\"content_photo\":{\"content\":\"4\",\"limit\":\"7\"},\"content_video\":{\"content\":\"24\",\"limit\":\"7\"},\"content_payment\":{\"content\":\"0\",\"limit\":\"7\"},\"menu_bottom\":{\"content\":\"0\"}}'),
(8, 'Avilon_script', '{\"script\":\"<!-- Go to www.addthis.com\\/dashboard to customize your tools -->\\r\\n<!-- <script type=\\\"text\\/javascript\\\" src=\\\"\\/\\/s7.addthis.com\\/js\\/300\\/addthis_widget.js#pubid=ra-5c2b7a98a617a916\\\"><\\/script> -->\"}'),
(9, 'Avilon_style', '{\"style\":\"<style>\\r\\n.credit{\\r\\npadding-bottom: 10px;\\r\\n}\\r\\n.product-screens img{\\r\\n border-radius: 25px;\\r\\n}\\r\\n#clients img{\\r\\n max-height: 150px;\\r\\n}\\r\\n#clients .col-md-4{\\r\\n text-align: center;\\r\\n}\\r\\n<\\/style>\\r\\n<!-- Global site tag (gtag.js) - Google Analytics -->\\r\\n<script async src=\\\"https:\\/\\/www.googletagmanager.com\\/gtag\\/js?id=UA-113848816-1\\\"><\\/script>\\r\\n<script>\\r\\n  window.dataLayer = window.dataLayer || [];\\r\\n  function gtag(){dataLayer.push(arguments);}\\r\\n  gtag(\'js\', new Date());\\r\\n\\r\\n  gtag(\'config\', \'UA-113848816-1\');\\r\\n<\\/script>\\r\\n<script async src=\\\"\\/\\/pagead2.googlesyndication.com\\/pagead\\/js\\/adsbygoogle.js\\\"><\\/script>\\r\\n<script>\\r\\n  (adsbygoogle = window.adsbygoogle || []).push({\\r\\n    google_ad_client: \\\"ca-pub-3145506515429478\\\",\\r\\n    enable_page_level_ads: true\\r\\n  });\\r\\n<\\/script>\"}'),
(10, 'dashboard', '{\"icon\":{\"bank_account\":\"fa fa-chart-bar\",\"comment\":\"fa fa-chart-bar\",\"content\":\"fa fa-chart-bar\",\"content_cat\":\"fa fa-chart-bar\",\"content_tag\":\"fa fa-chart-bar\",\"invoice\":\"fa fa-chart-bar\",\"menu\":\"fa fa-chart-bar\",\"menu_position\":\"fa fa-chart-bar\",\"message\":\"fa fa-chart-bar\",\"subscriber\":\"\",\"trash\":\"\",\"user\":\"fa fa-chart-bar\",\"user_login\":\"fa fa-chart-bar\",\"user_login_failed\":\"fa fa-chart-bar\",\"user_role\":\"fa fa-chart-bar\",\"visitor\":\"fa fa-chart-bar\"},\"link\":{\"bank_account\":\"\\/admin\\/bank_account\",\"comment\":\"\",\"content\":\"\\/admin\\/content\\/list\",\"content_cat\":\"\\/admin\\/content\\/category\",\"content_tag\":\"\\/admin\\/content\\/tag\",\"invoice\":\"\\/admin\\/invoice\",\"menu\":\"\\/admin\\/menu\\/list\",\"menu_position\":\"\\/admin\\/menu\\/position\",\"message\":\"\\/admin\\/message\",\"subscriber\":\"\",\"trash\":\"\",\"user\":\"\\/admin\\/user\\/list\",\"user_login\":\"\\/admin\\/user\\/login_list\",\"user_login_failed\":\"\\/admin\\/user\\/login_failed\",\"user_role\":\"\\/admin\\/user\\/role\",\"visitor\":\"\\/admin\\/visitor\"},\"color_row\":{\"bank_account\":\"#00cccc\",\"comment\":\"#ff0000\",\"content\":\"#0000ff\",\"content_cat\":\"#00d100\",\"content_tag\":\"#ff00ff\",\"invoice\":\"#000000\",\"menu\":\"#00dede\",\"menu_position\":\"#ff0000\",\"message\":\"#0000ff\",\"subscriber\":\"#000000\",\"trash\":\"#000000\",\"user\":\"#00e300\",\"user_login\":\"#ff00ff\",\"user_login_failed\":\"#000000\",\"user_role\":\"#e8e800\",\"visitor\":\"#000000\"}}'),
(12, 'village_widget', '{\"template\":\"village\",\"menu_top\":{\"content\":\"1\"},\"content_slider\":{\"content\":\"3\",\"limit\":\"7\"},\"content_top\":{\"content\":\"5\",\"limit\":\"7\"},\"content\":{\"content\":\"6\",\"limit\":\"7\"},\"content_bottom\":{\"content\":\"7\",\"limit\":\"7\"},\"twitter_widget\":{\"content\":\"\",\"limit\":\"7\"},\"content_latest\":{\"content\":\"8\",\"limit\":\"7\"},\"content_popular\":{\"content\":\"10\",\"limit\":\"7\"},\"category\":{\"content\":\"1\",\"limit\":\"7\"},\"tag\":{\"content\":\"2\",\"limit\":\"7\"},\"menu_bottom_1\":{\"content\":\"2\"},\"menu_bottom_2\":{\"content\":\"2\"},\"menu_bottom_3\":{\"content\":\"2\"},\"menu_footer\":{\"content\":\"2\"}}'),
(13, 'magazine_widget', '{\"template\":\"magazine\",\"menu_top\":{\"content\":\"2\"},\"content_top_banner\":{\"content\":\"2\",\"limit\":\"7\"},\"menu_main\":{\"content\":\"1\"},\"content_news\":{\"content\":\"4\",\"limit\":\"7\"},\"content_slider\":{\"content\":\"4\",\"limit\":\"7\"},\"content_block_1\":{\"content\":\"0\",\"limit\":\"7\"},\"content_banner\":{\"content\":\"0\",\"limit\":\"7\"},\"content_block_2\":{\"content\":\"0\",\"limit\":\"7\"},\"content_gallery\":{\"content\":\"0\",\"limit\":\"7\"},\"content_grid\":{\"content\":\"12\",\"limit\":\"7\"},\"content_advertisement\":{\"content\":\"0\",\"limit\":\"7\"},\"category\":{\"content\":\"0\",\"limit\":\"7\"},\"twitter_widget\":{\"content\":\"\",\"limit\":\"7\"},\"content_popular\":{\"content\":\"0\",\"limit\":\"7\"},\"content_latest\":{\"content\":\"0\",\"limit\":\"7\"},\"content_banner_right\":{\"content\":\"5\",\"limit\":\"7\"},\"menu_bottom\":{\"content\":\"0\"},\"content_bottom\":{\"content\":\"0\",\"limit\":\"7\"}}'),
(14, 'corporate_widget', '{\"template\":\"corporate\",\"menu_top\":{\"content\":\"3\"},\"menu_main\":{\"content\":\"1\"},\"content_slider\":{\"content\":\"14\",\"limit\":\"3\"},\"content\":{\"content\":\"7\",\"limit\":\"3\"},\"menu_bottom\":{\"content\":\"3\"}}'),
(15, 'corporate_mega_widget', '{\"template\":\"corporate_mega\",\"menu_top\":{\"content\":\"3\"},\"menu_main\":{\"content\":\"1\"},\"content_slider\":{\"content\":\"14\",\"limit\":\"7\"},\"content\":{\"content\":\"latest\",\"limit\":\"7\"},\"menu_bottom\":{\"content\":\"0\"}}'),
(16, 'etrain_widget', '{\"template\":\"etrain\",\"menu_top\":{\"content\":\"1\"},\"content_banner\":{\"content\":\"2\",\"limit\":\"7\"},\"content_feature\":{\"content\":\"19\",\"limit\":\"7\"},\"content_about\":{\"content\":\"2\",\"limit\":\"7\"},\"content_count\":{\"content\":\"3\",\"limit\":\"7\"},\"content_courses\":{\"content\":\"15\",\"limit\":\"7\"},\"content_advance\":{\"content\":\"5\",\"limit\":\"7\"},\"content_testimonials\":{\"content\":\"14\",\"limit\":\"7\"},\"content_blog\":{\"content\":\"14\",\"limit\":\"7\"}}'),
(17, 'property_widget', '{\"template\":\"property\",\"menu_top\":{\"content\":\"1\"},\"content_slider\":{\"content\":\"2\",\"limit\":\"5\"},\"content_views\":{\"content\":\"3\",\"limit\":\"7\"},\"content_category\":{\"content\":\"4\",\"limit\":\"4\"},\"content_videos\":{\"content\":\"18\",\"limit\":\"2\"},\"content_facilities\":{\"content\":\"9\",\"limit\":\"8\"},\"content_contact\":{\"content\":\"6\",\"limit\":\"1\"},\"content_location\":{\"content\":\"7\",\"limit\":\"1\"},\"menu_bottom_1\":{\"content\":\"5\"},\"menu_bottom_2\":{\"content\":\"6\"},\"menu_bottom\":{\"content\":\"0\"}}'),
(18, 'testing', '{\"gambar1\":\"gambar1_image.png\",\"gambar2\":\"gambar2_image.png\"}'),
(19, 'site', '{\"title\":\"gereja\",\"link\":\"\",\"image\":\"\",\"keyword\":\"gereja\",\"description\":\"gereja\",\"year\":\"2020\",\"lang\":\"id\",\"use_cache\":\"0\"}');

DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `id` int NOT NULL,
  `cat_ids` mediumtext NOT NULL,
  `par_id` int DEFAULT '0',
  `tpl` varchar(255) DEFAULT '0',
  `tag_ids` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `source` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `videos` text,
  `document` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `hits` int NOT NULL,
  `last_hits` datetime NOT NULL,
  `rating` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `publish` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `content` (`id`, `cat_ids`, `par_id`, `tpl`, `tag_ids`, `title`, `slug`, `description`, `keyword`, `intro`, `content`, `source`, `image`, `icon`, `image_link`, `images`, `videos`, `document`, `author`, `hits`, `last_hits`, `rating`, `params`, `created`, `publish`) VALUES
(1, ',1,', 0, '0', ',1,2,', 'Hello World', 'hello-world', 'Hello World\r\n', 'Hello World', 'Hello World\r\n', '<p>Hello World</p>\r\n', '', 'image_Hello_World_1541950550.png', '', '', '[\"images_Hello_World_0_1541950550.png\",\"images_Hello_World_1_1541950550.png\"]', NULL, '', 'admin', 153, '0000-00-00 00:00:00', '', '', '2018-11-11 22:35:50', 1);

DROP TABLE IF EXISTS `content_cat`;
CREATE TABLE `content_cat` (
  `id` int NOT NULL,
  `par_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `description` mediumtext NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `content_cat` (`id`, `par_id`, `title`, `slug`, `image`, `icon`, `description`, `publish`, `created`) VALUES
(1, 0, 'Uncategorized', 'uncategorized', '', '', '', 1, '2018-11-11 22:23:38');

DROP TABLE IF EXISTS `content_tag`;
CREATE TABLE `content_tag` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `total` int NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `id` int NOT NULL,
  `code` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `payment_method` tinyint(1) NOT NULL DEFAULT '1',
  `notes` varchar(255) NOT NULL,
  `items` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `ppn` int NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `kegiatan`;
CREATE TABLE `kegiatan` (
  `id` int NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tgl` date NOT NULL,
  `jam` time NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `jml_peserta` int NOT NULL,
  `anggaran` int NOT NULL,
  `proposal` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `kegiatan` (`id`, `kode`, `nama`, `tgl`, `jam`, `tempat`, `jml_peserta`, `anggaran`, `proposal`, `created`) VALUES
(1, 'KG20201021', 'retreats', '2020-01-01', '01:00:00', 'jepara', 100, 1000000, 'proposal_retreat.pdf', '2020-10-21 17:07:57'),
(2, 'KG20201102', 'baptis', '2020-01-01', '01:00:00', 'jepara', 200, 80000, 'proposal_baptis.pdf', '2020-11-02 03:19:10');

DROP TABLE IF EXISTS `kegiatan_user`;
CREATE TABLE `kegiatan_user` (
  `id` int UNSIGNED NOT NULL,
  `kegiatan_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `kelompok`;
CREATE TABLE `kelompok` (
  `id` int NOT NULL,
  `kode` varchar(20) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `ketua_kelompok` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `kelompok_user`;
CREATE TABLE `kelompok_user` (
  `id` int UNSIGNED NOT NULL,
  `kelompok_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int NOT NULL,
  `par_id` int NOT NULL DEFAULT '0',
  `position_id` int NOT NULL DEFAULT '0',
  `sort_order` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` mediumtext NOT NULL,
  `tpl` varchar(255) NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `menu_position`;
CREATE TABLE `menu_position` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `menu_position` (`id`, `title`, `created`) VALUES
(1, 'Top Menu', '2018-11-12 02:16:02'),
(2, 'Bottom Menu', '2018-11-15 12:39:27');

DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=unread,2=read',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE `subscriber` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `subscriber` (`id`, `email`, `created`) VALUES
(1, 'iwansafr@gmail.com', '2019-04-22 06:39:07');

DROP TABLE IF EXISTS `trash`;
CREATE TABLE `trash` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `table_id` int NOT NULL,
  `table_title` varchar(255) NOT NULL,
  `table_content` mediumtext NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `trash` (`id`, `user_id`, `table_id`, `table_title`, `table_content`, `created`) VALUES
(360, 1, 3, 'kelompok_user', '{\"id\":\"3\",\"kelompok_id\":\"1\",\"user_id\":\"0\"}', '2020-10-30 23:51:19'),
(361, 1, 4, 'kelompok_user', '{\"id\":\"4\",\"kelompok_id\":\"1\",\"user_id\":\"0\"}', '2020-10-30 23:51:19'),
(362, 1, 1, 'kelompok', '{\"id\":\"1\",\"kode\":\"KP202010301\",\"nama\":\"bambang\",\"ketua_kelompok\":\"\",\"user_id\":\"5\",\"created\":\"2020-10-30 23:49:49\",\"updated\":\"2020-10-30 23:49:49\"}', '2020-10-30 23:59:04'),
(363, 3, 2, 'kegiatan_user', '{\"id\":\"2\",\"kegiatan_id\":\"1\",\"user_id\":\"3\"}', '2020-11-02 03:07:03'),
(364, 3, 3, 'kegiatan_user', '{\"id\":\"3\",\"kegiatan_id\":\"1\",\"user_id\":\"3\"}', '2020-11-02 03:21:15'),
(365, 3, 4, 'kegiatan_user', '{\"id\":\"4\",\"kegiatan_id\":\"2\",\"user_id\":\"3\"}', '2020-11-02 03:24:39'),
(366, 3, 5, 'kegiatan_user', '{\"id\":\"5\",\"kegiatan_id\":\"1\",\"user_id\":\"3\"}', '2020-11-02 03:25:33'),
(367, 3, 6, 'kegiatan_user', '{\"id\":\"6\",\"kegiatan_id\":\"2\",\"user_id\":\"3\"}', '2020-11-02 03:28:05'),
(368, 3, 7, 'kegiatan_user', '{\"id\":\"7\",\"kegiatan_id\":\"1\",\"user_id\":\"3\"}', '2020-11-02 03:28:48'),
(369, 3, 8, 'kegiatan_user', '{\"id\":\"8\",\"kegiatan_id\":\"2\",\"user_id\":\"3\"}', '2020-11-02 03:28:48'),
(370, 3, 9, 'kegiatan_user', '{\"id\":\"9\",\"kegiatan_id\":\"1\",\"user_id\":\"3\"}', '2020-11-02 03:29:49'),
(371, 3, 10, 'kegiatan_user', '{\"id\":\"10\",\"kegiatan_id\":\"1\",\"user_id\":\"3\"}', '2020-11-02 03:29:49'),
(372, 3, 11, 'kegiatan_user', '{\"id\":\"11\",\"kegiatan_id\":\"1\",\"user_id\":\"3\"}', '2020-11-02 03:30:51'),
(373, 3, 12, 'kegiatan_user', '{\"id\":\"12\",\"kegiatan_id\":\"1\",\"user_id\":\"3\"}', '2020-11-02 03:31:51'),
(374, 3, 13, 'kegiatan_user', '{\"id\":\"13\",\"kegiatan_id\":\"1\",\"user_id\":\"3\"}', '2020-11-02 03:31:51'),
(375, 3, 14, 'kegiatan_user', '{\"id\":\"14\",\"kegiatan_id\":\"1\",\"user_id\":\"3\"}', '2020-11-02 03:31:51'),
(376, 1, 53, 'admin_menu', '{\"id\":\"53\",\"par_id\":\"52\",\"user_role_ids\":\",1,2,\",\"title\":\"Data Admin\",\"icon\":\"fa fa-list\",\"link\":\"\\/user\\/admin_list\",\"sort_order\":\"1\",\"created\":\"2020-11-04 19:36:58\",\"updated\":\"2020-11-04 19:36:58\"}', '2020-11-04 19:37:34'),
(377, 1, 54, 'admin_menu', '{\"id\":\"54\",\"par_id\":\"52\",\"user_role_ids\":\",1,2,\",\"title\":\"Tambah Admin\",\"icon\":\"fa fa-plus\",\"link\":\"\\/user\\/admin_edit\",\"sort_order\":\"1\",\"created\":\"2020-11-04 19:37:14\",\"updated\":\"2020-11-04 19:37:14\"}', '2020-11-04 19:37:34'),
(378, 1, 52, 'admin_menu', '{\"id\":\"52\",\"par_id\":\"0\",\"user_role_ids\":\",1,2,\",\"title\":\"Admin\",\"icon\":\"fa fa-user\",\"link\":\"#\",\"sort_order\":\"2\",\"created\":\"2020-11-04 19:36:15\",\"updated\":\"2020-11-04 19:36:24\"}', '2020-11-04 19:37:40');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `user_role_id` int NOT NULL,
  `jabatan` tinyint NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = active, 0 = not active',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user` (`id`, `username`, `password`, `email`, `name`, `address`, `phone`, `birthdate`, `image`, `user_role_id`, `jabatan`, `active`, `created`) VALUES
(1, 'root', '$2y$10$45QWDhukYbXFXViCxA70su93e5OsxUdAxFi20whzXxGE2NkM7BMY6', 'root@esoftgreat.com', '', '', '', NULL, 'image_root.jpeg', 1, 0, 1, '2018-11-03 07:36:32'),
(2, 'admin', '$2y$10$Cl4.5IqxiOiB.osC76GZr.TreZcuenu/YxSScom7nQYgyekBdFD1G', 'pramestha@gmail.com', '', '', '', NULL, 'image_admin.png', 2, 0, 1, '2020-05-15 14:27:40'),
(3, '202010181', '$2y$10$94RDNn/.rycnyb6t5KvUrOoQlxfO2ZFGqs1/4srYeCLE1ISAuq4vK', '', 'iwan', 'tulakan', '085290335332', '1993-01-16', '', 3, 0, 1, '2020-10-18 14:28:36'),
(4, '202010182', '$2y$10$nqSxM4i0b7.tk2CMe2mIZ.9kRBF3.vLIyq0CnbQmXO951Ov3obNFC', '', 'linas', 'tulakan', '907987897', '2020-01-01', '', 3, 0, 1, '2020-10-18 14:37:42'),
(5, 'zea', '$2y$10$iYWohJBuLeIREvvAKopPyeN9oRgPrstyK/WQW/9tdhOQ8J3GojitK', '', 'zea', 'tulakan', '98798789', '2020-01-01', '', 5, 1, 1, '2020-10-18 17:14:36'),
(6, 'op1', '$2y$10$9EQxaf/j2fTUCUbDxR5gtOhFyL1wrkp0NFILQwSBJ745td/4aalky', '', 'operator 1', '', '08908', NULL, '', 4, 0, 1, '2020-10-18 17:30:12');

DROP TABLE IF EXISTS `user_jabatan`;
CREATE TABLE `user_jabatan` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user_jabatan` (`id`, `title`, `created`) VALUES
(1, 'Ketua', '2020-10-18 17:11:01'),
(2, 'Wakil Ketua', '2020-10-18 17:11:07'),
(3, 'Sekretaris 1', '2020-10-18 17:11:11'),
(4, 'Sekretaris 2', '2020-10-18 17:11:31');

DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `ip` varchar(15) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=failed, 1=success',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user_login` (`id`, `user_id`, `ip`, `browser`, `status`, `created`) VALUES
(1, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', 1, '2020-10-17 14:54:55'),
(2, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', 1, '2020-10-18 13:28:05'),
(3, 0, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', 0, '2020-10-18 17:01:56'),
(4, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', 1, '2020-10-18 17:01:59'),
(5, 0, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', 0, '2020-10-18 17:13:58'),
(6, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', 1, '2020-10-18 17:14:00'),
(7, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', 1, '2020-10-18 23:56:07'),
(8, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', 1, '2020-10-21 17:02:38'),
(9, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 1, '2020-10-30 19:09:55'),
(10, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 1, '2020-10-30 23:48:09'),
(11, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 1, '2020-10-31 07:11:06'),
(12, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 1, '2020-10-31 10:06:11'),
(13, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 1, '2020-10-31 20:21:19'),
(14, 3, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 1, '2020-10-31 20:22:52'),
(15, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 1, '2020-11-01 00:56:43'),
(16, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 1, '2020-11-02 02:11:31'),
(17, 3, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 1, '2020-11-02 02:31:52'),
(18, 1, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', 1, '2020-11-04 18:45:29');

DROP TABLE IF EXISTS `user_login_failed`;
CREATE TABLE `user_login_failed` (
  `id` int NOT NULL,
  `user_login_id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user_login_failed` (`id`, `user_login_id`, `username`, `password`) VALUES
(1, 3, 'root', 'Dks_080308'),
(2, 5, 'root', 'Dks_080308');

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int NOT NULL,
  `level` tinyint NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user_role` (`id`, `level`, `title`, `description`, `created`) VALUES
(1, 1, 'root', 'super user', '2018-11-02 22:57:22'),
(2, 2, 'admin', 'the administrator', '2018-11-02 22:57:22'),
(3, 5, 'Jemaat', 'akun Jemaat', '2018-11-04 12:59:26'),
(4, 3, 'Operator', 'akun operator', '2020-10-18 06:53:52'),
(5, 4, 'Pengurus', 'akun pengurus', '2020-10-18 06:54:05');

DROP TABLE IF EXISTS `visitor`;
CREATE TABLE `visitor` (
  `id` int NOT NULL,
  `ip` varchar(50) NOT NULL,
  `visited` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `country` varchar(10) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `visitor` (`id`, `ip`, `visited`, `city`, `region`, `country`, `browser`, `created`) VALUES
(1, '::1', 'http://localhost/sistem_gereja/', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', '2020-10-17 14:54:41'),
(2, '::1', 'http://localhost/sistem_gereja/', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', '2020-10-17 14:55:29'),
(3, '::1', 'http://localhost/sistem_gereja/', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', '2020-10-17 14:55:45'),
(4, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '2020-10-21 17:09:29'),
(5, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '2020-10-21 17:11:50'),
(6, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '2020-10-21 17:13:23'),
(7, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36', '2020-10-21 17:14:04'),
(8, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:21:37'),
(9, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:24:36'),
(10, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:24:40'),
(11, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:24:45'),
(12, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:24:51'),
(13, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:24:53'),
(14, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:24:55'),
(15, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:25:01'),
(16, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:25:19'),
(17, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:25:30'),
(18, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:25:34'),
(19, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:25:37'),
(20, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:25:43'),
(21, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:28:02'),
(22, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:28:06'),
(23, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:28:07'),
(24, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:28:10'),
(25, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:28:45'),
(26, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:29:17'),
(27, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:29:39'),
(28, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:29:46'),
(29, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:29:50'),
(30, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:29:52'),
(31, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:30:00'),
(32, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:30:45'),
(33, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:30:49'),
(34, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:30:52'),
(35, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:30:56'),
(36, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:30:59'),
(37, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:31:06'),
(38, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:31:43'),
(39, '::1', 'http://localhost/sistem_gereja/templates/AdminLTE/assets/summernote/summernote.js.map', '', '', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '2020-11-02 03:31:45');


ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `bps`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `content_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `content_tag`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `kegiatan_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kelompok_user_1_idx` (`user_id`),
  ADD KEY `fk_kelompok_user_2_idx` (`kegiatan_id`);

ALTER TABLE `kelompok`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `kelompok_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kelompok_user_1_idx` (`user_id`),
  ADD KEY `fk_kelompok_user_2_idx` (`kelompok_id`);

ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `menu_position`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `trash`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `user_jabatan`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `user_login_failed`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `admin_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

ALTER TABLE `bank_account`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `bps`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

ALTER TABLE `content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

ALTER TABLE `content_cat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

ALTER TABLE `content_tag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `invoice`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

ALTER TABLE `kegiatan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `kegiatan_user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `kelompok`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `kelompok_user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `menu_position`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `message`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `subscriber`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `trash`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `user_jabatan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `user_login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

ALTER TABLE `user_login_failed`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `user_role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `visitor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;


ALTER TABLE `kelompok_user`
  ADD CONSTRAINT `fk_kelompok_user_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_kelompok_user_2` FOREIGN KEY (`kelompok_id`) REFERENCES `kelompok` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `trash`
  ADD CONSTRAINT `trash_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
