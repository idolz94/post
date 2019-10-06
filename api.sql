-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 06, 2019 at 02:22 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Phong Thủy', NULL, NULL),
(2, 'Tài Lộc', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_09_30_040134_create_categories_table', 1),
(4, '2019_09_30_040139_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_id` int(10) UNSIGNED DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `content`, `image`, `cate_id`, `author_id`, `created_at`, `updated_at`) VALUES
(2, 'Tết này nếu bạn còn đặt chổi quét nhà ở vị trí này thì đừng mong tài lộc đến', 'Theo quan niệm dân gian cho rằng nếu để người khác vào nhà mình mà thấy ngay cây chổi quét nhà hoặc chổi lau nhà hay bất cứ dụng cụ vệ sinh nào là một điều xấu.', './content/tet-nay-neu-ban-con-dat-choi-quet-nha-o-vi-tri-nay-thi-dung-mong-tai-loc-den.html', 'http://giadinh.mediacdn.vn/thumb_w/640/2019/1/25/photo-0-1548404651717753061373.jpg', 2, 1, '2019-09-30 01:51:04', '2019-10-03 21:59:06'),
(3, 'Có nên mua những ngôi nhà từng bị cháy?', 'Sau các vụ cháy, những căn hộ, ngôi nhà bị cháy thường khó bán bởi nhiều chủ nhà muốn dời đi do mất mát quá lớn, khách mua thì ngại vì e đất \"dữ\", người buôn bất động sản thì dìm giá.', './content/co-nen-mua-nhung-ngoi-nha-tung-bi-chay.html', 'http://giadinh.mediacdn.vn/zoom/655_361/2018/11/9/chay-2-15417329139951061473470.jpg', 1, 1, '2019-09-30 01:53:57', '2019-10-03 21:19:54'),
(4, 'Những cấm kị trong việc cúng vía Thần Tài không phải ai cũng biết', 'Khi cúng vía Thần tài, nên dùng nến hoặc đèn dầu, không nên dùng đèn nhấp nháy và bóng điện vì chúng dễ tạo ra trường khí xấu, làm ảnh hưởng không tốt đến việc thờ cúng.', './content/nhung-cam-ki-trong-viec-cung-via-than-tai-khong-phai-ai-cung-biet.html', 'http://giadinh.mediacdn.vn/2018/2/24/tt-15194448005561666846525.jpg', 1, 1, '2019-09-30 02:01:48', '2019-10-04 00:37:51'),
(5, 'Mua vàng để cầu may mắn ngày vía Thần Tài nhưng chưa chắc đã \"may mắn\"', 'trong ngày vía Thần Tài nhiều năm nay vẫn xẩy ra đó là người người đổ xô đi mua vàng ngày này khiến giá vàng được đẩy lên cao nhưng đến khi mua vào lại giá thấp khiến người mua bị lỗ.', './content/mua-vang-de-cau-may-man-ngay-via-than-tai-nhung-chua-chac-da-may-man.html', 'http://giadinh.mediacdn.vn/2018/2/23/vang-15193582259611703617316.jpg', 1, 1, '2019-09-30 02:04:01', '2019-10-04 00:50:29'),
(6, 'Hãy lưu ý về cách bố trí cửa sổ để tránh gặp vận xui trong năm mới', 'Cửa sổ không chỉ giúp thông gió mà có ảnh hưởng rất lớn tới tổng thể phong thủy của ngôi nhà. Chính vì vậy, theo quan niệm phong thủy dân gian bạn cần lưu ý những điều sau', './content/hay-luu-y-ve-cach-bo-tri-cua-so-de-tranh-gap-van-xui-trong-nam-moi.html', 'http://giadinh.mediacdn.vn/2018/2/8/cua-so-1518076510145459748459.jpg', 1, 1, '2019-09-30 02:07:11', '2019-10-04 00:55:58'),
(7, 'Biểu tượng chó trong phong thủy', 'Chó là con vật rất gần gũi, thậm chí là bầu bạn thân thiết của con người. Chó dũng cảm, trung thành, đặc biệt là có trí thông minh, tiếp thu nhanh…', './content/bieu-tuong-cho-trong-phong-thuy.html', 'http://giadinh.mediacdn.vn/thumb_w/640/2018/2/7/c003a-crop-15179700453011834492444.jpg', 1, 1, '2019-09-30 02:09:33', '2019-10-04 01:07:17'),
(8, 'Ở nhà chung cư, ban thờ như thế nào là \"chuẩn\" phong thuỷ?', 'Có nhà cho rằng ở chung cư chật chội nên treo bàn thờ bé xíu, “hứa” với các cụ khi khi nào mua được nhà to sẽ quan tâm đến phần thờ cúng!', './content/o-nha-chung-cu-ban-tho-nhu-the-nao-la-chuan-phong-thuy.html', 'http://giadinh.mediacdn.vn/thumb_w/640/2017/ban-tho-chung-cu-duoc-tu-van-kp-1483618233111-crop-1483691184745.jpg', 2, 1, '2019-09-30 02:11:05', '2019-10-04 01:58:46'),
(9, '8 sai lầm phong thủy tai hại khiến bạn mãi không giàu, cái đầu tiên hầu như ai cũng mắc!', 'Để tiền lung tung, vòi nước rò rỉ hay cây chết trong nhà... đều là những điềm phong thủy xấu gia chủ cần tránh.', './content/8-sai-lam-phong-thuy-tai-hai-khien-ban-mai-khong-giau-cai-dau-tien-hau-nhu-ai-cung-mac.html', 'http://giadinh.mediacdn.vn/zoom/165_110/2018/9/17/thumyujuiuo-1536545185-484-width1000height600-watermark-153717873174672028733.jpg', 2, 1, '2019-09-30 02:16:10', '2019-10-04 02:05:51'),
(10, 'Không sớm thì muộn gia đình cũng lục đục sa sút vì mắc 5 lỗi sai phong thủy \"ngớ ngẩn\"', 'Rất nhiều gia đình đang vô tình mắc những lỗi phong thủy tưởng đơn giản mà hóa ra lại vô cùng nghiêm trọng này, khiến công việc làm ăn sa sút, nội bộ lục đục.', './content/khong-som-thi-muon-gia-dinh-cung-luc-duc-sa-sut-vi-mac-5-loi-sai-phong-thuy-ngo-ngan.html', 'http://giadinh.mediacdn.vn/zoom/165_110/2018/6/25/photo-2-15299221990511678236900.jpg', 2, 1, '2019-09-30 02:31:54', '2019-10-04 02:10:51'),
(11, 'Trồng cây sai cách trong nhà, muôn đời tài lộc không đến', 'Việc bài trí cây xanh cho hợp phong thủy phụ thuộc vào rất nhiều yếu tố như hướng căn nhà, cấu trúc, vị trí, loại cây, tuổi tác gia chủ', './content/trong-cay-sai-cach-trong-nha-muon-doi-tai-loc-khong-den.html', 'http://giadinh.mediacdn.vn/zoom/165_110/2018/c5-crop-1515655222702.png', 2, 1, '2019-09-30 02:33:36', '2019-10-04 02:28:49'),
(12, 'Trang trí phòng khách kiểu này trong năm mới khiến gia chủ hao tài lộc', 'Dịp Tết Đinh Dậu vừa qua nhiều nhà sửa soạn lại phòng khách thật đẹp để đón khách', './content/trang-tri-phong-khach-kieu-nay-trong-nam-moi-khien-gia-chu-hao-tai-loc.html', 'http://giadinh.mediacdn.vn/thumb_w/640/2017/k1-1486433713357.jpg', 2, 1, '2019-09-30 02:38:41', '2019-10-04 02:47:48'),
(13, 'Bài trí yếu tố nước trong nhà theo phong thủy “tiện đường” đón tài lộc', 'Tôi thấy hiện nay rất nhiều người đặt bể cá hoặc xây dựng hòn non bộ ở tư gia. Tôi cũng muốn trang trí chúng tại nhà nhưng không biết có ảnh hưởng gì tới yếu tố phong thủy không.', './content/bai-tri-yeu-to-nuoc-trong-nha-theo-phong-thuy-tien-duong-don-tai-loc.html', 'http://giadinh.mediacdn.vn/2015/anh-2-1426576776039.jpg', 2, 1, '2019-09-30 02:40:47', '2019-10-04 02:59:16'),
(14, '10 điều đáng lưu tâm khi chuyển đồ về nhà mới', 'Không phải là chỉ cần cúng bái thần linh, thổ địa xong là bạn có thể tùy ý chuyển đồ vào nhà mới. Có những việc rất nhỏ nhưng cũng đáng để bạn lưu tâm nếu muốn “an cư” để “lạc nghiệp”.', '10 điều đáng lưu tâm khi chuyển đồ về nhà mới.txt', 'https://cms.lichngaytot.com/medias/standard/2016/4/19/10-dieu-dang-luu-tam-khi-chuyen-do-ve-nha-moi-hinh-anh.jpg', 2, 1, '2019-09-30 02:43:47', '2019-10-02 18:31:19'),
(15, 'Hãy lưu ý về cách bố trí cửa sổ để tránh gặp vận xui trong năm mới', 'Cửa sổ không chỉ giúp thông gió mà có ảnh hưởng rất lớn tới tổng thể phong thủy của ngôi nhà.', './content/hay-luu-y-ve-cach-bo-tri-cua-so-de-tranh-gap-van-xui-trong-nam-moi.html', 'http://giadinh.mediacdn.vn/2018/2/8/cua-so-1518076510145459748459.jpg', 2, 1, '2019-09-30 02:46:38', '2019-10-04 03:05:28'),
(16, 'Thỉnh bản mệnh Phật đeo phúc bên người xua khí xấu, trừ tai họa', 'Phật bản mệnh được biết đến như một trong những vị hộ mệnh, người đem đến điều tốt lành, bình an, sức khỏe, may mắn và giúp bảo vệ mọi người trong cuộc sống.', './content/thinh-ban-menh-phat-deo-phuc-ben-nguoi-xua-khi-xau-tru-tai-hoa.html', 'http://giadinh.mediacdn.vn/k:2016/hinh-anh-1475832040271/thinhbanmenhphatdeophucbennguoixuakhixautrutaihoa.jpg', 1, 1, '2019-09-30 02:55:53', '2019-10-04 03:14:41'),
(17, 'Tất tần tật những điều nên và không nên làm trong tháng 7 cô hồn', 'Tháng 7 âm lịch, dân gian còn gọi là \"Tháng cô hồn\" hay tháng “xá tội vong nhân”, một nét văn hóa và tín ngưỡng tâm linh quan trọng của người Việt', './content/tat-tan-tat-nhung-dieu-nen-va-khong-nen-lam-trong-thang-7-co-hon.html', 'http://giadinh.mediacdn.vn/k:2016/photo-2-1470974147750/tattantatnhungdieunenvakhongnenlamtrongthang7cohon.jpg', 1, 1, '2019-09-30 02:59:28', '2019-10-04 03:18:43'),
(18, 'Treo tranh này muốn chồng có chồng, muốn vợ có vợ, hôn nhân êm ấm!', 'Uyên ương là cặp chim được coi là biểu tượng của hạnh phúc, viên mãn và tranh uyên ương đang được nhiều người trẻ săn tìm để mong cuộc hôn nhân tốt đẹp, tránh sự xuất hiện của người thứ ba...', './content/treo-tranh-nay-muon-chong-co-chong-muon-vo-co-vo-hon-nhan-em-am.html', 'http://giadinh.mediacdn.vn/thumb_w/640/2018/9/12/uyen-uong-1536719531758793867534.jpg', 1, 1, '2019-09-30 03:03:06', '2019-10-04 03:23:34'),
(19, 'Rước tài lộc đầy nhà nhờ chọn cá cảnh đúng \"chuẩn\"', 'Nuôi cá cảnh trong nhà ngoài tác dụng trang trí nhà cửa, làm đẹp thêm không gian sống, còn mang lại tài lộc cho gia chủ nếu biết cách chọn cá đúng \"chuẩn\".', './content/ruoc-tai-loc-day-nha-nho-chon-ca-canh-dung-chuan.html', 'http://giadinh.mediacdn.vn/2017/photo-2-1490060866398.jpg', 2, 1, '2019-09-30 03:06:17', '2019-10-04 03:26:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Vivien Heathcote', 'theo.kassulke@example.org', '2019-09-30 01:38:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dGnYZkehNE', '2019-09-30 01:38:19', '2019-09-30 01:38:19'),
(2, 'Dr. Maud Farrell PhD', 'dbernier@example.com', '2019-09-30 01:38:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2tEd4flTO1', '2019-09-30 01:38:19', '2019-09-30 01:38:19'),
(3, 'Miss Winnifred Hartmann', 'kkohler@example.com', '2019-09-30 01:38:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qEOB5gmOMb', '2019-09-30 01:38:19', '2019-09-30 01:38:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
