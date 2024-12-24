-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 24, 2024 lúc 09:25 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webck`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `Id` int(11) NOT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`) VALUES
(9, 73, 5, 59000),
(10, 72, 3, 84000),
(11, 82, 4, 123000),
(11, 83, 1, 98000),
(12, 58, 3, 67150),
(13, 58, 3, 67150),
(17, 58, 3, 67150);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Sách'),
(2, 'Dụng cụ học tập'),
(3, 'Thiết bị điện tử');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `PhuongThucTT` varchar(255) DEFAULT 'Chưa xác định',
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaND`, `NgayLap`, `NguoiNhan`, `SDT`, `DiaChi`, `PhuongThucTT`, `TongTien`, `TrangThai`) VALUES
(9, 17, '2024-12-24 08:25:47', 'Nguyễn  Trọng', '0125896354', 'Huế', 'Chưa xác định', 295000, '1'),
(10, 17, '2024-12-24 08:58:48', 'Nguyễn  Trọng', '0125896354', 'Đà Nẵng', 'Chưa xác định', 252000, '1'),
(11, 18, '2024-12-24 21:45:02', 'Nguyễn Tr', '0123456789', 'Hue', 'Chưa xác định', 590000, '0'),
(12, 18, '2024-12-24 21:52:44', 'Nguyễn Tr', '0123456789', 'Hue', 'Chưa xác định', 201450, '0'),
(13, 18, '2024-12-24 21:53:14', 'Nguyễn Tr', '0123456789', 'a', 'Chưa xác định', 201450, '0'),
(14, 18, '2024-12-24 21:56:03', 'Nguyễn Tr', '0123456789', 'Hue', 'Chưa xác định', 201450, '0'),
(15, 18, '2024-12-24 21:56:10', 'Nguyễn Tr', '0123456789', 'Hue', 'Chưa xác định', 201450, '0'),
(16, 18, '2024-12-25 01:35:46', 'Nguyễn Tr', '0123456789', 'z', 'Chưa xác định', 0, '0'),
(17, 18, '2024-12-25 03:14:00', 'Nguyễn Tr', '0123456789', 'z', 'Chưa xác định', 201450, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(100) NOT NULL,
  `LoaiKM` varchar(20) NOT NULL,
  `GiaTriKM` float(11,0) NOT NULL,
  `NgayBD` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `TrangThai`) VALUES
(15, 'Giáng Sinh', 'SALE', 20, '2024-12-24 07:46:15', 1),
(16, 'TRI ÂN', 'TET', 15, '2024-12-24 07:45:50', 1),
(17, 'Khách hàng', 'tet', 10, '2024-12-24 09:01:40', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int(11) NOT NULL,
  `TenLSP` varchar(70) NOT NULL,
  `HinhAnh` varchar(200) NOT NULL,
  `Mota` varchar(200) NOT NULL,
  `MaDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`, `MaDM`) VALUES
(44, 'Văn Học', 'nha_gia_kim.png', 'Tiểu thuyết mới', 1),
(45, 'Tâm lý - Kỹ năng sống', 'how_psychology_works.png', 'Tinh thần con người', 1),
(46, 'Thước', 'bothuoceke.png', 'thuocke', 2),
(47, 'Gôm - Tẩy', 'gomsieusach.png', 'Tẩy bút chì', 2),
(48, 'Gọt bút chì', 'chuotchihinhtim2lo.png', 'Gọt siêu nhọn', 2),
(49, 'Máy tính cầm tay', 'casio_fx880BTG_xam.png', 'Tính toán chuẩn', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `Ho` varchar(20) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `DiaChi` varchar(200) NOT NULL,
  `TaiKhoan` varchar(100) NOT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `MaQuyen` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`, `TrangThai`) VALUES
(14, 'Nguyễn ', 'Triệu', 'Nam', '0912345678', 'quoctrieu@gmail.com', 'Huế', 'quoctrieu', 'e10adc3949ba59abbe56e057f20f883e', 2, 1),
(15, 'Nguyễn Văn Quốc', 'Triệu', 'Nam', '0948785332', 'nguyenvanquoctrieu1708@gmail.com', 'Huế', 'quoctrieu123', '4297f44b13955235245b2497399d7a93', 3, 1),
(16, 'Quốc', 'Triệu', 'Nam', '0948785332', 'quoctrieu17082005@gmail.com', 'Đà Nẵng', 'trieunguyen', '4297f44b13955235245b2497399d7a93', 1, 1),
(17, 'Nguyễn ', 'Trọng', '', '0125896354', 'qaz@gmail.com', '', 'qazqaz', 'e10adc3949ba59abbe56e057f20f883e', 1, 1),
(18, 'Nguyễn', 'Tr', '', '0123456789', 'trongnd.23itb@vku.udn.vn', '', 'hihihi', 'c4bb408471eb7727e59e11385b0a8c19', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(11) NOT NULL,
  `TenQuyen` varchar(20) NOT NULL,
  `ChiTietQuyen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'Customer', 'Khách hàng có tài khoản'),
(2, 'Admin', 'Quản trị viên'),
(3, 'Personnel', 'Nhân Viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `MaDM` int(11) NOT NULL,
  `TenSP` varchar(70) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `Kho` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `HinhAnh1` varchar(200) NOT NULL,
  `MaKM` int(11) NOT NULL,
  `NhaCungCap` varchar(50) DEFAULT NULL,
  `NhaXuatBan` varchar(50) DEFAULT NULL,
  `TacGia` varchar(50) DEFAULT NULL,
  `HinhThucBia` varchar(50) DEFAULT NULL,
  `SoSao` int(11) NOT NULL,
  `SoDanhGia` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `MoTa` text NOT NULL,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `MaDM`, `TenSP`, `DonGia`, `Kho`, `HinhAnh1`, `MaKM`, `NhaCungCap`, `NhaXuatBan`, `TacGia`, `HinhThucBia`, `SoSao`, `SoDanhGia`, `TrangThai`, `MoTa`, `ThoiGian`) VALUES
(58, 44, 1, 'Nhà Giả Kim', 67150, 0, 'img/products/nha_gia_kim.png', 15, '', '', '', '', 0, 0, 1, '<p>HAy</p>', '2024-12-24 09:00:38'),
(59, 44, 1, 'Cây Cam Ngọt Của Tôi', 81000, 100, 'img/products/cay_cam_ngot_cua_toi.png', 15, '', '', '', '', 0, 0, 1, '<p>Hay</p>', '2024-12-24 01:18:14'),
(60, 44, 1, 'Người Đàn Ông Mang Tên OVE', 123200, 300, 'img/products/nguoi_dan_ong_mang_ten_OVE.png', 15, '', '', '', '', 0, 0, 1, '<p>Hay</p>', '2024-12-24 01:18:01'),
(61, 44, 1, 'Trường Ca Chilles', 132600, 852, 'img/products/truong_ca_Achiles.png', 15, '', '', '', '', 0, 0, 1, '<p>hay</p>', '2024-12-24 01:17:49'),
(62, 44, 1, 'Người Bà Tài Giỏi Vùng Saga', 104960, 600, 'img/products/nguoi_ba_tai_gioi_vung_Saga.png', 15, 'Huy Hoang Bookstore', 'NXB Thanh Niên', 'Yoshichi Shimada', 'Bìa Mềm', 0, 0, 0, '<p>Hay</p>', '2024-12-24 01:20:21'),
(63, 44, 1, 'Lén Nhặt Chuyện Đời', 42500, 9878, 'img/products/len_nhat_chuyen_doi.png', 15, 'CÔNG TY CỔ PHẦN SBOOKS', 'Thế Giới', 'Mộc Trầm', 'Bìa Mềm', 0, 0, 1, '', '2024-12-24 01:24:57'),
(64, 44, 1, 'Sưởi Ấm Mặt Trời - Phần Tiếp Theo Của Cây Cam Ngọt Của Tôi', 128000, 6487, 'img/products/suoi_am_mat_troi.png', 15, 'Nhã Nam', 'Hội Nhà Văn', 'Joses Mauro De Vasconcelos', 'Bìa Mềm', 0, 0, 1, '<p>Hay</p>', '2024-12-24 01:26:12'),
(65, 44, 1, 'Một Thoáng Ta Rực Rỡ Ở Nhân Gian', 114750, 10000, 'img/products/mot_thoang_ta_ruc_ro_o_nhan_gian.png', 15, 'Nhã Nam', 'Hội Nhà Văn', 'Ocean Vuong', 'Bìa Mềm', 0, 0, 1, '', '2024-12-24 01:28:20'),
(66, 44, 1, 'Ngàn Mặt Trời Rực Rỡ', 110500, 6500, 'img/products/ngan_mat_troi_ruc_ro.png', 15, 'Nhã Nam', 'Hội Nhà Văn', 'Khaled Hosseini', 'Bìa Mềm', 0, 0, 1, '', '2024-12-24 01:29:20'),
(67, 44, 1, 'Người Đua Diều', 109650, 5000, 'img/products/nguoi_dua_dieu.png', 15, 'Nhã Nam', 'Hội Nhà Văn', 'Khaled Hosseini', 'Bìa Mềm', 0, 0, 1, '', '2024-12-24 01:30:45'),
(68, 45, 1, 'Cánh Cửa Mở Rộng - Phải Trái Đúng Sai', 13450, 3500, 'img/products/canh_cua_mo_rong-phai_tai_dung_sai.png', 15, '', '', '', '', 0, 0, 1, '', '2024-12-24 01:34:10'),
(69, 45, 1, 'Định Luật Murphy - Mọi Bí Mật Tâm Lý Thao Túng Cuộc Đời Bạn', 83300, 1234, 'img/products/dịnh_luat_murphy.png', 15, 'AZ Việt Nam', 'Thế Giới', 'Từ Thính Phong', 'Bìa Mềm', 0, 0, 1, 'Kiến Thức Hay', '2024-12-24 01:37:43'),
(70, 45, 1, 'How Psychology Works - Hiểu Hết Về Tâm Lý Học', 225000, 500, 'img/products/how_psychology_works.png', 15, 'Nhã Nam', 'Thế Giới', 'Jo Hemmings', 'Bìa Cứng', 0, 0, 1, '', '2024-12-24 01:39:16'),
(71, 45, 1, 'Jo Hemmings', 151200, 635, 'img/products/tam_ly_hoc_ve_tien.png', 15, '1980 Books', 'NXB Dân Trí', 'Morgan Housel', 'Bìa Mềm', 0, 0, 1, '', '2024-12-24 01:40:25'),
(72, 45, 1, 'Hiểu Về Bản Chất Con Người - Lý Luận Của Bậc Thầy Tâm Thần Học', 84000, 853, 'img/products/ban_chat_con_nguoi.png', 15, 'AZ Việt Nam', 'Thanh Niên', 'Alfred Adler', 'Mềm', 0, 0, 1, '', '2024-12-24 01:42:21'),
(73, 45, 1, 'Thao Túng Tâm Lý Đám Đông', 59000, 5, 'img/products/thao_tung_tam_ly.png', 15, '', '', '', '', 0, 0, 1, '<p>hay</p>', '2024-12-24 08:24:45'),
(74, 46, 2, 'Bộ Thước Kẻ Đa Năng - Hồng Hà 3563', 17600, 200, 'img/products/bothuockedanang.png', 15, 'Cty VPP Hồng Hà', 'Việt Nam', 'Hồng Hà', '............', 0, 0, 1, '', '2024-12-24 01:46:34'),
(75, 48, 2, 'Gọt Chì Hình Robot - Deli EH512 - Màu Xanh Lá', 99200, 35, 'img/products/gotchihinhRobot.png', 15, 'Deli', 'Trung Quốc', '...........', '............', 0, 0, 1, '', '2024-12-24 01:47:53'),
(76, 48, 2, 'Chuốt Chì Đĩa Bay - Thiên Long S-019 - Màu Xanh Dương', 11250, 80, 'img/products/chuotchidiabay.png', 15, 'Thiên Long Hoàn Cầu', 'Việt Nam', 'Thiên Long', '............', 0, 0, 1, '', '2024-12-24 01:49:29'),
(77, 49, 3, 'Máy Tính Bỏ Túi - Deli EM10 - Màu Vàng', 85500, 100, 'img/products/maytinhbotui_deli_vang.png', 15, 'Trung Quốc', 'Deli', 'Deli', '.............', 0, 0, 1, '', '2024-12-24 01:50:57'),
(78, 49, 3, 'Máy Tính Bỏ Túi - Deli EM10 - Màu Tím', 85500, 100, 'img/products/maytinhbotui_deli_tim.png', 15, 'Trung Quốc', 'Deli', 'Deli', '.............', 0, 0, 1, '', '2024-12-24 01:51:41'),
(79, 49, 3, 'Máy Tính Casio FX880BTG Màu Xám', 698400, 600, 'img/products/casio_fx880BTG_xam.png', 15, '', '', '', '', 0, 0, 1, '', '2024-12-24 01:55:51'),
(80, 49, 3, 'Máy Tính Casio FX880BTG Màu Xanh Dương', 698400, 600, 'img/products/casio_fx880BTG_xanhduong.png', 15, 'Bình Tây', 'Thương Hiệu Nhật', 'Casio', '.............', 0, 0, 1, '', '2024-12-24 01:55:33'),
(81, 46, 2, 'Thước gấp 30cm', 54000, 152, 'img/products/thuocgap30cm.png', 15, '...................', '...................', '................', '....................', 0, 0, 1, '', '2024-12-24 02:05:08'),
(82, 44, 1, 'Ca dao', 123000, 3, 'img/products/casio_fx880BTG_xanhduong.png', 15, '...................', '.....', '........', '..........', 0, 0, 1, '', '2024-12-24 08:27:56'),
(83, 44, 1, 'Tục Ngữ', 98000, 65, 'img/products/thientaibentrai_kedienbenphai.png', 15, 'Nhã Nam', 'Hội Nhà Văn', 'Khaled Hosseini', 'Bìa Mềm', 0, 0, 1, '', '2024-12-24 09:00:17');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`) USING BTREE,
  ADD KEY `MaSP` (`MaSP`) USING BTREE;

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`) USING BTREE;

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`) USING BTREE,
  ADD KEY `MaKH` (`MaND`) USING BTREE;

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`) USING BTREE;

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`) USING BTREE,
  ADD KEY `MaDM` (`MaDM`) USING BTREE,
  ADD KEY `MaLSP` (`MaLSP`,`MaDM`) USING BTREE,
  ADD KEY `MaLSP_2` (`MaLSP`) USING BTREE;

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`) USING BTREE,
  ADD KEY `MaQuyen` (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`) USING BTREE,
  ADD KEY `LoaiSP` (`MaLSP`) USING BTREE,
  ADD KEY `MaKM` (`MaKM`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD CONSTRAINT `MaDM` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`MaLSP`) REFERENCES `loaisanpham` (`MaLSP`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
