-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 01, 2022 lúc 03:28 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlks`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dich_vu`
--

CREATE TABLE `dich_vu` (
  `madv` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tendv` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giadv` int(11) NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `loaidv` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinhtrang` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghichu` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dich_vu`
--

INSERT INTO `dich_vu` (`madv`, `tendv`, `giadv`, `soluong`, `loaidv`, `tinhtrang`, `ghichu`) VALUES
('a', 'ab', 1, 0, 'a', 'Còn', 'a'),
('b', 'b', 1, 0, 'b', 'Đã hết', 'ádasd'),
('GT-caraoke', 'caraoke', 100000, 1, 'GT', 'Đã hết', '100000/giờ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ds_phong`
--

CREATE TABLE `ds_phong` (
  `sophong` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loaiphong` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giaphong` int(11) NOT NULL,
  `tinhtrangphong` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghichu` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ds_phong`
--

INSERT INTO `ds_phong` (`sophong`, `loaiphong`, `giaphong`, `tinhtrangphong`, `ghichu`) VALUES
('P101', 'VIP', 50000, 'Đang thuê', ''),
('P104', 'Đôi', 400000, 'Đang thuê', NULL),
('P201', 'VIP', 50000, 'Đang thuê', ''),
('P203', 'Đơn', 500000, 'Sẵn sàng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `id_kh` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `sophong` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maphieudv` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_nv` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngaytra` datetime NOT NULL,
  `chiphikhac` int(11) DEFAULT NULL,
  `thanhtoan` int(11) NOT NULL,
  `ghichu` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`id_kh`, `id`, `sophong`, `maphieudv`, `id_nv`, `ngaytra`, `chiphikhac`, `thanhtoan`, `ghichu`) VALUES
(91, 1, 'P101', '4', '', '2022-11-19 00:00:00', 2000, 370000, 'aaa'),
(92, 2, 'P104', NULL, '', '2022-11-22 00:00:00', 1000, 401000, ''),
(91, 3, 'P101', '4', '', '2022-11-22 00:00:00', 1, 368001, ''),
(91, 4, 'P101', '4', '', '2022-11-22 00:00:00', 1, 368001, ''),
(96, 5, 'P203', 'PDV_P202', '', '2022-12-01 00:00:00', 90000, 800000, 'aaaaaaa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `id` int(11) NOT NULL,
  `hodem` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` tinyint(1) NOT NULL,
  `ngaysinh` date NOT NULL,
  `cccd` int(11) NOT NULL,
  `loaikh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`id`, `hodem`, `ten`, `gioitinh`, `ngaysinh`, `cccd`, `loaikh`) VALUES
(76, 'helohaha', 'word', 0, '2000-10-10', 3212312, NULL),
(79, 'helohaha', 'word', 1, '2000-10-10', 3212312, NULL),
(80, 'helohaha', 'word', 1, '2000-10-10', 3212312, NULL),
(81, 'helohaha', 'word', 1, '2000-10-10', 3212312, NULL),
(83, 'HI', 'ha', 1, '2000-02-20', 132213212, NULL),
(85, 'HI', 'ha', 1, '2000-02-20', 132213212, NULL),
(86, 'HI', 'ha', 1, '2000-02-20', 132213212, NULL),
(88, 'HI', 'ha', 1, '2000-02-20', 132213212, NULL),
(89, 'HI', 'ha', 1, '2000-02-20', 132213212, NULL),
(90, 'helohaha', 'word', 1, '2000-10-10', 3212312, NULL),
(91, 'helohaha', 'word', 1, '2000-10-10', 3212312, NULL),
(92, 'helohaha', 'word', 1, '2000-10-10', 3212312, NULL),
(93, 'helohaha', 'word', 1, '2000-10-10', 3212312, NULL),
(94, 'helohaha', 'word', 1, '2000-10-10', 3212312, NULL),
(95, 'helohaha', 'word', 0, '2000-10-10', 3212312, NULL),
(96, 'Vi Văn', 'Đạt', 1, '2000-05-28', 1223111321, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `id` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hodem` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` bit(1) NOT NULL,
  `ngaysinh` date NOT NULL,
  `sdt` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cccd` int(11) NOT NULL,
  `chucvu` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhan_vien`
--

INSERT INTO `nhan_vien` (`id`, `hodem`, `ten`, `gioitinh`, `ngaysinh`, `sdt`, `cccd`, `chucvu`, `diachi`) VALUES
('nv1', 'a', 'a', b'1', '2000-01-11', '2312', 321321, 'Nhân viên', 'aaaa'),
('NVLT_01', 'Nguyễn văn ', 'anh', b'1', '1995-03-21', '098165431', 11213151, 'Nhân viên', 'Trái đất');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieu_dat_phong`
--

CREATE TABLE `phieu_dat_phong` (
  `id` int(11) NOT NULL,
  `hodem` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieu_thue`
--

CREATE TABLE `phieu_thue` (
  `id` int(11) NOT NULL,
  `sophong` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hodem` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` bit(2) NOT NULL,
  `ngaysinh` date NOT NULL,
  `cccd` int(11) NOT NULL,
  `ngaythue` datetime DEFAULT NULL,
  `ghichu` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phieu_thue`
--

INSERT INTO `phieu_thue` (`id`, `sophong`, `hodem`, `ten`, `gioitinh`, `ngaysinh`, `cccd`, `ngaythue`, `ghichu`) VALUES
(1, 'P101', 'HI', 'ha', b'01', '2000-02-20', 132213212, '2022-10-22 00:00:00', 'gghgfhg'),
(2, 'P101', 'a', 'da', b'01', '2000-02-02', 1236547, '2022-10-24 00:00:00', 'a'),
(3, 'P101', 'blabla', 'blabla', b'00', '2002-01-20', 1236547, '2022-10-27 00:00:00', 'aaaaa'),
(4, 'P101', 'helo', 'word', b'01', '2000-10-10', 3212312, '2022-10-28 00:00:00', 'aaaaa'),
(78, 'P101', 'helohaha', 'word', b'00', '2000-10-10', 3212312, '2022-10-28 00:00:00', 'aaaaa'),
(79, 'P101', 'helohaha', 'word', b'01', '2000-10-10', 3212312, '2022-10-28 00:00:00', 'aaaaa'),
(80, 'P101', 'helohaha', 'word', b'01', '2000-10-10', 3212312, '2022-10-28 00:00:00', 'aaaaa'),
(81, 'P101', 'helohaha', 'word', b'01', '2000-10-10', 3212312, '2022-10-28 00:00:00', 'aaaaa'),
(82, 'P101', 'helohaha', 'word', b'01', '2000-10-10', 3212312, '2022-11-18 00:00:00', 'aaaaa'),
(83, 'P201', 'HI', 'ha', b'01', '2000-02-20', 132213212, '2022-11-18 00:00:00', 'gghgfhg'),
(84, 'P201', 'HI', 'ha', b'01', '2000-02-20', 132213212, '2022-11-18 00:00:00', 'gghgfhg'),
(85, 'P201', 'HI', 'ha', b'01', '2000-02-20', 132213212, '2022-11-18 00:00:00', 'gghgfhg'),
(86, 'P201', 'HI', 'ha', b'01', '2000-02-20', 132213212, '2022-11-18 00:00:00', 'gghgfhg'),
(87, 'P201', 'HI', 'ha', b'01', '2000-02-20', 132213212, '2022-11-18 00:00:00', 'gghgfhg'),
(88, 'P201', 'HI', 'ha', b'01', '2000-02-20', 132213212, '2022-11-18 00:00:00', 'gghgfhg'),
(89, 'P201', 'HI', 'ha', b'01', '2000-02-20', 132213212, '2022-11-18 00:00:00', 'gghgfhg'),
(90, 'P101', 'helohaha', 'word', b'01', '2000-10-10', 3212312, '2022-11-18 00:00:00', 'aaaaa'),
(91, 'P101', 'helohaha', 'word', b'01', '2000-10-10', 3212312, '2022-11-18 00:00:00', 'aaaaa'),
(92, 'P104', 'helohaha', 'word', b'01', '2000-10-10', 3212312, '2022-11-22 00:00:00', 'aaaaa'),
(93, 'P104', 'helohaha', 'word', b'01', '2000-10-10', 3212312, '2022-11-22 00:00:00', 'aaaaa'),
(94, 'P104', 'helohaha', 'word', b'01', '2000-10-10', 3212312, '2022-12-01 00:00:00', 'aaaaa'),
(95, 'P104', 'helohaha', 'word', b'00', '2000-10-10', 3212312, '2022-12-01 00:00:00', 'aaaaa'),
(96, 'P203', 'hoàng văn', 'A ', b'00', '2000-05-28', 1223111321, '2022-12-01 00:00:00', 'sai thông tin ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieu_thue_dv`
--

CREATE TABLE `phieu_thue_dv` (
  `maphieudv` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(11) NOT NULL,
  `madv` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `thanhtien` int(15) NOT NULL,
  `ghichu` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phieu_thue_dv`
--

INSERT INTO `phieu_thue_dv` (`maphieudv`, `id`, `madv`, `soluong`, `thanhtien`, `ghichu`) VALUES
('1', 0, 'a', 2, 1, ''),
('1', 0, 'b', 10, 10, ''),
('2', 0, 'b', 5, 5, 'aaa'),
('3', 22, 'a', 20, 20, 'aaaaaaaaaaa'),
('3', 89, 'a', 1000, 400000, 'aaaaaaaaaaa'),
('3', 90, 'a', 20, 400, 'aaaaaaaaaaa'),
('3', 91, 'a', 20, 8000, 'aaaaaaaaaaa'),
('4', 91, 'b', 20, 160000, 'aaaaaaaaaaa'),
('PDV_P202', 0, 'GT-caraoke', 1, 100000, 'lần / giờ'),
('PDV_P202', 96, 'a', 10000, 10000, 'lần / giờ'),
('PDV_P202', 96, 'GT-caraoke', 2, 200000, 'lần / giờ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieu_thue_phong`
--

CREATE TABLE `phieu_thue_phong` (
  `id` int(11) NOT NULL,
  `sophong` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maphieudv` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phieu_thue_phong`
--

INSERT INTO `phieu_thue_phong` (`id`, `sophong`, `maphieudv`) VALUES
(0, 'P101', NULL),
(22, 'P101', NULL),
(76, 'P101', NULL),
(79, 'P101', NULL),
(80, 'P101', NULL),
(81, 'P101', NULL),
(83, 'P201', NULL),
(85, 'P201', NULL),
(86, 'P201', NULL),
(88, 'P201', NULL),
(89, 'P201', NULL),
(90, 'P101', '3'),
(91, 'P101', '4'),
(92, 'P104', NULL),
(93, 'P104', NULL),
(94, 'P104', NULL),
(95, 'P104', NULL),
(96, 'P203', 'PDV_P202');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_nv` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `id_nv`) VALUES
(1, 'admin', 'admin', 'NV_1'),
(2, '1', '1', 'NV_2');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dich_vu`
--
ALTER TABLE `dich_vu`
  ADD PRIMARY KEY (`madv`);

--
-- Chỉ mục cho bảng `ds_phong`
--
ALTER TABLE `ds_phong`
  ADD PRIMARY KEY (`sophong`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`id`,`sophong`) USING BTREE,
  ADD KEY `sophong` (`sophong`),
  ADD KEY `id_kh` (`id_kh`,`id`,`id_nv`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phieu_dat_phong`
--
ALTER TABLE `phieu_dat_phong`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hodem` (`hodem`),
  ADD UNIQUE KEY `ten` (`ten`);

--
-- Chỉ mục cho bảng `phieu_thue`
--
ALTER TABLE `phieu_thue`
  ADD PRIMARY KEY (`id`,`sophong`),
  ADD KEY `sophong` (`sophong`);

--
-- Chỉ mục cho bảng `phieu_thue_dv`
--
ALTER TABLE `phieu_thue_dv`
  ADD PRIMARY KEY (`maphieudv`,`id`,`madv`),
  ADD KEY `madv` (`madv`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `phieu_thue_phong`
--
ALTER TABLE `phieu_thue_phong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sophong` (`sophong`),
  ADD KEY `maphieudv` (`maphieudv`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nv` (`id_nv`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `phieu_thue`
--
ALTER TABLE `phieu_thue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `phieu_thue_dv`
--
ALTER TABLE `phieu_thue_dv`
  ADD CONSTRAINT `phieu_thue_dv_ibfk_1` FOREIGN KEY (`madv`) REFERENCES `dich_vu` (`madv`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `phieu_thue_dv_ibfk_2` FOREIGN KEY (`id`) REFERENCES `phieu_thue_phong` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phieu_thue_phong`
--
ALTER TABLE `phieu_thue_phong`
  ADD CONSTRAINT `phieu_thue_phong_ibfk_1` FOREIGN KEY (`maphieudv`) REFERENCES `phieu_thue_dv` (`maphieudv`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
