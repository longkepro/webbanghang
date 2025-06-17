-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2025 at 06:09 AM
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
-- Database: `banhangdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `src` varchar(500) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `src`, `quantity`, `price`, `category`, `description`, `brand`) VALUES
(1, 'Logitech C920 Webcam', '/images/c920s.png', 25, 2100000, 3, 'Webcam độ phân giải Full HD 1080p, tự động lấy nét và micro kép tích hợp.', 'Logitech'),
(2, 'Razer Kiyo X', '/images/razer-kiyo-x.png', 40, 2300000, 3, 'Webcam 1080p 30FPS với điều chỉnh độ nghiêng, thích hợp cho streamer.', 'Razer'),
(3, 'Microsoft LifeCam', '/images/microsoft-lifecam.png', 30, 1800000, 3, 'Webcam HD 720p với công nghệ TrueColor cho hình ảnh rõ nét.', 'Microsoft'),
(4, 'Dell Pro Webcam', '/images/dell-pro.png', 20, 2500000, 3, 'Webcam chuẩn 2K QHD, HDR và tự động lấy nét cực nhanh.', 'Dell'),
(5, 'HP HD 4310', '/images/hp-hd-webcam.png', 50, 1700000, 3, 'Webcam nhỏ gọn, góc quay rộng 90 độ và ghi hình 720p.', 'HP'),
(6, 'AverMedia PW513', '/images/PW513.png', 60, 3200000, 3, 'Webcam độ phân giải 4K Ultra HD, góc nhìn 94 độ.', 'AverMedia'),
(7, 'Elgato Facecam', '/images/elgato_facecam_pro.png', 22, 3500000, 3, 'Webcam chuyên nghiệp với cảm biến Sony STARVIS CMOS.', 'Elgato'),
(8, 'Lenovo FHD Webcam', '/images/Lenovo-FHD-Webcam.png', 33, 3200000, 3, 'Webcam 1080p, hỗ trợ chống ngược sáng và micro khử tiếng ồn.', 'Lenovo'),
(9, 'Asus ROG Eye', '/images/Asus-ROG-Eye.png', 15, 2800000, 3, 'Webcam thiết kế gaming, ghi hình Full HD 1080p tại 60fps.', 'ASUS'),
(10, 'Creative Live! Cam', '/images/hero-creative-live-cam.png', 45, 1600000, 3, 'Webcam đơn giản, ghi hình HD và tích hợp micro lọc nhiễu.', 'Creative'),
(11, 'MacBook Air M2', '/images/apple-macbook-air-m2.png', 17, 28000000, 2, 'Laptop mỏng nhẹ, chip Apple M2, thời lượng pin lên đến 18 giờ.', 'Apple'),
(12, 'Dell XPS 13', '/images/dell-xps-13.png', 12, 26000000, 2, 'Laptop cao cấp với viền màn hình siêu mỏng và hiệu năng mạnh mẽ.', 'Dell'),
(13, 'HP Spectre x360', '/images/HP-Spectre.png', 38, 25000000, 2, 'Laptop 2-trong-1 với màn hình cảm ứng và thiết kế sang trọng.', 'HP'),
(14, 'Lenovo ThinkPad X1', '/images/lenovo-thinkpad.png', 44, 27000000, 2, 'Laptop doanh nhân với độ bền cao, bàn phím nổi tiếng.', 'Lenovo'),
(15, 'Asus ZenBook 14', '/images/Asus-ZenBook-14.png', 36, 24000000, 2, 'Laptop siêu di động với thiết kế kim loại và vi xử lý Intel Gen 12.', 'ASUS'),
(16, 'Acer Swift 3', '/images/Acer-Swift-3.png', 29, 19000000, 2, 'Laptop tầm trung hiệu năng ổn định, vỏ nhôm sang trọng.', 'Acer'),
(17, 'MSI Modern 14', '/images/msi_modern_14_.png', 21, 18500000, 2, 'Laptop dành cho sinh viên và nhân viên văn phòng.', 'MSI'),
(18, 'Samsung Galaxy Book', '/images/Samsung-Galaxy-Book.png', 26, 21000000, 2, 'Laptop mỏng nhẹ với màn hình AMOLED sắc nét.', 'Samsung'),
(19, 'Huawei MateBook D15', '/images/huaweimatebookd15.png', 30, 16000000, 2, 'Laptop phổ thông với thiết kế thanh lịch và màn hình lớn.', 'Huawei'),
(20, 'Razer Blade 14', '/images/razer-blade-14.png', 19, 34000000, 2, 'Laptop gaming siêu mỏng với card đồ họa RTX mạnh mẽ.', 'Razer'),
(21, 'Logitech StreamCam', '/images/logitech-streamcam.png', 28, 2200000, 3, 'Webcam Full HD với khả năng ghi hình 60fps, lý tưởng cho streamer.', 'Logitech'),
(22, 'Razer Kiyo Pro', '/images/razer-kiyo-pro.png', 35, 3000000, 3, 'Webcam chất lượng cao với cảm biến CMOS và HDR hỗ trợ điều kiện thiếu sáng.', 'Razer'),
(23, 'AverMedia PW315', '/images/pw315.png', 27, 2600000, 3, 'Webcam 1080p hỗ trợ khử nhiễu và góc nhìn rộng 95 độ.', 'AverMedia'),
(24, 'Elgato Cam Link 4K', '/images/elgato-cam-link.png', 18, 2800000, 3, 'Thiết bị ghi hình chuyển đổi camera sang webcam 4K chuyên nghiệp.', 'Elgato'),
(25, 'Lenovo 500 FHD Webcam', '/images/lenovo-500.png', 32, 1900000, 3, 'Webcam Full HD với khả năng cắm vào là chạy, tiện dụng cho mọi thiết bị.', 'Lenovo'),
(26, 'HP 5MP Webcam', '/images/hp-5mp.png', 24, 2100000, 3, 'Webcam độ phân giải cao với mic kép khử tiếng ồn.', 'HP'),
(27, 'Asus Webcam C3', '/images/asus-c3.png', 29, 2300000, 3, 'Webcam 1080p với thiết kế xoay linh hoạt và chân đế tiện lợi.', 'ASUS'),
(28, 'Creative Live! Sync 1080p V2', '/images/creative-v2.png', 38, 1700000, 3, 'Webcam Full HD với micro tích hợp và khả năng điều chỉnh ánh sáng.', 'Creative'),
(29, 'Microsoft Modern Webcam', '/images/ms-modern.png', 20, 2400000, 3, 'Webcam thiết kế tối giản, tích hợp TrueColor và HDR.', 'Microsoft'),
(30, 'Dell UltraSharp Webcam', '/images/dell-ultrasharp.png', 14, 3600000, 3, 'Webcam 4K cao cấp với AI tự động lấy nét và nhận diện khuôn mặt.', 'Dell'),
(31, 'iPhone 15 Pro Max', '/images/iphone-15-pro-max.png', 20, 33990000, 1, 'Màn hình Super Retina XDR 6.7\", chip A17 Pro, camera chuyên nghiệp.', 'Apple'),
(32, 'Samsung Galaxy S24 Ultra', '/images/galaxy-s24-ultra.png', 18, 31990000, 1, 'Màn hình Dynamic AMOLED 2X, camera zoom 100x, S-Pen tích hợp.', 'Samsung'),
(34, 'Xiaomi 14 Ultra', '/images/xiaomi-14-ultra.png', 25, 25990000, 1, NULL, NULL),
(35, 'OPPO Find X7 Pro', '/images/oppo-find-x7-pro.png', 15, 26990000, 1, NULL, NULL),
(36, 'ASUS ROG Phone 8 Pro', '/images/rog-phone-8-pro.png', 10, 27990000, 1, NULL, NULL),
(37, 'Google Pixel 8 Pro', '/images/pixel-8-pro.png', 12, 26990000, 1, NULL, NULL),
(38, 'Vivo X100 Pro', '/images/vivo-x100-pro.png', 17, 25990000, 1, NULL, NULL),
(39, 'Sony Xperia 1 V', '/images/xperia-1-v.png', 9, 28990000, 1, NULL, NULL),
(40, 'Realme GT5 Pro', '/images/realme-gt5-pro.png', 22, 18990000, 1, NULL, NULL),
(41, 'Nubia Z60 Ultra', '/images/nubia-z60-ultra.png', 14, 19990000, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `password` varchar(255) NOT NULL,
  `admin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userName`, `email`, `createdDate`, `password`, `admin`) VALUES
(1, 'anhtuan', 'anhtuan@gmail.com', '2025-06-08 00:36:21', '123456', 0),
(2, 'hoangminh', 'hoangminh@gmail.com', '2025-06-08 00:36:21', '123456', 1),
(3, 'ngocanh', 'ngocanh@gmail.com', '2025-06-08 00:36:21', '123456', 0),
(4, 'hoailinh', 'hoailinh@gmail.com', '2025-06-08 00:36:21', '123456', 0),
(5, 'ducanh', 'ducanh@gmail.com', '2025-06-08 00:36:21', '123456', 1),
(6, 'huongmai', 'huongmai@gmail.com', '2025-06-08 00:36:21', '123456', 0),
(7, 'vantrung', 'vantrung@gmail.com', '2025-06-08 00:36:21', '123456', 1),
(8, 'mydung', 'mydung@gmail.com', '2025-06-08 00:36:21', '123456', 0),
(9, 'quanghuy', 'quanghuy@gmail.com', '2025-06-08 00:36:21', '123456', 1),
(10, 'lethu', 'lethu@gmail.com', '2025-06-08 00:36:21', '123456', 0),
(11, 'thanhtam', 'thanhtam@gmail.com', '2025-06-08 00:36:21', '123456', 0),
(12, 'thuylinh', 'thuylinh@gmail.com', '2025-06-08 00:36:21', '123456', 1),
(13, 'longkhanh', 'longkhanh@gmail.com', '2025-06-08 00:36:21', '123456', 0),
(14, 'hoangthao', 'hoangthao@gmail.com', '2025-06-08 00:36:21', '123456', 0),
(15, 'minhchau', 'minhchau@gmail.com', '2025-06-08 00:36:21', '123456', 1),
(16, 'trungkien', 'trungkien@gmail.com', '2025-06-08 00:36:21', '123456', 1),
(17, 'hieuviet', 'hieuviet@gmail.com', '2025-06-08 00:36:21', '123456', 0),
(18, 'thanhdat', 'thanhdat@gmail.com', '2025-06-08 00:36:21', '123456', 0),
(19, 'leminh', 'leminh@gmail.com', '2025-06-08 00:36:21', '123456', 1),
(20, 'khanhvan', 'khanhvan@gmail.com', '2025-06-08 00:36:21', '123456', 0),
(21, 'long', 'long@gmail.com', '2025-06-08 15:13:35', '123456', 0),
(22, 'kien', 'kien@gmail.com', '2025-06-08 15:13:35', '123456', 0),
(23, 'huy', 'huy@gmail.com', '2025-06-08 15:13:35', '123456', 0),
(24, 'longke', 'longkepro@gmail.com', '2025-06-11 11:17:35', '123456', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_cart`
--

CREATE TABLE `user_cart` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `addDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cart`
--

INSERT INTO `user_cart` (`id`, `userId`, `productId`, `addDate`) VALUES
(3, 2, 2, '2025-06-10 16:54:16'),
(4, 3, 3, '2025-06-10 16:54:16'),
(5, 2, 4, '2025-06-10 16:54:16'),
(86, 24, 13, '2025-06-11 11:17:46'),
(87, 24, 4, '2025-06-11 11:17:49'),
(88, 24, 3, '2025-06-11 11:17:52'),
(159, 21, 13, '2025-06-13 01:01:57'),
(161, 21, 13, '2025-06-13 01:01:57'),
(162, 21, 13, '2025-06-13 01:01:57'),
(163, 21, 13, '2025-06-13 01:01:57'),
(166, 21, 13, '2025-06-13 01:02:45'),
(167, 21, 13, '2025-06-13 01:02:45'),
(168, 21, 13, '2025-06-13 01:02:46'),
(169, 21, 13, '2025-06-13 01:02:46'),
(170, 21, 13, '2025-06-13 01:02:46'),
(172, 1, 13, '2025-06-13 01:07:58'),
(173, 1, 13, '2025-06-13 01:07:58'),
(174, 1, 13, '2025-06-13 01:07:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `productId` (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_cart`
--
ALTER TABLE `user_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD CONSTRAINT `user_cart_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_cart_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
