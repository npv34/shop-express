-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 29, 2022 lúc 09:21 AM
-- Phiên bản máy phục vụ: 8.0.29
-- Phiên bản PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `eshop-app`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại', '2022-06-08 02:47:42', '2022-06-08 02:47:42'),
(2, 'Máy tính', '2022-06-08 02:47:42', '2022-06-08 02:47:42'),
(3, 'Phụ kiện', '2022-06-08 02:47:42', '2022-06-08 02:47:42'),
(4, 'Tai nghe', '2022-06-08 02:47:42', '2022-06-08 02:47:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address_order`, `created_at`, `updated_at`) VALUES
(2, 'Phan Van Luan', 'phanvanluan611996@gmail.com', '+84867501258', 'HN', '2022-06-22 10:12:13', '2022-06-22 10:12:13'),
(3, 'Phan Van Luan', 'phanvanluan611996@gmail.com', '+84867501258', 'HN', '2022-06-22 10:12:42', '2022-06-22 10:12:42'),
(4, 'quan', 'admin@gmail.com', '+84867501258', 'daadsd', '2022-06-22 10:13:38', '2022-06-22 10:13:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_08_085323_create_categories_table', 2),
(6, '2022_06_08_085344_create_products_table', 2),
(12, '2022_06_22_154002_create_customers_table', 3),
(13, '2022_06_22_154206_create_orders_table', 3),
(14, '2022_06_22_154216_create_order_detail_table', 3),
(16, '2022_06_24_164214_addd_column_role_to_users_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_money` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `status`, `total_money`, `created_at`, `updated_at`) VALUES
(2, 2, '2022-06-22 17:12:13', '1', '344444444', '2022-06-22 10:12:13', '2022-06-22 10:12:13'),
(3, 3, '2022-06-22 17:12:42', '1', '0', '2022-06-22 10:12:42', '2022-06-22 10:12:42'),
(4, 4, '2022-06-22 17:13:38', '1', '368444444', '2022-06-22 10:13:38', '2022-06-22 10:13:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `total_money` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `total_money`, `total_quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 3, '344444444', '1', '2022-06-22 10:12:13', '2022-06-22 10:12:13'),
(2, 4, 3, '344444444', '1', '2022-06-22 10:13:38', '2022-06-22 10:13:38'),
(3, 4, 4, '24000000', '2', '2022-06-22 10:13:38', '2022-06-22 10:13:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `content`, `price`, `status`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 'Điện thoại iPhone 13 Pro Max 256GB', 'iPhone 13 Pro Max 256 GB - siêu phẩm mang trên mình bộ vi xử lý Apple A15 Bionic hàng đầu, màn hình Super Retina XDR 120 Hz, cụm camera khẩu độ f/1.5 cực lớn, tất cả sẽ mang lại cho bạn những trải nghiệm tuyệt vời chưa từng có.', '<h3 style=\"margin: 20px 0px 15px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: bold; font-stretch: normal; font-size: 20px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); outline: none; text-align: justify;\"><a href=\"https://www.thegioididong.com/dtdd/iphone-13-pro-max-256gb\" target=\"_blank\" title=\"Tham khảo giá điện thoại iPhone 13 Pro Max 256GB chính hãng\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 18px; outline: none;\">iPhone 13 Pro Max 256 GB</a>&nbsp;- siêu phẩm mang trên mình bộ vi xử lý Apple A15 Bionic hàng đầu, màn hình Super Retina XDR 120 Hz, cụm camera khẩu độ f/1.5 cực lớn, tất cả sẽ mang lại cho bạn những trải nghiệm tuyệt vời chưa từng có.</h3>', '344444444', '2', 'product/swTlKDM78MvmPtaN78vwDZbY7LEnXF9pOaM2XYK7.jpg', 2, '2022-06-10 02:39:20', '2022-06-10 08:28:12'),
(4, 'Điện thoại Samsung Galaxy A13 6GB', 'Samsung Galaxy A13 6GB đem đến những trải nghiệm tuyệt vời cùng mức giá cực kỳ phải chăng, nhằm hướng tới đối tượng học sinh, sinh viên.', '<h3 style=\"margin: 20px 0px 15px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: bold; font-stretch: normal; font-size: 20px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); outline: none; text-align: justify;\"><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a13-6gb\" target=\"_blank\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 18px; outline: none;\">Samsung Galaxy A13 6GB</a>&nbsp;đem đến những trải nghiệm tuyệt vời cùng mức giá cực kỳ phải chăng, nhằm hướng tới đối tượng học sinh, sinh viên. Máy có thiết kế trẻ trung, thanh thoát, cụm camera được chăm chút chỉnh chu cùng thời gian sử dụng đáp ứng cho cả ngày dài.</h3>', '12000000', '1', 'product/SFK4nIUHD75AHSglyJoIj0is2Kyu06lYHGlorLYa.jpg', 1, '2022-06-13 18:11:49', '2022-06-13 18:11:49'),
(5, 'Điện thoại OPPO Reno7 Z 5G', 'OPPO đã trình làng mẫu Reno7 Z 5G với thiết kế OPPO Glow độc quyền, camera mang hiệu ứng như máy DSLR chuyên nghiệp cùng viền sáng kép, máy có một cấu hình mạnh mẽ và đạt chứng nhận xếp hạng A về độ mượt.', '<h3 style=\"margin: 20px 0px 15px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: bold; font-stretch: normal; font-size: 20px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); outline: none; text-align: justify;\"><a href=\"https://www.thegioididong.com/dtdd-oppo\" target=\"_blank\" title=\"Tham khảo thông tin điện thoại OPPO kinh doanh tại Thế Giới Di Động\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 18px; outline: none;\">OPPO</a>&nbsp;đã&nbsp;trình làng mẫu&nbsp;<a href=\"https://www.thegioididong.com/dtdd/oppo-reno7-z\" target=\"_blank\" title=\"Tham khảo thông tin sản phẩm tại Thế Giới Di Động\" style=\"margin: 0px; padding: 0px; transition: all 0.2s ease 0s; color: rgb(47, 128, 237); font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 18px; outline: none;\">Reno7 Z 5G</a>&nbsp;với thiết kế OPPO Glow độc quyền, camera mang hiệu ứng như máy DSLR chuyên nghiệp cùng viền sáng kép, máy có một cấu hình mạnh mẽ và đạt chứng nhận xếp hạng A về độ mượt.</h3><div><br></div>', '11212121', '1', 'product/ITuL0WW4J6LFWDt15xBurAXUyFLn1BXwsCZKKuol.jpg', 1, '2022-06-13 18:37:38', '2022-06-13 18:37:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `role`, `address`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn Nam', 'admin', 'admin@codegym.vn', '2', 'Hà Nội', '098897777', NULL, '$2y$10$XQ0Fh3Qd76Gw4csSM4JrsOQbdqlAZIyc1A3./Ns/QnkFpJCssEFeK', NULL, '2022-06-07 22:52:09', '2022-06-07 22:52:09'),
(2, 'Nguyễn Thị B', 'thi.nguyen', 'thi@codegym.vn', '1', 'Hà Nội', '09866777', NULL, '$2y$10$5eqg9wFdWWsSmMowvFhLVO7pLLgVQgyulLKQBwVQdtcESlF1Mh3gm', NULL, '2022-06-07 22:52:09', '2022-06-07 22:52:09'),
(3, 'Phan Van Luan', 'luan.phan', 'phanvanluan611996@gmail.com', '1', 'Hà Nội', '0867501258', NULL, '$2y$10$YOP.zEXKn7j.yGpsQKlm7O1WBJPTt0PbY7sJGjzqvJGB4o.Up4HxO', NULL, '2022-06-24 11:34:33', '2022-06-24 11:34:33'),
(4, 'Phan Van Luan', 'admin.luan', 'phanvanluan@gmail.com', '1', 'Hà Nội', '0867501251', NULL, '$2y$10$fOo3GLb8xh2nq4KyWXh9VeOmDd1PLKzWyUliAlsH2..NsMeyIsPA2', NULL, '2022-06-24 11:38:02', '2022-06-24 11:38:02');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_detail_order_id_foreign` (`order_id`),
  ADD KEY `order_detail_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_detail_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
