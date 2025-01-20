-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2025 at 11:05 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `niyd_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Gucce', 1, 'dfdsfdsf', 'upload/brand-images/icons8-shirt-100.png', '2025-01-13 03:24:18', '2025-01-13 23:55:22'),
(2, 'Sony', 1, 'dsfsdf', 'upload/brand-images/icons8-mobile-phone-100.png', '2025-01-13 04:10:30', '2025-01-13 04:10:30'),
(3, 'Realme', 1, 'Realme', 'upload/brand-images/Realme_logo.svg.png', '2025-01-14 22:38:23', '2025-01-14 22:38:23'),
(4, 'No Brand', 1, 'No brand', 'upload/brand-images/not found.jpg', '2025-01-19 07:35:00', '2025-01-19 07:35:00'),
(5, 'Hp', 1, 'Hp', 'upload/brand-images/hp logo.png', '2025-01-19 07:46:50', '2025-01-19 07:46:50'),
(6, 'RFL', 1, 'RFL', 'upload/brand-images/rfl logo.jpg', '2025-01-19 08:41:01', '2025-01-19 08:41:01'),
(7, 'TECNO', 1, 'tecno', 'upload/brand-images/tecno logo.png', '2025-01-19 09:14:11', '2025-01-19 09:14:11'),
(8, 'Woodland', 1, 'Woodland', 'upload/brand-images/not found.png', '2025-01-19 22:35:38', '2025-01-19 22:35:38'),
(9, 'Gigabyte', 1, 'Gigabyte', 'upload/brand-images/gigabyte-vector-logo.png', '2025-01-19 22:45:34', '2025-01-19 22:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('c525a5357e97fef8d3db25841c86da1a', 'i:1;', 1737343384),
('c525a5357e97fef8d3db25841c86da1a:timer', 'i:1737343384;', 1737343384),
('eef95f658febcee12b41ea8ec1bace29', 'i:1;', 1737343265),
('eef95f658febcee12b41ea8ec1bace29:timer', 'i:1737343265;', 1737343265);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `description`, `image`, `created_at`, `updated_at`, `home_status`) VALUES
(2, 'Man Fasion', 1, 'dfdf', 'upload/category-images/icons8-shirt-100.png', '2025-01-13 02:48:59', '2025-01-13 02:48:59', 0),
(3, 'Women Fashion', 1, 'sdfdf', 'upload/category-images/icons8-shirt-100.png', '2025-01-13 02:49:10', '2025-01-13 02:49:10', 0),
(4, 'Electronics', 1, 'dfdsf', 'upload/category-images/icons8-mobile-phone-100.png', '2025-01-13 02:49:41', '2025-01-13 02:49:41', 1),
(5, 'Kids Fashion', 1, 'dfdf', 'upload/category-images/icons8-mobile-phone-100.png', '2025-01-15 03:41:17', '2025-01-15 03:41:17', 0),
(6, 'Technology', 1, 'Technology', 'upload/category-images/not found.jpg', '2025-01-19 07:45:25', '2025-01-19 07:45:25', 1),
(7, 'Tools, DIY & Outdoor', 1, 'Tools, DIY & Outdoor', 'upload/category-images/not found.jpg', '2025-01-19 08:34:54', '2025-01-19 08:34:54', 0),
(8, 'Sports & Outdoors', 1, 'Sports & Outdoors', 'upload/category-images/not found.jpg', '2025-01-19 08:45:47', '2025-01-19 08:45:47', 0),
(9, 'Kids Toy', 1, 'Kids toy', 'upload/category-images/not found.jpg', '2025-01-19 09:26:00', '2025-01-19 09:26:00', 0);

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_06_040313_add_two_factor_columns_to_users_table', 1),
(5, '2025_01_06_040339_create_personal_access_tokens_table', 1),
(6, '2025_01_08_050909_create_categories_table', 1),
(7, '2025_01_13_031355_create_brands_table', 1),
(8, '2025_01_13_035855_create_sub_categories_table', 1),
(9, '2025_01_13_082746_create_units_table', 1),
(12, '2025_01_14_061110_create_products_table', 2),
(13, '2025_01_14_063037_create_other_images_table', 2),
(14, '2025_01_20_053018_add_home_status_column_to_categories_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `other_images`
--

CREATE TABLE `other_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_images`
--

INSERT INTO `other_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'upload/product-other-images/images (1).jfif', '2025-01-14 22:41:38', '2025-01-14 22:41:38'),
(2, 2, 'upload/product-other-images/1708584081386358.jpeg', '2025-01-14 22:41:38', '2025-01-14 22:41:38'),
(3, 2, 'upload/product-other-images/images.jfif', '2025-01-14 22:41:38', '2025-01-14 22:41:38'),
(4, 3, 'upload/product-other-images/bde59fe05909a1e7feb090a6f79b1ba2.jpg_80x80q80.jpg_.webp', '2025-01-14 23:12:19', '2025-01-14 23:12:19'),
(5, 3, 'upload/product-other-images/0843cc4df4eafdef982514d42aea7235.jpg_80x80q80.jpg_.webp', '2025-01-14 23:12:19', '2025-01-14 23:12:19'),
(6, 3, 'upload/product-other-images/07093e37784b1070e12deb3706670027.jpg_720x720q80.jpg_.webp', '2025-01-14 23:12:19', '2025-01-14 23:12:19'),
(14, 6, 'upload/product-other-images/hjab 3.jpg', '2025-01-19 07:39:50', '2025-01-19 07:39:50'),
(15, 6, 'upload/product-other-images/hijab 2.jpg', '2025-01-19 07:39:50', '2025-01-19 07:39:50'),
(16, 6, 'upload/product-other-images/hijab 2720x720q80.jpg', '2025-01-19 07:39:50', '2025-01-19 07:39:50'),
(17, 5, 'upload/product-other-images/kids tshirt 2.jpg', '2025-01-19 07:43:56', '2025-01-19 07:43:56'),
(18, 5, 'upload/product-other-images/kidst-shirt.jpg', '2025-01-19 07:43:56', '2025-01-19 07:43:56'),
(19, 7, 'upload/product-other-images/hp leptop 4.png', '2025-01-19 07:50:46', '2025-01-19 07:50:46'),
(20, 7, 'upload/product-other-images/hp leptop 3.png', '2025-01-19 07:50:46', '2025-01-19 07:50:46'),
(21, 7, 'upload/product-other-images/hp leptop 2.png', '2025-01-19 07:50:46', '2025-01-19 07:50:46'),
(22, 7, 'upload/product-other-images/hp leptop.png', '2025-01-19 07:50:46', '2025-01-19 07:50:46'),
(23, 8, 'upload/product-other-images/ladder3.jpg', '2025-01-19 08:44:13', '2025-01-19 08:44:13'),
(24, 8, 'upload/product-other-images/ladder2.jpg', '2025-01-19 08:44:13', '2025-01-19 08:44:13'),
(25, 8, 'upload/product-other-images/ladder.jpg', '2025-01-19 08:44:13', '2025-01-19 08:44:13'),
(26, 9, 'upload/product-other-images/fotball3.jpg', '2025-01-19 08:54:23', '2025-01-19 08:54:23'),
(27, 9, 'upload/product-other-images/fotball2.jpg', '2025-01-19 08:54:23', '2025-01-19 08:54:23'),
(28, 9, 'upload/product-other-images/football.jpg', '2025-01-19 08:54:23', '2025-01-19 08:54:23'),
(29, 10, 'upload/product-other-images/panjabi2.jpg', '2025-01-19 09:03:53', '2025-01-19 09:03:53'),
(30, 10, 'upload/product-other-images/panjabi.jpg', '2025-01-19 09:03:53', '2025-01-19 09:03:53'),
(31, 11, 'upload/product-other-images/hodie.jpg', '2025-01-19 09:10:06', '2025-01-19 09:10:06'),
(32, 12, 'upload/product-other-images/tecno3.png', '2025-01-19 09:15:48', '2025-01-19 09:15:48'),
(33, 12, 'upload/product-other-images/tecno4.png', '2025-01-19 09:15:48', '2025-01-19 09:15:48'),
(34, 12, 'upload/product-other-images/tecno2.png', '2025-01-19 09:15:48', '2025-01-19 09:15:48'),
(35, 12, 'upload/product-other-images/tecno spark.png', '2025-01-19 09:15:48', '2025-01-19 09:15:48'),
(36, 13, 'upload/product-other-images/headphone3.jpg', '2025-01-19 09:20:30', '2025-01-19 09:20:30'),
(37, 13, 'upload/product-other-images/headphone2.jpg', '2025-01-19 09:20:30', '2025-01-19 09:20:30'),
(38, 13, 'upload/product-other-images/headphone.jpg', '2025-01-19 09:20:30', '2025-01-19 09:20:30'),
(39, 14, 'upload/product-other-images/kidscar.jpg', '2025-01-19 09:28:00', '2025-01-19 09:28:00'),
(40, 15, 'upload/product-other-images/shoe4.jpg', '2025-01-19 22:37:11', '2025-01-19 22:37:11'),
(41, 15, 'upload/product-other-images/shoe3.jpg', '2025-01-19 22:37:11', '2025-01-19 22:37:11'),
(42, 15, 'upload/product-other-images/shoe2.jpg', '2025-01-19 22:37:11', '2025-01-19 22:37:11'),
(43, 15, 'upload/product-other-images/shoe.jpg', '2025-01-19 22:37:11', '2025-01-19 22:37:11'),
(44, 16, 'upload/product-other-images/jacket3.jpg', '2025-01-19 22:41:26', '2025-01-19 22:41:26'),
(45, 16, 'upload/product-other-images/jacket2.jpg', '2025-01-19 22:41:26', '2025-01-19 22:41:26'),
(46, 16, 'upload/product-other-images/jacket.jpg', '2025-01-19 22:41:26', '2025-01-19 22:41:26'),
(47, 17, 'upload/product-other-images/gigabyte leptop 3.png', '2025-01-19 22:49:35', '2025-01-19 22:49:35'),
(48, 17, 'upload/product-other-images/gigabyte leptop2.png', '2025-01-19 22:49:35', '2025-01-19 22:49:35'),
(49, 17, 'upload/product-other-images/gigabyte leptop.png', '2025-01-19 22:49:35', '2025-01-19 22:49:35');

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `regular_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `short_description` text DEFAULT NULL,
  `long_description` longtext DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `image` text NOT NULL,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `sales_count` int(11) NOT NULL DEFAULT 0,
  `feature_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `regular_price`, `selling_price`, `stock`, `status`, `short_description`, `long_description`, `meta_title`, `meta_description`, `image`, `hit_count`, `sales_count`, `feature_status`, `created_at`, `updated_at`) VALUES
(2, 4, 2, 3, 2, 'Realme Note 60 (4/128) Smartphone', 'RLN60', 10000, 12000, 10, 1, 'mobile', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i7.129f58b3DyWiEX\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); letter-spacing: normal; overflow: hidden; text-overflow: ellipsis; text-wrap-mode: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Realme Note 60 (4/128) Smartphone</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; column-count: 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Body</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Body Dimensions 167.3 x 76.7 x 7.8 mm (6.59 x 3.02 x 0.31 in)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Body Weight 187 g</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Build Glass Front, Plastic Frame, Plastic Back</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Network Sim Dual SIM (Nano-SIM, Dual stand-by)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Water Resistant IP64, Dust and Splash Resistant</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Display</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Display Type IPS LCD, 90Hz, 450 nits (typ), 560 nits (HBM)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Display Size 6.74 inches, 109.7 cm2 (~85.5% screen-to-body ratio)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Display Resolution 720 x 1600 pixels, 20:9 ratio</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Display Multitouch Yes</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Display Density 260 ppi</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Display Screen Protection Reinforced Glass</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Platform</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Operating System Android</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">OS Version 14</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">User Interface (ui) Realme UI 5.0</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Chipset Unisoc Tiger T612 (12 nm)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">CPU Octa-core (2x1.8 GHz Cortex-A75 &amp; 6x1.8 GHz Cortex-A55)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">GPU Mali-G57</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Memory</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Memory Internal 64 GB, 128 GB, 256 GB</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Memory External microSDXC (dedicated slot)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Ram 4 GB</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Camera</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Primary Camera 32 MP, (wide)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Secondary Camera 5 MP</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Camera Features LED Flash, Panorama</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Video</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">1080p@30fps</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Sound</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Audio Yes</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Loudspeaker Yes</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">3.5mm Jack Yes</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Connectivity</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">WiFi Wi-Fi 802.11 a/b/g/n/ac, dual-band</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Bluetooth 5.0, A2DP, LE</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">USB USB Type-C 2.0</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">GPS Yes with a GPS</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Features</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Sensors Fingerprint (side-mounted), accelerometer, proximity, compass</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Messaging Yes</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Battery</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Battery Type Non-removable Li-Po Battery</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Battery Capacity 5000 mAh</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Charging 10W Wired</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 1.3; border-bottom: 1px solid rgb(239, 240, 245); white-space-collapse: break-spaces;\"><div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"></div></div><div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><h2 class=\"pdp-mod-section-title \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; text-wrap-mode: nowrap;\">Specifications of Realme Note 60 (4/128) Smartphone</h2><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\"><ul class=\"specification-keys\" data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i2.129f58b3DyWiEX\" style=\"margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Realme</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">431137023_BD-2091146001</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">RAM Memory</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">4 GB</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Operating System</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Android</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Battery Capacity (mAh)</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">5000 - 5999 mAh</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Number of SIM</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Dual SIM</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Camera Front (Megapixels)</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">1 - 5MP</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Camera Back (Megapixels)</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">31 - 35 MP</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Screen Size (inches)</span><div class=\"key-value\" data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i1.129f58b3DyWiEX\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">6 Inch and Above</div></li></ul></div></div></div></div>', 'mdfsd', 'sfdsf', 'upload/product-images/images.jfif', 0, 0, 0, '2025-01-14 22:41:37', '2025-01-14 22:41:37'),
(3, 2, 1, 1, 2, 'Men\'s Stylish & Fashionable Trendy Good Looking Long Sleeve Formal Shirt', 'Shirt33', 790, 237, 100, 1, 'shirt', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i5.43af7ea0dkud2k\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); letter-spacing: normal; overflow: hidden; text-overflow: ellipsis; text-wrap-mode: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Men\'s Stylish &amp; Fashionable Trendy Good Looking Long Sleeve Formal Shirt</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; column-count: 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Name : CHANDNI FASHION (DK)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fabrics : Men\'s Stylish &amp; Fashionable Trendy Good Looking Long Sleeve Formal Shirt</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Quality: Export quality</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Men</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fashionable &amp; Slim Fit</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: As given picture</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size: M, L, XL</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">M- long: 29\", body: 40\"</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">L- long: 30 \", body: 42\"</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">XL- long: 31\", body: 44\"</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 1.3; border-bottom: 1px solid rgb(239, 240, 245); white-space-collapse: break-spaces;\"><article class=\"lzd-article\" style=\"margin: 0px; padding: 0px;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 10px; padding: 0px; list-style-position: initial; list-style-image: initial;\"><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\"></span><img src=\"https://img.drz.lazcdn.com/static/bd/p/f4a90ab802cab10f6ecebd7f4a0758b7.jpg_2200x2200q80.jpg_.webp\" style=\"margin: 0px; padding: 0px; border-style: none; display: inline; max-width: 100%; height: 1080px; width: 1080px;\"><span style=\"margin: 0px; padding: 0px;\"> </span><img src=\"https://img.drz.lazcdn.com/static/bd/p/1109e008fb6014eb50d65c3eb92e16e8.jpg_2200x2200q80.jpg_.webp\" style=\"margin: 0px; padding: 0px; border-style: none; display: inline; max-width: 100%; height: 1080px; width: 1080px;\"><span style=\"margin: 0px; padding: 0px;\"> </span><img src=\"https://img.drz.lazcdn.com/static/bd/p/322fa28877edff58c234c0eb1afd426a.jpg_2200x2200q80.jpg_.webp\" style=\"margin: 0px; padding: 0px; border-style: none; display: inline; max-width: 100%; height: 1080px; width: 1080px;\"><span style=\"margin: 0px; padding: 0px;\"> </span><img src=\"https://img.drz.lazcdn.com/static/bd/p/766bca07a43d2594dafea576bf95b456.jpg_2200x2200q80.jpg_.webp\" style=\"margin: 0px; padding: 0px; border-style: none; display: inline; max-width: 100%; height: 1200px; width: 1200px;\"><span style=\"margin: 0px; padding: 0px;\"> </span><img src=\"https://img.drz.lazcdn.com/static/bd/p/bde59fe05909a1e7feb090a6f79b1ba2.jpg_2200x2200q80.jpg_.webp\" style=\"margin: 0px; padding: 0px; border-style: none; display: inline; max-width: 100%; height: 1080px; width: 1080px;\"><span style=\"margin: 0px; padding: 0px;\"> </span><img src=\"https://img.drz.lazcdn.com/static/bd/p/0843cc4df4eafdef982514d42aea7235.jpg_2200x2200q80.jpg_.webp\" style=\"margin: 0px; padding: 0px; border-style: none; display: inline; max-width: 100%; height: 1200px; width: 1200px;\"><span style=\"margin: 0px; padding: 0px;\"> </span><img src=\"https://img.drz.lazcdn.com/static/bd/p/07093e37784b1070e12deb3706670027.jpg_2200x2200q80.jpg_.webp\" style=\"margin: 0px; padding: 0px; border-style: none; display: inline; max-width: 100%; height: 1080px; width: 1080px;\"><span style=\"margin: 0px; padding: 0px;\"> </span><img src=\"https://img.drz.lazcdn.com/static/bd/p/6f21695360a0e06db002b7a6738d1a27.jpg_2200x2200q80.jpg_.webp\" style=\"margin: 0px; padding: 0px; border-style: none; display: inline; max-width: 100%; height: 1200px; width: 1200px;\"><span style=\"margin: 0px; padding: 0px;\"> Band Name : CHANDNI FASHION (DK)</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">Fabrics : Men\'s Stylish &amp; Fashionable Trendy Good Looking Long Sleeve Formal Shirt</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">Quality: Export quality</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">Gender: Men</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">Fashionable &amp; Slim Fit</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">Color: As given picture</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">Size: M, L, XL</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">M- long: 29\", body: 40\"</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">L- long: 30 \", body: 42\"</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">XL- long: 31\", body: 44\"</span></div></li></ul><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; display: block;\"></span></p></article></div><div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><h2 class=\"pdp-mod-section-title \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; text-wrap-mode: nowrap;\">Specifications of Men\'s Stylish &amp; Fashionable Trendy Good Looking Long Sleeve Formal Shirt</h2><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\"><ul class=\"specification-keys\" style=\"margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">No Brand</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">376122202_BD-1884592096</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Main Material</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Cotton</div></li></ul></div></div></div></div>', 'kfjskdfsdf', 'gdsfdsf', 'upload/product-images/07093e37784b1070e12deb3706670027.jpg_720x720q80.jpg_.webp', 0, 0, 0, '2025-01-14 23:12:19', '2025-01-14 23:12:19'),
(5, 5, 3, 4, 2, 'T Shirt', '435324', 400, 199, 456, 1, 'Premium Quality Printed Polo T-Shirt For Kids 1-10 Year', '<div id=\"block-Jjly4gcf0F2\" class=\"pdp-block fixed-width-full background-2\"><div id=\"module_product_detail\" class=\"pdp-block module\"><div class=\"lazyload-wrapper \"><h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i3.7863636cpAyizT\">Product details of Premium Quality Printed Polo T-Shirt For Kids 1-10 Year</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\"><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">sport: Great for gym, sports, running, walking, jogging, hiking, work, exercise, fitness, and casual at home.</li><li class=\"\">Export Quality Swing</li><li class=\"\">GSM: 200 (+-10)</li><li class=\"\">Occasion: Casual Winter Wear and sports.</li><li class=\"\">7 days Return Easy Return</li><li class=\"\">Made in: Bangladesh</li><li class=\"\">Print QC Passed</li></ul></div><div class=\"html-content detail-content\"></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications of Premium Quality Printed Polo T-Shirt For Kids 1-10 Year</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"key-value\">No Brand</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"key-value\">324362176_BD-1552495677</div></li><li class=\"key-li\"><span class=\"key-title\"> Main Material  </span><div class=\"key-value\">PK</div></li></ul></div></div></div></div></div></div></div>', 'dsfdaf', 'sfsdf', 'upload/product-images/kidst-shirt.jpg', 0, 0, 0, '2025-01-15 03:42:55', '2025-01-19 07:43:56'),
(6, 3, 4, 4, 2, 'Niqab Muslim Hijab (Crown) - Best Quality 3-Layer Islamic Face Cover for Women', 'NMH', 504, 280, 100, 1, 'Niqab Muslim Hijab (Crown) - Best Quality 3-Layer Islamic Face Cover for Women', '<div id=\"block-Jjly4gcf0F2\" class=\"pdp-block fixed-width-full background-2\"><div id=\"module_product_detail\" class=\"pdp-block module\"><div class=\"lazyload-wrapper \"><h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i4.498a482aLWCuQC\">Product details of Niqab Muslim Hijab (Crown) - Best Quality 3-Layer Islamic Face Cover for Women</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\"><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Size: 26inch x 30 inch</li><li class=\"\">3 Layers</li><li class=\"\">Material: Cheri Georgette</li><li class=\"\">Gender: Female</li><li class=\"\">Comfort: Soft and comfortable to wear</li><li class=\"\">Convenience: Easy to wear for prayers or at any time</li><li class=\"\">Style: Elegant and fashionable</li></ul></div><div class=\"html-content detail-content\"><div></div></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications of Niqab Muslim Hijab (Crown) - Best Quality 3-Layer Islamic Face Cover for Women</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"key-value\">No Brand</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"key-value\">416477919_BD-2047468504</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"box-content-html\">Niqab Muslim Hijab (Crown) - Best Quality 3-Layer Islamic Face Cover for Women</div></div></div></div></div></div></div></div><p></p>', 'Hijab', 'Hijab', 'upload/product-images/hijab_720x720q80.jpg', 0, 0, 0, '2025-01-19 07:39:50', '2025-01-19 07:39:50'),
(7, 6, 5, 5, 2, 'HP Envy x360 Convertible 14-ES0033 13th Gen Core i7-1355U 3.7 to 5GHz, 16GB, 1TB SSD, Windows 11, 14\" FHD IPS Touch Laptop', 'HP360', 143000, 138000, 10, 1, 'HP Envy x360 Convertible 14-ES0033 13th Gen Core i7-1355U 3.7 to 5GHz, 16GB, 1TB SSD, Windows 11, 14\" FHD IPS Touch Laptop', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i3.183134a8aVnDR2\">Product\r\n details of HP Envy x360 Convertible 14-ES0033 13th Gen Core i7-1355U \r\n3.7 to 5GHz, 16GB, 1TB SSD, Windows 11, 14\" FHD IPS Touch Laptop</h2><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\" data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i0.183134a8aVnDR2\"><ul class=\"\"><li class=\"\">HP\r\n Envy x360 Convertible 14-ES0033 13th Gen Core i7-1355U 3.7 to 5GHz, \r\n16GB, 1TB SSD, Windows 11, 14\" FHD IPS Touch LaptopIntel 13th Gen Core \r\ni7-1355U 3.7 to 5GHz, 10 Cores, 12 Threads, 12MB cache</li><li class=\"\">16GB DDR4 3200MHz RAM</li><li class=\"\">1TB PCIe NVMe M.2 SSD</li><li class=\"\">14\" FHD (1920 x 1080) IPS Touch Display</li><li class=\"\">Intel Iris Xe Graphics</li><li class=\"\">Windows 11 Home</li><li class=\"\">2 Years Seller Warranty</li></ul></div><div class=\"html-content detail-content\"><img src=\"https://img.drz.lazcdn.com/static/bd/p/0d96300c8972de6295b691f0472647e8.png_2200x2200q80.png_.webp\" style=\"width:100%;display:block\"><p data-spm-anchor-id=\"a1zawk.page_product_publish.0.i32.510f7709vKyknE\"><b data-spm-anchor-id=\"a1zawk.page_product_publish.0.i33.510f7709vKyknE\">Specification:</b><br>Brand: HP<br>Series: ENVY <br>Model: 14-es0033<br>Color: Natural Silver<br>Processor: Intel 13th Gen Core i7-1355U 3.7 to 5GHz, 10 Cores, 12 Threads, 12MB cache<br>Memory: 16GB DDR4 3200MHz RAM<br>Storage: 1TB PCIe NVMe M.2 SSD<br>Display: 14\" FHD (1920 x 1080), multitouch-enabled, IPS, edge-to-edge glass, micro-edge, 300 nits, 100% sRGB<br>Graphics: Intel Iris Xe Graphics<br>Operating System: Windows 11 Home<br>Keyboard: Full-size, Backlit, Natural Silver Keyboard<br>Web Camera: HP True Vision 5MP IR camera with Camera Shutter,<br>Audio: Audio by Bang &amp; Olufsen; Dual speakers, Integrated dual Array Mic<br>WiFi: Intel Wi-Fi 6E AX211 (2x2)<br>Bluetooth: Bluetooth 5.3<br>USB: 2x Thunderbolt 4 with USB Type-C 40Gbps (USB Power, DP1.4); 1x USB Type-A 10Gbps (Sleep and Charge); 1x USB Type-A 10Gbps<br>Card Reader: 1 microSD Media Card Reader<br>Audio Jack: 1 Headphone/Microphone Combo<br>Battery: 4-cell, 66 Wh Li-ion Polymer<br>Adapter: 65W USB Type-C power adapter<br>Dimensions (W x D x H): 298 x 215 x 16 mm<br>Weight: 1.34 kg<br>Warranty: 2 Years</p><div></div></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications\r\n of HP Envy x360 Convertible 14-ES0033 13th Gen Core i7-1355U 3.7 to \r\n5GHz, 16GB, 1TB SSD, Windows 11, 14\" FHD IPS Touch Laptop</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\" data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i2.183134a8aVnDR2\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"key-value\">HP</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"key-value\">351655665_BD-1725995797</div></li><li class=\"key-li\"><span class=\"key-title\"> Display Size  </span><div class=\"key-value\">14</div></li><li class=\"key-li\"><span class=\"key-title\"> Generation  </span><div class=\"key-value\">Not Specified</div></li><li class=\"key-li\"><span class=\"key-title\"> RAM  </span><div class=\"key-value\">16GB</div></li><li class=\"key-li\"><span class=\"key-title\"> Graphics Card  </span><div class=\"key-value\">Intel Iris Graphics</div></li><li class=\"key-li\"><span class=\"key-title\"> Graphics Memory  </span><div class=\"key-value\">2GB</div></li><li class=\"key-li\"><span class=\"key-title\"> Hard Disk (GB)  </span><div class=\"key-value\">No HDD</div></li><li class=\"key-li\"><span class=\"key-title\"> SSD  </span><div class=\"key-value\">513 - 1TB</div></li><li class=\"key-li\"><span class=\"key-title\"> Operating System  </span><div class=\"key-value\">Windows 11</div></li><li class=\"key-li\"><span class=\"key-title\"> Model  </span><div class=\"key-value\">Envy x360 Convertible 14-ES0033</div></li><li class=\"key-li\"><span class=\"key-title\"> Processor Type  </span><div class=\"key-value\">Intel® Core™ i7 processor</div></li><li class=\"key-li\"><span class=\"key-title\"> CPU Cores  </span><div class=\"key-value\">Octa Core</div></li><li class=\"key-li\"><span class=\"key-title\"> Display Type  </span><div class=\"key-value\">IPS</div></li><li class=\"key-li\"><span class=\"key-title\"> Warranty Policy EN  </span><div class=\"key-value\">No Warranty for Physical &amp; Burn Damage</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"box-content-html\">Laptop, Adapter</div></div></div></div><p></p>', 'hp leptop', 'df dsf', 'upload/product-images/hp leptop.png', 0, 0, 0, '2025-01-19 07:50:46', '2025-01-19 07:50:46'),
(8, 7, 6, 6, 2, 'HOUSE HOLD LADDER 5 STEP (NARROW)801348', 'HHL001', 3076, 2800, 15, 1, 'HOUSE HOLD LADDER 5 STEP (NARROW)801348', '<div id=\"block-Jjly4gcf0F2\" class=\"pdp-block fixed-width-full background-2\"><div id=\"module_product_detail\" class=\"pdp-block module\"><div class=\"lazyload-wrapper \"><h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i5.26182bbbNFK7gq\">Product details of HOUSE HOLD LADDER 5 STEP (NARROW)801348</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\"><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">RFL\r\n House Hold Ladder 5 Step Narrow  Item code: 801348\"Max Load: 150kgNo. \r\nof Step: 5 StepStep Distance: 20cmMatarial: Aluminium\"Note: Product \r\ndelivery duration may vary due to product availability in \r\nstock.Disclaimer: The color of the physical product may slightly vary \r\ndue to the deviation of lighting sources, photography or your device \r\ndisplay settings\"Delivery will be made downstairs; it won’t be taken up \r\nto the apartment.\"</li></ul></div><div class=\"html-content detail-content\"><article style=\"white-space:break-spaces\" class=\"lzd-article\"><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span>RFL House Hold Ladder 5 Step Narrow &nbsp;\r\nItem code: 801348\r\n</span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span>\"Max Load: 150kg\r\nNo. of Step: 5 Step\r\nStep Distance: 20cm\r\nMatarial: Aluminium\"</span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span>Note: Product delivery duration may vary due to product availability in stock.\r\n\r\nDisclaimer: The color of the physical product may slightly vary due to the deviation of lighting sources, photography or your device display settings</span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span>\"Delivery will be made downstairs; it won’t be taken up to the apartment.\"</span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span></p></article></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications of HOUSE HOLD LADDER 5 STEP (NARROW)801348</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"key-value\">RFL</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"key-value\">324350753_BD-1552479827</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"box-content-html\">HOUSE HOLD LADDER 5 STEP (NARROW)801348</div></div></div></div></div></div></div></div><p></p>', 'bnjkgbjh', 'hkhujh', 'upload/product-images/ladder.jpg', 0, 0, 0, '2025-01-19 08:44:12', '2025-01-19 08:44:12'),
(9, 8, 7, 4, 2, 'Fifa World Cup 2022 Football Qatar - Get Ready For The Excitement Of The Fifa World Cup 2022 With This Official Qatar Football - Football', 'FWC2022', 1600, 845, 15, 1, 'Fifa World Cup 2022 Football Qatar - Get Ready For The Excitement Of The Fifa World Cup 2022 With This Official Qatar Football - Football', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i4.54176c37z0xEla\">Product\r\n details of Fifa World Cup 2022 Football Qatar - Get Ready For The \r\nExcitement Of The Fifa World Cup 2022 With This Official Qatar Football -\r\n Football</h2><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Product Type: Football</li><li class=\"\">Fifa World Cup Qatar 2022</li><li class=\"\">Color:Same as Like picture</li><li class=\"\">Materials: Polyurethane</li><li class=\"\">Imported</li><li class=\"\">Official match play size 5</li><li class=\"\">Made in China</li><li class=\"\">Country of Origin China</li><li class=\"\">for Final ball need to select red Color</li></ul></div><div class=\"html-content detail-content\"><article style=\"white-space:break-spaces\" class=\"lzd-article\"><h2 style=\"font-size:16pt;line-height:1.45;margin-top:11pt;margin-bottom:11pt;text-align:left;text-indent:0;margin-left:0\"><span style=\"color:rgb(33, 33, 33);font-size:16.5pt\">Fifa World Cup 2022 Football Qatar - Get Ready For The Excitement Of The Fifa World Cup 2022 With This Official Qatar Football - Football.</span></h2><ul><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Product Type: Football</span></div></li></ul><ul style=\"list-style-type:disc\"><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Fifa World Cup Qatar 2022</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Color:Same as Like picture</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Materials: Polyurethane</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Imported</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Official match play size 5</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Made in China</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Country of Origin China</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">for Final ball need to select red Color</span><img style=\"width:100%;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/444a55b25d1af18f18025a7b0e7b4a30.jpg_2200x2200q80.jpg_.webp\"><span></span><img style=\"width:100%;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/8dfe078548cf37ceea8f35cb556009b3.jpg_2200x2200q80.jpg_.webp\"><span></span><img style=\"width:100%;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/e921fb5fe382727e248417d15257215e.jpg_2200x2200q80.jpg_.webp\"><span></span><img style=\"width:100%;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/fe73acb69399ba6209f6f882f4d14b08.jpg_2200x2200q80.jpg_.webp\"><span></span><img style=\"width:100%;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/efc7212a01f16d9b056a274f58095961.jpg_2200x2200q80.jpg_.webp\"><span></span><img style=\"width:100%;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/4d16e4adf22f23835765996a1de76fbd.png_2200x2200q80.png_.webp\"><span></span></div></li></ul><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span></p></article></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications\r\n of Fifa World Cup 2022 Football Qatar - Get Ready For The Excitement Of\r\n The Fifa World Cup 2022 With This Official Qatar Football - Football</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"key-value\">No Brand</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"key-value\">321454611_BD-1492747530</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"box-content-html\">Fifa\r\n World Cup 2022 Football Qatar - Get Ready For The Excitement Of The \r\nFifa World Cup 2022 With This Official Qatar Football - Football</div></div></div></div><p></p>', 'jhghjfh', 'hghjghg', 'upload/product-images/football.jpg', 0, 0, 0, '2025-01-19 08:54:23', '2025-01-19 08:54:23');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `regular_price`, `selling_price`, `stock`, `status`, `short_description`, `long_description`, `meta_title`, `meta_description`, `image`, `hit_count`, `sales_count`, `feature_status`, `created_at`, `updated_at`) VALUES
(10, 2, 8, 1, 2, 'Superb Versatile -Choice and Remark -Panjabi (snap button) For Men Cool, Stylish And Gorgeus Contrast - Panjabi- Avant-garde', 'SVC34234', 600, 499, 123, 1, 'Superb Versatile -Choice and Remark -Panjabi (snap button) For Men Cool, Stylish And Gorgeus Contrast - Panjabi- Avant-garde', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i4.3f25173eYEZCgH\">Product\r\n details of Superb Versatile -Choice and Remark -Panjabi (snap button) \r\nFor Men Cool, Stylish And Gorgeus Contrast - Panjabi- Avant-garde</h2><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">To\r\n order multiple item with the same delivery charge, first add as much \r\nproduct you want to \"cart\" and then confirm your order from cart.</li><li class=\"\">#cotton Fabric#panjabi#panjabiformenFashionable</li><li class=\"\">Comfy.</li><li class=\"\">Softness.</li><li class=\"\">Breathability.</li></ul></div><div class=\"html-content detail-content\"><article style=\"white-space:break-spaces\" class=\"lzd-article\" data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i1.3f25173eYEZCgH\"><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span>To order multiple item with the same delivery charge, first add as much product you want to \"cart\" and then confirm your order from cart.\r\n</span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span>#cotton Fabric</span></p><h1 style=\"font-size:20pt;line-height:1.45;margin-top:11pt;margin-bottom:11pt;text-align:left;text-indent:0;margin-left:0\"><span>#panjabi</span></h1><h2 style=\"font-size:16pt;line-height:1.45;margin-top:11pt;margin-bottom:11pt;text-align:left;text-indent:0;margin-left:0\"><span>#panjabiformen</span></h2><ol><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span>Fashionable</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span>Comfy.</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span>Softness.</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span>Breathability.</span></div></li></ol><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span></p><ol><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span>Durability.</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span>Absorbency.</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span>Hypoallergenic.</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span>Easy to care for.</span></div></li></ol><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span>#black #cotton #skyblue</span></p><ul><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span>#Kurtas</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span>#panjabi for men</span><img style=\"width:3581px;height:3900px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/3944b37cd1280f77a088877d1a3c28a5.jpg_2200x2200q80.jpg_.webp\"><span> </span><img style=\"width:4299px;height:4814px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/4507b2d61bb54e099981f9ec32c2f8d4.jpg_2200x2200q80.jpg_.webp\"><span> </span></div></li></ul><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span></p></article></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications\r\n of Superb Versatile -Choice and Remark -Panjabi (snap button) For Men \r\nCool, Stylish And Gorgeus Contrast - Panjabi- Avant-garde</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"key-value\">No Brand</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"key-value\">303196511_BD-2467148758</div></li><li class=\"key-li\"><span class=\"key-title\"> Main Material  </span><div class=\"key-value\">Cotton</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"box-content-html\">Superb Versatile -Choice and Remark -Panjabi (snap button) For Men Cool, Stylish And Gorgeus Contrast - Panjabi- Avant-garde</div></div></div></div><p></p>', 'dsfasdf', 'sdfdsf', 'upload/product-images/panjabi.jpg', 0, 0, 0, '2025-01-19 09:03:53', '2025-01-19 09:03:53'),
(11, 2, 9, 1, 2, 'NEW Stylish Premium Quality Fashionable Clothing Long Sleeve Hoodie for Men- Elevate Your Style, Stay Warm, Stay Trendy. Comfortable for Winter Season', 'dsfsdf', 950, 450, 155, 1, 'NEW Stylish Premium Quality Fashionable Clothing Long Sleeve Hoodie for Men- Elevate Your Style, Stay Warm, Stay Trendy. Comfortable for Winter Season', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i5.2e2c7b5e2VAaeH\">Product\r\n details of NEW Stylish Premium Quality Fashionable Clothing Long Sleeve\r\n Hoodie for Men- Elevate Your Style, Stay Warm, Stay Trendy. Comfortable\r\n for Winter Season</h2><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">\r\n Product Type: Hoodie •            Export Quality: Cotton Full Sleeve \r\nHoodie for Men•            Fabrics: Phillies•            Main Material: \r\nCotton •            Fabrication: 300(+-) GSM•            Sleeve: Full \r\nSleeve•            100% Export Fabric•            Back side brush•      \r\n      Matching Ribbed•            Size- M, L, XL•            M - Length \r\n28\" Chest 38\"•            L - Length 29\" Chest: 40\"•            XL - \r\nLength 30\" Chest 42\"</li></ul></div><div class=\"html-content detail-content\"><article style=\"white-space:break-spaces\" class=\"lzd-article\"><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span style=\"color:black;background-color:white\"></span><img style=\"width:1000px;height:1000px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/2438beb254a7666d10532143baf126f3.jpg_2200x2200q80.jpg_.webp\"><span style=\"color:black;background-color:white\"></span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span><img style=\"width:1000px;height:1000px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/6d249697f575ccfd02da74af92f33f39.jpg_2200x2200q80.jpg_.webp\"><span></span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span style=\"color:black;background-color:white\">This Product is comfortable and can worn for regular use. It is a perfect wear for men like you. You will love to wear this luxurious and colorful shirt just for its versatile usability and diversified fashion sense. It is generally made of a light, great quality cotton fabrics and are easy to clean. It is perfect to wear with jeans and gabardine pant. Short sleeves design with a regular fit for men. This product is very versatile because it is useful on formal as well as casual occasion. It is designed to be comfortable and durable. We are, offers a wide selection of products from renowned brands in Bangladesh with a promise of fast, safe and easy online shopping experience through Daraz. The seller comes closer to the huge customers on this leading online shopping platform of all over Bangladesh and serving to a greater extent for achieving higher customer satisfaction. The brands working with Daraz are not only serving top class products but also are dedicated to acquiring brand loyalty.</span></p></article></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications\r\n of NEW Stylish Premium Quality Fashionable Clothing Long Sleeve Hoodie \r\nfor Men- Elevate Your Style, Stay Warm, Stay Trendy. Comfortable for \r\nWinter Season</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"key-value\">No Brand</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"key-value\">470130105_BD-2264530685</div></li><li class=\"key-li\"><span class=\"key-title\"> Clothing Material  </span><div class=\"key-value\">Cotton</div></li><li class=\"key-li\"><span class=\"key-title\"> Sleeve Length  </span><div class=\"key-value\">Long,Full</div></li><li class=\"key-li\"><span class=\"key-title\"> Main Material  </span><div class=\"key-value\">Cotton</div></li></ul></div></div></div><p></p>', 'fdg', 'dfgdg', 'upload/product-images/hodie.jpg', 0, 0, 0, '2025-01-19 09:10:06', '2025-01-19 09:10:06'),
(12, 4, 2, 7, 2, 'TECNO SPARK Go 1 | 4GB+64GB | 4GB+128GB', 'TSG934', 11000, 10400, 24, 1, 'TECNO SPARK Go 1 | 4GB+64GB | 4GB+128GB', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i4.562726f1dRy8OM\">Product details of TECNO SPARK Go 1 | 4GB+64GB | 4GB+128GB</h2><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">120Hz Display 6.67\" Punch Hole Screen.</li><li class=\"\">T615 Powerful Processor.</li><li class=\"\">4 Years Plus Lag-Free Smooth Performance.</li><li class=\"\">Infrared (IR) Remote Control.</li><li class=\"\">Stereo Dual Speakers with DTS LISTEN.</li><li class=\"\">IP54 Water Resistance. </li><li class=\"\">Main Camera 13MP+ Dual Flash.</li><li class=\"\">Front Camera 8MP+ Dual Flash.</li><li class=\"\">5000 mAh Battery, (Max 15W Charger Support).</li><li class=\"\">Type-C Charging Port. </li><li class=\"\"> 4.5G Lighting-Fast Network.</li><li class=\"\">Android 14-go.</li></ul></div><div class=\"html-content detail-content\"><article style=\"white-space:break-spaces\" class=\"lzd-article\"><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span><img style=\"width:1920px;height:1080px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/d0393d723460879e7f494b8894e42759.jpg_2200x2200q80.jpg_.webp\"><span></span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span><img style=\"width:1920px;height:1080px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/122b5e0d123438ac689598afe3d152d8.jpg_2200x2200q80.jpg_.webp\"><span></span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span><img style=\"width:1920px;height:1080px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/19074943976670862a7d08d3d6dcf909.jpg_2200x2200q80.jpg_.webp\"><span></span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span><img style=\"width:1920px;height:1080px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/68f0787ebdfd8b44528714aa3fe4e4e3.jpg_2200x2200q80.jpg_.webp\"><span></span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span><img style=\"width:1920px;height:1080px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/2ee900a6742451722f7f6dc876c05fd8.jpg_2200x2200q80.jpg_.webp\"><span></span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span><img style=\"width:1920px;height:1080px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/a3589f84c0d21c3a036e673b6ec35d82.jpg_2200x2200q80.jpg_.webp\"><span></span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span><img style=\"width:1920px;height:1080px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/5b9d2556aca8d81bd51fd0998c5694ab.jpg_2200x2200q80.jpg_.webp\"><span></span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span><img style=\"width:1920px;height:1080px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/d9177027f22f52c8da2966042052e7a2.jpg_2200x2200q80.jpg_.webp\"><span></span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span><img style=\"width:1920px;height:1080px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/555ced49e43e5535f3ddaa1bdad89f50.jpg_2200x2200q80.jpg_.webp\"><span></span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span><img style=\"width:1920px;height:1080px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/56543a4cac9745c75fcfd811e53f9e04.jpg_2200x2200q80.jpg_.webp\"><span></span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span><img style=\"width:1920px;height:1080px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/1d202ea38ed4ed9cb219a74d1442b010.jpg_2200x2200q80.jpg_.webp\"><span></span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span><img style=\"width:1920px;height:1080px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/1ff64a27b9cad6b9d790fe9fd15060f0.jpg_2200x2200q80.jpg_.webp\"><span></span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span></p><p style=\"line-height:1.7;text-align:left;text-indent:0;margin-left:0;margin-top:0;margin-bottom:0\"><span></span></p></article></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications of TECNO SPARK Go 1 | 4GB+64GB | 4GB+128GB</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"key-value\">Tecno</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"key-value\">430383665_BD-2087716705</div></li><li class=\"key-li\"><span class=\"key-title\"> RAM Memory  </span><div class=\"key-value\">4 GB</div></li><li class=\"key-li\"><span class=\"key-title\"> Operating System  </span><div class=\"key-value\">Android</div></li><li class=\"key-li\"><span class=\"key-title\"> Battery Capacity (mAh)  </span><div class=\"key-value\">5000 - 5999 mAh</div></li><li class=\"key-li\"><span class=\"key-title\"> Number of SIM  </span><div class=\"key-value\">Dual SIM</div></li><li class=\"key-li\"><span class=\"key-title\"> Camera Front (Megapixels)  </span><div class=\"key-value\">6 - 10MP</div></li><li class=\"key-li\"><span class=\"key-title\"> Camera Back (Megapixels)  </span><div class=\"key-value\">11 - 15 MP</div></li><li class=\"key-li\"><span class=\"key-title\"> Screen Type  </span><div class=\"key-value\">IPS LCD</div></li><li class=\"key-li\"><span class=\"key-title\"> Screen Size (inches)  </span><div class=\"key-value\">6 Inch and Above</div></li><li class=\"key-li\"><span class=\"key-title\"> Operating system version  </span><div class=\"key-value\">Android</div></li><li class=\"key-li\"><span class=\"key-title\"> Connectivity  </span><div class=\"key-value\">Bluetooth,Wi-Fi,USB,OTG</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"box-content-html\">*Phone *Charger brick  *Type-C Cable *Back Cover *User Manual  *Sim Ejector</div></div></div></div><p></p>', 'sdfd', 'sdfsdf', 'upload/product-images/tecno spark.png', 0, 0, 0, '2025-01-19 09:15:48', '2025-01-19 09:15:48'),
(13, 4, 10, 4, 2, 'P47 - Wireless Bluetooth Headphone | In Ear Earphone for Android', 'P47', 550, 330, 44, 1, 'P47 - Wireless Bluetooth Headphone | In Ear Earphone for Android', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i4.584e1c84cmRCW8\">Product details of P47 - Wireless Bluetooth Headphone | In Ear Earphone for Android</h2><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Bluetooth: Yes</li><li class=\"\">Je kun color paben</li><li class=\"\">Application: Gaming,Running,Sport</li><li class=\"\">Charging Time.: 2h</li><li class=\"\">Driver unit: 40mm</li><li class=\"\">Frequency response: 50~20000Hz</li><li class=\"\">Impedance: 32ohms</li><li class=\"\">High\r\n QualityBluetooth High-Speed Connected, Answering Incoming Calls, \r\nHandsfree Talking, Superior Compatibility, High Fidelity Stereo Surround\r\n Sound</li><li class=\"\">Foldable Portable DesignThis foldable portable \r\ndesign makes it easy to take along on that next vacation or business \r\ntrip or to store in your desk drawer for use at work,</li><li class=\"\">Adjustable\r\n HeadbandThe headphones offer not only sleek style with a slim profile \r\nbut also an adjustable contoured headband, it allows you to get a great \r\nposition on your head.</li><li class=\"\">Easy to controls your \r\nheadphonesCan freely control the switch of the previous song and next \r\nsong, pausing a song, answering calls, ending calls, refusing the \r\nincoming call, dialing the last number, volume control</li><li class=\"\">Works\r\n with or without Bluetooth capabilityNot only wireless, also can be used\r\n as wired headphone (Provides a simple 3.5mm wired connection of a \r\nvariety of devices)</li><li class=\"\">In Ear Earphone for Android - White For Vivo:</li><li class=\"\">Brand: REMAX</li><li class=\"\">Model: RM-512</li><li class=\"\">Features: HD Microphone / Compatibility / Volume Control</li><li class=\"\">Material: TPE</li><li class=\"\">Impedance: 32Ω</li><li class=\"\">Frequency: 20-20k Hz</li><li class=\"\">HBQ I7S Double Dual Mini Wireless 4.1 Bluetooth Earphone With Power Case:</li><li class=\"\">Drive: 15mm</li><li class=\"\">No Cable Sent</li><li class=\"\">Impedance: 32 OHM</li><li class=\"\">Bluetooth version: Bluetooth v4.1+ED</li><li class=\"\">Bluetooth frequency: 2.4GHz</li><li class=\"\">Power level: CLASS II, output power: 30mW</li><li class=\"\">Bluetooth Distance: obstacle free 10 meter</li><li class=\"\">Frequency response: 20-20000Hz</li><li class=\"\">Working voltage range: 3.0V-4.2V</li></ul></div><div class=\"html-content detail-content\"><article style=\"white-space:break-spaces\" class=\"lzd-article\"><ul style=\"list-style-type:disc\"><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Bluetooth: Yes</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Je kun color paben</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Application: Gaming,Running,Sport</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Charging Time.: 2h</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Driver unit: 40mm</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Frequency response: 50~20000Hz</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Impedance: 32ohms</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">High QualityBluetooth High-Speed Connected, Answering Incoming Calls, Handsfree Talking, Superior Compatibility, High Fidelity Stereo Surround Sound</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Foldable Portable DesignThis foldable portable design makes it easy to take along on that next vacation or business trip or to store in your desk drawer for use at work,</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Adjustable HeadbandThe headphones offer not only sleek style with a slim profile but also an adjustable contoured headband, it allows you to get a great position on your head.</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Easy to controls your headphonesCan freely control the switch of the previous song and next song, pausing a song, answering calls, ending calls, refusing the incoming call, dialing the last number, volume control</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Works with or without Bluetooth capabilityNot only wireless, also can be used as wired headphone (Provides a simple 3.5mm wired connection of a variety of devices)</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">In Ear Earphone for Android - White For Vivo:</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Brand: REMAX</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Model: RM-512</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Features: HD Microphone / Compatibility / Volume Control</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Material: TPE</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Impedance: 32Ω</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Frequency: 20-20k Hz</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">HBQ I7S Double Dual Mini Wireless 4.1 Bluetooth Earphone With Power Case:</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Drive: 15mm</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">No Cable Sent</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Impedance: 32 OHM</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Bluetooth version: Bluetooth v4.1+ED</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Bluetooth frequency: 2.4GHz</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Power level: CLASS II, output power: 30mW</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Bluetooth Distance: obstacle free 10 meter</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Frequency response: 20-20000Hz</span></div></li><li><div style=\"line-height:1.7;text-align:left;text-indent:0\"><span style=\"color:rgb(0, 0, 0);font-size:10.5pt\">Working voltage range: 3.0V-4.2V</span><img style=\"width:750px;height:750px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/53611b5133f0a5dae6d1f705d6451078.jpg_2200x2200q80.jpg_.webp\"><span> </span><img style=\"width:750px;height:750px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/423c5c7139a6cef3fa4860247e489a66.jpg_2200x2200q80.jpg_.webp\"><span> </span><img style=\"width:750px;height:750px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/8ec781782c2397ee7c569b276cda36fb.jpg_2200x2200q80.jpg_.webp\"><span> </span><img style=\"width:750px;height:750px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/4867f3c87deae57c31a9f2d588b63e34.jpg_2200x2200q80.jpg_.webp\"><span> </span><img style=\"width:750px;height:750px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/5466492db7dd62c9b2176a1e57863b11.jpg_2200x2200q80.jpg_.webp\"><span> </span><img style=\"width:750px;height:750px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/4f99cff9aabe02801056b5af5bd670fb.jpg_2200x2200q80.jpg_.webp\"><span> </span><img style=\"width:750px;height:750px;display:inline;vertical-align:middle\" src=\"https://img.drz.lazcdn.com/static/bd/p/53611b5133f0a5dae6d1f705d6451078.jpg_2200x2200q80.jpg_.webp\"><span> </span></div></li></ul></article></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications of P47 - Wireless Bluetooth Headphone | In Ear Earphone for Android</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"key-value\">No Brand</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"key-value\">420321724_BD-2058261814</div></li></ul></div></div></div><p></p>', 'dfdsf', 'dsfdsf', 'upload/product-images/headphone.jpg', 0, 0, 0, '2025-01-19 09:20:30', '2025-01-19 09:20:30'),
(14, 9, 11, 4, 2, 'Remote Control Baby Toy Sports Car For Kids', 'RCBT99', 600, 450, 99, 1, 'Remote Control Baby Toy Sports Car For Kids', '<div id=\"block-Jjly4gcf0F2\" class=\"pdp-block fixed-width-full background-2\"><div id=\"module_product_detail\" class=\"pdp-block module\"><div class=\"lazyload-wrapper \"><h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i5.28941358Jmsd6W\">Product details of Remote Control Baby Toy Sports Car For Kids</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\"><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">📣Product Type: Remote Control Car</li><li class=\"\">📣Car Design: Sports Type</li><li class=\"\">📣Functional Headlights: Yes,</li><li class=\"\">📣Super Lighting</li><li class=\"\">📣Car Power Source: 4 \"AA\" Battery</li><li class=\"\">📣Remote Power Source: 2 \"AA\" Battery</li><li class=\"\">📣Premium Quality, Material: Plastic</li><li class=\"\">📣Rechargeable: No</li><li class=\"\">📣Color: MultiColor : Blue Or Red</li><li class=\"\">📣Dimensions: Length-10\", Width-4.75\", Height-3.25\"</li><li class=\"\">📣Remote Distance: 20m</li><li class=\"\">📣Battery is Not Included</li><li class=\"\">📣আপনাকে ব্যাটারি এক্সট্রা দোকান থেকে কিনতে হবে</li><li class=\"\">📣Made in China</li></ul></div><div class=\"html-content detail-content\"><span></span></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications of Remote Control Baby Toy Sports Car For Kids</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"key-value\">No Brand</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"key-value\">270061840_BD-1241781868</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"box-content-html\">Remote Control Baby Toy Sports Car For Kids</div></div></div></div></div></div></div></div><p></p>', 'dfdsf', 'dsfsdf', 'upload/product-images/kidscar.jpg', 0, 0, 0, '2025-01-19 09:28:00', '2025-01-19 09:28:00'),
(15, 2, 12, 8, 2, 'Woodland Casual Lifestyle Shoes - 2106116 DRoyal Blue', 'WCL4354', 9000, 7750, 80, 1, 'Woodland Casual Lifestyle Shoes - 2106116 DRoyal Blue', '<div id=\"block-Nn7FarYpDHl\" class=\"pdp-block fixed-width-full background-2\"><div id=\"module_product_detail\" class=\"pdp-block module\"><div class=\"lazyload-wrapper \"><h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i4.d89c2758sD5H7n\">Product details of Woodland Casual Lifestyle Shoes - 2106116 DRoyal Blue</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\"><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Country Of Origin: India</li><li class=\"\">Insole: Comfort Insole</li><li class=\"\">Technology: None</li><li class=\"\">Pattern: Solid</li><li class=\"\">Material: Nubuck</li><li class=\"\">Type: Casual Shoes</li><li class=\"\">Fastening: Lace-Ups</li><li class=\"\">Ankle Height: Mid-Top</li><li class=\"\">Product Code: 2106116</li></ul></div><div class=\"html-content detail-content\"><span></span></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications of Woodland Casual Lifestyle Shoes - 2106116 DRoyal Blue</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"key-value\">Woodland</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"key-value\">114924658_BD-1032806903</div></li><li class=\"key-li\"><span class=\"key-title\"> Main Material  </span><div class=\"key-value\">Nubuck</div></li><li class=\"key-li\"><span class=\"key-title\"> Men Shoes Closure  </span><div class=\"key-value\">Lace-up</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"box-content-html\">Woodland Casual Lifestyle Shoes - 2106116 DRoyal Blue</div></div></div></div></div></div></div></div><p></p>', 'dfsdf', 'dfsdfds', 'upload/product-images/shoe4.jpg', 0, 0, 0, '2025-01-19 22:37:11', '2025-01-19 22:37:11'),
(16, 2, 13, 4, 2, 'Men\'s Winter Jacket For Men', 'MWJ5345', 700, 298, 50, 1, 'Men\'s Winter Jacket For Men', '<div id=\"block-Nn7FarYpDHl\" class=\"pdp-block fixed-width-full background-2\"><div id=\"module_product_detail\" class=\"pdp-block module\"><div class=\"lazyload-wrapper \"><h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i3.48654412EL2vGv\">Product details of Men\'s Winter Jacket For Men</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\"><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Style : Sporty</li><li class=\"\">Top Type : Sweatshirt</li><li class=\"\">Sleeve Length: Long Sleeve</li><li class=\"\">Sleeve Type : Regular Sleeve</li><li class=\"\">Season : Winter</li><li class=\"\">Composition: Bonded</li><li class=\"\">Fit Type : Regular Fit</li><li class=\"\">Occasion : Walking, Jogging, Casual Winter Wear and sports.</li><li class=\"\">Lightweight and comfortable provides you the freedom to enjoy fashion</li><li class=\"\">Measurements:</li><li class=\"\">M: Chest- 38\", Height-27\"</li><li class=\"\">L: Chest- 40\",Height- 28\"</li><li class=\"\">XL: Chest- 42\",Height- 29\"</li><li class=\"\">Please note: Product color may vary due to the sources of your monitor/display setting.</li></ul></div><div class=\"html-content detail-content\"><div></div></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications of Men\'s Winter Jacket For Men</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"key-value\">No Brand</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"key-value\">214964805_BD-2277345716</div></li><li class=\"key-li\"><span class=\"key-title\"> Main Material  </span><div class=\"key-value\">Microfiber Polyester</div></li></ul></div></div></div></div></div></div></div><p></p>', 'fdsgfdsfg', 'gfgfg', 'upload/product-images/jacket.jpg', 0, 0, 0, '2025-01-19 22:41:26', '2025-01-19 22:41:26'),
(17, 6, 5, 9, 2, 'Gigabyte Gaming G5 KF5 13th Gen i7-13620H 4.9GHz, 16GB , 512GB SSD, 15.6 Inch FHD IPS Gaming Laptop', 'GGKF5', 170000, 161850, 25, 1, 'Gigabyte Gaming G5 KF5 13th Gen i7-13620H 4.9GHz, 16GB , 512GB SSD, 15.6 Inch FHD IPS Gaming Laptop', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i0.54554780QBq3s4\">Product details of Gigabyte Gaming G5 KF5 13th Gen i7-13620H 4.9GHz, 16GB , 512GB SSD, 15.6 Inch FHD IPS Gaming Laptop</h2><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Intel i7-13620H 3.6GHz to 4.9GHz, 10 Cores, 16Threads, 24MB Cache</li><li class=\"\">16GB DDR5 4800MHz RAM</li><li class=\"\">512GB M.2 2280 PCIe NVMe SSD</li><li class=\"\">15.6 Inch FHD IPS (920x1080) 144Hz Display</li><li class=\"\">NVIDIA GEforce RTX 4060 Laptop GPU 8GB GDDR6 Graphics</li><li class=\"\">Windows 11 Home</li><li class=\"\">2 Years Brand Warranty</li></ul></div><div class=\"html-content detail-content\"><p data-spm-anchor-id=\"a1zawk.page_product_publish.0.i36.143277090pSlQL\"><b data-spm-anchor-id=\"a1zawk.page_product_publish.0.i38.143277090pSlQL\"><img data-spm-anchor-id=\"a1zawk.page_product_publish.0.i42.143277090pSlQL\" src=\"https://img.drz.lazcdn.com/static/bd/p/d69487d01883eedcff2da7783ebc7a04.png_2200x2200q80.png_.webp\" style=\"width:100%;display:block\"></b></p><p data-spm-anchor-id=\"a1zawk.page_product_publish.0.i36.143277090pSlQL\"><b data-spm-anchor-id=\"a1zawk.page_product_publish.0.i38.143277090pSlQL\">Specification: </b><br><br>Brand: Gigabyte<br>Model: G5 KF5<br>Color: Mate Black<br>Processor: Intel i7-13620H 3.6GHz to 4.9GHz, 10 Cores, 16Threads, 24MB Cache<br>Memory: 16GB DDR5 4800MHz RAM<br>Storage: 512GB M.2 2280 PCIe NVMe SSD<br>Display: 15.6 Inch FHD IPS (920x1080) 144Hz Display<br>Graphics: NVIDIA Geforce RTX 4060 Laptop GPU 8GB GDDR6<br>Operating System: Windows 11 Home<br>Keyboard Type: Multi languages 15 color illuminated full size keyboard with numeric pad <br>Audio: 2x 2W Speaker, Microphone, DTS:X Ultra Audio Technology<br>Webcam: 1.0M HD video camera<br>LAN: 1GB RJ-45 LAN Port<br>WIFI: Intel Wi-Fi 6E<br>Bluetooth: Bluetooth V5.2<br>USB Port: 1 x USB 2.0 port (Type A), 1 x USB 3.2 Gen 1 port (Type A), 2 x USB 3.2 Gen 2 port (Type C)<br>DP: 1 x Mini DP 1.4<br>HDMI: 1 x HDMI (with HDCP)<br>Audio Jack: 1 x 2-in-1 Audio Jack (Headphone / Microphone)<br>Card Reader: 1 x MicroSD Card Reader<br>Battery: Li-ion 54Wh<br>Adapter: 150W<br>Dimensions(WxDxH): 36.0 x 23.8 x 2.39 cm<br>Weight: 2.08kg<br>Warranty: 2 Years</p><div></div></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications of Gigabyte Gaming G5 KF5 13th Gen i7-13620H 4.9GHz, 16GB , 512GB SSD, 15.6 Inch FHD IPS Gaming Laptop</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"key-value\">No Brand</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"key-value\">356183858_BD-1755441581</div></li><li class=\"key-li\"><span class=\"key-title\"> Display Size  </span><div class=\"key-value\">15.6</div></li><li class=\"key-li\"><span class=\"key-title\"> Processor Type  </span><div class=\"key-value\">Intel Core i7,Intel Core i7</div></li><li class=\"key-li\"><span class=\"key-title\"> Generation  </span><div class=\"key-value\">Not Specified</div></li><li class=\"key-li\"><span class=\"key-title\"> Graphic Card  </span><div class=\"key-value\">NVIDIA</div></li><li class=\"key-li\"><span class=\"key-title\"> RAM  </span><div class=\"key-value\">16GB &amp; Up</div></li><li class=\"key-li\"><span class=\"key-title\"> Graphics Memory  </span><div class=\"key-value\">8GB &amp; Up</div></li><li class=\"key-li\"><span class=\"key-title\"> Hard Disk (GB)  </span><div class=\"key-value\">No HDD</div></li><li class=\"key-li\"><span class=\"key-title\"> SSD  </span><div class=\"key-value\">257 - 512GB</div></li><li class=\"key-li\"><span class=\"key-title\"> Display Type  </span><div class=\"key-value\">IPS</div></li><li class=\"key-li\"><span class=\"key-title\"> Warranty Policy EN  </span><div class=\"key-value\">No Warranty for Physical &amp; Burn Damage</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"box-content-html\">Laptop</div></div></div></div><p></p>', 'fdgdfg', 'fdgdfgf', 'upload/product-images/gigabyte leptop.png', 0, 0, 0, '2025-01-19 22:49:35', '2025-01-19 22:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('HALeSjgRi80oIEI4fytaosDveLUmejMRtAnLrjax', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:134.0) Gecko/20100101 Firefox/134.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUGpEZ1FJOU1EcEJBZEttUXJJTVA4U3lQMk9kUlVuNThpVWhMbWxOdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly9sb2NhbGhvc3Qvbml5ZC1lY29tL3B1YmxpYy9wcm9kdWN0L2luZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiRVcWtnMFJxZTQwblhrQ0dwYzI4NmZPbmd6d0J5MHNEU2FXR01YUHdlOXdlNGZMT1E5TklrbSI7fQ==', 1737348764),
('V1p0nQzGSFNZ144T55hO5tZoQ8nmZJfrs3HIGj1i', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWlDZlZFVGJXTW1SNEo5eEVodnBuZ1JCTnF2OXpUNkJsRVpmS1lhaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly9sb2NhbGhvc3Qvbml5ZC1lY29tL3B1YmxpYy9jaGVja291dC9pbmRleCI7fX0=', 1737364774);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `status`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'T Shirt', 1, 'fsdf', 'upload/sub-category-images/icons8-shirt-100.png', '2025-01-13 02:49:57', '2025-01-13 02:49:57'),
(2, 4, 'Mobile', 1, 'fdsf', 'upload/sub-category-images/icons8-mobile-phone-100.png', '2025-01-13 02:50:14', '2025-01-13 02:50:14'),
(3, 5, 'T Shirt', 1, 'sdfsdf', 'upload/sub-category-images/icons8-shirt-100.png', '2025-01-15 03:41:58', '2025-01-15 03:41:58'),
(4, 3, 'Hijab', 1, 'Hijab', 'upload/sub-category-images/hijab_720x720q80.jpg', '2025-01-19 07:33:28', '2025-01-19 07:33:28'),
(5, 6, 'Leptop', 1, 'Leptop', 'upload/sub-category-images/not found.jpg', '2025-01-19 07:45:52', '2025-01-19 07:45:52'),
(6, 7, 'Ladders & Workbenches', 1, 'Ladders & Workbench', 'upload/sub-category-images/not found.jpg', '2025-01-19 08:36:09', '2025-01-19 08:36:09'),
(7, 8, 'Football', 1, 'fotball', 'upload/sub-category-images/football.jpg', '2025-01-19 08:50:39', '2025-01-19 08:50:39'),
(8, 2, 'Panjabi', 1, 'Panjabi', 'upload/sub-category-images/panjabi.jpg', '2025-01-19 09:02:22', '2025-01-19 09:02:22'),
(9, 2, 'Hoodie', 1, 'Hoodie', 'upload/sub-category-images/not found.jpg', '2025-01-19 09:07:36', '2025-01-19 09:07:36'),
(10, 4, 'Headphone', 1, 'Headphone', 'upload/sub-category-images/not found.jpg', '2025-01-19 09:19:02', '2025-01-19 09:19:02'),
(11, 9, 'Car', 1, 'dfdsf', 'upload/sub-category-images/not found.jpg', '2025-01-19 09:26:18', '2025-01-19 09:26:18'),
(12, 2, 'Shoe', 1, 'Shoe', 'upload/sub-category-images/not found.png', '2025-01-19 22:34:29', '2025-01-19 22:34:29'),
(13, 2, 'Jackets & Coats', 1, 'Jackets & Coats', 'upload/sub-category-images/not found.png', '2025-01-19 22:38:52', '2025-01-19 22:38:52');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `status`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Peace', 'PIS', 1, 'fdf', '2025-01-13 03:14:00', '2025-01-13 03:19:56'),
(6, 'Litter', 'LTR', 1, 'dsfsdfsdf', '2025-01-13 03:26:20', '2025-01-13 03:26:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Mehedi Hasan', 'admin@gmail.com', NULL, '$2y$12$Uqkg0Rqe40nXkCGpc286fOngzwBy0sDSaWGMXPwe9we4fLOQ9NIkm', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-13 02:47:37', '2025-01-13 02:47:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_images`
--
ALTER TABLE `other_images`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_code_unique` (`code`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_code_unique` (`code`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `other_images`
--
ALTER TABLE `other_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
