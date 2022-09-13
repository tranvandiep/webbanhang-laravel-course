-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2022 at 08:00 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webbanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Bep Tu'),
(2, 'Bep Dien Tu');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_name` varchar(350) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `phone_number`, `subject_name`, `note`, `status`, `created_at`, `updated_at`, `fullname`) VALUES
(1, 'tranvandiep.it@gmail.com', '1234567890', 'Khoa hoc PHP/Laravel', 'Dang ky khoa hoc', 1, '2022-09-11 15:01:36', '2022-09-11 08:35:33', 'TRAN VAN DIEP');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_28_074205_create_role_table', 2),
(6, '2022_07_28_074314_alter_user_table', 3),
(7, '2022_07_28_074339_create_category_table', 3),
(8, '2022_07_28_074401_create_product_table', 3),
(9, '2022_07_28_074428_create_gallery_table', 3),
(10, '2022_07_28_074527_create_feedback_table', 3),
(11, '2022_07_28_074546_create_orders_table', 3),
(12, '2022_07_28_074600_create_order_details_table', 4),
(13, '2022_07_28_074612_create_news_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `href_param` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `href_param`, `thumbnail`, `content`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 'Gioi thieu doanh nghiep', 'gioi-thieu-doanh-nghiep', 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-html5-css3.jpg', 'Gioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiep', '2022-09-11 14:39:18', '2022-09-11 14:39:18', 0),
(2, 'Chính sách bảo mật thông tin', 'chinh-sach-bao-mat-thong-tin', 'http://127.0.0.1:8000/uploads/khoa hoc lap trinh c online.jpg', '<p><strong>Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin</strong></p>', '2022-09-11 07:52:51', '2022-09-11 07:52:51', 0),
(3, '234234234 wr23452354345345345', '234234234', 'https://gokisoft.com/uploads/stores/49/2021/10/coding-c-program.jpg', '<p>2342342343</p>', '2022-09-11 07:53:02', '2022-09-11 07:53:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `total_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `email`, `phone_number`, `address`, `note`, `order_date`, `status`, `total_money`) VALUES
(1, 1, 'TRAN VAN DIEP', 'tranvandiep.it@gmail.com', '123123123', 'Ha Noi', 'Abc', '2022-09-11 13:00:00', 1, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `total_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `num`, `total_money`) VALUES
(1, 1, 1, 1000, 2, 2000),
(2, 1, 2, 500, 2, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `title`, `price`, `discount`, `thumbnail`, `description`, `created_at`, `updated_at`, `deleted`, `slug`) VALUES
(1, 1, 'San Pham 1', 200000, 120000, 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-html5-css3.jpg', 'San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1', '2022-09-09 00:50:01', '2022-09-09 00:50:01', 0, 'san-pham-1'),
(2, 1, 'San pham 2 Xin chao', 6000000, 2000000, 'http://127.0.0.1:8000/uploads/khoa hoc lap trinh java 2.jpg', '<p>San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2</p>\r\n\r\n<h1>fsrfwerwerwerwer</h1>\r\n\r\n<h1>pham 2San pham 2</h1>\r\n\r\n<p><img alt=\"\" src=\"https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-ejb.jpg\" style=\"height:400px; width:764px\" /></p>\r\n\r\n<p>&nbsp;</p>', '2022-09-09 01:12:05', '2022-09-09 02:19:59', 0, 'san-pham-2'),
(3, 2, '234234234', 234234234, 234234234, 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-ejb.jpg', '3423423432', '2022-09-09 01:15:10', '2022-09-09 01:15:10', 1, '234234234');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone_number`, `address`, `deleted`, `role_id`) VALUES
(1, 'Diep Tran Van', 'tranvandiep.it@gmail.com', NULL, '$2y$10$acQD5nxNZYCsdK.V8DKXAuPgmRZ3KbC9zqbB9ob4rl4kqnKa7QPzG', 'cwhZ95hUzQR8FD9KqVzSkJ5iUQ1ssANU7n4OzlO6hg7RHWI27sSsOHAqGw63', '2022-07-28 00:26:15', '2022-09-08 23:59:21', '3123123123123123', 'Nam Dinh', 0, 1),
(2, 'GokiSoft', 'gokisoft.com@gmail.com', NULL, '$2y$10$owZ6G9vXPRx6N2CCuUT2TOwQwQD0Dht0Gosx2OyJ9KbEXgYzAq7DW', NULL, '2022-09-08 23:48:35', '2022-09-08 23:48:35', '123456789', 'Ha Noi', 0, 2),
(3, 'ABC', 'tranvandiep.i234234t@gmail.com', NULL, '$2y$10$L/OCHXKmc34vHxoHKOXVRuYXPlatetHvui/EBBnF79lQy8BqedTR2', NULL, '2022-09-08 23:48:58', '2022-09-08 23:48:58', '23423423423', '234234234', 1, 2),
(4, 'Test', 'test@gmail.com', NULL, '$2y$10$tb/BE2IhxcG9wLo1FtENq.QCSCBtwgvXBxx3BOwBmJvNF5/fQX1sC', NULL, '2022-09-11 08:59:54', '2022-09-11 08:59:54', NULL, NULL, 0, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category_id_foreign` (`category_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
