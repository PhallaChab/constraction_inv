-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2017 at 04:07 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inv-construction`
--
CREATE DATABASE IF NOT EXISTS `inv-construction` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `inv-construction`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_04_07_071756_create_tbl_sale_invs_table', 1),
('2017_04_07_074020_create_tbl_sale_details_table', 1),
('2017_04_07_075549_create_tbl_companies_table', 1),
('2017_04_10_085456_create_tbl_sub_menuses_table', 1),
('2017_04_10_093123_create_tbl_menuses_table', 1),
('2017_04_11_042305_add_url_to_tbl_sub_menuses', 2),
('2017_04_11_043618_add_url_to_tbl_sub_menuses', 3),
('2017_04_11_044314_add_url_to_tbl_sub_menuses', 4),
('2017_04_11_072103_create_tbl_customers_table', 5),
('2017_04_12_030050_create_tbl_items_table', 6),
('2017_04_12_065241_create_tbl_item_details_table', 7),
('2017_04_17_102452_create_tbl_account_types_table', 8),
('2017_04_17_102753_create_tbl_accountings_table', 9),
('2017_04_18_070837_create_tbl_account_categories_table', 9),
('2017_04_19_011759_create_tbl_tax_types_table', 10),
('2017_04_19_012004_create_tbl_tax_rates_table', 10),
('2017_04_19_012541_add_account_name_to_tbl_accountings_table', 10),
('2017_04_19_013134_add_tax_status_to_tbl_tax_rates_table', 11),
('2017_04_21_101211_create_tbl_tax_components_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('phanna.ty@mwgroup.com.kh', '77c9d99f8d6291abe2cc5fe7913a0f8892be7e5f0af10fc2bfb9c9225cf2bea7', '2017-04-24 02:36:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

DROP TABLE IF EXISTS `tbl_categories`;
CREATE TABLE `tbl_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Construction', '2017-07-13 01:41:44', '2017-07-13 01:41:44'),
(2, 'simong', '2017-08-16 18:39:49', '2017-08-16 18:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

DROP TABLE IF EXISTS `tbl_department`;
CREATE TABLE `tbl_department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`id`, `department_name`, `created_at`, `updated_at`) VALUES
(1, 'Receiver', '2017-07-12 18:37:16', '2017-07-13 01:37:16'),
(2, 'Supplier', '2017-07-12 18:37:24', '2017-07-13 01:37:24'),
(3, 'Stock Request', '2017-07-12 18:37:34', '2017-07-13 01:37:34'),
(4, 'Item BOQ Set', '2017-07-12 18:37:47', '2017-07-13 01:37:47'),
(5, 'Purchasing Order', '2017-07-12 18:37:59', '2017-07-13 01:37:59'),
(6, 'Stock In', '2017-07-12 18:39:17', '2017-07-13 01:39:17'),
(7, 'Stock Out', '2017-07-12 18:39:27', '2017-07-13 01:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

DROP TABLE IF EXISTS `tbl_items`;
CREATE TABLE `tbl_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_category_id` int(11) NOT NULL,
  `item_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_measure` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `is_actived` tinyint(4) NOT NULL COMMENT '0:default; 1:deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`id`, `user_id`, `item_category_id`, `item_code`, `item_name`, `item_measure`, `photo`, `description`, `is_actived`, `created_at`, `updated_at`) VALUES
(1, 41, 1, 'Req201708001', 'test', 'test', '', '  test', 0, '2017-08-09 00:56:52', '2017-08-09 00:56:58'),
(2, 41, 1, 'Req201708002', 'hello', '444', '', '  hello', 0, '2017-08-09 00:57:15', '2017-08-09 01:29:41'),
(3, 41, 1, 'Req201708003', 'last test', 'tr', '', '  ', 0, '2017-08-09 01:26:50', '2017-08-09 20:05:39'),
(4, 41, 2, 'Req201708004', 'hellow', 'good', '1502334361.jpg', '  gppd', 0, '2017-08-09 01:29:55', '2017-08-16 20:02:49'),
(5, 41, 2, 'Req201708005', 'new', 'bea', '1502934142.png', 'ddd', 0, '2017-08-16 18:42:22', '2017-08-16 18:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_stocks`
--

DROP TABLE IF EXISTS `tbl_item_stocks`;
CREATE TABLE `tbl_item_stocks` (
  `id` int(11) NOT NULL,
  `inv_sale_id` int(11) NOT NULL,
  `inv_purchase_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0:stock in;1:stockOut;2:broken',
  `amount` int(11) NOT NULL,
  `unit_price` float NOT NULL,
  `purchase_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_item_stocks`
--

INSERT INTO `tbl_item_stocks` (`id`, `inv_sale_id`, `inv_purchase_id`, `item_id`, `status`, `amount`, `unit_price`, `purchase_date`, `created_at`, `updated_at`) VALUES
(1, 0, 2, 3, 0, 50, 6, '2017-08-18', '2017-08-16 20:05:35', '2017-08-16 20:05:35'),
(2, 0, 2, 4, 0, 600, 6, '2017-08-18', '2017-08-16 20:05:35', '2017-08-16 20:05:35'),
(3, 0, 1, 1, 0, 100, 5, '2017-08-17', '2017-08-16 20:05:46', '2017-08-16 20:05:46'),
(4, 0, 1, 2, 0, 300, 3, '2017-08-17', '2017-08-16 20:05:46', '2017-08-16 20:05:46'),
(5, 0, 1, 3, 0, 400, 5, '2017-08-17', '2017-08-16 20:05:46', '2017-08-16 20:05:46'),
(6, 0, 3, 5, 0, 500, 5, '2017-08-17', '2017-08-16 20:06:51', '2017-08-16 20:06:51'),
(7, 1, 0, 1, 1, 20, 5, '2017-08-18', '2017-08-16 20:10:01', '2017-08-16 20:10:01'),
(8, 1, 0, 2, 1, 20, 3, '2017-08-18', '2017-08-16 20:10:01', '2017-08-16 20:10:01'),
(9, 1, 0, 3, 1, 30, 5, '2017-08-18', '2017-08-16 20:10:01', '2017-08-16 20:10:01'),
(10, 2, 0, 4, 1, 50, 6, '2017-08-25', '2017-08-16 20:10:19', '2017-08-16 20:10:19'),
(11, 2, 0, 5, 1, 20, 5, '2017-08-25', '2017-08-16 20:10:19', '2017-08-16 20:10:19'),
(12, 4, 0, 1, 1, 21, 5, '2017-08-17', '2017-08-17 00:19:58', '2017-08-17 00:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menuses`
--

DROP TABLE IF EXISTS `tbl_menuses`;
CREATE TABLE `tbl_menuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_menuses`
--

INSERT INTO `tbl_menuses` (`id`, `name`, `icon`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', '', '/home', NULL, NULL),
(2, 'Data Warehouse', '', '/newInventory', NULL, NULL),
(4, 'Stock Request', '', '#', NULL, NULL),
(5, 'Purchasing', '', '#', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase`
--

DROP TABLE IF EXISTS `tbl_purchase`;
CREATE TABLE `tbl_purchase` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `supl_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `purchase_code` varchar(200) NOT NULL,
  `total_price` varchar(200) NOT NULL,
  `note` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0:purchasing,1approv,2: instock',
  `is_actived` tinyint(4) NOT NULL COMMENT '0:default; 1 rejected',
  `purchase_date` datetime NOT NULL,
  `date_in` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_purchase`
--

INSERT INTO `tbl_purchase` (`id`, `user_id`, `supl_id`, `staff_id`, `zone_id`, `purchase_code`, `total_price`, `note`, `status`, `is_actived`, `purchase_date`, `date_in`, `created_at`, `updated_at`) VALUES
(1, 41, 1, 1, 3, 'Pur-20170817001', '3400', '', 2, 0, '2017-08-17 00:00:00', '2017-08-16 17:00:00', '2017-08-16 20:03:38', '2017-08-16 20:05:46'),
(2, 41, 1, 2, 5, 'Pur-20170817002', '3900', '', 2, 0, '2017-08-17 00:00:00', '2017-08-17 17:00:00', '2017-08-16 20:04:12', '2017-08-16 20:05:35'),
(3, 41, 1, 1, 5, 'Pur-20170817003', '2500', '', 2, 0, '2017-08-07 00:00:00', '2017-08-16 17:00:00', '2017-08-16 20:06:40', '2017-08-16 20:06:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_detail`
--

DROP TABLE IF EXISTS `tbl_purchase_detail`;
CREATE TABLE `tbl_purchase_detail` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_purchase_detail`
--

INSERT INTO `tbl_purchase_detail` (`id`, `purchase_id`, `item_id`, `qty`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100, 5, '2017-08-16 20:03:38', '2017-08-16 20:03:38'),
(2, 1, 2, 300, 3, '2017-08-16 20:03:38', '2017-08-16 20:03:38'),
(3, 1, 3, 400, 5, '2017-08-16 20:03:38', '2017-08-16 20:03:38'),
(4, 2, 3, 50, 6, '2017-08-16 20:04:12', '2017-08-16 20:04:12'),
(5, 2, 4, 600, 6, '2017-08-16 20:04:12', '2017-08-16 20:04:12'),
(6, 3, 5, 500, 5, '2017-08-16 20:06:40', '2017-08-16 20:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
CREATE TABLE `tbl_roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`id`, `role_name`) VALUES
(1, 'Super Admin'),
(2, 'System Auditor'),
(3, 'Support');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_saleinv_details`
--

DROP TABLE IF EXISTS `tbl_saleinv_details`;
CREATE TABLE `tbl_saleinv_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_inv_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` double(8,2) NOT NULL,
  `unit_price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_saleinv_details`
--

INSERT INTO `tbl_saleinv_details` (`id`, `sale_inv_id`, `item_id`, `qty`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 20.00, 5.00, '2017-08-16 20:07:30', '2017-08-16 20:07:30'),
(2, 1, 2, 20.00, 3.00, '2017-08-16 20:07:30', '2017-08-16 20:07:30'),
(3, 1, 3, 30.00, 5.00, '2017-08-16 20:07:30', '2017-08-16 20:07:30'),
(4, 2, 4, 50.00, 6.00, '2017-08-16 20:07:52', '2017-08-16 20:07:52'),
(5, 2, 5, 20.00, 5.00, '2017-08-16 20:07:52', '2017-08-16 20:07:52'),
(6, 3, 3, 90.00, 5.00, '2017-08-16 20:12:48', '2017-08-16 20:12:48'),
(7, 4, 1, 21.00, 5.00, '2017-08-17 00:19:13', '2017-08-17 00:19:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_invs`
--

DROP TABLE IF EXISTS `tbl_sale_invs`;
CREATE TABLE `tbl_sale_invs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `takeout_staff_id` int(11) NOT NULL,
  `invoid_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `total_price` float NOT NULL,
  `toDate` datetime NOT NULL,
  `date_out` timestamp NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(11) NOT NULL COMMENT '0:requestStock; 1:approve; 2: taken',
  `is_actived` tinyint(4) NOT NULL COMMENT '0:default; 1 rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_sale_invs`
--

INSERT INTO `tbl_sale_invs` (`id`, `user_id`, `staff_id`, `zone_id`, `takeout_staff_id`, `invoid_code`, `total_price`, `toDate`, `date_out`, `note`, `status`, `is_actived`, `created_at`, `updated_at`) VALUES
(1, 41, 1, 3, 2, 'Inv-20170817001', 310, '2017-08-17 00:00:00', '2017-08-17 17:00:00', '', 2, 0, '2017-08-16 20:07:30', '2017-08-16 20:10:01'),
(2, 41, 2, 3, 1, 'Inv-20170817002', 400, '2017-08-17 00:00:00', '2017-08-24 17:00:00', '', 2, 0, '2017-08-16 20:07:52', '2017-08-16 20:10:19'),
(3, 41, 1, 3, 0, 'Inv-20170817003', 0, '2017-08-08 00:00:00', '0000-00-00 00:00:00', '', 0, 0, '2017-08-16 20:12:48', '2017-08-16 20:12:48'),
(4, 41, 1, 5, 2, 'Inv-20170817004', 105, '2017-08-17 00:00:00', '2017-08-16 17:00:00', '213', 2, 0, '2017-08-17 00:19:12', '2017-08-17 00:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staffs`
--

DROP TABLE IF EXISTS `tbl_staffs`;
CREATE TABLE `tbl_staffs` (
  `id` int(11) NOT NULL,
  `staff_name` varchar(255) NOT NULL,
  `phone_number` varchar(250) NOT NULL,
  `gender` tinyint(4) NOT NULL COMMENT '1: Male, 2: Female',
  `position` varchar(255) NOT NULL,
  `type` varchar(200) NOT NULL,
  `staff_group` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_staffs`
--

INSERT INTO `tbl_staffs` (`id`, `staff_name`, `phone_number`, `gender`, `position`, `type`, `staff_group`, `created_at`, `updated_at`) VALUES
(1, 'phalla chab', '09876543', 2, 'Developer', '', '', '2017-08-14 20:54:24', '2017-08-14 20:54:24'),
(2, 'Dara', '123', 1, 'ww', '', '', '2017-08-14 20:54:35', '2017-08-14 20:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_menuses`
--

DROP TABLE IF EXISTS `tbl_sub_menuses`;
CREATE TABLE `tbl_sub_menuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL,
  `sub_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_sub_menuses`
--

INSERT INTO `tbl_sub_menuses` (`id`, `menu_id`, `sub_name`, `url`, `created_at`, `updated_at`) VALUES
(1, 4, 'Request Order', '/stockRequest', NULL, NULL),
(2, 4, 'Manage Request', '/request_management', NULL, NULL),
(3, 4, 'Stock Out', '/warehouse', NULL, NULL),
(4, 5, 'Purchasing', '/purchasing', NULL, NULL),
(5, 5, 'Manage Purchase', '/managePurchase', NULL, NULL),
(6, 5, 'Stock In', '/stockin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suppliers`
--

DROP TABLE IF EXISTS `tbl_suppliers`;
CREATE TABLE `tbl_suppliers` (
  `id` int(11) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `seller` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_suppliers`
--

INSERT INTO `tbl_suppliers` (`id`, `company_name`, `seller`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'MWgroup', 'Phalla', '0123654789', 'Psa chas', '2017-07-12 02:16:03', '2017-07-12 02:16:03'),
(6, 'f', 'ff', '223', 'fff', '2017-08-14 03:20:52', '2017-08-14 03:20:59'),
(3, 'CIM', 'Lala smile', '0123654', 'PP', '2017-07-12 02:24:45', '2017-08-10 18:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_units`
--

DROP TABLE IF EXISTS `tbl_units`;
CREATE TABLE `tbl_units` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_units`
--

INSERT INTO `tbl_units` (`id`, `name`, `created_at`, `updated_at`) VALUES
(5, 'Ton', 127, '2017-07-12 18:22:17'),
(4, 'Kilo', 127, '2017-07-12 18:22:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_zones`
--

DROP TABLE IF EXISTS `tbl_zones`;
CREATE TABLE `tbl_zones` (
  `id` int(11) NOT NULL,
  `zone` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_zones`
--

INSERT INTO `tbl_zones` (`id`, `zone`, `created_at`, `updated_at`) VALUES
(3, 'Zone 12345', '2017-08-15 19:36:09', '2017-08-16 18:53:10'),
(5, 'dfafeff', '2017-08-16 18:43:20', '2017-08-16 18:43:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `permission` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `dept_id`, `permission`, `status`, `name`, `email`, `password`, `position`, `telephone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '1,2,4,8,9,10,11,', 0, 'phanna', 't.phanna@hotmail.com', '$2y$10$Zq8C2hV1Ws6v2OBmACKqy.QvDFhYHudiO9WX9Z3ZvmDTP0nLpgmoy', 'Suppervisor', '01236547889', 'ujXVPaciuLissncQCSh2eHuAkEL7LvmOD0HQMHMgUUmLiVeoLhXU8Gs0F36k', '2017-04-10 20:39:45', '2017-08-10 19:38:03'),
(33, 1, 3, '', 0, 'phalla', 'phalla.chab@mwgroup.com.kh', '09d19cc66019e534c0cdecdd61ee4b28', '', '', 'J9sKvCKRZlE2F0ZpnOs7VS8TxRkXV5ZZ7G9W8aAPLG2UROuKIawlhv09YHAQ', '2017-06-05 19:28:19', '2017-07-24 02:13:50'),
(40, 2, 4, '', 0, 'lala', 'lala@gmail.com', '$2y$10$Zq8C2hV1Ws6v2OBmACKqy.QvDFhYHudiO9WX9Z3ZvmDTP0nLpgmoy', '', '', 'AtrU5A8sJ0p25NffGrWPyTTWwerrcIyS9dd5efADAfZSUERWLAwSA3HH7DoG', '2017-07-12 19:04:53', '2017-07-24 02:14:23'),
(41, 1, 5, '1,2,4,41,42,43,5,54,55,56,58,', 0, 'Dara', 'dara@gmail.com', '$2y$10$UWbcbs.P/Kyhs9o99o8Ije6pAPEwLvmfPF5ckpJJR2fpYXGeYKLL.', 'Suppervisor', '01236547889', 'OwtJeADOkLNwyEASP0SPZp1uuATzqsxG6VucdVW7XXdjldVp5E04pZR0JaRh', '2017-07-12 23:59:37', '2017-08-13 20:55:50'),
(42, 2, 3, '', 0, 'Jonh', 't.phanna@outlook.com', '$2y$10$PD0c/qp.C2ppE2/uGigZsuKD1op.SbnUyDtAYqeGZug4YVkLCrzGG', 'IT', '01234566', NULL, '2017-08-11 01:18:47', '2017-08-11 01:20:52'),
(43, 2, 1, '', 0, 'ff', 'ff@gmail.com', '$2y$10$/tv4uHFCTEdNYoCXUVWpG.sj8RqnoH9Z13t3Yofw6PbILDsVAVMe.', 'dd', '3333', NULL, '2017-08-14 01:54:59', '2017-08-14 01:54:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_code` (`item_code`);

--
-- Indexes for table `tbl_item_stocks`
--
ALTER TABLE `tbl_item_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menuses`
--
ALTER TABLE `tbl_menuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase_detail`
--
ALTER TABLE `tbl_purchase_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_saleinv_details`
--
ALTER TABLE `tbl_saleinv_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sale_invs`
--
ALTER TABLE `tbl_sale_invs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_staffs`
--
ALTER TABLE `tbl_staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sub_menuses`
--
ALTER TABLE `tbl_sub_menuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_units`
--
ALTER TABLE `tbl_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_zones`
--
ALTER TABLE `tbl_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_item_stocks`
--
ALTER TABLE `tbl_item_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_menuses`
--
ALTER TABLE `tbl_menuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_purchase_detail`
--
ALTER TABLE `tbl_purchase_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_saleinv_details`
--
ALTER TABLE `tbl_saleinv_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_sale_invs`
--
ALTER TABLE `tbl_sale_invs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_staffs`
--
ALTER TABLE `tbl_staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_sub_menuses`
--
ALTER TABLE `tbl_sub_menuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_units`
--
ALTER TABLE `tbl_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_zones`
--
ALTER TABLE `tbl_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
