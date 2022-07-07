-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2022 at 04:36 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlchdt`
--

-- --------------------------------------------------------

--
-- Table structure for table `dathang`
--

CREATE TABLE `dathang` (
  `iddathang` int(11) NOT NULL,
  `hoten` varchar(250) NOT NULL,
  `sdt` varchar(10) NOT NULL,
  `diachi` varchar(250) NOT NULL,
  `tongtien` int(11) NOT NULL DEFAULT 0,
  `idorder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dathang`
--

INSERT INTO `dathang` (`iddathang`, `hoten`, `sdt`, `diachi`, `tongtien`, `idorder`) VALUES
(24, 'ngocman752002', '091252656', 'dmkd', 40980000, 27),
(25, 'hndj', '123', 'nfdjdfkd', 69470000, 29);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `iddetail` int(11) NOT NULL,
  `idorder` int(11) NOT NULL,
  `priceproduct` int(11) NOT NULL,
  `sum` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`iddetail`, `idorder`, `priceproduct`, `sum`, `totalprice`, `idproduct`) VALUES
(34, 2, 18990000, 1, 18990000, 4),
(35, 1, 32990000, 1, 32990000, 2),
(36, 1, 28490000, 1, 28490000, 3),
(37, 1, 20490000, 1, 20490000, 1),
(38, 1, 20490000, 1, 20490000, 1),
(39, 1, 20490000, 1, 20490000, 1),
(40, 1, 32990000, 1, 32990000, 2),
(41, 1, 18990000, 1, 18990000, 4),
(42, 1, 32990000, 1, 32990000, 2),
(43, 4, 20490000, 1, 20490000, 1),
(44, 4, 20490000, 1, 20490000, 1),
(45, 4, 20490000, 1, 20490000, 1),
(46, 8, 20490000, 1, 20490000, 1),
(47, 8, 18990000, 1, 18990000, 4),
(48, 9, 32990000, 1, 32990000, 2),
(49, 10, 20490000, 1, 20490000, 1),
(51, 11, 32990000, 2, 65980000, 2),
(52, 12, 32990000, 1, 32990000, 2),
(53, 12, 32990000, 1, 32990000, 2),
(54, 13, 28490000, 1, 28490000, 3),
(55, 14, 20490000, 1, 20490000, 1),
(56, 15, 32990000, 1, 32990000, -1),
(57, 15, 28490000, 1, 28490000, 3),
(64, 16, 32990000, 1, 32990000, 1),
(65, 16, 18990000, 1, 18990000, 4),
(66, 16, 20490000, 2, 40980000, 1),
(67, 17, 20490000, 1, 20490000, 1),
(68, 16, 18990000, 1, 18990000, 4),
(69, 18, 28490000, 1, 28490000, 3),
(70, 19, 28490000, 1, 28490000, 3),
(75, 6, 20490000, 1, 20490000, 1),
(76, 20, 20490000, 1, 20490000, 1),
(77, 20, 28490000, 1, 28490000, 3),
(79, 22, 28490000, 1, 28490000, 3),
(85, 27, 20490000, 2, 40980000, 1),
(86, 28, 20490000, 1, 20490000, 1),
(87, 29, 20490000, 2, 40980000, 1),
(88, 29, 28490000, 1, 28490000, 3);

--
-- Triggers `details`
--
DELIMITER $$
CREATE TRIGGER `dat_hang` AFTER INSERT ON `details` FOR EACH ROW UPDATE product
    SET sum=sum-NEW.sum
    WHERE product.idproduct=NEW.idproduct
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `dat_hang_delete` AFTER DELETE ON `details` FOR EACH ROW UPDATE product
    SET sum=sum+OLD.sum
    WHERE product.idproduct=OLD.idproduct
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `dat_hang_update` AFTER UPDATE ON `details` FOR EACH ROW UPDATE product
    SET sum=sum-NEW.sum+OLD.sum
    WHERE product.idproduct=NEW.idproduct
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `stt` varchar(100) NOT NULL,
  `dateorder` varchar(100) NOT NULL,
  `totalprice` int(11) DEFAULT 0,
  `iduser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `stt`, `dateorder`, `totalprice`, `iduser`) VALUES
(1, '1', '2021-10-26', 100000000, '1'),
(2, '1', '2021-10-26', NULL, '2'),
(3, '1', '2021-10-26', NULL, '3'),
(4, '1', '2021-10-29', 20490000, '1'),
(5, '1', '2021-10-29', 0, '1'),
(6, '1', '2021-10-29', 20490000, '3'),
(7, '0', '2021-10-29', 0, '1'),
(8, '1', '2021-10-30', 39480000, '2'),
(9, '1', '2021-10-30', 32990000, '2'),
(10, '1', '2021-10-30', 20490000, '2'),
(11, '1', '2021-10-30', 65980000, '2'),
(12, '1', '2021-10-30', 32990000, '2'),
(13, '1', '2021-10-30', 28490000, '2'),
(14, '1', '2021-10-30', 20490000, '2'),
(15, '1', '2021-10-30', 28490000, '2'),
(16, '1', '2021-10-30', 111950000, '2'),
(17, '0', '2021-11-01', 0, '4'),
(18, '1', '2021-11-01', 28490000, '2'),
(19, '1', '2021-11-01', 28490000, '2'),
(20, '1', '2021-11-01', 48980000, '2'),
(22, '0', '2022-05-14', 0, '12'),
(23, '0', '2022-05-14', 0, '14'),
(24, '0', '2022-05-14', 0, '15'),
(25, '0', '2022-05-17', 0, '17'),
(26, '0', '2022-05-18', 0, '19'),
(27, '1', '2022-05-18', 40980000, '21'),
(28, '0', '2022-05-18', 0, '21'),
(29, '1', '2022-05-18', 69470000, '23'),
(30, '0', '2022-05-29', 0, '24');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `idproduct` int(11) NOT NULL,
  `nameproduct` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  `manhinh` text NOT NULL,
  `hdh` text NOT NULL,
  `camerasau` text NOT NULL,
  `cameratruoc` text NOT NULL,
  `chip` text NOT NULL,
  `ram` text NOT NULL,
  `bnt` text NOT NULL,
  `sim` text NOT NULL,
  `pinsac` text NOT NULL,
  `sum` int(11) NOT NULL,
  `idtype` int(11) NOT NULL,
  `hinh` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`idproduct`, `nameproduct`, `price`, `manhinh`, `hdh`, `camerasau`, `cameratruoc`, `chip`, `ram`, `bnt`, `sim`, `pinsac`, `sum`, `idtype`, `hinh`) VALUES
(1, 'Điện thoại iPhone 12 64GB', 20490000, 'OLED6.1\"Super Retina XDR', 'iOS 14', '2 camera 12 MP', '12 MP', 'Apple A14 Bionic', '4 GB', '64 GB', '1 Nano SIM & 1 eSIM Hỗ trợ 5G', '2815 mAh20 W', 13, 1, 'https://th.bing.com/th/id/OIP.OUJW4p3kp7dbcg3jcJ9n6QHaE8?pid=ImgDet&rs=1'),
(2, 'iPhone 12 Pro Max 128GB', 32990000, 'OLED6.7\"Super Retina XDR', 'iOS 14', '3 camera 12 MP', '12 MP', 'Apple A14 Bionic', '6 GB', '128 GB', '1 Nano SIM & 1 eSIMHỗ trợ 5G', '3687 mAh20 W', 20, 1, 'https://th.bing.com/th/id/OIP.dJX-MAqDjgR50sVRLUzcrAHaHa?pid=ImgDet&rs=1'),
(3, 'iPhone 12 Pro 128GB', 28490000, 'OLED6.1\"Super Retina XDR', 'iOS 14', '3 camera 12 MP', '12 MP', 'Apple A14 Bionic', '6 GB', '128 GB', '1 Nano SIM & 1 eSIMHỗ trợ 5G', '2815 mAh20 W', 17, 1, 'https://th.bing.com/th/id/OIP.Ipi8R-qRxGSWYlzYu0QxTgHaJM?pid=ImgDet&rs=1'),
(4, 'iPhone 12 mini 64GB', 18990000, 'OLED5.4\"Super Retina XDR', 'iOS 14', '2 camera 12 MP', '12 MP', 'Apple A14 Bionic', '4 GB', '64 GB', '1 Nano SIM & 1 eSIMHỗ trợ 5G', '2227 mAh20 W', 20, 1, 'https://th.bing.com/th/id/OIP.k_rTOlOT_IEwIPN2yw_uEgHaJ5?pid=ImgDet&rs=1'),
(5, 'iPhone 13 Pro Max 128GB', 36990000, 'OLED6.7\"Super Retina XDR', 'iOS 15', '3 camera 12 MP', '12 MP', 'Apple A15 Bionic', '6 GB', '128 GB\r\n\r\n', '1 Nano SIM & 1 eSIMHỗ trợ 5G', '3687 mAh20 W', 20, 1, 'https://th.bing.com/th/id/OIP.swVNesAPbmmY10ZQTZOKkwHaHa?pid=ImgDet&rs=1'),
(6, 'iPhone 13 Pro 128GB', 32490000, 'OLED6.1\"Super Retina XDR', 'iOS 15', '3 camera 12 MP', '12 MP', 'Apple A15 Bionic', '6 GB', '128 GB\r\n', '1 Nano SIM & 1 eSIMHỗ trợ 5G', '2815 mAh20 W', 20, 1, 'https://phonesstorekenya.com/wp-content/uploads/2021/09/Apple-iPhone-13-Pro-Max-a.jpg'),
(7, 'iPhone 13 64GB', 24490000, 'OLED6.1\"Super Retina XDR', 'iOS 15', '2 camera 12 MP', '12 MP', 'Apple A15 Bionic', '4 GB', '64 GB', '1 Nano SIM & 1 eSIMHỗ trợ 5G', '2815 mAh20 W', 20, 1, 'https://http2.mlstatic.com/D_NQ_NP_2X_855471-MLB47879583987_102021-F.jpg'),
(8, 'iPhone 13 mini 64GB', 22990000, 'OLED5.4\"Super Retina XDR', 'iOS 15', '2 camera 12 MP', '12 MP', 'Apple A15 Bionic', '4 GB', '64 GB', '1 Nano SIM & 1 eSIMHỗ trợ 5G', '2227 mAh20 W', 20, 1, 'https://th.bing.com/th/id/OIP.oFEz5nmyaegVx9CtyXhpNAHaHa?pid=ImgDet&rs=1'),
(9, 'iPhone 11 64GB', 16990000, 'IPS LCD6.1\"Liquid Retina', 'iOS 14', '2 camera 12 MP', '12 MP', 'Apple A13 Bionic', '4 GB', '64 GB', '1 Nano SIM & 1 eSIMHỗ trợ 4G', '3110 mAh18 W', 20, 1, 'https://d28i4xct2kl5lp.cloudfront.net/product_images/135948_f4b67029-be4f-42f8-8784-1dd51e6c8cb2.jpg'),
(10, 'iPhone XR 64GB', 13490000, 'IPS LCD6.1\"Liquid Retina', 'iOS 14', '12 MP', '7 MP', 'Apple A12 Bionic', '3 GB', '64 GB', '1 Nano SIM & 1 eSIMHỗ trợ 4G', '2942 mAh15 W', 20, 1, 'https://cdn.movertix.com/media/catalog/product/cache/image/1200x/a/p/apple-iphone-xr-64-gb-azul-mrya2qla-0190198772206.jpg'),
(11, 'Samsung Galaxy Z Fold3 5G 512GB', 43990000, 'Dynamic AMOLED 2XChính 7.6\" & Phụ 6.2\"Full HD+', 'Android 11', '3 camera 12 MP', '10 MP & 4 MP', 'Snapdragon 888', '12 GB', '512 GB', '2 Nano SIMHỗ trợ 5G', '4400 mAh25 W', 20, 2, 'https://th.bing.com/th/id/R.31100570b8300a36f9460883355d25d2?rik=CWnyXgjN33oFmg&pid=ImgRaw&r=0&sres=1&sresct=1'),
(12, 'Samsung Galaxy A52s 5G', 10190000, 'Super AMOLED6.5\"Full HD+', 'Android 11', 'Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP', '32 MP', 'Snapdragon 778G 5G 8 nhân', '8 GB', '128 GB', '2 Nano SIMHỗ trợ 5G', '4500 mAh25 W', 20, 2, 'https://th.bing.com/th/id/OIP.AJsSPwRYGBW9PCWqh3OIuQHaHa?pid=ImgDet&rs=1'),
(13, 'Samsung Galaxy S20 FE (8GB/256GB)', 12990000, 'Super AMOLED6.5\"Full HD+', 'Android 11', 'Chính 12 MP & Phụ 12 MP, 8 MP', '32 MP', 'Snapdragon 865', '8 GB', '256 GB', '2 Nano SIM (SIM 2 chung khe thẻ nhớ)Hỗ trợ 4G', '4500 mAh25 W', 20, 2, 'https://th.bing.com/th/id/OIP.OoJpcUXenA03WW-bfCJ7ngHaHn?pid=ImgDet&rs=1'),
(14, 'Samsung Galaxy Z Fold2 5G', 44000000, 'Chính: Dynamic AMOLED 2X, Phụ: Super AMOLEDChính 7.59\" & Phụ 6.23\"Full HD+', 'Android 10', '3 camera 12 MP', 'Trong 10 MP & Ngoài 10 MP', 'Snapdragon 865+', '12 GB', '256 GB', '1 Nano SIM & 1 eSIMHỗ trợ 5G', '4500 mAh25 W', 21, 2, 'https://th.bing.com/th/id/OIP.gSdKQrg0-AMFm9ok-HDMCAHaFw?pid=ImgDet&rs=1'),
(15, 'Samsung Galaxy Z Fold3 5G 256GB', 40990000, 'Dynamic AMOLED 2XChính 7.6\" & Phụ 6.2\"Full HD+', 'Android 11', '3 camera 12 MP', '10 MP & 4 MP', 'Snapdragon 888', '12 GB', '256 GB', '2 Nano SIMHỗ trợ 5G', '4400 mAh25 W', 20, 2, 'https://th.bing.com/th/id/OIP.exndnXkA5jL6YPC4Dy-kxwHaFj?pid=ImgDet&rs=1'),
(16, 'Samsung Galaxy Z Flip3 5G 256GB', 25990000, 'Dynamic AMOLED 2XChính 6.7\" & Phụ 1.9\"Full HD+', 'Android 11', '2 camera 12 MP', '10 MP', 'Snapdragon 888', '8 GB', '256 GB', '1 Nano SIM & 1 eSIMHỗ trợ 5G', '3300 mAh 15 W', 20, 2, 'https://th.bing.com/th/id/OIP.YXOGF79OWtJepdnUuRmVrwHaHa?pid=ImgDet&rs=1');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `idtype` int(11) NOT NULL,
  `nametype` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`idtype`, `nametype`) VALUES
(1, 'IPhone'),
(2, 'Samsung'),
(3, 'Oppo'),
(4, 'Xiaomi'),
(5, 'Huawei'),
(10, 'Xiaomi'),
(11, 'oppo'),
(12, 'vivo');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `iduser` int(11) NOT NULL,
  `nameuser` varchar(250) NOT NULL,
  `birthday` varchar(10) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `typeuser` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`iduser`, `nameuser`, `birthday`, `phone`, `email`, `gender`, `password`, `typeuser`) VALUES
(15, 'Hoang Thi Kieu Giang', '', '', 'kieugiangg@gmail.com', '', 'c20ad4d76fe97759aa27a0c99bff6710', 1),
(16, 'giang', '', '', 'kieugiangg@gmail.com', '', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(19, 'Man', '', '', 'ngocmann@gmail.com', '', '1f32aa4c9a1d2ea010adcf2348166a04', 1),
(23, 'ntnman', '', '', 'ntnman.20it3@vku.udn.vn', '', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(24, 'Kieugiang', '', '', 'htkgiang.20it8@gmail.com', '', '827ccb0eea8a706c4c34a16891f84e7b', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dathang`
--
ALTER TABLE `dathang`
  ADD PRIMARY KEY (`iddathang`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`iddetail`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idproduct`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`idtype`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dathang`
--
ALTER TABLE `dathang`
  MODIFY `iddathang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `iddetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `idproduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `idtype` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
