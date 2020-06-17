-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2020 at 05:08 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freshcity`
--

-- --------------------------------------------------------

--
-- Table structure for table `core_config_data`
--

CREATE TABLE `core_config_data` (
  `config_id` int(10) UNSIGNED NOT NULL COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Config Data';

--
-- Dumping data for table `core_config_data`
--

INSERT INTO `core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`) VALUES
(1, 'default', 0, 'web/seo/use_rewrites', '1'),
(2, 'default', 0, 'web/unsecure/base_url', 'http://localhost/freshcity/'),
(3, 'default', 0, 'web/secure/base_url', 'https://localhost/freshcity/'),
(4, 'default', 0, 'general/locale/code', 'en_US'),
(5, 'default', 0, 'web/secure/use_in_frontend', NULL),
(6, 'default', 0, 'web/secure/use_in_adminhtml', NULL),
(7, 'default', 0, 'general/locale/timezone', 'UTC'),
(8, 'default', 0, 'currency/options/base', 'KES'),
(9, 'default', 0, 'currency/options/default', 'KES'),
(10, 'default', 0, 'currency/options/allow', 'KES'),
(11, 'default', 0, 'general/region/display_all', '1'),
(12, 'default', 0, 'general/region/state_required', 'AT,BR,CA,CH,EE,ES,FI,HR,IN,LT,LV,RO,US'),
(13, 'default', 0, 'catalog/category/root_id', '2'),
(14, 'default', 0, 'analytics/subscription/enabled', '1'),
(15, 'default', 0, 'crontab/default/jobs/analytics_subscribe/schedule/cron_expr', '0 * * * *'),
(16, 'website', 0, 'connector_configuration/transactional_data/order_statuses', 'canceled,closed,complete,fraud,holded,payment_review,paypal_canceled_reversal,paypal_reversed,pending,pending_payment,pending_paypal,processing'),
(17, 'website', 0, 'connector_configuration/catalog_sync/catalog_type', 'simple,virtual,bundle,configurable,downloadable,grouped'),
(18, 'website', 0, 'connector_configuration/catalog_sync/catalog_visibility', '1,2,3,4'),
(19, 'default', 0, 'connector_dynamic_content/external_dynamic_content_urls/passcode', 'oVFBsGDQOzu6vtqXgZCCsgAsLpHGYdPz'),
(20, 'default', 0, 'connector_automation/review_settings/allow_non_subscribers', '1'),
(21, 'default', 0, 'connector_configuration/abandoned_carts/allow_non_subscribers', '1'),
(22, 'default', 0, 'design/theme/theme_id', '10'),
(23, 'default', 0, 'web/default/cms_home_page', 'codazon-home-page'),
(24, 'default', 0, 'currency/yahoofinance/timeout', '100'),
(25, 'default', 0, 'currency/fixerio/timeout', '100'),
(26, 'default', 0, 'currency/import/service', 'yahoofinance'),
(27, 'default', 0, 'crontab/default/jobs/currency_rates_update/schedule/cron_expr', '0 0 * * *'),
(28, 'default', 0, 'currency/import/time', '00,00,00'),
(29, 'default', 0, 'currency/import/frequency', 'D'),
(30, 'default', 0, 'currency/import/error_email', NULL),
(32, 'default', 0, 'mfblog/general/enabled', '1'),
(33, 'default', 0, 'mfblog/index_page/title', 'Blog'),
(34, 'default', 0, 'mfblog/index_page/display_mode', '0'),
(35, 'default', 0, 'mfblog/index_page/posts_sort_by', '0'),
(36, 'default', 0, 'mfblog/index_page/meta_title', NULL),
(37, 'default', 0, 'mfblog/index_page/meta_keywords', NULL),
(38, 'default', 0, 'mfblog/index_page/meta_description', NULL),
(39, 'default', 0, 'mfblog/post_view/related_posts/enabled', '1'),
(40, 'default', 0, 'mfblog/post_view/related_posts/number_of_posts', '5'),
(41, 'default', 0, 'mfblog/post_view/related_products/enabled', '1'),
(42, 'default', 0, 'mfblog/post_view/related_products/number_of_products', '5'),
(43, 'default', 0, 'mfblog/post_view/comments/type', 'magefan'),
(44, 'default', 0, 'mfblog/post_view/comments/number_of_comments', '5'),
(45, 'default', 0, 'mfblog/post_view/comments/number_of_replies', '5'),
(46, 'default', 0, 'mfblog/post_view/comments/guest_comments', '1'),
(47, 'default', 0, 'mfblog/post_view/comments/default_status', '0'),
(48, 'default', 0, 'mfblog/post_view/comments/display_privacy_policy_checkbox', '0'),
(49, 'default', 0, 'mfblog/post_view/nextprev/enabled', '1'),
(50, 'default', 0, 'mfblog/post_view/views_count/enabled', '0'),
(51, 'default', 0, 'mfblog/post_list/shortcotent_length', '1000'),
(52, 'default', 0, 'mfblog/post_list/posts_per_page', '10'),
(53, 'default', 0, 'mfblog/post_list/lazyload_enabled', '0'),
(54, 'default', 0, 'mfblog/post_list/end_characters', NULL),
(55, 'default', 0, 'mfblog/sidebar/search/enabled', '1'),
(56, 'default', 0, 'mfblog/sidebar/search/sort_order', '10'),
(57, 'default', 0, 'mfblog/sidebar/categories/enabled', '1'),
(58, 'default', 0, 'mfblog/sidebar/categories/show_posts_count', '1'),
(59, 'default', 0, 'mfblog/sidebar/categories/max_depth', '2'),
(60, 'default', 0, 'mfblog/sidebar/categories/sort_order', '20'),
(61, 'default', 0, 'mfblog/sidebar/recent_posts/enabled', '1'),
(62, 'default', 0, 'mfblog/sidebar/recent_posts/posts_per_page', '5'),
(63, 'default', 0, 'mfblog/sidebar/recent_posts/sort_order', '30'),
(64, 'default', 0, 'mfblog/sidebar/featured_posts/enabled', '0'),
(65, 'default', 0, 'mfblog/sidebar/featured_posts/posts_ids', NULL),
(66, 'default', 0, 'mfblog/sidebar/featured_posts/sort_order', '35'),
(67, 'default', 0, 'mfblog/sidebar/popular_posts/enabled', '0'),
(68, 'default', 0, 'mfblog/sidebar/popular_posts/posts_per_page', '5'),
(69, 'default', 0, 'mfblog/sidebar/popular_posts/sort_order', '36'),
(70, 'default', 0, 'mfblog/sidebar/archive/enabled', '1'),
(71, 'default', 0, 'mfblog/sidebar/archive/sort_order', '40'),
(72, 'default', 0, 'mfblog/sidebar/tag_claud/enabled', '1'),
(73, 'default', 0, 'mfblog/sidebar/tag_claud/animated', '0'),
(74, 'default', 0, 'mfblog/sidebar/tag_claud/sort_order', '45'),
(75, 'default', 0, 'mfblog/sidebar/tag_claud/tag_count', '50'),
(76, 'default', 0, 'mfblog/sidebar/custom/enabled', '0'),
(77, 'default', 0, 'mfblog/sidebar/custom/sort_order', NULL),
(78, 'default', 0, 'mfblog/sidebar/custom/html', NULL),
(79, 'default', 0, 'mfblog/sidebar/custom2/enabled', '0'),
(80, 'default', 0, 'mfblog/sidebar/custom2/sort_order', NULL),
(81, 'default', 0, 'mfblog/sidebar/custom2/html', NULL),
(82, 'default', 0, 'mfblog/sidebar/rss_feed/enabled', '0'),
(83, 'default', 0, 'mfblog/sidebar/rss_feed/sort_order', '50'),
(84, 'default', 0, 'mfblog/sidebar/rss_feed/title', 'Blog Rss'),
(85, 'default', 0, 'mfblog/sidebar/rss_feed/description', NULL),
(86, 'default', 0, 'mfblog/product_page/related_posts_enabled', '1'),
(87, 'default', 0, 'mfblog/product_page/number_of_related_posts', '5'),
(88, 'default', 0, 'mfblog/author/enabled', '1'),
(89, 'default', 0, 'mfblog/author/page_enabled', '1'),
(90, 'default', 0, 'mfblog/author/robots', 'NOINDEX,FOLLOW'),
(91, 'default', 0, 'mfblog/tag/robots', 'NOINDEX,FOLLOW'),
(92, 'default', 0, 'mfblog/search/robots', 'NOINDEX,FOLLOW'),
(93, 'default', 0, 'mfblog/permalink/route', 'blog'),
(94, 'default', 0, 'mfblog/permalink/redirect_to_no_slash', '1'),
(95, 'default', 0, 'mfblog/permalink/type', 'default'),
(96, 'default', 0, 'mfblog/permalink/post_route', 'post'),
(97, 'default', 0, 'mfblog/permalink/post_sufix', NULL),
(98, 'default', 0, 'mfblog/permalink/post_use_categories', '0'),
(99, 'default', 0, 'mfblog/permalink/category_route', 'category'),
(100, 'default', 0, 'mfblog/permalink/category_sufix', NULL),
(101, 'default', 0, 'mfblog/permalink/category_use_categories', '0'),
(102, 'default', 0, 'mfblog/permalink/archive_route', 'archive'),
(103, 'default', 0, 'mfblog/permalink/tag_route', 'tag'),
(104, 'default', 0, 'mfblog/permalink/tag_sufix', NULL),
(105, 'default', 0, 'mfblog/permalink/author_route', 'author'),
(106, 'default', 0, 'mfblog/permalink/author_sufix', NULL),
(107, 'default', 0, 'mfblog/permalink/search_route', 'search'),
(108, 'default', 0, 'mfblog/seo/use_canonical_meta_tag_for', 'all'),
(109, 'default', 0, 'mfblog/social/add_this_enabled', '1'),
(110, 'default', 0, 'mfblog/social/add_this_pubid', 'ra-4def63cd3cf37569'),
(111, 'default', 0, 'mfblog/social/add_this_language', 'en'),
(112, 'default', 0, 'mfblog/top_menu/show_item', '1'),
(113, 'default', 0, 'mfblog/top_menu/item_text', 'Blog'),
(114, 'default', 0, 'mfblog/top_menu/include_categories', '1'),
(115, 'default', 0, 'mfblog/top_menu/max_depth', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `core_config_data`
--
ALTER TABLE `core_config_data`
  ADD PRIMARY KEY (`config_id`),
  ADD UNIQUE KEY `CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `core_config_data`
--
ALTER TABLE `core_config_data`
  MODIFY `config_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Config Id', AUTO_INCREMENT=116;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
