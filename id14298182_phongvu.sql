-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 20, 2020 lúc 05:01 AM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id14298182_phongvu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(1000) NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `soluongsanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `madonhang`, `masanpham`, `tensanpham`, `giasanpham`, `soluongsanpham`) VALUES
(5, 4, 23, 'PC HP AIO Pro 200 G4', 13590000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `sodienthoai` int(20) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `tenkhachhang`, `sodienthoai`, `email`) VALUES
(4, 'nam0899', 773654095, 'npn98@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(200) NOT NULL,
  `hinhanhloaisanpham` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisanpham`, `hinhanhloaisanpham`) VALUES
(1, 'Laptop', 'https://lh3.googleusercontent.com/f_AUXK32K1Ax_SkoL1r5NXpNqgtydMIxuUh43nSXoNnNRoBprTkjkpL_iL2Z_Ti0VNy79ZV2ffGEkpJINn2G'),
(2, 'PC', 'https://lh3.googleusercontent.com/Txjo1qYyAYUd5ubl1ooAKCM7vAZzDJcxoEjNWJ3T9re4g1hPtiMobRRmXP4VLkqB8VfCPma1BL6rXpI1Yy3F');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(15) NOT NULL,
  `hinhanhsanpham` varchar(200) NOT NULL,
  `motasanpham` mediumtext NOT NULL,
  `idsanpham` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `giasanpham`, `hinhanhsanpham`, `motasanpham`, `idsanpham`) VALUES
(5, 'Laptop Apple MacBook Air 13', 31990000, 'https://img.vnshop.vn/height/350/media/catalog_v2/media/6/71/1565858549.8730547_Macbook_Air_13.3_2019_Gold_1.jpg', 'Tên sản phẩm: Máy tính xách tay/ Laptop MacBook Air 2019 MVFM2SA/A (Vàng)\r\n\r\n- CPU: Intel Core i5\r\n- Màn hình: 13.3\" IPS (2560 x 1600)\r\n- RAM: 1 x 8GB DDR3L 2133MHz\r\n- Đồ họa: Intel UHD Graphics 617\r\n- Lưu trữ: 128GB SSD M.2 NVMe /\r\n- Hệ điều hành: macOS\r\n- 50 Wh Pin liền\r\n- Khối lượng: 1.3 kg', 1),
(6, 'Laptop HP 14s-dk0097AU 7VH92PA', 8990000, 'https://lh3.googleusercontent.com/2L9uThswZ1hqx5dDKP_OhSxp8qWFWVaczy9eX8Acu1TXLyIiq0EsS3_5adpGf8Ajj4G9bIeFu5lR9fQDEg', 'Tên sản phẩm: Máy tính xách tay/ Laptop HP 14s-dk0097AU (7VH92PA) (AMD Ryzen 3 3200U) (Bạc)\r\n\r\n- CPU: AMD Ryzen 3 3200U\r\n- Màn hình: 14\" SVA (1366 x 768)\r\n- RAM: 1 x 4GB DDR4 2400MHz\r\n- Đồ họa: AMD Radeon Vega 3 Graphics\r\n- Lưu trữ: 1TB HDD 5400RPM\r\n- Hệ điều hành: Windows 10 Home 64-bit\r\n- Pin: 3 cell 45 Wh Pin liền\r\n- Khối lượng: 1.5 kg', 1),
(7, 'Laptop Acer Swift 3 SF314-41-R8VS', 14990000, 'https://lh3.googleusercontent.com/6V36L_VK4o1DiJk6eoMO-MXGb97hWjbw3sBK6xvYTuUKov5A6DaUYso2Ze9QqDCeDDHDVIL2yA0rPxoP1_E', 'Tên sản phẩm: Máy tính xách tay/ Laptop Acer Swift 3 SF314-41-R8VS (NX.HFDSV.002) (AMD Ryzen 5 3500U) (Bạc)\r\n\r\n- CPU: AMD Ryzen 5 3500U\r\n- Màn hình: 14\" IPS (1920 x 1080)\r\n- RAM: 1 x 4GB Onboard DDR4 2133MHz\r\n- Đồ họa: AMD Radeon Vega 8 Graphics\r\n- Lưu trữ: 256GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home 64-bit\r\n- Pin: 4 cell 48 Wh Pin liền\r\n- Khối lượng: 1.5 kg', 1),
(8, 'Laptop Acer Aspire 5 A514-52-54L3', 11990000, 'https://lh3.googleusercontent.com/6pUPatR3mrTdMRcKf0MFzRXDr-uFlGrbtH5aym-yEjelC3ZI-wZQlNT23EJ8yi5hCN0e9Rt4obFZ4rZyjQE', 'Tên sản phẩm: Máy tính xách tay/ Laptop Acer Aspire 5 A514-52-54L3 (NX.HDTSV.003) (i5-8265U) (Bạc)\r\n\r\n- CPU: Intel Core i5-8265U\r\n- Màn hình: 14\" IPS (1920 x 1080)\r\n- RAM: 1 x 4GB Onboard DDR4 2133MHz\r\n- Đồ họa: Intel UHD Graphics 620\r\n- Lưu trữ: 1TB HDD 5400RPM\r\n- Hệ điều hành: Windows 10 Home 64-bit\r\n- Pin: 4 cell 48 Wh Pin liền\r\n- Khối lượng: 1.7 kg', 1),
(9, 'Laptop Apple MacBook Pro 2019', 34490000, 'https://lh3.googleusercontent.com/Qr61V4rWUUwea2evbMa1QiXFRAcTEa10t-aPvv8v5J3VyuKZS_Q7izJDW9MUudUcN_AFhD9Uc38WyXqTOA', 'Tên sản phẩm: Máy tính xách tay/ Laptop MacBook Pro 2019 13.3\" MUHN2SA/A (Xám)\r\n\r\n- CPU: Intel Core i5\r\n- Màn hình: 13.3\" IPS (2560 x 1600)\r\n- RAM: 8GB Onboard LPDDR3 2133MHz\r\n- Đồ họa: Intel Iris Plus Graphics 645\r\n- Lưu trữ: 128GB SSD /\r\n- Hệ điều hành: macOS\r\n- 59 Wh Pin liền\r\n- Khối lượng: 1.4 kg', 1),
(10, 'Laptop Dell G3 15 3590-N5I5518W', 23690000, 'https://lh3.googleusercontent.com/H44s7IPyy-jSqjdujA89L5Al0ajMb43PpCHs1AzboIK_KueRRX_DJVVc4b8bfzaCI8Utux-wHHCiMkvXJqo', 'Tên sản phẩm: Máy tính xách tay/ Laptop Dell G3 15 3590 (3590-N5I5518W) (i5-9300H) (Đen)\r\n\r\n- CPU: Intel Core i5 9300H\r\n- Màn hình: 15.6\" SVA (1920 x 1080)\r\n- RAM: 2 x 4GB DDR4 2666MHz\r\n- Đồ họa: NVIDIA GeForce GTX 1650 4GB GDDR5 / Intel UHD Graphics 630\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home SL 64-bit\r\n- Pin: 3 cell 51 Wh\r\n- Khối lượng: 2.3 kg', 1),
(11, 'Laptop Acer Aspire 3 A315-42-R4XD', 13990000, 'https://lh3.googleusercontent.com/2CVdOPgoVVLiypnfCwzKL-iMuyPn1owDKOjbCra9wHPvnUnzdc3--Nv7izln1aglwD7iAylPxoMD2AOj8Qg', 'Tên sản phẩm: Máy tính xách tay/ Laptop Acer Aspire 3 A315-42-R4XD (NX.HF9SV.008) (AMD Ryzen 5 3500U) (Đen)\r\n\r\n- CPU: AMD Ryzen 5 3500U\r\n- Màn hình: 15.6\" (1920 x 1080)\r\n- RAM: 1 x 8GB DDR4 2133MHz\r\n- Đồ họa: AMD Radeon Vega 8 Graphics\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home 64-bit\r\n- Pin: 2 cell 37 Wh\r\n- Khối lượng: 1.7 kg', 1),
(12, 'Laptop ASUS ZenBook Duo UX481FL-BM048T', 30590000, 'https://lh3.googleusercontent.com/mULv1yijI2pRK5lqdtGCxer9HEL0bOeTNjFHRFrVXlneK3MBLq7sFlCu0IGiEUObtJUnSXFiKbblL4EzKbw', 'Tên sản phẩm: Máy tính xách tay/ Laptop Asus Zenbook UX481FL-BM048T (i5-10210U) (Xanh)\r\n\r\n- CPU: Intel Core i5-10210U\r\n- Màn hình: 14\" (1920 x 1080)\r\n- RAM: 8GB Onboard LPDDR3 2133MHz\r\n- Đồ họa: NVIDIA GeForce MX250 2GB GDDR5 / Intel UHD Graphics\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home SL 64-bit\r\n- Pin: 4 cell 70 Wh Pin liền\r\n- Khối lượng: 1.6 kg', 1),
(13, 'Laptop Lenovo Yoga S740-14IIL-81RS0036VN', 23690000, 'https://lh3.googleusercontent.com/k8gx7mPWKF2WqqU7D_cTiE-GDUBHrcbBui1wUGrFGWzh-BQiB2zBLI1Bnww2Ysn8aD4b4G9JhobGnIvtJT0', 'Tên sản phẩm: Máy tính xách tay/ Laptop Lenovo Yoga S740-14IIL-81RS0036VN (i5-1035G4) (Xám)\r\n\r\n- CPU: Intel Core i5-1035G4\r\n- Màn hình: 14\" IPS (1920 x 1080)\r\n- RAM: 8GB Onboard LPDDR4 3733MHz\r\n- Đồ họa: Intel Iris Plus Graphics\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home SL 64-bit\r\n- Pin: 4 cell 62 Wh Pin liền\r\n- Khối lượng: 1.5 kg', 1),
(14, 'Laptop MSI Prestige 15 A10SC-222VN', 33999000, 'https://lh3.googleusercontent.com/41hRjS73laDPOmvpQTnCT1CmdeiDjRqYZU_dNG2ay0yzRlEcod7mqNrhdHeAvstqhGs-kxqC4OD71Smb4boo', 'Tên sản phẩm: Máy tính xách tay/ Laptop MSI Prestige 15 A10SC-222VN (i7-10710U) (Xám)\r\n\r\n- CPU: Intel Core i7-10710U\r\n- Màn hình: 15.6\" IPS (1920 x 1080)\r\n- RAM: 2 x 8GB DDR4 2666MHz\r\n- Đồ họa: NVIDIA GeForce GTX 1650 4GB GDDR5 / Intel UHD Graphics\r\n- Lưu trữ: 512GB SSD M.2 NVMe /\r\n- Hệ điều hành: Windows 10 Home SL 64-bit\r\n- Pin: 3 cell 82 Wh Pin liền\r\n- Khối lượng: 1.6 kg', 1),
(15, 'PC HP ProOne 600 G5 AIO 8GF32PA', 26990000, 'https://lh3.googleusercontent.com/J2pKumBOPrIxPbDqj0NdEsdJ5iUB6n6VuMjAdbySZ4Oo-CG7A4QkfB9ig03JB8fqZHMKYIAFzZFHSm1vaQ', 'Tên sản phẩm: Máy tính để bàn/ PC HP AIO ProOne 600 G5 (i7 9700T/8GB/256GB SSD/Radeon535 2GB/Win10) 21.5\" FHD Touch (8GF32PA)\r\n\r\n- CPU: Intel Core i7-9700T (2.00 GHz up to 4.30 GHz/12MB/8 nhân, 8 luồng)\r\n- RAM: 1 x 8GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 32GB)\r\n- Đồ họa: Intel UHD Graphics 630 / Radeon 535 2GB\r\n- Lưu trữ: 256GB M.2 NVMe SSD/', 2),
(16, 'PC HP ProOne 400 G5 AIO 8GB61PA', 18490000, 'https://lh3.googleusercontent.com/p-xQcO2jjxil0N8iLzFOyr-C9xoC82a3upyGTtesxm_59rmlRKFzoDoSMAtHxcG2GMO0Rkc9XDfY1nR91w', 'Tên sản phẩm: Máy tính để bàn/ PC HP AIO ProOne 400 G5 (i3 9100T/4GB/1TB/Win10) 23.8\" FHD Touch (8GB61PA)\r\n\r\n- CPU: Intel Core i3-9100T (3.10 GHz up to 3.70 GHz/6MB/4 nhân, 4 luồng)\r\n- RAM: 1 x 4GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 64GB)\r\n- Đồ họa: Intel UHD Graphics 630\r\n- Lưu trữ: 1TB HDD 7200RPM', 2),
(17, 'PC Dell Inspiron 3280 AIO 3280B', 19490000, 'https://lh3.googleusercontent.com/Txjo1qYyAYUd5ubl1ooAKCM7vAZzDJcxoEjNWJ3T9re4g1hPtiMobRRmXP4VLkqB8VfCPma1BL6rXpI1Yy3F', 'Tên sản phẩm: Máy tính để bàn/ PC Dell AIO Inspiron 3280B (i5 8265U/4GB/1TB/MX110 2GB/Win10) 21.5\" FHD\r\n\r\n- CPU: Intel Core i5-8265U (1.60 GHz up to 3.90 GHz/6MB/4 nhân, 8 luồng)\r\n- RAM: 1 x 4GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 16GB)\r\n- Đồ họa: Intel UHD Graphics 620 / GeForce MX110 2GB\r\n- Lưu trữ: 1TB HDD 5400RPM', 2),
(18, 'Máy tính để bàn - PC HP ProOne 400 G4 4YL96PA', 20493000, 'https://img.vnshop.vn/height/350/media/catalog/product/storage/may_bo/19040959/5c121dc70890da455c284a9f0f3aaed2_pc%20hp%20aio%20proone%20400%20g4_1.jpg', 'Tên sản phẩm: Máy tính để bàn/ PC HP AIO ProOne 400 G4 (i5 8500T/4GB/1TB/Dos) 23.8\" FHD (4YL96PA)\r\n\r\n- CPU: Intel Core i5-8500T ( 2.10 GHz up to 3.50 GHz / 9MB / 6 nhân, 6 luồng )\r\n- Màn hình: 23.8\" ( 1920 x 1080 ) không cảm ứng\r\n- RAM: 1 x 4GB DDR4 2666MHz\r\n- Đồ họa: Intel UHD Graphics 630\r\n- Lưu trữ: 1TB HDD 7200RPM\r\n- Tặng kèm Phím + Chuột', 2),
(19, 'Máy tính để bàn - PC Acer AS XC-885 DT.BAQSV.004', 15390000, 'https://lh3.googleusercontent.com/70JsCBMwrv45HMI_teeLZZ4-xDfp29rgoOWAQpL4brxcjRlvSWI82eNKFJTc9T7qel_nXNmLXmSrvFKFBQ', 'Tên sản phẩm: Máy tính để bàn/ PC ACER AS XC-885 (i7 8700/4GB/1TB/Endless) (DT.BAQSV.004)\r\n\r\n- CPU: Intel Core i7-8700 ( 3.2 Ghz up to 4.6 Ghz / 12MB / 6 nhân, 12 luồng )\r\n- RAM: 1 x 4GB DDR4 2400MHz\r\n- Đồ họa: Intel UHD Graphics 630\r\n- Lưu trữ: 1TB HDD 7200RPM\r\n- Tặng kèm Phím + Chuột', 2),
(20, 'PC Phong Vũ PVP Mage GIGA V2', 11690000, 'https://lh3.googleusercontent.com/5E2Nz9sZ_T2xQW8Zp1vtvEvvbFjcvOrNyqEwX-Wqv1AX2yujSCg7pVDmP-DCWLkb-j431eYtJE8NvP5lzxfm', 'Tên sản phẩm: Máy tính để bàn Phong Vũ PVP Mage GIGA V2 (i3 9100F/8GB/240GB SSD/GTX1650 Super)\r\n\r\n- CPU Intel Core i3-9100F (6M Cache, up to 4.20GHz) \r\n- Mainboard Gigabyte H310M-DS2 \r\n- RAM DDR4 G.Skill Aegis 8GB (2666) F4-2666C19S-8GIS \r\n- Card màn hình Gigabyte GeForce GTX 1650 Super Windforce OC 4G GDDR6 (GV-N165SWF2OC-4GD) \r\n- Ổ cứng SSD Crucial BX500 240GB (CT240BX500SSD1) \r\n- Power CM MWE White 400W V2 \r\n- Case Sama Combat \r\n', 2),
(21, 'PC HP Pavilion 590 TP01-0136d', 12590000, 'https://lh3.googleusercontent.com/kf_cP552m-ZYOWM3rpexKOtIZQc2xjk326yoXkyRrEO7U0KHERUJJKHz0GWKwskS9bxCl2K8VZDyg6l-oQ', 'Tên sản phẩm: Máy tính để bàn/ PC HP Pavilion 590 TP01-0136d (i5 9400F48GB/1TB/GT730 2GB/Win10) (7XF46AA)\r\n\r\n- CPU: Intel Core i5-9400F (2.90 GHz - 4.10 GHz/9MB/6 nhân, 6 luồng)\r\n- RAM: 1 x 4GB DDR4 2400MHz (2 Khe cắm, Hỗ trợ tối đa 32GB)\r\n- Đồ họa: Intel UHD Graphics 630 / GeForce GT 730 2GB\r\n- Lưu trữ: 1TB HDD 7200RPM', 2),
(22, 'PC ASUS Vivo AiO V241FA', 16990000, 'https://lh3.googleusercontent.com/hk31JVvhHiXGclbjNvJnd_0QPFrbCpu8RKt5m6oPtWsbl-OBPOk9glW96Q-74WTB6UDKZsHMiSf5rmZ9BgY', 'Tên sản phẩm: Máy tính để bàn/ PC Asus AIO Vivo V241FA (i3 8145U/4GB/512GB SSD/Win10) 23.8\" FHD Touch (V241FAT-BA067T)\r\n\r\n- CPU: Intel Core i3-8145U (2.10GHz up to 3.90GHz/4MB/2 nhân, 4 luồng)\r\n- RAM: 1 x 4GB DDR4 2400MHz (2 Khe cắm, Hỗ trợ tối đa 8GB)\r\n- Đồ họa: Intel UHD Graphics 620\r\n- Lưu trữ: 512GB M.2 SATA SSD/', 2),
(23, 'PC HP AIO Pro 200 G4', 13590000, 'https://lh3.googleusercontent.com/Y19T8aybscEDnrRGwf4Hb9f7wJw9ra5zuDdoHlx3BddilK7c1TDEOc6qNlP2u1VPSCh9dSvh6DmQE5AdcA', 'Tên sản phẩm: Máy tính để bàn/ PC HP AIO Pro 200 G4 (i3-10110U/4GB/256GB/Win10) 21.5\" FHD (2J860PA)\r\n\r\n- CPU: Intel Core i3-10110U (2.10 GHz up to 4.10 GHz/4MB/2 nhân, 4 luồng)\r\n- RAM: 1 x 4GB DDR4 2666MHz (2 Khe cắm, Hỗ trợ tối đa 32GB)\r\n- Đồ họa: Intel UHD Graphics\r\n- Lưu trữ: 256GB M.2 NVMe SSD/', 2),
(24, 'Máy tính để bàn - PC HP 22-c0057d 4LZ23AA', 19490000, 'https://lh3.googleusercontent.com/08m0p5ZR-c58Qb80H6YZFJQssdrhCMl7m0IbOpX37HvgaDIaoQY4f5Qw3_x6LKmAwAS64yVqbxHnd64AmPw', 'Tên sản phẩm: Máy tính để bàn/ PC HP AIO 22-c0057d (i5 8400T/4GB/1TB/Win10) 21.5\" FHD Touch (4LZ23AA) (Trắng)\r\n\r\n- CPU: Intel Core i5-8400T ( 1.7 GHz - 3.3 GHz / 9MB / 6 nhân, 6 luồng )\r\n- Màn hình: 21.5\" IPS ( 1920 x 1080 ) cảm ứng\r\n- RAM: 1 x 4GB DDR4 2666MHz\r\n- Đồ họa: Intel UHD Graphics 630\r\n- Lưu trữ: 1TB HDD 7200RPM\r\n- Tặng kèm chuột;bàn phím', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_email` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `user_email`, `user_password`) VALUES
(1, '123', '123');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
