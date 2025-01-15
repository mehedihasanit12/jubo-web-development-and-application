-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2025 at 11:02 AM
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
(3, 'Realme', 1, 'Realme', 'upload/brand-images/Realme_logo.svg.png', '2025-01-14 22:38:23', '2025-01-14 22:38:23');

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
('eef95f658febcee12b41ea8ec1bace29', 'i:1;', 1736934085),
('eef95f658febcee12b41ea8ec1bace29:timer', 'i:1736934085;', 1736934085);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Man Fasion', 1, 'dfdf', 'upload/category-images/icons8-shirt-100.png', '2025-01-13 02:48:59', '2025-01-13 02:48:59'),
(3, 'Women Fashion', 1, 'sdfdf', 'upload/category-images/icons8-shirt-100.png', '2025-01-13 02:49:10', '2025-01-13 02:49:10'),
(4, 'Electronics', 1, 'dfdsf', 'upload/category-images/icons8-mobile-phone-100.png', '2025-01-13 02:49:41', '2025-01-13 02:49:41'),
(5, 'Kids Fashion', 1, 'dfdf', 'upload/category-images/icons8-mobile-phone-100.png', '2025-01-15 03:41:17', '2025-01-15 03:41:17');

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
(13, '2025_01_14_063037_create_other_images_table', 2);

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
(7, 1, 'upload/product-other-images/icons8-mobile-phone-100.png', '2025-01-15 00:36:56', '2025-01-15 00:36:56'),
(8, 1, 'upload/product-other-images/icons8-shirt-100.png', '2025-01-15 00:36:56', '2025-01-15 00:36:56'),
(11, 5, 'upload/product-other-images/bde59fe05909a1e7feb090a6f79b1ba2.jpg_80x80q80.jpg_.webp', '2025-01-15 03:42:55', '2025-01-15 03:42:55'),
(12, 5, 'upload/product-other-images/0843cc4df4eafdef982514d42aea7235.jpg_80x80q80.jpg_.webp', '2025-01-15 03:42:55', '2025-01-15 03:42:55'),
(13, 5, 'upload/product-other-images/07093e37784b1070e12deb3706670027.jpg_720x720q80.jpg_.webp', '2025-01-15 03:42:56', '2025-01-15 03:42:56');

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
(1, 2, 1, 1, 2, 'dfsd', '324', 234, 324, 324, 1, '4324', '<p>ewrwesfr</p>', 'aaaaa', 'fsdf', 'upload/product-images/icons8-mobile-phone-100.png', 0, 0, 0, '2025-01-14 22:33:47', '2025-01-15 00:30:31'),
(2, 4, 2, 3, 2, 'Realme Note 60 (4/128) Smartphone', 'RLN60', 10000, 12000, 10, 1, 'mobile', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i7.129f58b3DyWiEX\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); letter-spacing: normal; overflow: hidden; text-overflow: ellipsis; text-wrap-mode: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Realme Note 60 (4/128) Smartphone</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; column-count: 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Body</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Body Dimensions 167.3 x 76.7 x 7.8 mm (6.59 x 3.02 x 0.31 in)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Body Weight 187 g</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Build Glass Front, Plastic Frame, Plastic Back</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Network Sim Dual SIM (Nano-SIM, Dual stand-by)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Water Resistant IP64, Dust and Splash Resistant</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Display</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Display Type IPS LCD, 90Hz, 450 nits (typ), 560 nits (HBM)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Display Size 6.74 inches, 109.7 cm2 (~85.5% screen-to-body ratio)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Display Resolution 720 x 1600 pixels, 20:9 ratio</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Display Multitouch Yes</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Display Density 260 ppi</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Display Screen Protection Reinforced Glass</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Platform</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Operating System Android</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">OS Version 14</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">User Interface (ui) Realme UI 5.0</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Chipset Unisoc Tiger T612 (12 nm)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">CPU Octa-core (2x1.8 GHz Cortex-A75 &amp; 6x1.8 GHz Cortex-A55)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">GPU Mali-G57</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Memory</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Memory Internal 64 GB, 128 GB, 256 GB</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Memory External microSDXC (dedicated slot)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Ram 4 GB</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Camera</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Primary Camera 32 MP, (wide)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Secondary Camera 5 MP</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Camera Features LED Flash, Panorama</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Video</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">1080p@30fps</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Sound</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Audio Yes</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Loudspeaker Yes</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">3.5mm Jack Yes</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Connectivity</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">WiFi Wi-Fi 802.11 a/b/g/n/ac, dual-band</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Bluetooth 5.0, A2DP, LE</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">USB USB Type-C 2.0</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">GPS Yes with a GPS</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Features</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Sensors Fingerprint (side-mounted), accelerometer, proximity, compass</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Messaging Yes</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Battery</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Battery Type Non-removable Li-Po Battery</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Battery Capacity 5000 mAh</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Charging 10W Wired</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 1.3; border-bottom: 1px solid rgb(239, 240, 245); white-space-collapse: break-spaces;\"><div style=\"margin: 0px; padding: 0px; width: 950px; height: auto !important;\"></div></div><div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><h2 class=\"pdp-mod-section-title \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; text-wrap-mode: nowrap;\">Specifications of Realme Note 60 (4/128) Smartphone</h2><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\"><ul class=\"specification-keys\" data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i2.129f58b3DyWiEX\" style=\"margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Realme</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">431137023_BD-2091146001</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">RAM Memory</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">4 GB</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Operating System</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Android</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Battery Capacity (mAh)</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">5000 - 5999 mAh</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Number of SIM</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Dual SIM</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Camera Front (Megapixels)</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">1 - 5MP</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Camera Back (Megapixels)</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">31 - 35 MP</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Screen Size (inches)</span><div class=\"key-value\" data-spm-anchor-id=\"a2a0e.pdp_revamp.product_detail.i1.129f58b3DyWiEX\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">6 Inch and Above</div></li></ul></div></div></div></div>', 'mdfsd', 'sfdsf', 'upload/product-images/images.jfif', 0, 0, 0, '2025-01-14 22:41:37', '2025-01-14 22:41:37'),
(3, 2, 1, 1, 2, 'Men\'s Stylish & Fashionable Trendy Good Looking Long Sleeve Formal Shirt', 'Shirt33', 790, 237, 100, 1, 'shirt', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp_revamp.0.i5.43af7ea0dkud2k\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); letter-spacing: normal; overflow: hidden; text-overflow: ellipsis; text-wrap-mode: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of Men\'s Stylish &amp; Fashionable Trendy Good Looking Long Sleeve Formal Shirt</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; letter-spacing: normal;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; column-count: 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Band Name : CHANDNI FASHION (DK)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fabrics : Men\'s Stylish &amp; Fashionable Trendy Good Looking Long Sleeve Formal Shirt</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Quality: Export quality</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Men</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fashionable &amp; Slim Fit</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: As given picture</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size: M, L, XL</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">M- long: 29\", body: 40\"</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">L- long: 30 \", body: 42\"</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">XL- long: 31\", body: 44\"</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 1.3; border-bottom: 1px solid rgb(239, 240, 245); white-space-collapse: break-spaces;\"><article class=\"lzd-article\" style=\"margin: 0px; padding: 0px;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 10px; padding: 0px; list-style-position: initial; list-style-image: initial;\"><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\"></span><img src=\"https://img.drz.lazcdn.com/static/bd/p/f4a90ab802cab10f6ecebd7f4a0758b7.jpg_2200x2200q80.jpg_.webp\" style=\"margin: 0px; padding: 0px; border-style: none; display: inline; max-width: 100%; height: 1080px; width: 1080px;\"><span style=\"margin: 0px; padding: 0px;\"> </span><img src=\"https://img.drz.lazcdn.com/static/bd/p/1109e008fb6014eb50d65c3eb92e16e8.jpg_2200x2200q80.jpg_.webp\" style=\"margin: 0px; padding: 0px; border-style: none; display: inline; max-width: 100%; height: 1080px; width: 1080px;\"><span style=\"margin: 0px; padding: 0px;\"> </span><img src=\"https://img.drz.lazcdn.com/static/bd/p/322fa28877edff58c234c0eb1afd426a.jpg_2200x2200q80.jpg_.webp\" style=\"margin: 0px; padding: 0px; border-style: none; display: inline; max-width: 100%; height: 1080px; width: 1080px;\"><span style=\"margin: 0px; padding: 0px;\"> </span><img src=\"https://img.drz.lazcdn.com/static/bd/p/766bca07a43d2594dafea576bf95b456.jpg_2200x2200q80.jpg_.webp\" style=\"margin: 0px; padding: 0px; border-style: none; display: inline; max-width: 100%; height: 1200px; width: 1200px;\"><span style=\"margin: 0px; padding: 0px;\"> </span><img src=\"https://img.drz.lazcdn.com/static/bd/p/bde59fe05909a1e7feb090a6f79b1ba2.jpg_2200x2200q80.jpg_.webp\" style=\"margin: 0px; padding: 0px; border-style: none; display: inline; max-width: 100%; height: 1080px; width: 1080px;\"><span style=\"margin: 0px; padding: 0px;\"> </span><img src=\"https://img.drz.lazcdn.com/static/bd/p/0843cc4df4eafdef982514d42aea7235.jpg_2200x2200q80.jpg_.webp\" style=\"margin: 0px; padding: 0px; border-style: none; display: inline; max-width: 100%; height: 1200px; width: 1200px;\"><span style=\"margin: 0px; padding: 0px;\"> </span><img src=\"https://img.drz.lazcdn.com/static/bd/p/07093e37784b1070e12deb3706670027.jpg_2200x2200q80.jpg_.webp\" style=\"margin: 0px; padding: 0px; border-style: none; display: inline; max-width: 100%; height: 1080px; width: 1080px;\"><span style=\"margin: 0px; padding: 0px;\"> </span><img src=\"https://img.drz.lazcdn.com/static/bd/p/6f21695360a0e06db002b7a6738d1a27.jpg_2200x2200q80.jpg_.webp\" style=\"margin: 0px; padding: 0px; border-style: none; display: inline; max-width: 100%; height: 1200px; width: 1200px;\"><span style=\"margin: 0px; padding: 0px;\"> Band Name : CHANDNI FASHION (DK)</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">Fabrics : Men\'s Stylish &amp; Fashionable Trendy Good Looking Long Sleeve Formal Shirt</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">Quality: Export quality</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">Gender: Men</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">Fashionable &amp; Slim Fit</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">Color: As given picture</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">Size: M, L, XL</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">M- long: 29\", body: 40\"</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">L- long: 30 \", body: 42\"</span></div></li><li style=\"margin: 0px; padding: 0px;\"><div style=\"margin: 0px; padding: 0px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px;\">XL- long: 31\", body: 44\"</span></div></li></ul><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 1.7;\"><span style=\"margin: 0px; padding: 0px; display: block;\"></span></p></article></div><div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><h2 class=\"pdp-mod-section-title \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; text-wrap-mode: nowrap;\">Specifications of Men\'s Stylish &amp; Fashionable Trendy Good Looking Long Sleeve Formal Shirt</h2><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\"><ul class=\"specification-keys\" style=\"margin: 16px -15px 0px; padding: 0px; list-style: none; height: auto;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">No Brand</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">376122202_BD-1884592096</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Main Material</span><div class=\"key-value\" style=\"margin: 0px; padding: 0px; display: inline-block; width: 306px; word-break: break-word;\">Cotton</div></li></ul></div></div></div></div>', 'kfjskdfsdf', 'gdsfdsf', 'upload/product-images/07093e37784b1070e12deb3706670027.jpg_720x720q80.jpg_.webp', 0, 0, 0, '2025-01-14 23:12:19', '2025-01-14 23:12:19'),
(5, 5, 3, 1, 2, 'T Shirt', '435324', 34556, 100, 456, 1, 'hgffgh', '<p>fhfgh</p>', 'rwerfwe', 'sfsdf', 'upload/product-images/0843cc4df4eafdef982514d42aea7235.jpg_80x80q80.jpg_.webp', 0, 0, 0, '2025-01-15 03:42:55', '2025-01-15 03:42:55');

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
('BPilfMMAT1M6EeDmYpCeergcGmzRicS5hbIDFZoC', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmpFNUg1aFg4VzRmUVVyME1GeVFHNXFrTW9wcmVQZFdzVk5vQU5ZSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Qvbml5ZC1lY29tL3B1YmxpYyI7fX0=', 1736935180),
('c8noGEA2aJp4qGPFdBJlovj6U2iuqQKWsCFAcaqR', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVjRSZUJvV0kzT1NRUDFrT09HdlNlZU8yY3RGamdlOHVVSER4QWs2ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly9sb2NhbGhvc3Qvbml5ZC1lY29tL3B1YmxpYy9wcm9kdWN0L2luZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiRVcWtnMFJxZTQwblhrQ0dwYzI4NmZPbmd6d0J5MHNEU2FXR01YUHdlOXdlNGZMT1E5TklrbSI7fQ==', 1736934181);

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
(3, 5, 'T Shirt', 1, 'sdfsdf', 'upload/sub-category-images/icons8-shirt-100.png', '2025-01-15 03:41:58', '2025-01-15 03:41:58');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `other_images`
--
ALTER TABLE `other_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
