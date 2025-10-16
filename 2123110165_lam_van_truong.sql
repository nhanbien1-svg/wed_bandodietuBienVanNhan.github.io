-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2025 at 12:46 PM
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
-- Database: `2123110165_lam_van_truong`
--

-- --------------------------------------------------------

--
-- Table structure for table `lvt_banner`
--

CREATE TABLE `lvt_banner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `link` varchar(1000) DEFAULT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `position` enum('slideshow','ads') NOT NULL DEFAULT 'slideshow',
  `description` tinytext DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lvt_banner`
--

INSERT INTO `lvt_banner` (`id`, `name`, `image`, `link`, `sort_order`, `position`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(28, 'mới thêm', 'moi-them.webp', '/moithem', 0, 'slideshow', 'ádasdsa', 19, NULL, '2025-05-10 03:28:23', '2025-05-10 03:28:23', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lvt_brand`
--

CREATE TABLE `lvt_brand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lvt_brand`
--

INSERT INTO `lvt_brand` (`id`, `name`, `slug`, `image`, `sort_order`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(17, 'Apple', 'apple', 'apple.jpg', 1, 'Iphone', 25, NULL, '2025-05-10 05:33:59', '2025-05-10 05:45:37', NULL, 1),
(18, 'Samsung', 'samsung', 'samsung.png', 0, 'Samsung', 25, NULL, '2025-05-10 05:34:19', '2025-05-10 05:34:19', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lvt_category`
--

CREATE TABLE `lvt_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lvt_category`
--

INSERT INTO `lvt_category` (`id`, `name`, `slug`, `image`, `parent_id`, `sort_order`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(20, 'Điện thoại', 'dien-thoai', 'dien-thoai.jpg', 0, 1, 'Điện thoại', 25, NULL, '2025-05-10 05:32:47', '2025-05-10 05:33:05', NULL, 1),
(21, 'Máy tính bảng', 'may-tinh-bang', 'may-tinh-bang.webp', 0, 0, 'Máy tính bảng', 25, NULL, '2025-05-10 05:33:05', '2025-05-10 05:33:05', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lvt_contact`
--

CREATE TABLE `lvt_contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `content` mediumtext NOT NULL,
  `reply_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lvt_contact`
--

INSERT INTO `lvt_contact` (`id`, `user_id`, `name`, `email`, `phone`, `title`, `content`, `reply_id`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `status`) VALUES
(10, 19, 'Nguyễn Vinh Sơn', 'son@gmail.com', '1231231231', 'ưeqwe', 'ưqewq', 0, 19, 19, NULL, '2025-04-28 12:12:10', '2025-05-06 10:55:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lvt_menu`
--

CREATE TABLE `lvt_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `link` varchar(1000) NOT NULL,
  `table_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` enum('category','brand','page','topic','custom') NOT NULL DEFAULT 'custom',
  `position` enum('mainmenu','footer') NOT NULL DEFAULT 'mainmenu',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lvt_menu`
--

INSERT INTO `lvt_menu` (`id`, `name`, `link`, `table_id`, `parent_id`, `sort_order`, `type`, `position`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(32, 'Danh mục', 'danhmuc', NULL, 0, 3, 'custom', 'mainmenu', 19, 19, '2025-04-24 09:11:47', '2025-04-25 12:50:57', NULL, 1),
(33, 'Thương hiệu', 'thuonghieu', NULL, 0, 4, 'custom', 'mainmenu', 19, NULL, '2025-04-24 09:12:27', '2025-04-24 09:12:27', NULL, 1),
(38, 'Trang chủ', '/', NULL, 0, 1, 'custom', 'mainmenu', 19, 19, '2025-04-24 10:26:50', '2025-04-25 13:00:40', NULL, 1),
(39, 'Sản phẩm', '/product', NULL, 0, 2, 'custom', 'mainmenu', 19, 19, '2025-04-25 12:51:34', '2025-04-25 12:55:15', NULL, 1),
(40, 'Liên hệ', '/contact', NULL, 0, 5, 'custom', 'mainmenu', 19, 19, '2025-04-25 13:14:06', '2025-04-25 13:14:40', NULL, 1),
(41, 'Bài viết', '/post', NULL, 0, 6, 'custom', 'mainmenu', 19, 19, '2025-04-25 13:19:52', '2025-04-25 13:20:32', NULL, 1),
(44, 'Dịch vụ', 'chu-de/dich-vu', 13, 41, 0, 'topic', 'mainmenu', 19, 19, '2025-04-28 03:48:31', '2025-05-06 10:55:33', NULL, 1),
(45, 'Tin tức', 'chu-de/tin-tuc', 12, 41, 0, 'topic', 'mainmenu', 19, 19, '2025-04-28 03:48:31', '2025-04-28 03:52:52', NULL, 1),
(55, 'Giới thiệu', 'trang-don/gioi-thieu', 22, 0, 0, 'page', 'footer', 19, NULL, '2025-04-29 02:47:59', '2025-04-29 02:47:59', NULL, 1),
(56, 'Máy tính bảng', 'danh-muc/may-tinh-bang', 21, 32, 0, 'category', 'mainmenu', 25, NULL, '2025-05-10 05:43:37', '2025-05-10 05:43:37', NULL, 1),
(57, 'Điện thoại', 'danh-muc/dien-thoai', 20, 32, 0, 'category', 'mainmenu', 25, NULL, '2025-05-10 05:43:37', '2025-05-10 05:43:37', NULL, 1),
(58, 'Samsung', 'thuong-hieu/samsung', 18, 33, 0, 'brand', 'mainmenu', 25, NULL, '2025-05-10 05:43:57', '2025-05-10 05:43:57', NULL, 1),
(59, 'Iphone', 'thuong-hieu/iphone', 17, 33, 0, 'brand', 'mainmenu', 25, NULL, '2025-05-10 05:43:57', '2025-05-10 05:43:57', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lvt_migrations`
--

CREATE TABLE `lvt_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lvt_migrations`
--

INSERT INTO `lvt_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_03_13_020237_create_banner_table', 1),
(2, '2025_03_13_041454_create_category_table', 1),
(3, '2025_03_13_041504_create_brand_table', 1),
(4, '2025_03_13_041514_create_product_table', 1),
(5, '2025_03_13_041528_create_post_table', 1),
(6, '2025_03_13_041538_create_topic_table', 1),
(7, '2025_03_13_041548_create_menu_table', 1),
(8, '2025_03_13_041558_create_contact_table', 1),
(9, '2025_03_13_041609_create_user_table', 1),
(10, '2025_03_13_041646_create_order_table', 1),
(11, '2025_03_13_041655_create_orderdetail_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lvt_order`
--

CREATE TABLE `lvt_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `note` text DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lvt_order`
--

INSERT INTO `lvt_order` (`id`, `user_id`, `name`, `phone`, `email`, `address`, `note`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(16, 19, 'Nguyễn Vinh Sơn', '1231231231', 'son@gmail.com', '21 đường 22 phường Phước Long B', 'giao giờ hành chính', NULL, '2025-05-08 07:30:38', '2025-05-08 07:30:38', NULL, 0),
(17, 19, 'Nguyễn Vinh Sơn', '1231231231', 'son@gmail.com', '21 đường 22 phường Phước Long B', 'Đặt hàng từ website', NULL, '2025-05-09 16:03:29', '2025-05-09 16:03:29', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lvt_orderdetail`
--

CREATE TABLE `lvt_orderdetail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price_buy` double NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lvt_orderdetail`
--

INSERT INTO `lvt_orderdetail` (`id`, `order_id`, `product_id`, `price_buy`, `qty`, `amount`) VALUES
(1, 1, 27, 10010, 2, 20020),
(2, 1, 2, 10020, 2, 20040),
(3, 1, 3, 10030, 3, 30090),
(4, 1, 4, 10040, 4, 40160),
(5, 1, 5, 10050, 5, 50250),
(6, 1, 6, 10060, 6, 60360),
(7, 1, 7, 10070, 7, 70490),
(8, 1, 8, 10080, 8, 80640),
(9, 1, 9, 10090, 9, 90810),
(10, 1, 10, 10100, 10, 101000),
(11, 11, 34, 1920000, 3, 5760000),
(12, 12, 33, 1390000, 1, 1390000),
(13, 13, 33, 1390000, 1, 1390000),
(14, 14, 33, 1390000, 1, 1390000),
(15, 15, 44, 5928000, 1, 14015000),
(16, 15, 42, 3097000, 1, 14015000),
(17, 15, 41, 4990000, 1, 14015000),
(18, 16, 44, 5928000, 1, 9915000),
(19, 16, 42, 3097000, 1, 9915000),
(20, 16, 37, 890000, 1, 9915000),
(21, 17, 43, 2420000, 1, 2420000);

-- --------------------------------------------------------

--
-- Table structure for table `lvt_post`
--

CREATE TABLE `lvt_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `detail` mediumtext NOT NULL,
  `thumbnail` varchar(1000) DEFAULT NULL,
  `type` enum('post','page') NOT NULL DEFAULT 'post',
  `description` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lvt_product`
--

CREATE TABLE `lvt_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `price_root` double NOT NULL,
  `price_sale` double DEFAULT NULL,
  `thumbnail` varchar(1000) DEFAULT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `detail` longtext DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lvt_product`
--

INSERT INTO `lvt_product` (`id`, `category_id`, `brand_id`, `name`, `slug`, `price_root`, `price_sale`, `thumbnail`, `qty`, `detail`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(46, 20, 17, 'Iphone 15', 'iphone-15', 30000000, 25000000, 'iphone-15.png', 1, 'Iphone 15', 'Iphone 15', 25, NULL, '2025-05-10 05:35:33', '2025-05-10 05:35:33', NULL, 1),
(47, 21, 17, 'ipad mini 6', 'ipad-mini-6', 12000000, 10000000, 'ipad-mini-6.png', 1, 'nhu mới', 'mua đi', 25, NULL, '2025-05-10 05:36:36', '2025-05-10 05:36:36', NULL, 1),
(48, 20, 18, 'Samsung galaxy S23 utal', 'samsung-galaxy-s23-utal', 27000000, 20000000, 'samsung-galaxy-s23-utal.jpg', 1, 'mới tinh', 'chính hãng', 25, NULL, '2025-05-10 05:38:24', '2025-05-10 05:38:24', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lvt_topic`
--

CREATE TABLE `lvt_topic` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `description` tinytext DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lvt_topic`
--

INSERT INTO `lvt_topic` (`id`, `name`, `slug`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(12, 'Tin tức', 'tin-tuc', 'các tin tức phổ biến', 19, NULL, '2025-04-28 03:45:24', '2025-04-28 03:45:24', NULL, 1),
(13, 'Dịch vụ', 'dich-vu', 'Các dịch vụ hấp dẫn', 19, NULL, '2025-04-28 03:45:50', '2025-04-28 03:45:50', NULL, 1),
(14, 'Chính sách', 'chinh-sach', 'Chính sách', 19, 19, '2025-04-28 07:53:04', '2025-05-06 10:55:26', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lvt_user`
--

CREATE TABLE `lvt_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `roles` enum('customer','admin') NOT NULL DEFAULT 'customer',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lvt_user`
--

INSERT INTO `lvt_user` (`id`, `name`, `email`, `phone`, `username`, `password`, `address`, `avatar`, `roles`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `status`) VALUES
(16, 'mới sửa', 'customer1@gmail.com', '0961251651', 'customer1', '$2y$12$PlK.a9LCOsveoEaTnN0/Q.dLiErLRNfoWsOl5L58/rS8PtmDmIDNm', '21 đường 22 phường Phước Long B', 'customer1.webp', 'customer', 10, 25, NULL, '2025-04-15 05:33:05', '2025-05-10 05:12:20', 1),
(25, 'Lâm Văn Trường', 'Truong@gmail.com', '1234567898', 'truong', '$2y$12$8QKVFvl9v7FKh.stwe2h7.LFhFezuMOBjYm1JEdZF6Im8bxRzrysO', 'hcm', 'lam-van-truong.png', 'admin', 19, NULL, NULL, '2025-05-10 04:40:16', '2025-05-10 04:40:16', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lvt_banner`
--
ALTER TABLE `lvt_banner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lvt_banner_image_unique` (`image`) USING HASH;

--
-- Indexes for table `lvt_brand`
--
ALTER TABLE `lvt_brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lvt_brand_slug_unique` (`slug`) USING HASH;

--
-- Indexes for table `lvt_category`
--
ALTER TABLE `lvt_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lvt_category_slug_unique` (`slug`) USING HASH;

--
-- Indexes for table `lvt_contact`
--
ALTER TABLE `lvt_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lvt_menu`
--
ALTER TABLE `lvt_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lvt_menu_link_unique` (`link`) USING HASH;

--
-- Indexes for table `lvt_migrations`
--
ALTER TABLE `lvt_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lvt_order`
--
ALTER TABLE `lvt_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lvt_orderdetail`
--
ALTER TABLE `lvt_orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lvt_post`
--
ALTER TABLE `lvt_post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lvt_post_slug_unique` (`slug`) USING HASH;

--
-- Indexes for table `lvt_product`
--
ALTER TABLE `lvt_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lvt_product_slug_unique` (`slug`) USING HASH;

--
-- Indexes for table `lvt_topic`
--
ALTER TABLE `lvt_topic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lvt_topic_slug_unique` (`slug`) USING HASH;

--
-- Indexes for table `lvt_user`
--
ALTER TABLE `lvt_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lvt_user_email_unique` (`email`),
  ADD UNIQUE KEY `lvt_user_phone_unique` (`phone`),
  ADD UNIQUE KEY `lvt_user_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lvt_banner`
--
ALTER TABLE `lvt_banner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `lvt_brand`
--
ALTER TABLE `lvt_brand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `lvt_category`
--
ALTER TABLE `lvt_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `lvt_contact`
--
ALTER TABLE `lvt_contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lvt_menu`
--
ALTER TABLE `lvt_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `lvt_migrations`
--
ALTER TABLE `lvt_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lvt_order`
--
ALTER TABLE `lvt_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `lvt_orderdetail`
--
ALTER TABLE `lvt_orderdetail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `lvt_post`
--
ALTER TABLE `lvt_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `lvt_product`
--
ALTER TABLE `lvt_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `lvt_topic`
--
ALTER TABLE `lvt_topic`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lvt_user`
--
ALTER TABLE `lvt_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
