-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2021 lúc 03:06 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bookstore`
--
CREATE DATABASE IF NOT EXISTS `bookstore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bookstore`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anh`
--

CREATE TABLE `anh` (
  `a_id` bigint(20) UNSIGNED NOT NULL,
  `a_duongdan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sp_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `bl_id` bigint(20) UNSIGNED NOT NULL,
  `bl_noidung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bl_id_reply` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kh_id` bigint(20) UNSIGNED NOT NULL,
  `s_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'ngày tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngày cập nhật',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'ngày xóa tạm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`bl_id`, `bl_noidung`, `bl_id_reply`, `kh_id`, `s_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'đasad', NULL, 3, 3, '2021-11-08 12:57:54', '2021-11-08 12:57:54', NULL),
(2, 'sách thật là ý nghĩa', NULL, 2, 5, '2021-11-09 07:47:18', '2021-11-09 07:47:18', NULL),
(3, 'hay quá sshop ơi', NULL, 6, 24, '2021-11-20 08:37:34', '2021-11-20 08:37:34', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `bl_id` bigint(20) UNSIGNED NOT NULL,
  `bl_noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp_id` bigint(20) UNSIGNED NOT NULL,
  `nd_id` bigint(20) UNSIGNED NOT NULL,
  `ch_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congty_cuahang`
--

CREATE TABLE `congty_cuahang` (
  `cty_id` bigint(20) UNSIGNED NOT NULL,
  `ch_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congty_phathanh`
--

CREATE TABLE `congty_phathanh` (
  `cty_id` bigint(20) UNSIGNED NOT NULL,
  `cty_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `congty_phathanh`
--

INSERT INTO `congty_phathanh` (`cty_id`, `cty_ten`, `created_at`, `updated_at`) VALUES
(1, 'Cẩm Phong Books', NULL, NULL),
(2, 'Nhã Nam', NULL, NULL),
(3, 'Phương Nam Book', NULL, NULL),
(4, 'Pandabooks', NULL, NULL),
(5, 'Nhà Sách Minh Lâm', NULL, NULL),
(6, 'VanLangBooks', NULL, NULL),
(7, 'Nhà Sách Minh Thắng', NULL, NULL),
(8, 'Công Ty Văn Hóa Minh Lâm', NULL, NULL),
(9, 'Công Ty TNHH TM - DV Chính Thông', NULL, NULL),
(10, 'Công Ty TNHH TM & DV Văn Hóa Hương Trang', NULL, NULL),
(11, 'Công Ty TNHH Văn Hóa Minh Lâm', NULL, NULL),
(12, 'Công Ty TNHH Văn Hóa Minh Lâm', NULL, NULL),
(13, 'First News - Trí Việt', NULL, NULL),
(14, 'Huy Hoàng Booksrore', NULL, NULL),
(15, 'Công Ty Văn Hóa Hương Trang', NULL, NULL),
(16, 'Công Ty TNHH VnBooks', NULL, NULL),
(17, 'Nhân Trí Việt', NULL, NULL),
(18, 'Thái Hà', NULL, NULL),
(19, 'Alphabooks', NULL, NULL),
(20, 'Công Ty CP Truyền Thông Sáo Diều', NULL, NULL),
(21, 'Công Ty Cp Văn Hóa Nhân Văn', NULL, NULL),
(22, 'Hộ Kinh Doanh Nhà Sách Mười Chín', NULL, NULL),
(23, 'Nhà Sách Lao Động', NULL, NULL),
(24, 'Nhà Sách Minh Nguyệt', NULL, NULL),
(25, 'TT Giới Thiệu Sách TP.HCM', NULL, NULL),
(26, 'Văn Việt', NULL, NULL),
(27, 'AMUN', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctgiohang`
--

CREATE TABLE `ctgiohang` (
  `gh_id` bigint(20) UNSIGNED NOT NULL,
  `s_id` bigint(20) UNSIGNED NOT NULL,
  `ctgh_tongtien` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'ngày tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngày cập nhật',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'ngày xóa tạm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cthoadon`
--

CREATE TABLE `cthoadon` (
  `cthd_id` bigint(20) UNSIGNED NOT NULL,
  `hd_id` int(11) NOT NULL,
  `httt_id` int(11) NOT NULL,
  `htvc_id` int(11) NOT NULL,
  `cthd_tongtien` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'ngày tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngày cập nhật',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'ngày xóa tạm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cua_hang`
--

CREATE TABLE `cua_hang` (
  `ch_id` bigint(20) UNSIGNED NOT NULL,
  `ch_diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ch_tencuahang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ch_trangthai` int(11) NOT NULL,
  `nd_id` bigint(20) UNSIGNED NOT NULL,
  `qt_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dia_chi`
--

CREATE TABLE `dia_chi` (
  `dc_id` bigint(20) UNSIGNED NOT NULL,
  `dc_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ttp_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `gh_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'ngày tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngày cập nhật',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'ngày xóa tạm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gio_hang`
--

CREATE TABLE `gio_hang` (
  `gh_id` bigint(20) UNSIGNED NOT NULL,
  `gh_soluong` int(11) NOT NULL,
  `gh_tongtien` double(8,2) NOT NULL,
  `gh_noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhthucthanhtoan`
--

CREATE TABLE `hinhthucthanhtoan` (
  `htt_id` bigint(20) UNSIGNED NOT NULL,
  `htt_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `htt_mota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'ngày tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngày cập nhật',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'ngày xóa tạm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhthucvanchuyen`
--

CREATE TABLE `hinhthucvanchuyen` (
  `htvc_id` bigint(20) UNSIGNED NOT NULL,
  `htvc_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `htvc_mota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'ngày tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngày cập nhật',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'ngày xóa tạm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `hd_id` bigint(20) UNSIGNED NOT NULL,
  `gh_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'ngày tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngày cập nhật',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'ngày xóa tạm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `hd_id` bigint(20) UNSIGNED NOT NULL,
  `hd_tongtien` double(8,2) NOT NULL,
  `hd_ngaytao` date NOT NULL,
  `hd_tennguoinhan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hd_noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp_id` bigint(20) UNSIGNED NOT NULL,
  `gh_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nd_id` bigint(20) UNSIGNED NOT NULL,
  `dc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `kh_id` bigint(20) UNSIGNED NOT NULL,
  `kh_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kh_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kh_sdt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kh_gtinh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kh_diachi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kh_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'ngày tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngày cập nhật',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'ngày xóa tạm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`kh_id`, `kh_ten`, `kh_email`, `kh_sdt`, `kh_gtinh`, `kh_diachi`, `kh_avatar`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'ng pui chuen', 'puichuen6186@gmail.com', '0774713319', '1', '239/1 hoàng hoa thám', '4b81369c10ac6aeb0ffbbbec57166ae9.jfif', '2021-11-14 12:36:53', '2021-11-14 12:36:53', NULL),
(7, 'phương thùy', 'puichuen6186@gmail.com', '0774713319', '1', NULL, 'cam-on-nguoi-lon.png', '2021-11-14 12:39:23', '2021-11-14 12:39:23', NULL),
(8, 'ng pui chuen', 'puichuen6186@gmail.com', '0774713319', '1', '239/1 hoàng hoa thám', 'z2625203710900_b5b28ea14f1ee09c990a8b9a62a086f3.jpg', '2021-11-16 08:22:15', '2021-11-16 08:22:15', NULL),
(9, 'ng pui chuen', 'puichuen6186@gmail.com', '0774713319', '1', '239/1 hoàng hoa thám', 'z2929119827491_c45f4d072a61285e5c15d83f7bfa70cd.jpg', '2021-11-26 13:49:27', '2021-11-26 13:49:27', NULL),
(10, 'ng pui chuen', 'puichuen6186@gmail.com', '0774713319', '1', '239/1 hoàng hoa thám', 'z2929119827491_c45f4d072a61285e5c15d83f7bfa70cd.jpg', '2021-11-26 13:49:42', '2021-11-26 13:49:42', NULL),
(11, 'toan', 'puichuen6186@gmail.com', '0774713319', '1', '267 nguyễn chí thanh', 'z2929119825284_fe98a56f4f3ea38178c452f191c05484.jpg', '2021-11-26 13:50:39', '2021-11-26 13:50:39', NULL),
(12, 'chuen', 'puichuen6186@gmail.com', '0774713319', '1', '267 nguyễn chí thanh', 'z2929119825284_fe98a56f4f3ea38178c452f191c05484.jpg', '2021-11-26 13:52:16', '2021-11-26 13:52:16', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `linh_vuc`
--

CREATE TABLE `linh_vuc` (
  `lv_id` bigint(20) UNSIGNED NOT NULL,
  `lv_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tl_id` bigint(20) UNSIGNED NOT NULL,
  `ch_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaibia_cuahang`
--

CREATE TABLE `loaibia_cuahang` (
  `lb_id` bigint(20) UNSIGNED NOT NULL,
  `ch_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisach`
--

CREATE TABLE `loaisach` (
  `ls_id` bigint(20) UNSIGNED NOT NULL,
  `ls_ma` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ls_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ls_mota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'ngày tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngày cập nhật',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'ngày xóa tạm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisach`
--

INSERT INTO `loaisach` (`ls_id`, `ls_ma`, `ls_ten`, `ls_mota`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'vUug', 'DINH DƯỠNG - SỨC KHỎE', 'mNwP8gxuNfBAWteIJRG00arGMFQwHKkg', '2021-10-16 17:38:43', '2021-10-16 17:38:43', NULL),
(3, 'qKRE', 'TRUYỆN TRANH', '0Lwp7LbS75QmxqvAb1AnQAyk8AWCKXEA', '2021-10-16 17:38:43', '2021-11-12 05:08:46', NULL),
(4, 'gxZh', 'SÁCH THIẾU NHI', 'zWUsa5TetGB9vIYyzjabSI5iq7JyoU6M', '2021-10-16 17:38:43', '2021-11-12 05:09:35', NULL),
(5, 'y6Ti', 'TÂM LÝ', 'AOUJpnT1aRTmImTpGE6xA3bHLjEn7U1c', '2021-10-16 17:38:43', '2021-11-12 05:10:34', NULL),
(6, '0ekw', 'KINH TẾ', 'Vcy0LO5tOeshUKLcCjIBtmXdbK1f56c7', '2021-10-16 17:38:43', '2021-10-16 17:38:43', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_bia`
--

CREATE TABLE `loai_bia` (
  `lb_id` bigint(20) UNSIGNED NOT NULL,
  `lb_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_bia`
--

INSERT INTO `loai_bia` (`lb_id`, `lb_ten`, `created_at`, `updated_at`) VALUES
(1, 'Bìa Mềm', NULL, NULL),
(2, 'Bìa Cứng', NULL, NULL),
(3, 'Paperback', NULL, NULL),
(4, 'Hardcover', NULL, NULL),
(5, 'Board Book', NULL, NULL),
(6, 'Hardback With Ribbon Marker', NULL, NULL),
(7, 'Bìa Gập', NULL, NULL),
(8, 'Hardback', NULL, NULL),
(9, 'Box Of Cards With Pen', NULL, NULL),
(10, 'Bìa Rời', NULL, NULL),
(11, 'Box', NULL, NULL),
(12, 'Spiral Bound', NULL, NULL),
(13, 'Bìa Da', NULL, NULL),
(14, 'Hardback With Sound Panel', NULL, NULL),
(15, 'Library Edition Hardback', NULL, NULL),
(16, 'Novelty', NULL, NULL),
(17, 'Spiral-Bound Hardback', NULL, NULL),
(18, 'Board', NULL, NULL),
(19, 'Board + Sound Panel', NULL, NULL),
(20, 'CD - Audio', NULL, NULL),
(21, 'Clothbound Hardback With Slipcase', NULL, NULL),
(22, 'Flexi', NULL, NULL),
(23, 'Jigsaw Box', NULL, NULL),
(24, 'Mass Market Paperback', NULL, NULL),
(25, 'Mixed Media Product', NULL, NULL),
(26, 'Offer 4 Books', NULL, NULL),
(27, 'Offer 5 Books', NULL, NULL),
(28, 'Offer Box Set Of 3 Books', NULL, NULL),
(29, 'Spiral HB', NULL, NULL),
(30, 'Spiral - Bound Book', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_09_105745_create_quyen_table', 1),
(5, '2021_08_09_105903_create_gio_hang_table', 1),
(6, '2021_08_09_110026_create_quan_tri_table', 1),
(7, '2021_08_09_110124_create_tinh_thanhpho_table', 1),
(8, '2021_08_09_110225_create_quan_huyen_table', 1),
(9, '2021_08_09_110314_create_xa_phuong_table', 1),
(10, '2021_08_09_110437_create_dia_chi_table', 1),
(11, '2021_08_09_110439_create_nguoi_dung_table', 1),
(12, '2021_08_09_110440_create_cua_hang_table', 1),
(13, '2021_08_09_110604_create_the_loai_table', 1),
(14, '2021_08_09_110704_create_tac_gia_table', 1),
(15, '2021_08_09_110822_create_nha_xuatban_table', 1),
(16, '2021_08_09_112155_create_tin_tuc_table', 1),
(17, '2021_08_27_094617_create_theloai_cuahang_table', 1),
(18, '2021_08_30_110934_create_linh_vuc_table', 1),
(19, '2021_09_18_095530_create_loai_bia_table', 1),
(20, '2021_09_18_095834_create_congty_phathanh_table', 1),
(21, '2021_09_19_035912_create_tacgia_cuahang_table', 1),
(22, '2021_09_19_041616_create_loaibia_cuahang_table', 1),
(23, '2021_09_19_042707_create_congty_cuahang_table', 1),
(24, '2021_09_19_043055_create_nhaxuatban_cuahang_table', 1),
(25, '2021_09_19_111549_create_san_pham_table', 1),
(26, '2021_09_20_112340_create_hoa_don_table', 1),
(27, '2021_09_20_112511_create_binh_luan_table', 1),
(28, '2021_09_20_112640_create_chitiet_hoadon_table', 1),
(29, '2021_09_20_113017_create_chitiet_giohang_table', 1),
(30, '2021_09_20_115208_create_anh_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `nd_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nd_gioitinh` tinyint(1) DEFAULT NULL,
  `nd_sdt` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `dc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`nd_id`, `username`, `email`, `nd_gioitinh`, `nd_sdt`, `password`, `q_id`, `dc_id`, `created_at`, `updated_at`) VALUES
(1, 'thanh', 'thanh@gmail.com', NULL, 123123456, '$2y$10$0E5/5/8E1w0a1B2oOkLsZ.avoopzZyUlFMGowdXou.etHjBKXC43W', 2, NULL, NULL, NULL),
(2, 'thanhtran', 'thanhtran@gmail.com', NULL, 789456123, '$2y$10$4kragYjg9AXYNxuVQXm/KuEhIKkBOEuZPf1TgjbgT2LMNRRJNEABu', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaxb`
--

CREATE TABLE `nhaxb` (
  `nxb_id` bigint(20) UNSIGNED NOT NULL,
  `nxb_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'ngày tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngày cập nhật',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'ngày xóa tạm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhaxb`
--

INSERT INTO `nhaxb` (`nxb_id`, `nxb_ten`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nhà xuất bản Chính trị Quốc gia', '2021-10-16 17:38:17', '2021-10-16 17:38:17', NULL),
(2, 'Nhà xuất bản Tư pháp', '2021-10-16 17:38:17', '2021-10-16 17:38:17', NULL),
(3, 'Nhà xuất bản Hồng Đức', '2021-10-16 17:38:17', '2021-10-16 17:38:17', NULL),
(4, 'Nhà xuất bản Quân đội', '2021-10-16 17:38:17', '2021-10-16 17:38:17', NULL),
(5, 'Nhà xuất bản Công an nhân dân', '2021-10-16 17:38:17', '2021-10-16 17:38:17', NULL),
(6, 'Nhà xuất bản Kim Đồng', '2021-10-16 17:38:17', '2021-10-16 17:38:17', NULL),
(7, 'Nhà xuất bản Lao động', '2021-10-16 17:38:17', '2021-10-16 17:38:17', NULL),
(8, 'Nhà xuất bản Tôn giáo', '2021-10-16 17:38:17', '2021-10-16 17:38:17', NULL),
(9, 'Nhà xuất bản Hà Nội', '2021-10-16 17:38:17', '2021-10-16 17:38:17', NULL),
(10, 'Nhà xuất bản Lý luận chính trị', '2021-10-16 17:38:17', '2021-10-16 17:38:17', NULL),
(11, 'Nhà xuất bản Hải phòng', '2021-10-16 17:38:17', '2021-10-16 17:38:17', NULL),
(12, 'Nhà xuất bản Thanh Hoá', '2021-10-16 17:38:17', '2021-10-16 17:38:17', NULL),
(13, 'Nhà xuất bản Tổng hợp thành phố Hồ Chí Minh', '2021-10-16 17:38:17', '2021-10-16 17:38:17', NULL),
(14, 'Nhà xuất bản Trẻ', '2021-10-16 17:38:17', '2021-10-16 17:38:17', NULL),
(15, 'Nhà xuất bản Đồng Nai', '2021-10-16 17:38:17', '2021-10-16 17:38:17', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaxuatban_cuahang`
--

CREATE TABLE `nhaxuatban_cuahang` (
  `nxb_id` bigint(20) UNSIGNED NOT NULL,
  `ch_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nha_xuatban`
--

CREATE TABLE `nha_xuatban` (
  `nxb_id` bigint(20) UNSIGNED NOT NULL,
  `nxb_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nxb_sdt` int(11) DEFAULT NULL,
  `nxb_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nxb_diachi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nha_xuatban`
--

INSERT INTO `nha_xuatban` (`nxb_id`, `nxb_ten`, `nxb_sdt`, `nxb_email`, `nxb_diachi`, `created_at`, `updated_at`) VALUES
(1, 'Nhà Xuất Bản Hà Nội', NULL, NULL, NULL, NULL, NULL),
(2, 'Nhà Xuất Bản Thế Giới', NULL, NULL, NULL, NULL, NULL),
(3, 'Nhà Xuất Bản Trẻ', NULL, NULL, NULL, NULL, NULL),
(4, 'Nhà Xuất Bản Khoa Học Xã Hội', NULL, NULL, NULL, NULL, NULL),
(5, 'Nhà Xuất Bản Kim Đồng', NULL, NULL, NULL, NULL, NULL),
(6, 'Nhà Xuất Bản Dân Trí', NULL, NULL, NULL, NULL, NULL),
(7, 'Nhà Xuất Bản Phụ Nữ', NULL, NULL, NULL, NULL, NULL),
(8, 'Nhà Xuất Bản Chính Trị Quốc Gia Sự Thật', NULL, NULL, NULL, NULL, NULL),
(9, 'Nhà Xuất Bản Thanh Niên', NULL, NULL, NULL, NULL, NULL),
(10, 'Nhà Xuất Bản Đại Học Quốc Gia Hà Nội', NULL, NULL, NULL, NULL, NULL),
(11, 'Nhà Xuất Bản Giáo Dục', NULL, NULL, NULL, NULL, NULL),
(12, 'Nhà Xuất Bản Tri Thức', NULL, NULL, NULL, NULL, NULL),
(13, 'Nhà Xuất Bản Văn Học', NULL, NULL, NULL, NULL, NULL),
(14, 'Nhà Xuất Bản Hàng Hải', NULL, NULL, NULL, NULL, NULL),
(15, 'Nhà Xuất Bản Xây Dựng', NULL, NULL, NULL, NULL, NULL),
(16, 'Nhà Xuất Bản Bão', NULL, NULL, NULL, NULL, NULL),
(17, 'Nhà Xuất Bản Y Học', NULL, NULL, NULL, NULL, NULL),
(18, 'Nhà Xuất Bản Đà Nẵng', NULL, NULL, NULL, NULL, NULL),
(19, 'Nhà Xuất Bản Thế Giới Tuyển Dụng', NULL, NULL, NULL, NULL, NULL),
(20, 'Nhà Xuất Bản Thông Tin & Truyền Thông', NULL, NULL, NULL, NULL, NULL),
(21, 'Nhà Xuất Bản Thanh Niên', NULL, NULL, NULL, NULL, NULL);

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
-- Cấu trúc bảng cho bảng `quan_huyen`
--

CREATE TABLE `quan_huyen` (
  `qh_id` bigint(20) UNSIGNED NOT NULL,
  `qh_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ttp_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan_tri`
--

CREATE TABLE `quan_tri` (
  `qt_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quan_tri`
--

INSERT INTO `quan_tri` (`qt_id`, `username`, `password`, `email`, `created_at`, `updated_at`) VALUES
(4, 'admin', '$2y$10$3Rl5jWMYBhPcv6Xab.qTVuZVzk9posTSYHjcHDDrPsa42/JtKXaD.', 'test@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `q_id` bigint(20) UNSIGNED NOT NULL,
  `q_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quyen`
--

INSERT INTO `quyen` (`q_id`, `q_ten`, `created_at`, `updated_at`) VALUES
(1, 'Khách hàng', NULL, NULL),
(2, 'Chủ cửa hàng', NULL, NULL),
(3, 'Quản trị', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `s_id` bigint(20) UNSIGNED NOT NULL,
  `s_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_gia` int(11) NOT NULL,
  `s_danhgia` int(11) DEFAULT NULL,
  `s_tieude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_hinhanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_mota` text CHARACTER SET utf8mb4 NOT NULL,
  `s_noidung` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_trangthai` int(11) NOT NULL,
  `s_tinhtrang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ls_id` bigint(20) UNSIGNED NOT NULL,
  `tg_id` bigint(20) UNSIGNED NOT NULL,
  `nxb_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'ngày tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngày cập nhật',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'ngày xóa tạm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`s_id`, `s_ten`, `s_gia`, `s_danhgia`, `s_tieude`, `s_hinhanh`, `s_mota`, `s_noidung`, `s_trangthai`, `s_tinhtrang`, `ls_id`, `tg_id`, `nxb_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(15, 'Tôi Là BêTô', 150000, NULL, NULL, '4b81369c10ac6aeb0ffbbbec57166ae9.jfif', '<p><strong>Truyện T&ocirc;i l&agrave; B&ecirc;t&ocirc;</strong>&nbsp;được t&aacute;c giả viết theo phong c&aacute;ch ho&agrave;n to&agrave;n kh&aacute;c so với những ấn phẩm trước trước đ&acirc;y của &ocirc;ng, lần đầu ti&ecirc;n&nbsp;<a href=\"https://reviewsach.net/tag/nguyen-nhat-anh/\">Nguyễn Nhật &Aacute;nh</a> viết một c&acirc;u chuyện theo ng&ocirc;i kể của một ch&uacute; ch&oacute;. Thế giới qua con mắt của ch&uacute; c&uacute;n B&ecirc;t&ocirc; cực k&igrave; trong trẻo nhưng &acirc;n chứa trong đ&oacute; l&agrave; rất nhiều th&ocirc;ng điệp kh&ocirc;ng khỏi khiến người đọc phải suy ngẫm.</p>', 'sầu muộn vơi lấy chỉ muốn chôn mình trong cô độc', 1, NULL, 4, 1, 3, '2021-11-12 16:53:40', '2021-11-16 11:02:53', NULL),
(24, 'Cho Tôi Xin Một Vé Về Tuổi Thơ', 250000, NULL, NULL, 'cho-toi-mot-ve-di-tuoi-tho-1_600x943.jpg', '<p><strong>&ldquo;Cho T&ocirc;i Xin Một V&eacute; Đi Tuổi Thơ&rdquo; l&agrave; tập truyện d&agrave;i đ&atilde; v&ocirc; c&ugrave;ng quen thuộc với nhiều người của nh&agrave; văn nổi tiếng Nguyễn Nhật &Aacute;nh. Bởi t&iacute;nh nh&acirc;n văn s&acirc;u sắc trong n&oacute;, đ&acirc;y được coi l&agrave; một trong những s&aacute;ng t&aacute;c th&agrave;nh c&ocirc;ng nhất của &ocirc;ng v&agrave; gi&uacute;p &ocirc;ng gi&agrave;nh được Giải thưởng Văn học ASEAN năm 2010.</strong></p><p>Tr&ecirc;n mạch kể hấp dẫn của c&acirc;u chuyện, ngược d&ograve;ng thời gian, t&aacute;c giả đ&atilde; đưa người đọc trở lại những năm th&aacute;ng tuổi thơ vui vẻ với cốt truyện xoay quanh 4 bạn nhỏ nghịch ngợm, hồn nhi&ecirc;n cu M&ugrave;i, Hải c&ograve;, T&iacute; s&uacute;n v&agrave; con Tủn. Trong thế giới tuổi thơ tươi đẹp ấy của những đứa trẻ, ch&uacute;ng kh&ocirc;ng hề c&oacute; những lo toan, bộn bề về cuộc sống vật chất v&agrave; tinh thần m&agrave; chỉ hạnh ph&uacute;c đắm ch&igrave;m v&agrave;o những tr&ograve; chơi, những vui đ&ugrave;a của tuổi nhỏ. Trải d&agrave;i tr&ecirc;n từng trang viết l&agrave; những c&acirc;u chuyện h&agrave;i hước, d&iacute; dỏm, những tr&ograve; đ&ugrave;a vui vẻ khiến độc giả thực sự ước ao được quay lại những cảm x&uacute;c trong s&aacute;ng, qu&atilde;ng thời gian v&ocirc; tư như vậy một lần nữa.</p>', NULL, 1, NULL, 5, 1, 2, '2021-11-20 05:44:35', '2021-11-26 13:53:03', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_giohang`
--

CREATE TABLE `sanpham_giohang` (
  `gh_id` bigint(20) UNSIGNED NOT NULL,
  `sp_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_hoadon`
--

CREATE TABLE `sanpham_hoadon` (
  `soluongmua` int(11) NOT NULL,
  `don_gia` double(8,2) NOT NULL,
  `sp_id` bigint(20) UNSIGNED NOT NULL,
  `hd_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `sp_id` bigint(20) UNSIGNED NOT NULL,
  `sp_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp_hinhanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp_soluong` int(11) NOT NULL,
  `sp_sotrang` int(11) NOT NULL,
  `sp_kichthuoc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp_gia` double(8,2) NOT NULL,
  `sp_mota` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tl_id` bigint(20) UNSIGNED NOT NULL,
  `lv_id` bigint(20) UNSIGNED NOT NULL,
  `nxb_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lb_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cty_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tg_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ch_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgia`
--

CREATE TABLE `tacgia` (
  `tg_id` bigint(20) UNSIGNED NOT NULL,
  `tg_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'ngày tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngày cập nhật',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'ngày xóa tạm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tacgia`
--

INSERT INTO `tacgia` (`tg_id`, `tg_ten`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'NGUYỄN NHẬT ÁNH', '2021-10-16 17:38:26', '2021-10-16 17:38:26', NULL),
(2, 'FUJIKO F FUJIO', '2021-10-16 17:38:26', '2021-10-16 17:38:26', NULL),
(3, 'TRANG HẠ', '2021-10-16 17:38:26', '2021-10-16 17:38:26', NULL),
(4, 'NGUYỄN PHONG VIỆT', '2021-10-16 17:38:26', '2021-10-16 17:38:26', NULL),
(5, 'ANH KHANG', '2021-10-16 17:38:26', '2021-10-16 17:38:26', NULL),
(6, 'NGUYỄN NGỌC SƠN (SƠN PARIS)', '2021-10-16 17:38:26', '2021-10-16 17:38:26', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgia_cuahang`
--

CREATE TABLE `tacgia_cuahang` (
  `tg_id` bigint(20) UNSIGNED NOT NULL,
  `ch_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tac_gia`
--

CREATE TABLE `tac_gia` (
  `tg_id` bigint(20) UNSIGNED NOT NULL,
  `tg_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tg_gioitinh` tinyint(1) DEFAULT NULL,
  `tg_sdt` int(11) DEFAULT NULL,
  `tg_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tg_diachi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tac_gia`
--

INSERT INTO `tac_gia` (`tg_id`, `tg_ten`, `tg_gioitinh`, `tg_sdt`, `tg_email`, `tg_diachi`, `created_at`, `updated_at`) VALUES
(1, 'Nhiều Tác Giả', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Mặc Hương Đồng Khứu', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Cửu Lộ Phi Hương', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Nhĩ Nhã', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Tạ Hà Như Bình', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Vãn Tình', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Nhị Hy', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Đinh Mặc', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'J. D. Salinger', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Gari', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Patrick Suskind', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Annie Pietri', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Mạc Bảo Phi Bảo', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Cố Tây Tước', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `tk_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kh_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'ngày tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'ngày cập nhật',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'ngày xóa tạm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`tk_id`, `username`, `password`, `remember_token`, `kh_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'phung', '$2y$10$iMO685sm9DgUZpdHp80MT.E8G9EHoLQavXdXq/me5O3PN/uVbZCYK', NULL, 7, '2021-11-14 12:39:23', '2021-11-14 12:39:23', NULL),
(6, 'chuen', '$2y$10$pCHJ2y.B56z2Ffto9T3ChuDFbOjw5LLSG6/Y58ixhUgEh8DVRBMuC', NULL, 8, '2021-11-16 08:22:15', '2021-11-16 08:22:15', NULL),
(7, 'chuen', '$2y$10$c6EtGycT46QxZzKIBAX3Mupuf3ji1BmX9Gi61Q9LkgNNw80hTJw6G', NULL, 9, '2021-11-26 13:49:27', '2021-11-26 13:49:27', NULL),
(8, 'chuen', '$2y$10$ZWubAxvw7H2nPNYa.JKnw.Lcple.aMgJQUEoS.TlAzfj7QELSkXTW', NULL, 10, '2021-11-26 13:49:42', '2021-11-26 13:49:42', NULL),
(9, 'toan', '$2y$10$sDGWDW2DyR3Z7M.wuGn1uuWKhIgUX6AeLf6bxyL0s.IZ82R6EFgsm', NULL, 11, '2021-11-26 13:50:39', '2021-11-26 13:50:39', NULL),
(10, 'chuen1', '$2y$10$RNFlSQZ4IjLyldm66au9juK/Nv7A4OLgDFYGD/iF6uqLYqNsfX2Gq', NULL, 12, '2021-11-26 13:52:17', '2021-11-26 13:52:17', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai_cuahang`
--

CREATE TABLE `theloai_cuahang` (
  `tl_id` bigint(20) UNSIGNED NOT NULL,
  `ch_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `the_loai`
--

CREATE TABLE `the_loai` (
  `tl_id` bigint(20) UNSIGNED NOT NULL,
  `tl_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `the_loai`
--

INSERT INTO `the_loai` (`tl_id`, `tl_ten`, `created_at`, `updated_at`) VALUES
(1, 'Văn Học - Viễn Tưởng', NULL, NULL),
(2, 'Sách Thiếu Nhi', NULL, NULL),
(3, 'Sách Kỹ Năng Sống', NULL, NULL),
(4, 'Sách Kinh Tế - Kinh Doanh', NULL, NULL),
(5, 'Văn Hóa – Địa Lý – Du Lịch', NULL, NULL),
(6, 'Điện Ảnh – Nhạc – Họa', NULL, NULL),
(7, 'Sách Học Ngoại Ngữ', NULL, NULL),
(8, 'Sách Tham Khảo', NULL, NULL),
(9, 'Sách Tâm Lý - Giới Tính', NULL, NULL),
(10, 'Sách Thường Thức - Gia Đình', NULL, NULL),
(11, 'Từ Điển', NULL, NULL),
(12, 'Sách Chính Trị - Pháp Lý', NULL, NULL),
(13, 'Sách Mẹ Và Bé', NULL, NULL),
(14, 'Sách Lịch Sử', NULL, NULL),
(15, 'Truyện Tranh, Manga, Comic', NULL, NULL),
(16, 'Sách Giáo Khoa - Giáo Trình', NULL, NULL),
(17, 'Sách Kiến Thức Tổng Hợp', NULL, NULL),
(18, 'Sách Công Nghệ Thông Tin', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinh_thanhpho`
--

CREATE TABLE `tinh_thanhpho` (
  `ttp_id` bigint(20) UNSIGNED NOT NULL,
  `ttp_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_tuc`
--

CREATE TABLE `tin_tuc` (
  `tt_id` bigint(20) UNSIGNED NOT NULL,
  `tt_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tt_noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tt_trangthai` int(11) NOT NULL,
  `nd_id` bigint(20) UNSIGNED NOT NULL,
  `qt_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xa_phuong`
--

CREATE TABLE `xa_phuong` (
  `xp_id` bigint(20) UNSIGNED NOT NULL,
  `xp_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qh_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anh`
--
ALTER TABLE `anh`
  ADD PRIMARY KEY (`a_id`),
  ADD KEY `anh_sp_id_foreign` (`sp_id`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`bl_id`),
  ADD KEY `binhluan_kh_id_foreign` (`kh_id`),
  ADD KEY `binhluan_s_id_foreign` (`s_id`);

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`bl_id`),
  ADD KEY `binh_luan_sp_id_foreign` (`sp_id`),
  ADD KEY `binh_luan_nd_id_foreign` (`nd_id`),
  ADD KEY `binh_luan_ch_id_foreign` (`ch_id`);

--
-- Chỉ mục cho bảng `congty_cuahang`
--
ALTER TABLE `congty_cuahang`
  ADD KEY `congty_cuahang_cty_id_foreign` (`cty_id`),
  ADD KEY `congty_cuahang_ch_id_foreign` (`ch_id`);

--
-- Chỉ mục cho bảng `congty_phathanh`
--
ALTER TABLE `congty_phathanh`
  ADD PRIMARY KEY (`cty_id`);

--
-- Chỉ mục cho bảng `ctgiohang`
--
ALTER TABLE `ctgiohang`
  ADD PRIMARY KEY (`gh_id`,`s_id`),
  ADD KEY `ctgiohang_s_id_foreign` (`s_id`);

--
-- Chỉ mục cho bảng `cthoadon`
--
ALTER TABLE `cthoadon`
  ADD PRIMARY KEY (`cthd_id`);

--
-- Chỉ mục cho bảng `cua_hang`
--
ALTER TABLE `cua_hang`
  ADD PRIMARY KEY (`ch_id`),
  ADD KEY `cua_hang_nd_id_foreign` (`nd_id`),
  ADD KEY `cua_hang_qt_id_foreign` (`qt_id`);

--
-- Chỉ mục cho bảng `dia_chi`
--
ALTER TABLE `dia_chi`
  ADD PRIMARY KEY (`dc_id`),
  ADD KEY `dia_chi_ttp_id_foreign` (`ttp_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`gh_id`);

--
-- Chỉ mục cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD PRIMARY KEY (`gh_id`);

--
-- Chỉ mục cho bảng `hinhthucthanhtoan`
--
ALTER TABLE `hinhthucthanhtoan`
  ADD PRIMARY KEY (`htt_id`);

--
-- Chỉ mục cho bảng `hinhthucvanchuyen`
--
ALTER TABLE `hinhthucvanchuyen`
  ADD PRIMARY KEY (`htvc_id`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`hd_id`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`hd_id`),
  ADD KEY `hoa_don_sp_id_foreign` (`sp_id`),
  ADD KEY `hoa_don_gh_id_foreign` (`gh_id`),
  ADD KEY `hoa_don_nd_id_foreign` (`nd_id`),
  ADD KEY `hoa_don_dc_id_foreign` (`dc_id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`kh_id`);

--
-- Chỉ mục cho bảng `linh_vuc`
--
ALTER TABLE `linh_vuc`
  ADD PRIMARY KEY (`lv_id`),
  ADD KEY `linh_vuc_tl_id_foreign` (`tl_id`),
  ADD KEY `linh_vuc_ch_id_foreign` (`ch_id`);

--
-- Chỉ mục cho bảng `loaibia_cuahang`
--
ALTER TABLE `loaibia_cuahang`
  ADD KEY `loaibia_cuahang_lb_id_foreign` (`lb_id`),
  ADD KEY `loaibia_cuahang_ch_id_foreign` (`ch_id`);

--
-- Chỉ mục cho bảng `loaisach`
--
ALTER TABLE `loaisach`
  ADD PRIMARY KEY (`ls_id`);

--
-- Chỉ mục cho bảng `loai_bia`
--
ALTER TABLE `loai_bia`
  ADD PRIMARY KEY (`lb_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`nd_id`),
  ADD KEY `nguoi_dung_q_id_foreign` (`q_id`),
  ADD KEY `nguoi_dung_dc_id_foreign` (`dc_id`);

--
-- Chỉ mục cho bảng `nhaxb`
--
ALTER TABLE `nhaxb`
  ADD PRIMARY KEY (`nxb_id`);

--
-- Chỉ mục cho bảng `nhaxuatban_cuahang`
--
ALTER TABLE `nhaxuatban_cuahang`
  ADD KEY `nhaxuatban_cuahang_nxb_id_foreign` (`nxb_id`),
  ADD KEY `nhaxuatban_cuahang_ch_id_foreign` (`ch_id`);

--
-- Chỉ mục cho bảng `nha_xuatban`
--
ALTER TABLE `nha_xuatban`
  ADD PRIMARY KEY (`nxb_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `quan_huyen`
--
ALTER TABLE `quan_huyen`
  ADD PRIMARY KEY (`qh_id`),
  ADD KEY `quan_huyen_ttp_id_foreign` (`ttp_id`);

--
-- Chỉ mục cho bảng `quan_tri`
--
ALTER TABLE `quan_tri`
  ADD PRIMARY KEY (`qt_id`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`q_id`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `sach_ls_id_foreign` (`ls_id`),
  ADD KEY `sach_nxb_id_foreign` (`nxb_id`),
  ADD KEY `sach_tg_id_foreign` (`tg_id`);

--
-- Chỉ mục cho bảng `sanpham_giohang`
--
ALTER TABLE `sanpham_giohang`
  ADD KEY `sanpham_giohang_gh_id_foreign` (`gh_id`),
  ADD KEY `sanpham_giohang_sp_id_foreign` (`sp_id`);

--
-- Chỉ mục cho bảng `sanpham_hoadon`
--
ALTER TABLE `sanpham_hoadon`
  ADD KEY `sanpham_hoadon_sp_id_foreign` (`sp_id`),
  ADD KEY `sanpham_hoadon_hd_id_foreign` (`hd_id`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`sp_id`),
  ADD KEY `san_pham_tl_id_foreign` (`tl_id`),
  ADD KEY `san_pham_lv_id_foreign` (`lv_id`),
  ADD KEY `san_pham_nxb_id_foreign` (`nxb_id`),
  ADD KEY `san_pham_lb_id_foreign` (`lb_id`),
  ADD KEY `san_pham_cty_id_foreign` (`cty_id`),
  ADD KEY `san_pham_tg_id_foreign` (`tg_id`),
  ADD KEY `san_pham_ch_id_foreign` (`ch_id`);

--
-- Chỉ mục cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`tg_id`);

--
-- Chỉ mục cho bảng `tacgia_cuahang`
--
ALTER TABLE `tacgia_cuahang`
  ADD KEY `tacgia_cuahang_tg_id_foreign` (`tg_id`),
  ADD KEY `tacgia_cuahang_ch_id_foreign` (`ch_id`);

--
-- Chỉ mục cho bảng `tac_gia`
--
ALTER TABLE `tac_gia`
  ADD PRIMARY KEY (`tg_id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`tk_id`),
  ADD KEY `taikhoan_kh_id_foreign` (`kh_id`);

--
-- Chỉ mục cho bảng `theloai_cuahang`
--
ALTER TABLE `theloai_cuahang`
  ADD KEY `theloai_cuahang_tl_id_foreign` (`tl_id`),
  ADD KEY `theloai_cuahang_ch_id_foreign` (`ch_id`);

--
-- Chỉ mục cho bảng `the_loai`
--
ALTER TABLE `the_loai`
  ADD PRIMARY KEY (`tl_id`);

--
-- Chỉ mục cho bảng `tinh_thanhpho`
--
ALTER TABLE `tinh_thanhpho`
  ADD PRIMARY KEY (`ttp_id`);

--
-- Chỉ mục cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD PRIMARY KEY (`tt_id`),
  ADD KEY `tin_tuc_nd_id_foreign` (`nd_id`),
  ADD KEY `tin_tuc_qt_id_foreign` (`qt_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `xa_phuong`
--
ALTER TABLE `xa_phuong`
  ADD PRIMARY KEY (`xp_id`),
  ADD KEY `xa_phuong_qh_id_foreign` (`qh_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anh`
--
ALTER TABLE `anh`
  MODIFY `a_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `bl_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `bl_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `congty_phathanh`
--
ALTER TABLE `congty_phathanh`
  MODIFY `cty_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `cthoadon`
--
ALTER TABLE `cthoadon`
  MODIFY `cthd_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cua_hang`
--
ALTER TABLE `cua_hang`
  MODIFY `ch_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `dia_chi`
--
ALTER TABLE `dia_chi`
  MODIFY `dc_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `gh_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  MODIFY `gh_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hinhthucthanhtoan`
--
ALTER TABLE `hinhthucthanhtoan`
  MODIFY `htt_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hinhthucvanchuyen`
--
ALTER TABLE `hinhthucvanchuyen`
  MODIFY `htvc_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `hd_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `kh_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `linh_vuc`
--
ALTER TABLE `linh_vuc`
  MODIFY `lv_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `loai_bia`
--
ALTER TABLE `loai_bia`
  MODIFY `lb_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `nd_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nha_xuatban`
--
ALTER TABLE `nha_xuatban`
  MODIFY `nxb_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `quan_huyen`
--
ALTER TABLE `quan_huyen`
  MODIFY `qh_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `quan_tri`
--
ALTER TABLE `quan_tri`
  MODIFY `qt_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `quyen`
--
ALTER TABLE `quyen`
  MODIFY `q_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sach`
--
ALTER TABLE `sach`
  MODIFY `s_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `sp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tac_gia`
--
ALTER TABLE `tac_gia`
  MODIFY `tg_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `tk_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `the_loai`
--
ALTER TABLE `the_loai`
  MODIFY `tl_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tinh_thanhpho`
--
ALTER TABLE `tinh_thanhpho`
  MODIFY `ttp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `tt_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT cho bảng `xa_phuong`
--
ALTER TABLE `xa_phuong`
  MODIFY `xp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `anh`
--
ALTER TABLE `anh`
  ADD CONSTRAINT `anh_sp_id_foreign` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `binh_luan_ch_id_foreign` FOREIGN KEY (`ch_id`) REFERENCES `cua_hang` (`ch_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `binh_luan_nd_id_foreign` FOREIGN KEY (`nd_id`) REFERENCES `nguoi_dung` (`nd_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `binh_luan_sp_id_foreign` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `congty_cuahang`
--
ALTER TABLE `congty_cuahang`
  ADD CONSTRAINT `congty_cuahang_ch_id_foreign` FOREIGN KEY (`ch_id`) REFERENCES `cua_hang` (`ch_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `congty_cuahang_cty_id_foreign` FOREIGN KEY (`cty_id`) REFERENCES `congty_phathanh` (`cty_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cua_hang`
--
ALTER TABLE `cua_hang`
  ADD CONSTRAINT `cua_hang_nd_id_foreign` FOREIGN KEY (`nd_id`) REFERENCES `nguoi_dung` (`nd_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cua_hang_qt_id_foreign` FOREIGN KEY (`qt_id`) REFERENCES `quan_tri` (`qt_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `dia_chi`
--
ALTER TABLE `dia_chi`
  ADD CONSTRAINT `dia_chi_ttp_id_foreign` FOREIGN KEY (`ttp_id`) REFERENCES `tinh_thanhpho` (`ttp_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `hoa_don_dc_id_foreign` FOREIGN KEY (`dc_id`) REFERENCES `dia_chi` (`dc_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hoa_don_gh_id_foreign` FOREIGN KEY (`gh_id`) REFERENCES `gio_hang` (`gh_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hoa_don_nd_id_foreign` FOREIGN KEY (`nd_id`) REFERENCES `nguoi_dung` (`nd_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hoa_don_sp_id_foreign` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `linh_vuc`
--
ALTER TABLE `linh_vuc`
  ADD CONSTRAINT `linh_vuc_ch_id_foreign` FOREIGN KEY (`ch_id`) REFERENCES `theloai_cuahang` (`ch_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `linh_vuc_tl_id_foreign` FOREIGN KEY (`tl_id`) REFERENCES `theloai_cuahang` (`tl_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `loaibia_cuahang`
--
ALTER TABLE `loaibia_cuahang`
  ADD CONSTRAINT `loaibia_cuahang_ch_id_foreign` FOREIGN KEY (`ch_id`) REFERENCES `cua_hang` (`ch_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `loaibia_cuahang_lb_id_foreign` FOREIGN KEY (`lb_id`) REFERENCES `loai_bia` (`lb_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD CONSTRAINT `nguoi_dung_dc_id_foreign` FOREIGN KEY (`dc_id`) REFERENCES `dia_chi` (`dc_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nguoi_dung_q_id_foreign` FOREIGN KEY (`q_id`) REFERENCES `quyen` (`q_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `nhaxuatban_cuahang`
--
ALTER TABLE `nhaxuatban_cuahang`
  ADD CONSTRAINT `nhaxuatban_cuahang_ch_id_foreign` FOREIGN KEY (`ch_id`) REFERENCES `cua_hang` (`ch_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nhaxuatban_cuahang_nxb_id_foreign` FOREIGN KEY (`nxb_id`) REFERENCES `nha_xuatban` (`nxb_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `quan_huyen`
--
ALTER TABLE `quan_huyen`
  ADD CONSTRAINT `quan_huyen_ttp_id_foreign` FOREIGN KEY (`ttp_id`) REFERENCES `tinh_thanhpho` (`ttp_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham_giohang`
--
ALTER TABLE `sanpham_giohang`
  ADD CONSTRAINT `sanpham_giohang_gh_id_foreign` FOREIGN KEY (`gh_id`) REFERENCES `gio_hang` (`gh_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sanpham_giohang_sp_id_foreign` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham_hoadon`
--
ALTER TABLE `sanpham_hoadon`
  ADD CONSTRAINT `sanpham_hoadon_hd_id_foreign` FOREIGN KEY (`hd_id`) REFERENCES `hoa_don` (`hd_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sanpham_hoadon_sp_id_foreign` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `san_pham_ch_id_foreign` FOREIGN KEY (`ch_id`) REFERENCES `cua_hang` (`ch_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `san_pham_cty_id_foreign` FOREIGN KEY (`cty_id`) REFERENCES `congty_phathanh` (`cty_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `san_pham_lb_id_foreign` FOREIGN KEY (`lb_id`) REFERENCES `loai_bia` (`lb_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `san_pham_lv_id_foreign` FOREIGN KEY (`lv_id`) REFERENCES `linh_vuc` (`lv_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `san_pham_nxb_id_foreign` FOREIGN KEY (`nxb_id`) REFERENCES `nha_xuatban` (`nxb_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `san_pham_tg_id_foreign` FOREIGN KEY (`tg_id`) REFERENCES `tac_gia` (`tg_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `san_pham_tl_id_foreign` FOREIGN KEY (`tl_id`) REFERENCES `the_loai` (`tl_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tacgia_cuahang`
--
ALTER TABLE `tacgia_cuahang`
  ADD CONSTRAINT `tacgia_cuahang_ch_id_foreign` FOREIGN KEY (`ch_id`) REFERENCES `cua_hang` (`ch_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tacgia_cuahang_tg_id_foreign` FOREIGN KEY (`tg_id`) REFERENCES `tac_gia` (`tg_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `theloai_cuahang`
--
ALTER TABLE `theloai_cuahang`
  ADD CONSTRAINT `theloai_cuahang_ch_id_foreign` FOREIGN KEY (`ch_id`) REFERENCES `cua_hang` (`ch_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `theloai_cuahang_tl_id_foreign` FOREIGN KEY (`tl_id`) REFERENCES `the_loai` (`tl_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD CONSTRAINT `tin_tuc_nd_id_foreign` FOREIGN KEY (`nd_id`) REFERENCES `nguoi_dung` (`nd_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tin_tuc_qt_id_foreign` FOREIGN KEY (`qt_id`) REFERENCES `quan_tri` (`qt_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `xa_phuong`
--
ALTER TABLE `xa_phuong`
  ADD CONSTRAINT `xa_phuong_qh_id_foreign` FOREIGN KEY (`qh_id`) REFERENCES `quan_huyen` (`qh_id`) ON DELETE CASCADE;
--
-- Cơ sở dữ liệu: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Đang đổ dữ liệu cho bảng `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bookstore\",\"table\":\"taikhoan\"},{\"db\":\"bookstore\",\"table\":\"khachhang\"},{\"db\":\"bookstore\",\"table\":\"sach\"},{\"db\":\"bookstore\",\"table\":\"quan_tri\"},{\"db\":\"bookstore\",\"table\":\"nguoi_dung\"},{\"db\":\"bookstore\",\"table\":\"users\"},{\"db\":\"bookstore\",\"table\":\"password_resets\"},{\"db\":\"bookstore\",\"table\":\"quyen\"},{\"db\":\"bookstore\",\"table\":\"giohang\"},{\"db\":\"bookstore\",\"table\":\"failed_jobs\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Đang đổ dữ liệu cho bảng `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'bookstore', 'sach', '{\"CREATE_TIME\":\"2021-11-08 19:52:44\",\"col_order\":[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],\"col_visib\":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}', '2021-11-12 17:06:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-11-26 12:08:37', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"vi\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Chỉ mục cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Chỉ mục cho bảng `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Chỉ mục cho bảng `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Chỉ mục cho bảng `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Chỉ mục cho bảng `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Chỉ mục cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Chỉ mục cho bảng `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Chỉ mục cho bảng `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Chỉ mục cho bảng `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Chỉ mục cho bảng `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Cơ sở dữ liệu: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
