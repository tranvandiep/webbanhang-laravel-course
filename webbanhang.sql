-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2022 at 07:17 AM
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
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `href_param` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `href_param`) VALUES
(1, 'Bep Tu', 'bep-tu'),
(2, 'Bep Dien Tu', 'bep-dien-tu');

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
(1, 'tranvandiep.it@gmail.com', '1234567890', 'Khoa hoc PHP/Laravel', 'Dang ky khoa hoc', 1, '2022-09-11 15:01:36', '2022-09-11 08:35:33', 'TRAN VAN DIEP'),
(3, 'gokisoft.com@gmail.com', '0967025996', 'HTML5/CSS3', '34234234234', 1, NULL, '2022-09-14 20:31:10', 'TRAN VAN A');

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
(2, 'Chính sách bảo mật thông tin', 'chinh-sach-bao-mat-thong-tin', 'http://127.0.0.1:8000/uploads/khoa hoc lap trinh c online.jpg', '<table border=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Ch&iacute;nh S&aacute;ch Bảo Mật</strong></p>\r\n\r\n			<p>Đối với ZicZacVN việc bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n cho kh&aacute;ch h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, v&igrave; thế n&ecirc;n ch&uacute;ng t&ocirc;i đảm bảo chắc chắn cố gắng hết sức bảo mật th&ocirc;ng tin ri&ecirc;ng tư của bạn trong bất k&igrave; t&igrave;nh huống n&agrave;o.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Đ&acirc;y l&agrave; ch&iacute;nh s&aacute;ch bảo mật của ch&uacute;ng t&ocirc;i, ở đ&acirc;y ch&uacute;ng t&ocirc;i sẽ thu thập v&agrave; xử l&iacute; những th&ocirc;ng tin khi kh&aacute;ch h&agrave;ng đăng k&iacute; sử dụng dịch vụ tr&ecirc;n ZicZacVN.com. Nếu bạn đồng &yacute; sử dụng c&aacute;c dịch vụ của ZicZacVN.com th&igrave; đồng nghĩa với việc bạn ho&agrave;n to&agrave;n chấp nhận những nội dung trong &ldquo;Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y&rdquo;. Ch&iacute;nh s&aacute;ch n&agrave;y ch&uacute;ng t&ocirc;i c&oacute; ho&agrave;n to&agrave;n quyền thay đổi hay chỉnh sửa nội dung m&agrave; kh&ocirc;ng cần phải th&ocirc;ng b&aacute;o cho bất k&igrave; ai, tất cả th&ocirc;ng tin đăng tải đều sẽ c&oacute; hiệu lực ngay lập tức kể từ l&uacute;c đăng l&ecirc;n th&agrave;nh c&ocirc;ng.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>Những th&ocirc;ng tin ch&uacute;ng t&ocirc;i sẽ thu thập</strong></p>\r\n\r\n			<p>Tất cả những dịch vụ tr&ecirc;n ZicZacVN.com c&aacute;c bạn muốn sử dụng th&igrave; phải đăng k&iacute; th&agrave;nh vi&ecirc;n cũng như chấp nhận cung cấp những th&ocirc;ng tin c&aacute; nh&acirc;n cần thiết cho dịch vụ l&ecirc;n website ZicZacVN.com của ch&uacute;ng t&ocirc;i, những th&ocirc;ng tin đ&oacute; bao gồm như sau:</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Th&ocirc;ng tin c&ocirc;ng ty, cửa h&agrave;ng k&egrave;m địa chỉ.</p>\r\n\r\n			<p>T&ecirc;n c&aacute; nh&acirc;n li&ecirc;n hệ, độ tuổi.</p>\r\n\r\n			<p>Số điện thoại c&aacute; nh&acirc;n, email c&aacute; nh&acirc;n hoặc c&ocirc;ng ty, số điện thoại b&agrave;n c&ocirc;ng ty</p>\r\n\r\n			<p>Địa chỉ IP (c&aacute;i n&agrave;y ch&uacute;ng t&ocirc;i sẽ lấy tự động dựa v&agrave;o vị tr&iacute; địa l&iacute; l&uacute;c bạn đăng nhập hoặc truy cập website ZicZacVN.com n&ecirc;n kh&ocirc;ng cần khai b&aacute;o)</p>\r\n\r\n			<p>Ch&uacute;ng t&ocirc;i sẽ bảo vệ th&ocirc;ng tin của c&aacute;c bạn như thế n&agrave;o?</p>\r\n\r\n			<p>Những th&ocirc;ng tin c&aacute; nh&acirc;n ch&uacute;ng t&ocirc;i thu thập được tr&ecirc;n m&aacute;y chủ v&agrave; xử l&iacute; tr&ecirc;n đ&oacute;, ch&uacute;ng t&ocirc;i bảo vệ ch&uacute;ng bằng h&igrave;nh thức bảo vệ vật l&yacute;, điện tử bao gồm:</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>Tường lửa.</strong></p>\r\n\r\n			<p>M&atilde; h&oacute;a dự liệu.</p>\r\n\r\n			<p>Tất cả đều được &aacute;p dụng dựa tr&ecirc;n quy định của luật bảo mật th&ocirc;ng tin do ch&iacute;nh phủ đề ra. ZicZacVN.com sẽ bảo vệ th&ocirc;ng tin n&agrave;y v&agrave; chỉ cho ph&eacute;p những nh&acirc;n vi&ecirc;n c&oacute; tr&aacute;ch nhiệm lấy th&ocirc;ng để ho&agrave;n th&agrave;nh c&ocirc;ng việc được giao trong hệ thống ZicZacVN.com m&agrave; th&ocirc;i.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>C&aacute;ch sử dụng th&ocirc;ng tin c&aacute; nh&acirc;n của ZicZacVN.com</strong></p>\r\n\r\n			<p>Ch&uacute;ng t&ocirc;i l&agrave; c&ocirc;ng ty lớn v&agrave; v&ocirc; c&ugrave;ng uy t&iacute;n do đ&oacute; việc sử dụng th&ocirc;ng tin c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng cũng rất cẩn thận. Ch&uacute;ng t&ocirc;i chỉ sử dụng khi cần thiết để qu&aacute; tr&igrave;nh sử dụng dịch vụ b&ecirc;n ZicZacVN.com được ho&agrave;n th&agrave;nh tốt nhất, giảm tối đa chi ph&iacute; với thời gian. Thế n&ecirc;n th&ocirc;ng tin c&aacute; nh&acirc;n của bạn sẽ được ch&uacute;ng t&ocirc;i sử dụng như sau:</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Lấy th&ocirc;ng tin c&aacute;c dịch vụ của bạn khi truy cập v&agrave;o ZicZacVN.com để ch&uacute;ng t&ocirc;i hỗ trợ tốt nhất v&agrave; kịp thời nhất.</p>\r\n\r\n			<p>Gửi mail th&ocirc;ng b&aacute;o về chương tr&igrave;nh khuyến m&atilde;i, c&aacute;c sự kiện hữu &iacute;ch v&agrave; c&oacute; lợi cho doanh nghiệp của bạn.</p>\r\n\r\n			<p>Giải quyết c&aacute;c tranh chấp ph&aacute;t sinh v&agrave; c&aacute;c m&acirc;u thuẫn trong qu&aacute; tr&igrave;nh truy cập v&agrave;o ZicZacVN.com</p>\r\n\r\n			<p>Ngăn chặn, cấm c&aacute;c hoạt động vi phạm quy định sử dụng của nh&agrave; nước.</p>\r\n\r\n			<p>Xem x&eacute;t, đo lường dịch vụ của ch&uacute;ng t&ocirc;i tr&ecirc;n internet.</p>\r\n\r\n			<p>Đối chiếu, so s&aacute;nh v&agrave; kiểm chứng c&aacute;c th&ocirc;ng tin bạn cung cấp c&oacute; ch&iacute;nh x&aacute;c hay kh&ocirc;ng.</p>\r\n\r\n			<p>Khi n&agrave;o ch&uacute;ng t&ocirc;i tiết lộ th&ocirc;ng tin của bạn kh&aacute;ch h&agrave;ng</p>\r\n\r\n			<p>ZicZacVN.com cam kết kh&ocirc;ng bao giờ cung cấp th&ocirc;ng tin c&aacute; nh&acirc;n của bạn cho bất k&igrave; b&ecirc;n thứ ba n&agrave;o tuy nhi&ecirc;n trong một số trường hợp bất khả kh&aacute;ng ch&uacute;ng t&ocirc;i phải cung cấp th&ocirc;ng tin của bạn như sau:</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>B&ecirc;n thứ 3 được bạn ủy quyền cho ph&eacute;p thu thập th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.</strong></p>\r\n\r\n			<p>Theo y&ecirc;u cầu của cơ quan điều tra phục vụ cho c&ocirc;ng t&aacute;c điều tra c&aacute;c sai phạm của nh&agrave; nước.</p>\r\n\r\n			<p>Cung cấp cho b&ecirc;n thứ ba c&oacute; li&ecirc;n kết dịch vụ tr&ecirc;n ZicZacVN.com hoặc b&ecirc;n thứ ba c&ugrave;ng l&agrave;m với ZicZacVN.com cần để ho&agrave;n th&agrave;nh c&ocirc;ng việc cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n			<p>Ngo&agrave;i những trường hợp tr&ecirc;n ch&uacute;ng t&ocirc;i sẽ giữ b&iacute; mật th&ocirc;ng tin của bạn cho b&ecirc;n thứ ba n&agrave;o kh&aacute;c tuy nhi&ecirc;n nếu ch&uacute;ng t&ocirc;i thấy sự c&ocirc;ng bố th&ocirc;ng tin c&aacute; nh&acirc;n của bạn l&agrave; cần thiết để đề ph&ograve;ng c&aacute;c thiệt hại về vật chất hoặc c&aacute;c h&agrave;nh vi phạm ph&aacute;p kh&aacute;c.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>Th&ocirc;ng tin quản l&yacute; tr&ecirc;n website ZicZacVN.com</strong></p>\r\n\r\n			<p>Những th&ocirc;ng tin bạn đăng k&iacute; tr&ecirc;n website ZicZacVN.com bạn ho&agrave;n to&agrave;n c&oacute; thể thay đổi hay chỉnh sửa trong bất k&igrave; thời gian n&agrave;o tr&ecirc;n ZicZacVN.com trừ l&uacute;c ch&uacute;ng t&ocirc;i bảo tr&igrave; hoặc hệ thống bị lỗi c&ograve;n lại bạn chỉ việc đăng nhập v&agrave; chỉnh sửa th&ocirc;ng tin c&aacute; nh&acirc;n của m&igrave;nh th&ocirc;i, ch&uacute;ng t&ocirc;i kh&ocirc;ng chịu tr&aacute;ch nhiệm về độ ch&iacute;nh x&aacute;c cũng như th&ocirc;ng tin bạn để lại tr&ecirc;n website đ&acirc;u nh&eacute;.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>C&ocirc;ng Ty Cổ Phần C&ocirc;ng nghệ ZicZac Việt Nam</p>\r\n\r\n			<p>Địa chỉ: Số 8, T&ocirc;n Thất Thuyết, Mỹ Đ&igrave;nh, Từ Li&ecirc;m, H&agrave; Nội</p>\r\n\r\n			<p>Điện thoại:&nbsp;<a href=\"tel:0967025996\" onclick=\"gtag_report_conversion()\" target=\"_blank\">0967.025.996</a></p>\r\n\r\n			<p>Website: ZicZacVN.com</p>\r\n\r\n			<p>Email:&nbsp;<a href=\"mailto:support@ziczacvn.com\" target=\"_blank\">support@ziczacvn.com</a></p>\r\n\r\n			<p>Thời gian l&agrave;m việc:</p>\r\n\r\n			<p>Thứ 2: S&aacute;ng 08h:00 &ndash; 11h:30 &ndash; Chiều 13h:30 &ndash; 17h:00.</p>\r\n\r\n			<p>Thứ 3: S&aacute;ng 08h:00 &ndash; 11h:30 &ndash; Chiều 13h:30 &ndash; 17h:00.</p>\r\n\r\n			<p>Thứ 4: S&aacute;ng 08h:00 &ndash; 11h:30 &ndash; Chiều 13h:30 &ndash; 17h:00.</p>\r\n\r\n			<p>Thứ 5: S&aacute;ng 08h:00 &ndash; 11h:30 &ndash; Chiều 13h:30 &ndash; 17h:00.</p>\r\n\r\n			<p>Thứ 6: S&aacute;ng 08h:00 &ndash; 11h:30 &ndash; Chiều 13h:30 &ndash; 17h:00.</p>\r\n\r\n			<p>Thứ 7: S&aacute;ng 08h:00 &ndash; 11h:30.</p>\r\n\r\n			<p>Chủ nhật: Nghỉ.</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><strong>Xin ch&acirc;n th&agrave;nh cảm ơn qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; lu&ocirc;n tin tưởng v&agrave; ủng hộ!!!</strong></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>Nếu c&oacute; bất k&igrave; thắc mắc n&agrave;y về Ch&iacute;nh s&aacute;ch bảo mật của ch&uacute;ng t&ocirc;i vui l&ograve;ng đ&oacute;ng g&oacute;p &yacute; kiến về e-mail tr&ecirc;n nh&eacute;. Ch&uacute;ng t&ocirc;i hoan ngh&ecirc;nh những đ&oacute;ng g&oacute;p đ&oacute; v&agrave; sẽ tham khảo sửa đổi nếu n&oacute; ph&ugrave; hợp cho hướng ph&aacute;t triển của ZicZacVN.com cũng như đảm bảo, bảo mật th&ocirc;ng tin kh&aacute;ch h&agrave;ng tr&ecirc;n ZicZacVN.com. Xin cảm ơn nhưng kh&aacute;ch h&agrave;ng của ch&uacute;ng t&ocirc;i, hi vọng với Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y ch&uacute;ng ta sẽ c&oacute; th&ecirc;m được sự hợp t&aacute;c l&acirc;u d&agrave;i c&ugrave;ng ph&aacute;t triển.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&agrave;i Viết Li&ecirc;n Quan</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://ziczacvn.com/tim-dia-chi-thiet-ke-web-uy-tin-ngay-neu-thuong-hieu-dang-tang-hinh.html\">T&igrave;m địa chỉ thiết kế web uy t&iacute;n ngay nếu thương hiệu đang &ldquo;t&agrave;ng h&igrave;nh&rdquo;</a></li>\r\n	<li><a href=\"https://ziczacvn.com/thiet-ke-noi-that.html\">Thiết kế App nội thất: Những điều c&oacute; thể bạn chưa biết!</a></li>\r\n	<li><a href=\"https://ziczacvn.com/bang-gia-thiet-ke-app-cap-nhat-moi-nhat-2022.html\">Bảng gi&aacute; thiết kế app cập nhật mới nhất 2022</a></li>\r\n	<li><a href=\"https://ziczacvn.com/thiet-ke-app-du-lich-chuyen-nghiep-bat-nhip-nhanh-voi-cong-nghe.html\">Thiết kế app du lịch chuy&ecirc;n nghiệp, bắt nhịp nhanh với c&ocirc;ng nghệ</a></li>\r\n	<li><a href=\"https://ziczacvn.com/Dia-chi-thiet-ke-app-tai-ho-chi-minh-uy-tin-hieu-qua.html\">Địa chỉ thiết kế app tại Hồ ch&iacute; minh uy t&iacute;n, hiệu quả</a></li>\r\n	<li><a href=\"https://ziczacvn.com/zalo-huong-dan-go-loi-lien-ket-website-tren-zalo.html\">[Zalo] Hướng dẫn gỡ lỗi li&ecirc;n kết website tr&ecirc;n Zalo</a></li>\r\n	<li><a href=\"https://ziczacvn.com/bang-gia-trung-binh-thiet-ke-app-2021-la-bao-nhieu.html\">Bảng gi&aacute; trung b&igrave;nh thiết kế app 2021 l&agrave; bao nhi&ecirc;u?</a></li>\r\n	<li><a href=\"https://ziczacvn.com/thiet-ke-web-tai-ha-noi-chuan-seo-ban-hang-va-quan-ly-kho-hang-hieu-qua.html\">Thiết kế web tại H&agrave; Nội chuẩn SEO b&aacute;n h&agrave;ng v&agrave; quản l&yacute; kho h&agrave;ng hiệu quả</a></li>\r\n	<li><a href=\"https://ziczacvn.com/tuyen-dung-nhan-vien-sale-marketing.html\">Tuyển Dụng Nh&acirc;n Vi&ecirc;n Sale Marketing</a></li>\r\n	<li><a href=\"https://ziczacvn.com/thiet-ke-app-dat-ve-ba-na-hill-chuyen-nghiep-tao-an-tuong-manh.html\">Thiết kế App đặt v&eacute; B&agrave; N&agrave; Hill chuy&ecirc;n nghiệp, tạo ấn tượng mạnh</a></li>\r\n	<li><a href=\"https://ziczacvn.com/tuyen-dung-lap-trinh-vien-phplaravel.html\">Tuyển Dụng Lập Tr&igrave;nh Vi&ecirc;n PHP/Laravel</a></li>\r\n	<li><a href=\"https://ziczacvn.com/bang-gia-thiet-ke-app-android-va-ios-la-bao-nhieu.html\">Bảng gi&aacute; thiết kế app Android v&agrave; iOS l&agrave; bao nhi&ecirc;u?</a></li>\r\n	<li><a href=\"https://ziczacvn.com/huong-dan-thiet-ke-ung-dung-di-dong-chuyen-nghiep-cho-doanh-nghiep.html\">Hướng dẫn thiết kế ứng dụng di động chuy&ecirc;n nghiệp cho doanh nghiệp</a></li>\r\n	<li><a href=\"https://ziczacvn.com/app-du-lich-Da-nang-kham-pha-Da-nang-thoi-cong-nghe.html\">App du lịch Đ&agrave; Nẵng: Kh&aacute;m ph&aacute; Đ&agrave; Nẵng thời c&ocirc;ng nghệ</a></li>\r\n	<li><a href=\"https://ziczacvn.com/chinh-sach--dich-vu.html\">Ch&iacute;nh s&aacute;ch bảo mật</a></li>\r\n</ul>', '2022-09-11 07:52:51', '2022-09-14 20:43:44', 0),
(3, '234234234 wr23452354345345345', '234234234', 'https://gokisoft.com/uploads/stores/49/2021/10/coding-c-program.jpg', '<p>2342342343</p>', '2022-09-11 07:53:02', '2022-09-11 07:53:39', 0),
(4, 'Gioi thieu doanh nghiep', 'gioi-thieu-doanh-nghiep', 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-html5-css3.jpg', 'Gioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiep', '2022-09-11 14:39:18', '2022-09-11 14:39:18', 0),
(5, 'Chính sách bảo mật thông tin', 'chinh-sach-bao-mat-thong-tin', 'http://127.0.0.1:8000/uploads/khoa hoc lap trinh c online.jpg', '<p><strong>Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin</strong></p>', '2022-09-11 07:52:51', '2022-09-11 07:52:51', 0),
(6, '234234234 wr23452354345345345', '234234234', 'https://gokisoft.com/uploads/stores/49/2021/10/coding-c-program.jpg', '<p>2342342343</p>', '2022-09-11 07:53:02', '2022-09-11 07:53:39', 0),
(7, 'Gioi thieu doanh nghiep', 'gioi-thieu-doanh-nghiep', 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-html5-css3.jpg', 'Gioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiep', '2022-09-11 14:39:18', '2022-09-11 14:39:18', 0),
(8, 'Chính sách bảo mật thông tin', 'chinh-sach-bao-mat-thong-tin', 'http://127.0.0.1:8000/uploads/khoa hoc lap trinh c online.jpg', '<p><strong>Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin</strong></p>', '2022-09-11 07:52:51', '2022-09-11 07:52:51', 0),
(9, '234234234 wr23452354345345345', '234234234', 'https://gokisoft.com/uploads/stores/49/2021/10/coding-c-program.jpg', '<p>2342342343</p>', '2022-09-11 07:53:02', '2022-09-11 07:53:39', 0),
(10, 'Gioi thieu doanh nghiep', 'gioi-thieu-doanh-nghiep', 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-html5-css3.jpg', 'Gioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiepGioi thieu doanh nghiep', '2022-09-11 14:39:18', '2022-09-11 14:39:18', 0),
(11, 'Chính sách bảo mật thông tin', 'chinh-sach-bao-mat-thong-tin', 'http://127.0.0.1:8000/uploads/khoa hoc lap trinh c online.jpg', '<p><strong>Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tinCh&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin</strong></p>', '2022-09-11 07:52:51', '2022-09-11 07:52:51', 0),
(12, '234234234 wr23452354345345345', '234234234', 'https://gokisoft.com/uploads/stores/49/2021/10/coding-c-program.jpg', '<p>2342342343</p>', '2022-09-11 07:53:02', '2022-09-11 07:53:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `total_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `email`, `phone_number`, `address`, `note`, `order_date`, `status`, `total_money`) VALUES
(1, 1, 'TRAN VAN DIEP', 'tranvandiep.it@gmail.com', '123123123', 'Ha Noi', 'Abc', '2022-09-11 13:00:00', 1, 3000),
(3, NULL, 'TRAN VAN A', 'gokisoft.com@gmail.com', '0967025996', 'Trần Hưng Đạo, Quảng Trị', '12312313123123', '2022-09-15 05:07:39', 2, 14000000),
(4, NULL, 'TRAN VAN A', 'gokisoft.com@gmail.com', '0967025996', 'Trần Hưng Đạo, Quảng Trị', '123123123', '2022-09-15 05:08:58', 1, 4000000),
(5, NULL, 'TRAN VAN A', 'gokisoft.com@gmail.com', '0967025996', 'Trần Hưng Đạo, Quảng Trị', '324234234', '2022-09-15 05:09:49', 1, 4000000),
(6, NULL, 'TRAN VAN A', 'gokisoft.com@gmail.com', '0967025996', 'Trần Hưng Đạo, Quảng Trị', NULL, '2022-09-15 05:12:18', 2, 468588468);

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
(2, 1, 2, 500, 2, 1000),
(3, 3, 2, 2000000, 5, 10000000),
(4, 3, 8, 2000000, 2, 4000000),
(5, 4, 2, 2000000, 2, 4000000),
(6, 5, 2, 2000000, 2, 4000000),
(7, 6, 3, 234234234, 2, 468468468),
(8, 6, 7, 120000, 1, 120000);

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
(1, 1, 'San Pham 1', 200000, 120000, 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-html5-css3.jpg', 'San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1', '2022-09-09 00:50:01', '2022-09-09 00:50:01', 0, 'quan-ao-tre-em-trend-2022'),
(2, 1, 'San pham 2 Xin chao', 6000000, 2000000, 'http://127.0.0.1:8000/uploads/khoa hoc lap trinh java 2.jpg', '<p>San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2</p>\r\n\r\n<h1>fsrfwerwerwerwer</h1>\r\n\r\n<h1>pham 2San pham 2</h1>\r\n\r\n<p><img alt=\"\" src=\"https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-ejb.jpg\" style=\"height:400px; width:764px\" /></p>\r\n\r\n<p>&nbsp;</p>', '2022-09-09 01:12:05', '2022-09-09 02:19:59', 0, 'san-pham-2'),
(3, 2, '234234234', 234234234, 234234234, 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-ejb.jpg', '3423423432', '2022-09-09 01:15:10', '2022-09-09 01:15:10', 0, '234234234'),
(4, 1, 'San Pham 1', 200000, 120000, 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-html5-css3.jpg', 'San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1', '2022-09-09 00:50:01', '2022-09-09 00:50:01', 0, 'san-pham-1'),
(5, 1, 'San pham 2 Xin chao', 6000000, 2000000, 'http://127.0.0.1:8000/uploads/khoa hoc lap trinh java 2.jpg', '<p>San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2</p>\r\n\r\n<h1>fsrfwerwerwerwer</h1>\r\n\r\n<h1>pham 2San pham 2</h1>\r\n\r\n<p><img alt=\"\" src=\"https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-ejb.jpg\" style=\"height:400px; width:764px\" /></p>\r\n\r\n<p>&nbsp;</p>', '2022-09-09 01:12:05', '2022-09-09 02:19:59', 0, 'san-pham-2'),
(6, 2, '234234234', 234234234, 234234234, 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-ejb.jpg', '3423423432', '2022-09-09 01:15:10', '2022-09-09 01:15:10', 0, '234234234'),
(7, 1, 'San Pham 1', 200000, 120000, 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-html5-css3.jpg', 'San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1', '2022-09-09 00:50:01', '2022-09-09 00:50:01', 0, 'san-pham-1'),
(8, 1, 'San pham 2 Xin chao', 6000000, 2000000, 'http://127.0.0.1:8000/uploads/khoa hoc lap trinh java 2.jpg', '<p>San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2</p>\r\n\r\n<h1>fsrfwerwerwerwer</h1>\r\n\r\n<h1>pham 2San pham 2</h1>\r\n\r\n<p><img alt=\"\" src=\"https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-ejb.jpg\" style=\"height:400px; width:764px\" /></p>\r\n\r\n<p>&nbsp;</p>', '2022-09-09 01:12:05', '2022-09-09 02:19:59', 0, 'san-pham-2'),
(9, 2, '234234234', 234234234, 234234234, 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-ejb.jpg', '3423423432', '2022-09-09 01:15:10', '2022-09-09 01:15:10', 0, '234234234'),
(10, 1, 'San Pham 1', 200000, 120000, 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-html5-css3.jpg', 'San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1San Pham 1', '2022-09-09 00:50:01', '2022-09-09 00:50:01', 0, 'san-pham-1'),
(11, 1, 'San pham 2 Xin chao', 6000000, 2000000, 'http://127.0.0.1:8000/uploads/khoa hoc lap trinh java 2.jpg', '<p>San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2San pham 2</p>\r\n\r\n<h1>fsrfwerwerwerwer</h1>\r\n\r\n<h1>pham 2San pham 2</h1>\r\n\r\n<p><img alt=\"\" src=\"https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-ejb.jpg\" style=\"height:400px; width:764px\" /></p>\r\n\r\n<p>&nbsp;</p>', '2022-09-09 01:12:05', '2022-09-09 02:19:59', 0, 'san-pham-2'),
(12, 2, '234234234', 234234234, 234234234, 'https://gokisoft.com/uploads/stores/49/2021/10/bai-tap-ejb.jpg', '3423423432', '2022-09-09 01:15:10', '2022-09-09 01:15:10', 0, '234234234');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
