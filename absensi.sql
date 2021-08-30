-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2021 at 05:09 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bulan` int(11) DEFAULT NULL,
  `id_team` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id`, `date`, `bulan`, `id_team`, `created_at`, `updated_at`) VALUES
(1920, 'Thursday, 01 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1921, 'Friday, 02 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1922, 'Saturday, 03 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1923, 'Monday, 05 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1924, 'Tuesday, 06 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1925, 'Wednesday, 07 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1926, 'Thursday, 08 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1927, 'Friday, 09 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1928, 'Saturday, 10 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1929, 'Monday, 12 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1930, 'Tuesday, 13 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1931, 'Wednesday, 14 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1932, 'Thursday, 15 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1933, 'Friday, 16 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1934, 'Saturday, 17 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1935, 'Monday, 19 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1936, 'Tuesday, 20 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1937, 'Wednesday, 21 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1938, 'Thursday, 22 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1939, 'Friday, 23 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1940, 'Saturday, 24 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1941, 'Monday, 26 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1942, 'Tuesday, 27 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1943, 'Wednesday, 28 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1944, 'Thursday, 29 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1945, 'Friday, 30 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17'),
(1946, 'Saturday, 31 July 2021', 7, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '2021-07-28 08:30:17', '2021-07-28 08:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `norek` int(11) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `atas_nama` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `norek`, `bank`, `atas_nama`, `user_id`) VALUES
(1, 45875643, 'BRI', 'indah perkasa', 11),
(2, 2147483647, 'BCA', 'Haidar khalid syahputra', 68),
(3, 2147483647, 'BCA', 'Neli septianti', 65),
(4, 2147483647, 'BCA', 'Bambang irawan', 66),
(5, 2147483647, 'BCA', 'Muhammad fakhru alfariz', 67),
(6, 2147483647, 'BCA', 'Heri wahono', 69),
(7, 2147483647, 'BCA', 'Binta chizba adila', 70),
(8, NULL, NULL, NULL, 72),
(9, NULL, NULL, NULL, 73),
(10, NULL, NULL, NULL, 74),
(11, 2147483647, 'BRI', 'Johanes Soeling', 96),
(12, NULL, NULL, NULL, 97),
(13, NULL, NULL, NULL, 98),
(14, NULL, NULL, NULL, 99),
(16, NULL, NULL, NULL, 100),
(15, NULL, NULL, NULL, 0),
(17, NULL, NULL, NULL, 110),
(18, NULL, NULL, NULL, 144),
(19, NULL, NULL, NULL, 145),
(20, NULL, NULL, NULL, 146),
(21, NULL, NULL, NULL, 148);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `komponen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `norek` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`id`, `komponen`, `user_id`, `total`, `ket`, `norek`, `bank`, `created_at`, `updated_at`) VALUES
(28, 'Gapok', 25, 1000000, 'gaji', NULL, NULL, '2021-04-22 12:41:31', '2021-04-22 12:41:31'),
(32, 'uang lembur', 24, 56545645, 'gaji', NULL, NULL, '2021-04-22 16:31:58', '2021-04-22 16:31:58'),
(33, 'uang pasokan', 24, 534534, 'gaji', NULL, NULL, '2021-04-22 16:35:23', '2021-04-22 16:35:23'),
(36, 'uang lembur', 24, 890890, 'gaji', NULL, NULL, '2021-04-22 16:36:50', '2021-04-22 16:36:50'),
(37, 'fdsfds', 24, 4343, 'gaji', NULL, NULL, '2021-04-22 16:37:00', '2021-04-22 16:37:00'),
(38, 'uantot', 11, 900000, 'gaji', NULL, NULL, '2021-04-24 07:41:15', '2021-04-24 07:41:15'),
(40, 'uang makan', 14, 800000, 'gaji', NULL, NULL, '2021-04-24 08:28:08', '2021-04-24 08:28:08'),
(41, 'Gapok', 27, 1000000, 'gaji', NULL, NULL, '2021-04-25 16:26:45', '2021-04-25 16:26:45'),
(42, 'Tunjangan', 27, 500000, 'gaji', NULL, NULL, '2021-04-25 16:26:45', '2021-04-25 16:26:45'),
(43, 'Gaji Pokok', 25, 1000000, 'gaji', NULL, NULL, '2021-04-26 13:49:41', '2021-04-26 13:49:41'),
(44, 'tunjangan', 25, 500000, 'gaji', NULL, NULL, '2021-04-26 13:49:41', '2021-04-26 13:49:41'),
(45, 'Gaji Pokok', 25, 1000000, 'gaji', NULL, NULL, '2021-04-26 13:56:05', '2021-04-26 13:56:05'),
(46, 'Tunjangan', 25, 500000, 'gaji', NULL, NULL, '2021-04-26 13:56:05', '2021-04-26 13:56:05'),
(47, 'tes', 20, 400000, 'gaji', NULL, NULL, '2021-04-26 23:02:05', '2021-04-26 23:02:05'),
(48, 'tes', 19, 10000000, 'gaji', NULL, NULL, '2021-04-26 23:03:34', '2021-04-26 23:03:34'),
(49, 'Gaji Pokok', 34, 1500000, 'gaji', NULL, NULL, '2021-04-27 07:36:12', '2021-04-27 07:36:12'),
(50, 'Tunjangan', 34, 500000, 'gaji', NULL, NULL, '2021-04-27 07:36:12', '2021-04-27 07:36:12'),
(52, 'Neli', 65, 1989917, 'gaji', NULL, NULL, '2021-06-01 14:22:11', '2021-06-01 14:22:11'),
(53, 'Bambang', 66, 1956200, 'gaji', NULL, NULL, '2021-06-01 14:25:47', '2021-06-01 14:25:47'),
(54, 'Fakhru', 67, 2500000, 'gaji', NULL, NULL, '2021-06-01 14:28:10', '2021-06-01 14:28:10'),
(55, 'Suhe', 69, 2653222, 'gaji', NULL, NULL, '2021-06-01 14:29:49', '2021-06-01 14:29:49'),
(56, 'Binta', 70, 1600000, 'gaji', NULL, NULL, '2021-06-01 14:31:02', '2021-06-01 14:31:02'),
(57, 'Gaji Pokok', 72, 1700000, 'gaji', NULL, NULL, '2021-06-03 00:33:53', '2021-06-03 00:33:53'),
(58, 'Gaji Pokok', 73, 2000000, 'gaji', NULL, NULL, '2021-06-03 00:34:22', '2021-06-03 00:34:22'),
(59, 'Gaji Pokok', 74, 2500000, 'gaji', NULL, NULL, '2021-06-04 11:50:07', '2021-06-04 11:50:07'),
(60, 'Slip gaji juni', 96, 3000000, 'gaji', NULL, NULL, '2021-06-23 15:47:22', '2021-06-23 15:47:22'),
(61, 'Slip gaji juni', 97, 2000000, 'gaji', NULL, NULL, '2021-06-23 15:48:47', '2021-06-23 15:48:47'),
(62, '2500000', 98, NULL, 'gaji', NULL, NULL, '2021-06-23 15:50:07', '2021-06-23 15:50:07'),
(63, '2500000', 99, NULL, 'gaji', NULL, NULL, '2021-06-23 15:50:36', '2021-06-23 15:50:36'),
(64, '2500000', 98, NULL, 'gaji', NULL, NULL, '2021-06-23 15:51:08', '2021-06-23 15:51:08'),
(65, 'Slip gaji juni', 98, 2500000, 'gaji', NULL, NULL, '2021-06-23 16:03:28', '2021-06-23 16:03:28'),
(66, 'Slip gaji juni', 98, 2500000, 'gaji', NULL, NULL, '2021-06-23 16:05:06', '2021-06-23 16:05:06'),
(67, 'Slip gaji juni', 0, 2500000, 'gaji', NULL, NULL, '2021-06-23 16:05:43', '2021-06-23 16:05:43'),
(68, 'Slip gaji juni', 98, 2500000, 'gaji', NULL, NULL, '2021-06-23 16:07:08', '2021-06-23 16:07:08'),
(69, 'Slip gaji juni', 98, 2500000, 'gaji', NULL, NULL, '2021-06-23 16:08:20', '2021-06-23 16:08:20'),
(70, 'Slip gaji Juni cika', 98, 2500000, 'gaji', NULL, NULL, '2021-06-23 16:09:05', '2021-06-23 16:09:05'),
(71, 'Slip gaji juni 2021 joko', 97, 2000000, 'gaji', NULL, NULL, '2021-06-23 16:11:31', '2021-06-23 16:11:31'),
(72, 'Slip gaji juni 2021 cika', 98, 2500000, 'gaji', NULL, NULL, '2021-06-23 16:12:01', '2021-06-23 16:12:01'),
(73, 'Slip gaji Juni 2021 andre', 100, 2500000, 'gaji', NULL, NULL, '2021-06-23 16:12:57', '2021-06-23 16:12:57'),
(74, 'Slip gaji juni 2021 icha', 99, 2000000, 'gaji', NULL, NULL, '2021-06-23 16:13:37', '2021-06-23 16:13:37'),
(75, 'Slip gaji 2021 icha', 99, 2000000, 'gaji', NULL, NULL, '2021-06-23 16:14:39', '2021-06-23 16:14:39'),
(76, 'Slip gaji juni 2021 cika', 98, 2000000, 'gaji', NULL, NULL, '2021-06-23 16:15:38', '2021-06-23 16:15:38'),
(77, 'Gaji juni Cika', 98, 2500000, 'gaji', NULL, NULL, '2021-06-23 16:18:30', '2021-06-23 16:18:30'),
(78, 'Gaji Pokok', 110, 2500000, 'gaji', NULL, NULL, '2021-07-01 11:19:07', '2021-07-01 11:19:07'),
(80, 'GAJI MINGGUAN', 144, 150000, 'gaji', NULL, NULL, '2021-07-26 01:52:22', '2021-07-26 01:52:22'),
(81, 'GAJI MINGGUAN', 145, 240000, 'gaji', NULL, NULL, '2021-07-26 01:53:49', '2021-07-26 01:53:49'),
(82, 'GAJI MINGGUAN', 146, 240000, 'gaji', NULL, NULL, '2021-07-26 01:54:19', '2021-07-26 01:54:19'),
(83, 'UANG MAKAN', 145, 7500, 'gaji', NULL, NULL, '2021-07-26 02:01:04', '2021-07-26 02:01:04'),
(84, 'Makeup', 148, 300000, 'gaji', NULL, NULL, '2021-07-27 12:50:59', '2021-07-27 12:50:59'),
(85, 'Retouch/ salin busana pengantin', 148, 150000, 'gaji', NULL, NULL, '2021-07-27 12:50:59', '2021-07-27 12:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `gaji_cuti`
--

CREATE TABLE `gaji_cuti` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tgl_mulai_cuti` datetime DEFAULT NULL,
  `tgl_akhir_cuti` datetime DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `gaji` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `hari` int(11) DEFAULT NULL,
  `keperluan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cuti` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gaji_cuti`
--

INSERT INTO `gaji_cuti` (`id`, `tgl_mulai_cuti`, `tgl_akhir_cuti`, `status`, `gaji`, `user_id`, `hari`, `keperluan`, `id_cuti`, `created_at`, `updated_at`) VALUES
(41, '2020-12-25 00:00:00', NULL, 0, 400000, 17, 1, 'masak dan tidur', '4ebf4e6579167cf03283b856db14b54ef1bace86', '2021-04-20 07:42:17', '2021-04-20 07:42:17'),
(44, '2021-04-21 00:00:00', NULL, 1, 100000, 20, 1, 'tes', 'c820907d49088161bc0882e6dc88006663fac6d0', '2021-04-20 12:58:25', '2021-04-20 12:58:25'),
(45, '2021-04-24 00:00:00', '2021-04-29 21:11:19', 0, 1000000, 25, 1, 'Tes', '1370f51c16c88a0038ac7b80d386644893049207', '2021-04-22 12:53:46', '2021-04-22 12:53:46'),
(46, '2021-04-28 00:00:00', NULL, 0, 1500000, 27, 1, 'Tes', 'fb7bb65fa533c729f78b0908efbafa961f76668d', '2021-04-25 16:32:06', '2021-04-25 16:32:06'),
(47, '2021-04-28 00:00:00', NULL, 0, 1500000, 27, 2, 'Cuti', '568d97282f3a6e773c409cd04b0eb3d20ea4ab1c', '2021-04-26 12:44:45', '2021-04-26 12:44:45'),
(48, '2021-04-30 00:00:00', NULL, 0, 1500000, 27, 2, 'Cuti', '568d97282f3a6e773c409cd04b0eb3d20ea4ab1c', '2021-04-26 12:44:45', '2021-04-26 12:44:45'),
(49, '2021-04-28 00:00:00', NULL, 1, 1500000, 34, 2, 'Cuti', '2cd3772fddd26b2a2c572442a1b92d20ddf9c362', '2021-04-27 07:43:40', '2021-04-27 07:43:40'),
(50, '2021-04-30 00:00:00', NULL, 1, 1500000, 34, 2, 'Cuti', '2cd3772fddd26b2a2c572442a1b92d20ddf9c362', '2021-04-27 07:43:40', '2021-04-27 07:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `gaji_lembur`
--

CREATE TABLE `gaji_lembur` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jam_masuk_lembur` time DEFAULT NULL,
  `jam_keluar_lembur` time DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gaji` int(11) DEFAULT NULL,
  `id_team` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gaji_lembur`
--

INSERT INTO `gaji_lembur` (`id`, `jam_masuk_lembur`, `jam_keluar_lembur`, `nama`, `gaji`, `id_team`, `user_id`, `created_at`, `updated_at`) VALUES
(6, NULL, NULL, NULL, NULL, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '11', '2021-04-28 07:59:16', NULL),
(10, '17:00:00', '00:00:00', 'Lembur', 50000, 'c0b763027db04b244eea3a71030cc16068c3395b', '27', '2021-04-25 16:26:45', NULL),
(11, '09:40:00', '20:45:00', 'teling manis', 90000, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '14', '2021-04-26 08:40:18', NULL),
(12, '17:00:00', '21:00:00', 'Gaji lembur', 50000, 'a68df49faede42bebb94ee245b8bb245ca67a2eb', '25', '2021-04-26 13:56:05', NULL),
(13, '06:00:00', '10:00:00', 'ter', 10000, '0d90ac46cdcd27b2a84bd1269eb71f3a12224b71', '20', '2021-04-26 23:04:40', NULL),
(14, '18:00:00', '19:00:00', 'tes', 100000, '0d90ac46cdcd27b2a84bd1269eb71f3a12224b71', '19', '2021-04-26 23:03:34', NULL),
(15, '17:35:00', '21:00:00', 'Gaji lembur', 20000, 'f371772efbf2d2989b55c35ea4d3b7640f32deb4', '34', '2021-04-27 07:36:12', NULL),
(16, NULL, NULL, NULL, NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', '68', '2021-06-01 14:20:30', NULL),
(17, NULL, NULL, NULL, NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', '65', '2021-06-01 14:22:11', NULL),
(18, NULL, NULL, NULL, NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', '66', '2021-06-01 14:25:47', NULL),
(19, NULL, NULL, NULL, NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', '67', '2021-06-01 14:28:10', NULL),
(20, NULL, NULL, NULL, NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', '69', '2021-06-01 14:29:49', NULL),
(21, NULL, NULL, NULL, NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', '70', '2021-06-01 14:31:02', NULL),
(22, NULL, NULL, NULL, NULL, '910ae7a108aec499a01dd9c6c6e408fbedc354bd', '72', '2021-06-03 00:33:53', NULL),
(23, NULL, NULL, NULL, NULL, '910ae7a108aec499a01dd9c6c6e408fbedc354bd', '73', '2021-06-03 00:34:22', NULL),
(24, NULL, NULL, NULL, NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', '74', '2021-06-04 11:50:07', NULL),
(25, NULL, NULL, NULL, NULL, '886003b53a7d230dd149ff4f59c7acefb7f86d27', '96', '2021-06-23 15:47:22', NULL),
(26, NULL, NULL, NULL, NULL, '886003b53a7d230dd149ff4f59c7acefb7f86d27', '97', '2021-06-23 16:11:31', NULL),
(27, '17:00:00', '19:00:00', 'Lembur cika', 20000, '886003b53a7d230dd149ff4f59c7acefb7f86d27', '98', '2021-06-23 16:18:30', NULL),
(28, NULL, NULL, NULL, NULL, '886003b53a7d230dd149ff4f59c7acefb7f86d27', '99', '2021-06-23 16:14:39', NULL),
(29, NULL, NULL, NULL, NULL, '886003b53a7d230dd149ff4f59c7acefb7f86d27', 'Silahkan Pilih Pegawai', '2021-06-23 16:05:43', NULL),
(30, NULL, NULL, NULL, NULL, '886003b53a7d230dd149ff4f59c7acefb7f86d27', '100', '2021-06-23 16:12:57', NULL),
(31, NULL, NULL, NULL, NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', '110', '2021-07-01 11:19:07', NULL),
(33, NULL, NULL, NULL, NULL, 'ff22cfd436bd05cec43e8e6a495c2f12572b7c56', '145', '2021-07-26 02:01:04', NULL),
(34, NULL, NULL, 'LEMBURAN', 5000, 'ff22cfd436bd05cec43e8e6a495c2f12572b7c56', '146', '2021-07-26 01:54:19', NULL),
(35, NULL, NULL, NULL, NULL, '595b7487ba77c83930f9307e6e521226f72f5f57', '148', '2021-07-27 12:50:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jam_kerja`
--

CREATE TABLE `jam_kerja` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_team` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_keluar` time DEFAULT NULL,
  `jam_keluar2` time DEFAULT NULL,
  `telat` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jam_kerja`
--

INSERT INTO `jam_kerja` (`id`, `id_team`, `jam_masuk`, `jam_keluar`, `jam_keluar2`, `telat`, `created_at`, `updated_at`) VALUES
(2, 'a68df49faede42bebb94ee245b8bb245ca67a2eb', '08:00:00', '17:00:00', NULL, 50000, '2021-04-26 13:48:20', '2021-04-26 13:48:20'),
(3, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', '08:00:00', '17:00:00', '14:00:00', 9000, '2021-07-28 08:38:44', '2021-07-28 08:38:44'),
(4, 'c0b763027db04b244eea3a71030cc16068c3395b', '08:00:00', '17:00:00', NULL, 50000, '2021-04-25 16:27:47', '2021-04-25 16:27:47'),
(5, '0d90ac46cdcd27b2a84bd1269eb71f3a12224b71', '08:00:00', '17:00:00', NULL, 10000, '2021-04-26 22:58:32', '2021-04-26 22:58:32'),
(6, 'f371772efbf2d2989b55c35ea4d3b7640f32deb4', '08:00:00', '17:00:00', NULL, 50000, '2021-04-27 07:33:51', '2021-04-27 07:33:51'),
(7, 'c9c361698e7182c87986c9bcdb33383a2048843b', '08:00:00', '17:00:00', NULL, 25000, '2021-07-01 10:39:33', '2021-07-01 10:39:33'),
(8, '910ae7a108aec499a01dd9c6c6e408fbedc354bd', '08:00:00', '05:00:00', NULL, 2000, '2021-06-03 00:27:42', '2021-06-03 00:27:42'),
(9, 'be7230b228317c581b058af8f17bb339cb6331f5', '07:00:00', '15:00:00', NULL, NULL, '2021-06-05 02:11:05', '2021-06-05 02:11:05'),
(10, '6f8d9a0b16bb4b8867d383c15325293368e6f8e2', '17:00:00', '23:00:00', NULL, 15000, '2021-06-05 10:28:23', '2021-06-05 10:28:23'),
(11, '886003b53a7d230dd149ff4f59c7acefb7f86d27', '08:30:00', '17:00:00', NULL, NULL, '2021-06-23 15:42:31', '2021-06-23 15:42:31'),
(12, '8d185036ad0b836190f3a72962ecf7781a172af2', '08:00:00', '16:00:00', NULL, NULL, '2021-06-30 06:14:37', '2021-06-30 06:14:37'),
(13, '1dc6b19059b347918673608bb7fc576376b516ca', NULL, NULL, NULL, NULL, '2021-07-02 16:01:52', '2021-07-02 16:01:52'),
(14, '60760f10c440356438d010df7acea56cfd52c0ce', '05:00:00', '05:00:00', NULL, NULL, '2021-07-06 14:07:11', '2021-07-06 14:07:11'),
(15, 'afbae82beac065e741da8199ab8aa72fda4995a0', '08:00:00', '12:00:00', NULL, NULL, '2021-07-08 02:25:38', '2021-07-08 02:25:38'),
(16, '8c5e19c526820ddc7524aade391538e79650c10d', '08:30:00', '16:30:00', NULL, NULL, '2021-07-09 06:59:42', '2021-07-09 06:59:42'),
(17, '0c71b8f68221f560cfca4b88e5014e3996ddad1c', '06:30:00', '02:45:00', NULL, 0, '2021-07-09 12:48:51', '2021-07-09 12:48:51'),
(18, '2813fa6b0cfca87de2efc4e86d62dbb146d4e6b5', '07:15:00', '15:00:00', NULL, NULL, '2021-07-09 13:28:59', '2021-07-09 13:28:59'),
(19, '65db8d38c5d6175bda755470bc779de5624abc21', '07:00:00', '00:00:00', NULL, NULL, '2021-07-12 09:36:05', '2021-07-12 09:36:05'),
(20, '9a936c76fa358843b1abb07f5e6e9970cb13d5b5', '07:00:00', '04:00:00', NULL, 5000, '2021-07-16 04:52:35', '2021-07-16 04:52:35'),
(21, 'ff22cfd436bd05cec43e8e6a495c2f12572b7c56', '08:00:00', '16:00:00', NULL, 100, '2021-07-26 01:39:25', '2021-07-26 01:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `kerja`
--

CREATE TABLE `kerja` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bulan` int(11) DEFAULT NULL,
  `lembur` int(11) DEFAULT NULL,
  `absen` time DEFAULT NULL,
  `lembur_at` time DEFAULT NULL,
  `absen_telat` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `langitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_radius_masuk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_radius_keluar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cuti` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kerja`
--

INSERT INTO `kerja` (`id`, `date`, `status`, `user_id`, `created_at`, `updated_at`, `bulan`, `lembur`, `absen`, `lembur_at`, `absen_telat`, `image`, `longitude`, `langitude`, `note`, `note2`, `note_radius_masuk`, `note_radius_keluar`, `cuti`) VALUES
(114, 'Monday, 26 April 2021', 2, 25, '2021-04-26 14:02:03', '2021-04-26 14:02:08', 4, 4, '21:02:02', '21:03:15', 1, NULL, '110.90238007908', '-7.613506493596', NULL, NULL, 'diluar jangkauan', 'diluar jangkauan', 0),
(115, 'Tuesday, 27 April 2021', 2, 34, '2021-04-26 22:51:39', '2021-04-27 07:42:55', 4, NULL, '05:51:39', NULL, 1, NULL, '110.85324166667', '-7.3348383333333', NULL, 'Pulang', 'sesuai', 'sesuai', 0),
(116, 'Tuesday, 27 April 2021', 2, 34, '2021-04-27 07:42:32', '2021-04-27 07:42:55', 4, NULL, '14:42:32', NULL, 1, NULL, '110.85324166667', '-7.3348383333333', NULL, 'Pulang', 'sesuai', 'sesuai', 0),
(117, 'Thursday, 01 April 2021', 2, 11, '2021-04-28 07:55:39', '2021-04-28 07:55:44', 4, NULL, '14:55:39', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(118, 'Friday, 02 April 2021', 2, 14, '2021-04-28 07:55:48', '2021-04-28 07:55:52', 4, NULL, '14:55:48', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(119, 'Friday, 21 May 2021', 1, 20, '2021-05-21 09:33:17', NULL, 5, NULL, '16:33:17', NULL, 1, NULL, '-122.084', '37.421998333333', 'tes', NULL, 'sesuai', NULL, 0),
(120, 'Wednesday, 02 June 2021', 1, 14, '2021-06-01 13:18:03', '2021-06-01 13:18:03', 6, NULL, '20:18:03', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(121, 'Wednesday, 02 June 2021', 1, 69, '2021-06-01 23:59:54', NULL, 6, NULL, '06:59:54', NULL, NULL, NULL, '105.29431333333', '-5.3453933333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(122, 'Wednesday, 02 June 2021', 1, 65, '2021-06-02 01:47:18', NULL, 6, NULL, '08:47:18', NULL, 1, NULL, '105.29830009', '-5.40715655', 'masuk', NULL, 'sesuai', NULL, 0),
(124, 'Wednesday, 02 June 2021', 1, 72, '2021-06-03 00:35:26', '2021-06-03 00:35:26', 6, NULL, '07:35:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(129, 'Thursday, 03 June 2021', 2, 70, '2021-06-03 02:20:04', '2021-06-04 12:01:41', 6, NULL, '09:20:04', NULL, NULL, NULL, '110.76711', '-7.5572583333333', 'Absen pagi', NULL, 'sesuai', NULL, 0),
(130, 'Thursday, 03 June 2021', 1, 72, '2021-06-03 02:33:26', NULL, 6, NULL, '09:33:26', NULL, 1, NULL, '122.595085', '-5.462375', 'Tes', NULL, 'sesuai', NULL, 0),
(131, 'Wednesday, 02 June 2021', 1, 73, '2021-06-03 02:36:02', '2021-06-03 02:36:02', 6, NULL, '09:36:02', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(132, 'Thursday, 03 June 2021', 1, 73, '2021-06-03 02:36:15', '2021-06-03 02:36:15', 6, NULL, '09:36:15', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(133, 'Thursday, 03 June 2021', 1, 75, '2021-06-03 02:59:12', NULL, 6, NULL, '09:59:12', NULL, 1, NULL, '110.76763641', '-7.55738938', NULL, NULL, 'sesuai', NULL, 0),
(140, 'Thursday, 03 June 2021', 1, 67, '2021-06-03 06:42:25', '2021-06-04 06:42:25', 6, NULL, '13:42:25', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(141, 'Wednesday, 02 June 2021', 2, 67, '2021-06-03 06:42:33', '2021-06-04 12:27:16', 6, NULL, '13:42:33', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(146, 'Friday, 04 June 2021', 2, 74, '2021-06-04 07:08:02', '2021-06-04 07:20:21', 6, NULL, '14:08:02', NULL, NULL, NULL, '24685', '65659', NULL, NULL, NULL, NULL, 0),
(147, 'Wednesday, 02 June 2021', 1, 64, '2021-06-04 07:09:52', '2021-06-04 07:09:52', 6, NULL, '14:09:52', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(149, 'Friday, 04 June 2021', 1, 67, '2021-06-04 07:18:15', NULL, 6, NULL, '14:18:15', NULL, 1, NULL, '110.77710666667', '-7.5875566666667', 'masuk', NULL, 'sesuai', NULL, 0),
(150, 'Friday, 04 June 2021', 2, 20, '2021-06-04 09:15:02', '2021-06-04 09:40:10', 6, 10, '16:15:02', '16:40:50', 1, NULL, '-122.084', '37.421998333333', 'tes', 'tes', 'sesuai', 'sesuai', 0),
(151, 'Thursday, 03 June 2021', 2, 74, '2021-06-04 11:55:29', '2021-06-04 11:55:37', 6, NULL, '18:55:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(152, 'Saturday, 05 June 2021', 2, 65, '2021-06-05 00:30:20', '2021-06-05 11:09:42', 6, NULL, '07:30:20', NULL, NULL, NULL, '105.29830896', '-5.40725887', 'masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(153, 'Saturday, 05 June 2021', 2, 69, '2021-06-05 00:44:59', '2021-06-05 11:06:24', 6, NULL, '07:44:59', NULL, NULL, NULL, '105.29491333333', '-5.3451516666667', 'Masuk', NULL, 'sesuai', NULL, 0),
(154, 'Saturday, 05 June 2021', 2, 67, '2021-06-05 00:47:23', '2021-06-05 07:05:06', 6, NULL, '07:47:23', NULL, NULL, NULL, '110.77710333333', '-7.587675', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(155, 'Saturday, 05 June 2021', 1, 70, '2021-06-05 00:50:47', NULL, 6, NULL, '07:50:47', NULL, NULL, NULL, '110.76732666667', '-7.5572733333333', 'Absen pagi', NULL, 'sesuai', NULL, 0),
(156, 'Saturday, 05 June 2021', 1, 75, '2021-06-05 00:51:08', NULL, 6, NULL, '07:51:08', NULL, NULL, NULL, '110.7674221', '-7.55736478', NULL, NULL, 'sesuai', NULL, 0),
(157, 'Saturday, 05 June 2021', 2, 74, '2021-06-05 01:05:43', '2021-06-05 07:06:45', 6, NULL, '08:05:43', NULL, 1, NULL, '110.777045', '-7.5876066666667', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(158, 'Saturday, 05 June 2021', 2, 66, '2021-06-05 01:31:52', '2021-06-05 07:39:15', 6, NULL, '08:31:52', NULL, 1, NULL, '110.74769301', '-7.57569126', NULL, NULL, 'sesuai', 'sesuai', 0),
(159, 'Saturday, 05 June 2021', 1, 72, '2021-06-05 03:08:42', NULL, 6, NULL, '10:08:42', NULL, 1, NULL, '122.59472666667', '-5.46271', 'Masuk', NULL, 'sesuai', NULL, 0),
(160, 'Friday, 04 June 2021', 1, 72, '2021-06-05 03:10:33', '2021-06-05 03:10:33', 6, NULL, '10:10:33', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(161, 'Friday, 04 June 2021', 1, 73, '2021-06-05 03:10:40', '2021-06-05 03:10:40', 6, NULL, '10:10:40', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(162, 'Saturday, 05 June 2021', 1, 73, '2021-06-05 03:10:50', '2021-06-05 03:10:50', 6, NULL, '10:10:50', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(163, 'Tuesday, 01 June 2021', 1, 80, '2021-06-05 10:29:11', '2021-06-05 10:29:11', 6, NULL, '17:29:11', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(164, 'Wednesday, 02 June 2021', 1, 80, '2021-06-05 10:29:43', '2021-06-05 10:29:43', 6, NULL, '17:29:43', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(165, 'Thursday, 03 June 2021', 1, 80, '2021-06-05 10:29:53', '2021-06-05 10:29:53', 6, NULL, '17:29:53', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(166, 'Friday, 04 June 2021', 1, 80, '2021-06-05 10:30:02', '2021-06-05 10:30:02', 6, NULL, '17:30:02', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(167, 'Saturday, 05 June 2021', 1, 80, '2021-06-05 10:30:12', '2021-06-05 10:30:12', 6, NULL, '17:30:12', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(168, 'Monday, 07 June 2021', 2, 65, '2021-06-07 00:03:19', '2021-06-07 12:32:42', 6, NULL, '07:03:18', NULL, NULL, NULL, '105.29841496', '-5.40708444', 'masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(169, 'Monday, 07 June 2021', 1, 69, '2021-06-07 00:27:40', NULL, 6, NULL, '07:27:40', NULL, NULL, NULL, '105.29500666667', '-5.34507', 'Masuk', NULL, 'sesuai', NULL, 0),
(170, 'Monday, 07 June 2021', 2, 74, '2021-06-07 00:57:26', '2021-06-07 10:06:10', 6, NULL, '07:57:26', NULL, NULL, NULL, '110.77734833333', '-7.58735', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(171, 'Monday, 07 June 2021', 2, 67, '2021-06-07 00:58:06', '2021-06-07 10:01:59', 6, NULL, '07:58:06', NULL, NULL, NULL, '110.77681666667', '-7.5876083333333', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(172, 'Monday, 07 June 2021', 2, 66, '2021-06-07 01:10:05', '2021-06-07 10:47:32', 6, NULL, '08:10:05', NULL, 1, NULL, '110.74773855', '-7.57570472', NULL, NULL, 'sesuai', 'sesuai', 0),
(173, 'Monday, 07 June 2021', 2, 70, '2021-06-07 01:45:20', '2021-06-07 10:04:49', 6, NULL, '08:45:20', NULL, 1, NULL, '110.76731692', '-7.55728181', 'Absen pagi, (dari tadi gabisa)', 'Absen pulang', 'sesuai', 'sesuai', 0),
(174, 'Monday, 07 June 2021', 2, 75, '2021-06-07 02:48:10', '2021-06-07 02:54:25', 6, NULL, '09:48:10', NULL, 1, NULL, '110.76724649', '-7.55741582', NULL, NULL, 'sesuai', NULL, 0),
(175, 'Monday, 07 June 2021', 2, 20, '2021-06-07 13:25:08', '2021-06-07 13:25:46', 6, 14, '20:25:08', '20:25:52', 1, NULL, '-122.084', '37.421998333333', 'tes', 'tes', 'sesuai', 'sesuai', 0),
(176, 'Tuesday, 08 June 2021', 1, 69, '2021-06-08 00:39:08', NULL, 6, NULL, '07:39:08', NULL, NULL, NULL, '105.29496666667', '-5.345165', 'Masuk', NULL, 'sesuai', NULL, 0),
(177, 'Tuesday, 08 June 2021', 2, 65, '2021-06-08 00:51:51', '2021-06-08 10:32:39', 6, NULL, '07:51:51', NULL, NULL, NULL, '105.29834568', '-5.40717683', 'masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(178, 'Tuesday, 08 June 2021', 2, 70, '2021-06-08 00:54:07', '2021-06-08 10:02:22', 6, NULL, '07:54:07', NULL, NULL, NULL, '110.76745', '-7.557435', 'Absen pagi', 'Absen pulang', 'sesuai', 'sesuai', 0),
(179, 'Tuesday, 08 June 2021', 2, 75, '2021-06-08 00:56:00', '2021-06-08 10:03:31', 6, NULL, '07:56:00', NULL, NULL, NULL, '110.76738', '-7.557285', NULL, NULL, 'sesuai', 'sesuai', 0),
(180, 'Tuesday, 08 June 2021', 2, 74, '2021-06-08 00:57:43', '2021-06-08 10:00:49', 6, NULL, '07:57:43', NULL, NULL, NULL, '110.77703833333', '-7.5879166666667', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(181, 'Tuesday, 08 June 2021', 2, 67, '2021-06-08 00:59:44', '2021-06-08 10:00:55', 6, NULL, '07:59:44', NULL, NULL, NULL, '110.77709666667', '-7.5876366666667', NULL, 'Keluar', 'sesuai', 'sesuai', 0),
(182, 'Tuesday, 08 June 2021', 1, 66, '2021-06-08 01:04:49', NULL, 6, NULL, '08:04:49', NULL, 1, NULL, '110.74759483', '-7.57562131', NULL, NULL, 'sesuai', NULL, 0),
(184, 'Wednesday, 09 June 2021', 1, 65, '2021-06-09 00:05:35', NULL, 6, NULL, '07:05:35', NULL, NULL, NULL, '105.29834932', '-5.40719222', 'masuk', NULL, 'sesuai', NULL, 0),
(185, 'Wednesday, 09 June 2021', 2, 75, '2021-06-09 00:50:04', '2021-06-09 10:05:12', 6, NULL, '07:50:04', NULL, NULL, NULL, '110.76744333333', '-7.5573833333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(186, 'Wednesday, 09 June 2021', 2, 67, '2021-06-09 00:52:30', '2021-06-09 10:01:20', 6, NULL, '07:52:30', NULL, NULL, NULL, '110.77709166667', '-7.58753', NULL, 'Keluar', 'sesuai', 'sesuai', 0),
(187, 'Wednesday, 09 June 2021', 2, 70, '2021-06-09 00:53:19', '2021-06-09 10:04:28', 6, NULL, '07:53:19', NULL, NULL, NULL, '110.76740833333', '-7.5573233333333', 'Absen pagi', NULL, 'sesuai', 'sesuai', 0),
(188, 'Wednesday, 09 June 2021', 2, 74, '2021-06-09 00:56:33', '2021-06-09 10:00:35', 6, NULL, '07:56:33', NULL, NULL, NULL, '110.77705833333', '-7.5876766666667', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(189, 'Wednesday, 09 June 2021', 1, 69, '2021-06-09 00:58:11', NULL, 6, NULL, '07:58:11', NULL, NULL, NULL, '105.29498333333', '-5.3450866666667', 'Masuk', NULL, 'sesuai', NULL, 0),
(190, 'Wednesday, 09 June 2021', 2, 66, '2021-06-09 01:37:11', '2021-06-09 14:50:59', 6, NULL, '08:37:10', NULL, 1, NULL, '110.74773223', '-7.5756632', NULL, NULL, 'sesuai', 'sesuai', 0),
(191, 'Wednesday, 09 June 2021', 2, 83, '2021-06-09 05:56:29', '2021-06-09 10:00:01', 6, NULL, '12:56:29', NULL, 1, NULL, '110.7771809', '-7.5876128', 'Masok', 'Pulang', 'sesuai', 'sesuai', 0),
(192, 'Thursday, 10 June 2021', 2, 74, '2021-06-10 00:42:17', '2021-06-10 10:00:53', 6, NULL, '07:42:17', NULL, NULL, NULL, '110.77721333333', '-7.5874216666667', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(193, 'Thursday, 10 June 2021', 2, 70, '2021-06-10 00:47:13', '2021-06-10 10:01:46', 6, NULL, '07:47:13', NULL, NULL, NULL, '110.76730833333', '-7.5574283333333', 'Absen pagi', 'Absen pulang', 'sesuai', 'sesuai', 0),
(194, 'Thursday, 10 June 2021', 1, 65, '2021-06-10 00:49:17', NULL, 6, NULL, '07:49:17', NULL, NULL, NULL, '105.29833368', '-5.40725601', 'Masuk', NULL, 'sesuai', NULL, 0),
(195, 'Thursday, 10 June 2021', 2, 67, '2021-06-10 00:49:28', '2021-06-10 10:00:11', 6, NULL, '07:49:28', NULL, NULL, NULL, '110.77714166667', '-7.5875333333333', 'Masuk', NULL, 'sesuai', 'sesuai', 0),
(196, 'Thursday, 10 June 2021', 2, 75, '2021-06-10 00:53:04', '2021-06-10 10:03:16', 6, NULL, '07:53:04', NULL, NULL, NULL, '110.767415', '-7.5573716666667', NULL, NULL, 'sesuai', 'sesuai', 0),
(197, 'Thursday, 10 June 2021', 1, 69, '2021-06-10 00:53:14', NULL, 6, NULL, '07:53:14', NULL, NULL, NULL, '105.294985', '-5.34503', 'Masuk', NULL, 'sesuai', NULL, 0),
(198, 'Thursday, 10 June 2021', 2, 83, '2021-06-10 01:03:55', '2021-06-10 10:01:32', 6, NULL, '08:03:55', NULL, 1, NULL, '110.77710908', '-7.58761947', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(199, 'Thursday, 10 June 2021', 1, 66, '2021-06-10 01:36:36', NULL, 6, NULL, '08:36:36', NULL, 1, NULL, '110.74749356', '-7.57578094', NULL, NULL, 'sesuai', NULL, 0),
(200, 'Friday, 11 June 2021', 2, 70, '2021-06-11 00:35:09', '2021-06-11 10:01:09', 6, NULL, '07:35:09', NULL, NULL, NULL, '110.76718', '-7.5576583333333', 'Absen pagi', 'Absen pulang', 'sesuai', 'sesuai', 0),
(201, 'Friday, 11 June 2021', 2, 75, '2021-06-11 00:50:53', '2021-06-11 10:00:25', 6, NULL, '07:50:53', NULL, NULL, NULL, '110.76742666667', '-7.55742', NULL, NULL, 'sesuai', 'sesuai', 0),
(202, 'Friday, 11 June 2021', 2, 74, '2021-06-11 00:52:27', '2021-06-11 10:00:44', 6, NULL, '07:52:27', NULL, NULL, NULL, '110.777405', '-7.5877783333333', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(203, 'Friday, 11 June 2021', 2, 67, '2021-06-11 00:54:50', '2021-06-11 10:00:14', 6, NULL, '07:54:50', NULL, NULL, NULL, '110.77716833333', '-7.5875933333333', 'Masuk', NULL, 'sesuai', 'sesuai', 0),
(204, 'Friday, 11 June 2021', 1, 69, '2021-06-11 00:58:27', NULL, 6, NULL, '07:58:27', NULL, NULL, NULL, '105.29480666667', '-5.34501', 'Masuk', NULL, 'sesuai', NULL, 0),
(205, 'Friday, 11 June 2021', 1, 65, '2021-06-11 01:11:03', NULL, 6, NULL, '08:11:03', NULL, 1, NULL, '105.29827671', '-5.40717563', 'Masuk', NULL, 'sesuai', NULL, 0),
(206, 'Friday, 11 June 2021', 2, 83, '2021-06-11 01:34:56', '2021-06-11 10:00:48', 6, NULL, '08:34:56', NULL, 1, NULL, '110.77711522579', '-7.587588429451', 'Masok ijin telat ban bocor', 'Pulang', 'sesuai', 'sesuai', 0),
(207, 'Saturday, 12 June 2021', 2, 70, '2021-06-12 00:50:02', '2021-06-12 07:02:07', 6, NULL, '07:50:02', NULL, NULL, NULL, '110.76760166667', '-7.55856', 'Absen pagi', 'Absen pulang', 'sesuai', 'sesuai', 0),
(208, 'Saturday, 12 June 2021', 2, 67, '2021-06-12 01:03:20', '2021-06-12 07:01:18', 6, NULL, '08:03:20', NULL, 1, NULL, '110.77710666667', '-7.5876383333333', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(209, 'Saturday, 12 June 2021', 2, 75, '2021-06-12 01:07:23', '2021-06-12 07:00:39', 6, NULL, '08:07:23', NULL, 1, NULL, '110.76743', '-7.5574383333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(210, 'Saturday, 12 June 2021', 1, 74, '2021-06-12 01:09:34', NULL, 6, NULL, '08:09:34', NULL, 1, NULL, '110.77729833333', '-7.5876233333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(211, 'Saturday, 12 June 2021', 1, 69, '2021-06-12 01:32:28', NULL, 6, NULL, '08:32:28', NULL, 1, NULL, '105.29488166667', '-5.3450933333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(212, 'Saturday, 12 June 2021', 2, 83, '2021-06-12 07:00:18', '2021-06-12 07:01:41', 6, NULL, '14:00:18', NULL, 1, NULL, '110.77712', '-7.58764', 'Masok tadi hp rusak', 'Pulang apsen pijam hp pak haidar', 'sesuai', 'sesuai', 0),
(213, 'Monday, 14 June 2021', 2, 75, '2021-06-14 00:49:30', '2021-06-14 10:00:48', 6, NULL, '07:49:30', NULL, NULL, NULL, '110.76742166667', '-7.5574216666667', NULL, NULL, 'sesuai', 'sesuai', 0),
(214, 'Monday, 14 June 2021', 2, 83, '2021-06-14 00:52:35', '2021-06-14 10:02:48', 6, NULL, '07:52:35', NULL, NULL, NULL, '110.7771709', '-7.587643', 'Masok', 'Pulang', 'sesuai', 'sesuai', 0),
(215, 'Monday, 14 June 2021', 2, 70, '2021-06-14 00:58:25', '2021-06-14 10:01:32', 6, NULL, '07:58:25', NULL, NULL, NULL, '110.76751833333', '-7.5573216666667', 'absen pagi', 'Absen pulang', 'sesuai', 'sesuai', 0),
(216, 'Monday, 14 June 2021', 1, 69, '2021-06-14 00:59:36', NULL, 6, NULL, '07:59:36', NULL, NULL, NULL, '105.29505833333', '-5.3449266666667', 'Masuk', NULL, 'sesuai', NULL, 0),
(217, 'Monday, 14 June 2021', 2, 67, '2021-06-14 01:04:45', '2021-06-14 10:01:12', 6, NULL, '08:04:45', NULL, 1, NULL, '110.77708166667', '-7.587675', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(218, 'Monday, 14 June 2021', 2, 66, '2021-06-14 01:15:23', '2021-06-14 10:12:00', 6, NULL, '08:15:23', NULL, 1, NULL, '110.74767548', '-7.57571568', NULL, NULL, 'sesuai', 'sesuai', 0),
(219, 'Monday, 14 June 2021', 2, 65, '2021-06-14 01:27:51', '2021-06-14 11:05:17', 6, NULL, '08:27:51', NULL, 1, NULL, '105.29828879', '-5.40708788', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(220, 'Monday, 14 June 2021', 1, 74, '2021-06-14 01:28:27', NULL, 6, NULL, '08:28:27', NULL, 1, NULL, '110.77707333333', '-7.5876433333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(221, 'Tuesday, 15 June 2021', 1, 69, '2021-06-15 00:27:15', NULL, 6, NULL, '07:27:15', NULL, NULL, NULL, '105.29492666667', '-5.345025', 'Masuk', NULL, 'sesuai', NULL, 0),
(222, 'Tuesday, 15 June 2021', 2, 70, '2021-06-15 00:55:47', '2021-06-15 10:03:25', 6, NULL, '07:55:47', NULL, NULL, NULL, '110.76738166667', '-7.5574916666667', 'Absen pagi', NULL, 'sesuai', 'sesuai', 0),
(223, 'Tuesday, 15 June 2021', 2, 75, '2021-06-15 00:56:14', '2021-06-15 10:02:52', 6, NULL, '07:56:14', NULL, NULL, NULL, '110.76744', '-7.557435', NULL, NULL, 'sesuai', 'sesuai', 0),
(224, 'Tuesday, 15 June 2021', 2, 83, '2021-06-15 01:00:00', '2021-06-15 10:04:54', 6, NULL, '08:00:00', NULL, 1, NULL, '110.7771797', '-7.5876176', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(225, 'Tuesday, 15 June 2021', 2, 74, '2021-06-15 01:02:25', '2021-06-15 10:04:23', 6, NULL, '08:02:25', NULL, 1, NULL, '110.77696', '-7.5874516666667', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(226, 'Tuesday, 15 June 2021', 2, 66, '2021-06-15 01:03:39', '2021-06-15 10:18:59', 6, NULL, '08:03:39', NULL, 1, NULL, '110.74766203', '-7.57574541', NULL, NULL, 'sesuai', 'sesuai', 0),
(227, 'Tuesday, 15 June 2021', 1, 65, '2021-06-15 01:29:40', NULL, 6, NULL, '08:29:40', NULL, 1, NULL, '105.29839141', '-5.40721817', 'Masuk', NULL, 'sesuai', NULL, 0),
(228, 'Tuesday, 15 June 2021', 2, 86, '2021-06-15 07:22:54', '2021-06-15 10:10:36', 6, NULL, '14:22:54', NULL, 1, NULL, '110.77717166667', '-7.5876183333333', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(229, 'Wednesday, 16 June 2021', 1, 65, '2021-06-16 00:45:24', NULL, 6, NULL, '07:45:24', NULL, NULL, NULL, '105.29827012', '-5.40722649', 'Masuk', NULL, 'sesuai', NULL, 0),
(230, 'Wednesday, 16 June 2021', 1, 69, '2021-06-16 00:45:38', NULL, 6, NULL, '07:45:38', NULL, NULL, NULL, '105.295025', '-5.3450716666667', 'Masuk', NULL, 'sesuai', NULL, 0),
(231, 'Wednesday, 16 June 2021', 2, 66, '2021-06-16 00:48:51', '2021-06-16 10:03:30', 6, NULL, '07:48:51', NULL, NULL, NULL, '110.74769418', '-7.57576817', NULL, NULL, 'sesuai', 'sesuai', 0),
(232, 'Wednesday, 16 June 2021', 2, 74, '2021-06-16 00:48:52', '2021-06-16 10:00:38', 6, NULL, '07:48:52', NULL, NULL, NULL, '110.777135', '-7.58763', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(233, 'Wednesday, 16 June 2021', 2, 70, '2021-06-16 00:53:14', '2021-06-16 10:00:44', 6, NULL, '07:53:14', NULL, NULL, NULL, '110.76713166667', '-7.5572833333333', 'Absen pagi', 'Absen pulang', 'sesuai', 'sesuai', 0),
(234, 'Wednesday, 16 June 2021', 2, 75, '2021-06-16 00:53:32', '2021-06-16 10:03:46', 6, NULL, '07:53:32', NULL, NULL, NULL, '110.76742', '-7.55742', NULL, NULL, 'sesuai', 'sesuai', 0),
(235, 'Wednesday, 16 June 2021', 2, 83, '2021-06-16 01:08:16', '2021-06-16 10:01:50', 6, NULL, '08:08:16', NULL, 1, NULL, '110.77713131905', '-7.5875562429428', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(236, 'Wednesday, 16 June 2021', 2, 86, '2021-06-16 01:10:56', '2021-06-16 10:00:39', 6, NULL, '08:10:56', NULL, 1, NULL, '110.77701337', '-7.58757443', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(237, 'Thursday, 17 June 2021', 1, 65, '2021-06-17 00:46:02', NULL, 6, NULL, '07:46:02', NULL, NULL, NULL, '105.29831462', '-5.40716625', 'Masuk', NULL, 'sesuai', NULL, 0),
(238, 'Thursday, 17 June 2021', 1, 69, '2021-06-17 00:48:04', NULL, 6, NULL, '07:48:04', NULL, NULL, NULL, '105.29501166667', '-5.3451233333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(239, 'Thursday, 17 June 2021', 1, 74, '2021-06-17 00:55:09', NULL, 6, NULL, '07:55:09', NULL, NULL, NULL, '110.77717833333', '-7.5877416666667', 'Masuk', NULL, 'sesuai', NULL, 0),
(240, 'Thursday, 17 June 2021', 2, 75, '2021-06-17 00:57:23', '2021-06-17 10:01:28', 6, NULL, '07:57:23', NULL, NULL, NULL, '110.76743666667', '-7.5574333333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(241, 'Thursday, 17 June 2021', 2, 70, '2021-06-17 00:59:11', '2021-06-17 10:03:07', 6, NULL, '07:59:11', NULL, NULL, NULL, '110.76743666667', '-7.5574333333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(242, 'Thursday, 17 June 2021', 2, 66, '2021-06-17 01:00:44', '2021-06-17 11:13:47', 6, NULL, '08:00:44', NULL, 1, NULL, '110.74769339', '-7.57572925', NULL, NULL, 'sesuai', 'sesuai', 0),
(243, 'Thursday, 17 June 2021', 2, 83, '2021-06-17 01:07:34', '2021-06-17 10:08:29', 6, NULL, '08:07:34', NULL, 1, NULL, '110.7771325', '-7.5875837', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(244, 'Friday, 18 June 2021', 2, 75, '2021-06-18 00:47:20', '2021-06-18 10:03:31', 6, NULL, '07:47:20', NULL, NULL, NULL, '110.76736833333', '-7.55755', NULL, NULL, 'sesuai', 'sesuai', 0),
(245, 'Friday, 18 June 2021', 2, 70, '2021-06-18 00:56:05', '2021-06-18 10:01:17', 6, NULL, '07:56:05', NULL, NULL, NULL, '110.76891', '-7.5580616666667', 'Absen masuk', 'Absen pulang', 'sesuai', 'sesuai', 0),
(246, 'Friday, 18 June 2021', 2, 74, '2021-06-18 00:59:22', '2021-06-18 10:01:16', 6, NULL, '07:59:22', NULL, NULL, NULL, '110.777105', '-7.587525', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(247, 'Friday, 18 June 2021', 2, 83, '2021-06-18 01:01:12', '2021-06-18 10:01:31', 6, NULL, '08:01:12', NULL, 1, NULL, '110.77739953995', '-7.587942481041', 'Masok', 'Pulang', 'sesuai', 'sesuai', 0),
(248, 'Friday, 18 June 2021', 2, 66, '2021-06-18 01:13:00', '2021-06-18 10:13:34', 6, NULL, '08:13:00', NULL, 1, NULL, '110.74764275', '-7.57576802', NULL, NULL, 'sesuai', 'sesuai', 0),
(249, 'Friday, 18 June 2021', 1, 65, '2021-06-18 01:14:06', NULL, 6, NULL, '08:14:06', NULL, 1, NULL, '105.29830872', '-5.40717301', 'Masuk', NULL, 'sesuai', NULL, 0),
(250, 'Friday, 18 June 2021', 1, 69, '2021-06-18 03:25:03', NULL, 6, NULL, '10:25:03', NULL, 1, NULL, '105.29547', '-5.344595', 'Masuk', NULL, 'sesuai', NULL, 0),
(251, 'Saturday, 19 June 2021', 2, 75, '2021-06-19 00:51:47', '2021-06-19 07:00:43', 6, NULL, '07:51:47', NULL, NULL, NULL, '110.76743333333', '-7.557425', NULL, NULL, 'sesuai', 'sesuai', 0),
(252, 'Saturday, 19 June 2021', 1, 65, '2021-06-19 00:52:48', NULL, 6, NULL, '07:52:48', NULL, NULL, NULL, '105.29829115', '-5.40715549', 'Masuk', NULL, 'sesuai', NULL, 0),
(253, 'Saturday, 19 June 2021', 1, 74, '2021-06-19 01:01:37', NULL, 6, NULL, '08:01:37', NULL, 1, NULL, '110.777125', '-7.58755', 'Masuk', NULL, 'sesuai', NULL, 0),
(254, 'Saturday, 19 June 2021', 2, 70, '2021-06-19 01:02:32', '2021-06-19 07:00:48', 6, NULL, '08:02:32', NULL, 1, NULL, '110.76732166667', '-7.5574216666667', NULL, NULL, 'sesuai', 'sesuai', 0),
(255, 'Saturday, 19 June 2021', 2, 66, '2021-06-19 01:08:10', '2021-06-19 10:22:58', 6, NULL, '08:08:10', NULL, 1, NULL, '110.74784396', '-7.5755555', NULL, NULL, 'sesuai', 'sesuai', 0),
(256, 'Saturday, 19 June 2021', 2, 83, '2021-06-19 01:08:28', '2021-06-19 07:32:18', 6, NULL, '08:08:28', NULL, 1, NULL, '110.77714172', '-7.58751113', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(257, 'Saturday, 19 June 2021', 1, 69, '2021-06-19 01:32:30', NULL, 6, NULL, '08:32:30', NULL, 1, NULL, '105.29505833333', '-5.3452883333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(258, 'Monday, 21 June 2021', 2, 66, '2021-06-21 00:41:43', '2021-06-21 10:06:48', 6, NULL, '07:41:43', NULL, NULL, NULL, '110.74781301', '-7.57554827', NULL, NULL, 'sesuai', 'sesuai', 0),
(259, 'Monday, 21 June 2021', 2, 75, '2021-06-21 00:43:42', '2021-06-21 10:01:25', 6, NULL, '07:43:42', NULL, NULL, NULL, '110.76711666667', '-7.5571233333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(260, 'Monday, 21 June 2021', 1, 74, '2021-06-21 00:49:34', NULL, 6, NULL, '07:49:34', NULL, NULL, NULL, '110.77706666667', '-7.587475', 'Masuk', NULL, 'sesuai', NULL, 0),
(261, 'Monday, 21 June 2021', 2, 83, '2021-06-21 00:52:11', '2021-06-21 10:24:58', 6, NULL, '07:52:11', NULL, NULL, NULL, '110.77762065455', '-7.587574054487', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(262, 'Monday, 21 June 2021', 2, 70, '2021-06-21 00:56:57', '2021-06-21 10:01:40', 6, NULL, '07:56:57', NULL, NULL, NULL, '110.76633666667', '-7.557465', NULL, NULL, 'sesuai', 'sesuai', 0),
(263, 'Monday, 21 June 2021', 1, 65, '2021-06-21 01:10:17', NULL, 6, NULL, '08:10:17', NULL, 1, NULL, '105.29841576', '-5.40725301', 'Masuk', NULL, 'sesuai', NULL, 0),
(264, 'Tuesday, 22 June 2021', 1, 69, '2021-06-22 00:09:03', NULL, 6, NULL, '07:09:03', NULL, NULL, NULL, '105.29482833333', '-5.344985', 'Masuk', NULL, 'sesuai', NULL, 0),
(265, 'Tuesday, 22 June 2021', 2, 75, '2021-06-22 00:49:20', '2021-06-22 10:03:58', 6, NULL, '07:49:20', NULL, NULL, NULL, '110.76809166667', '-7.5579883333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(266, 'Tuesday, 22 June 2021', 2, 74, '2021-06-22 00:54:52', '2021-06-22 10:01:37', 6, NULL, '07:54:52', NULL, NULL, NULL, '110.776865', '-7.5876016666667', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(267, 'Tuesday, 22 June 2021', 2, 70, '2021-06-22 00:57:12', '2021-06-22 10:02:26', 6, NULL, '07:57:12', NULL, NULL, NULL, '110.76819', '-7.5588516666667', NULL, NULL, 'sesuai', 'sesuai', 0),
(268, 'Tuesday, 22 June 2021', 2, 66, '2021-06-22 01:01:55', '2021-06-22 10:09:10', 6, NULL, '08:01:55', NULL, 1, NULL, '110.74770204', '-7.57561381', NULL, NULL, 'sesuai', 'sesuai', 0),
(269, 'Tuesday, 22 June 2021', 2, 83, '2021-06-22 01:08:48', '2021-06-22 10:02:18', 6, NULL, '08:08:47', NULL, 1, NULL, '110.7771247', '-7.5875733', 'Masuk', 'PulAng', 'sesuai', 'sesuai', 0),
(270, 'Wednesday, 23 June 2021', 1, 65, '2021-06-23 00:29:34', NULL, 6, NULL, '07:29:34', NULL, NULL, NULL, '105.29835193', '-5.40728853', 'Masuk', NULL, 'sesuai', NULL, 0),
(271, 'Wednesday, 23 June 2021', 1, 69, '2021-06-23 00:42:52', NULL, 6, NULL, '07:42:52', NULL, NULL, NULL, '105.294815', '-5.34511', 'Masuk', NULL, 'sesuai', NULL, 0),
(272, 'Wednesday, 23 June 2021', 2, 75, '2021-06-23 00:45:42', '2021-06-23 10:00:24', 6, NULL, '07:45:42', NULL, NULL, NULL, '110.76755166667', '-7.5574533333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(273, 'Wednesday, 23 June 2021', 2, 83, '2021-06-23 00:51:13', '2021-06-23 10:52:31', 6, NULL, '07:51:13', NULL, NULL, NULL, '110.7771198', '-7.5875764', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(274, 'Wednesday, 23 June 2021', 2, 70, '2021-06-23 00:54:00', '2021-06-23 10:00:30', 6, NULL, '07:54:00', NULL, NULL, NULL, '110.76743166667', '-7.5571516666667', NULL, NULL, 'sesuai', 'sesuai', 0),
(275, 'Wednesday, 23 June 2021', 1, 74, '2021-06-23 00:55:50', NULL, 6, NULL, '07:55:50', NULL, NULL, NULL, '110.77710166667', '-7.587685', 'Masuk', NULL, 'sesuai', NULL, 0),
(276, 'Wednesday, 23 June 2021', 2, 66, '2021-06-23 01:11:44', '2021-06-23 10:19:23', 6, NULL, '08:11:44', NULL, 1, NULL, '110.74777461', '-7.57562964', NULL, NULL, 'sesuai', 'sesuai', 0),
(277, 'Thursday, 24 June 2021', 2, 75, '2021-06-24 00:52:31', '2021-06-24 10:04:58', 6, NULL, '07:52:31', NULL, NULL, NULL, '110.76756166667', '-7.5574433333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(278, 'Thursday, 24 June 2021', 2, 66, '2021-06-24 00:55:14', '2021-06-24 10:07:13', 6, NULL, '07:55:14', NULL, NULL, NULL, '110.74786648', '-7.57583632', NULL, NULL, 'sesuai', 'sesuai', 0),
(279, 'Thursday, 24 June 2021', 2, 70, '2021-06-24 00:58:42', '2021-06-24 10:00:42', 6, NULL, '07:58:42', NULL, NULL, NULL, '110.76765333333', '-7.557485', NULL, NULL, 'sesuai', 'sesuai', 0),
(280, 'Thursday, 24 June 2021', 1, 69, '2021-06-24 07:04:23', NULL, 6, NULL, '14:04:23', NULL, 1, NULL, '105.29505666667', '-5.34514', 'Masuk', NULL, 'sesuai', NULL, 0),
(281, 'Thursday, 24 June 2021', 2, 74, '2021-06-24 10:01:47', '2021-06-24 10:02:12', 6, NULL, '17:01:47', NULL, 1, NULL, '110.77693', '-7.587605', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(282, 'Friday, 25 June 2021', 1, 69, '2021-06-25 00:29:31', NULL, 6, NULL, '07:29:31', NULL, NULL, NULL, '105.29493166667', '-5.3450716666667', 'Masuk', NULL, 'sesuai', NULL, 0),
(283, 'Friday, 25 June 2021', 2, 75, '2021-06-25 00:45:23', '2021-06-25 10:00:27', 6, NULL, '07:45:23', NULL, NULL, NULL, '110.76787333333', '-7.5576383333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(284, 'Friday, 25 June 2021', 2, 66, '2021-06-25 00:50:04', '2021-06-25 10:00:50', 6, NULL, '07:50:04', NULL, NULL, NULL, '110.74771374', '-7.57570058', NULL, NULL, 'sesuai', 'sesuai', 0),
(285, 'Friday, 25 June 2021', 2, 83, '2021-06-25 00:53:29', '2021-06-25 10:02:28', 6, NULL, '07:53:29', NULL, NULL, NULL, '110.77712595463', '-7.587588429451', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(286, 'Friday, 25 June 2021', 2, 70, '2021-06-25 00:53:51', '2021-06-25 10:01:40', 6, NULL, '07:53:51', NULL, NULL, NULL, '110.76777666667', '-7.5576816666667', NULL, NULL, 'sesuai', 'sesuai', 0),
(287, 'Friday, 25 June 2021', 2, 74, '2021-06-25 09:59:10', '2021-06-25 10:00:19', 6, NULL, '16:59:10', NULL, 1, NULL, '110.77690833333', '-7.5872966666667', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(288, 'Saturday, 26 June 2021', 1, 69, '2021-06-26 00:26:05', NULL, 6, NULL, '07:26:05', NULL, NULL, NULL, '105.294805', '-5.3450583333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(289, 'Saturday, 26 June 2021', 2, 75, '2021-06-26 00:45:27', '2021-06-26 07:01:20', 6, NULL, '07:45:27', NULL, NULL, NULL, '110.76743838', '-7.55760945', NULL, NULL, 'sesuai', 'sesuai', 0),
(290, 'Saturday, 26 June 2021', 2, 70, '2021-06-26 00:54:36', '2021-06-26 07:03:00', 6, NULL, '07:54:36', NULL, NULL, NULL, '110.76722833333', '-7.5573', NULL, NULL, 'sesuai', 'sesuai', 0),
(291, 'Saturday, 26 June 2021', 2, 83, '2021-06-26 00:57:28', '2021-06-26 07:26:53', 6, NULL, '07:57:28', NULL, NULL, NULL, '110.77694356441', '-7.5876259803772', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(292, 'Saturday, 26 June 2021', 2, 74, '2021-06-26 00:59:36', '2021-06-26 09:05:02', 6, NULL, '07:59:36', NULL, NULL, NULL, '110.77728666667', '-7.5877816666667', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(293, 'Saturday, 26 June 2021', 2, 67, '2021-06-26 01:00:17', '2021-06-26 07:02:31', 6, NULL, '08:00:17', NULL, 1, NULL, '110.77694', '-7.5876', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(294, 'Saturday, 26 June 2021', 2, 66, '2021-06-26 01:04:41', '2021-06-26 07:07:21', 6, NULL, '08:04:41', NULL, 1, NULL, '110.74776124', '-7.57575069', NULL, NULL, 'sesuai', 'sesuai', 0),
(295, 'Monday, 28 June 2021', 2, 75, '2021-06-28 00:51:04', '2021-06-28 10:01:18', 6, NULL, '07:51:04', NULL, NULL, NULL, '110.76746763', '-7.55741334', NULL, NULL, 'sesuai', 'sesuai', 0),
(296, 'Monday, 28 June 2021', 2, 70, '2021-06-28 00:51:57', '2021-06-28 10:01:49', 6, NULL, '07:51:57', NULL, NULL, NULL, '110.76753333333', '-7.5574616666667', NULL, NULL, 'sesuai', 'sesuai', 0),
(297, 'Monday, 28 June 2021', 2, 67, '2021-06-28 00:52:45', '2021-06-28 10:02:09', 6, NULL, '07:52:45', NULL, NULL, NULL, '110.77907', '-7.5870883333333', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(298, 'Monday, 28 June 2021', 2, 66, '2021-06-28 01:02:11', '2021-06-28 10:16:44', 6, NULL, '08:02:11', NULL, 1, NULL, '110.74768645', '-7.5755912', NULL, NULL, 'sesuai', 'sesuai', 0),
(299, 'Monday, 28 June 2021', 1, 69, '2021-06-28 01:09:34', NULL, 6, NULL, '08:09:34', NULL, 1, NULL, '105.295015', '-5.3456933333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(300, 'Monday, 28 June 2021', 1, 74, '2021-06-28 01:11:25', NULL, 6, NULL, '08:11:25', NULL, 1, NULL, '110.777145', '-7.5876733333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(301, 'Monday, 28 June 2021', 2, 83, '2021-06-28 01:54:49', '2021-06-28 10:01:35', 6, NULL, '08:54:49', NULL, 1, NULL, '110.7771272', '-7.5875756', 'Masuk ijin pembiatan sim', 'Pulang', 'sesuai', 'sesuai', 0),
(302, 'Tuesday, 29 June 2021', 2, 75, '2021-06-29 00:47:44', '2021-06-29 10:02:27', 6, NULL, '07:47:44', NULL, NULL, NULL, '110.76738666667', '-7.5573733333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(303, 'Tuesday, 29 June 2021', 2, 67, '2021-06-29 00:53:17', '2021-06-29 09:59:18', 6, NULL, '07:53:17', NULL, NULL, NULL, '110.77699833333', '-7.587755', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(304, 'Tuesday, 29 June 2021', 2, 70, '2021-06-29 00:54:07', '2021-06-29 10:02:34', 6, NULL, '07:54:07', NULL, NULL, NULL, '110.76731', '-7.5573266666667', NULL, NULL, 'sesuai', 'sesuai', 0),
(305, 'Tuesday, 29 June 2021', 1, 66, '2021-06-29 01:04:13', NULL, 6, NULL, '08:04:13', NULL, 1, NULL, '110.74770586', '-7.57571615', NULL, NULL, 'sesuai', NULL, 0),
(306, 'Tuesday, 29 June 2021', 1, 69, '2021-06-29 01:10:50', NULL, 6, NULL, '08:10:50', NULL, 1, NULL, '105.29536666667', '-5.34476', 'Masuk', NULL, 'sesuai', NULL, 0),
(307, 'Wednesday, 30 June 2021', 2, 70, '2021-06-30 00:50:35', '2021-06-30 10:01:26', 6, NULL, '07:50:35', NULL, NULL, NULL, '110.76719833333', '-7.5573966666667', NULL, NULL, 'sesuai', 'sesuai', 0),
(308, 'Wednesday, 30 June 2021', 2, 75, '2021-06-30 00:51:09', '2021-06-30 10:00:26', 6, NULL, '07:51:09', NULL, NULL, NULL, '110.76738666667', '-7.5573733333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(309, 'Wednesday, 30 June 2021', 1, 69, '2021-06-30 00:57:05', NULL, 6, NULL, '07:57:05', NULL, NULL, NULL, '105.29492333333', '-5.3451166666667', 'Masuk', NULL, 'sesuai', NULL, 0),
(310, 'Wednesday, 30 June 2021', 2, 66, '2021-06-30 01:10:17', '2021-06-30 10:57:40', 6, NULL, '08:10:17', NULL, 1, NULL, '110.74766819', '-7.57567025', NULL, NULL, 'sesuai', 'sesuai', 0),
(311, 'Wednesday, 30 June 2021', 2, 67, '2021-06-30 01:19:28', '2021-06-30 10:00:52', 6, NULL, '08:19:28', NULL, 1, NULL, '110.776965', '-7.5874033333333', 'Lupa belum absensi, datang sebelum jam 07.49', 'Keluar', 'sesuai', 'sesuai', 0),
(312, 'Thursday, 01 July 2021', 2, 75, '2021-07-01 00:43:10', '2021-07-01 00:55:11', 7, NULL, '07:43:10', NULL, NULL, NULL, '110.76738666667', '-7.557375', NULL, NULL, 'sesuai', NULL, 0),
(313, 'Thursday, 01 July 2021', 2, 67, '2021-07-01 00:52:23', '2021-07-01 09:16:17', 7, NULL, '07:52:23', NULL, NULL, NULL, '110.74043', '-7.59732', 'Masuk', NULL, 'sesuai', NULL, 0),
(314, 'Thursday, 01 July 2021', 2, 70, '2021-07-01 00:54:04', '2021-07-01 00:56:51', 7, NULL, '07:54:04', NULL, NULL, NULL, '110.76730666667', '-7.5572966666667', NULL, NULL, 'sesuai', NULL, 0),
(315, 'Thursday, 01 July 2021', 1, 66, '2021-07-01 01:00:13', NULL, 7, NULL, '08:00:13', NULL, 1, NULL, '110.74767373', '-7.57566351', NULL, NULL, 'sesuai', NULL, 0),
(316, 'Thursday, 01 July 2021', 2, 69, '2021-07-01 01:08:52', '2021-07-01 01:09:58', 7, NULL, '08:08:52', NULL, 1, NULL, '105.29495666667', '-5.3450433333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(317, 'Thursday, 01 July 2021', 2, 110, '2021-07-01 09:02:10', '2021-07-01 11:15:39', 7, NULL, '16:02:10', NULL, 1, NULL, '110.7401052', '-7.5974114', NULL, NULL, 'sesuai', NULL, 0),
(318, 'Friday, 02 July 2021', 2, 75, '2021-07-02 00:52:21', '2021-07-02 10:01:20', 7, NULL, '07:52:21', NULL, NULL, NULL, '110.76745133', '-7.55740383', NULL, NULL, 'sesuai', 'sesuai', 0),
(319, 'Friday, 02 July 2021', 2, 110, '2021-07-02 00:53:17', '2021-07-02 10:00:29', 7, NULL, '07:53:17', NULL, NULL, NULL, '110.74019833333', '-7.597315', 'Masuk', 'Clock Out', 'sesuai', 'sesuai', 0),
(320, 'Friday, 02 July 2021', 2, 66, '2021-07-02 01:57:03', '2021-07-02 10:14:05', 7, NULL, '08:57:03', NULL, 1, NULL, '110.74771231', '-7.5757772', NULL, NULL, 'sesuai', 'sesuai', 0),
(321, 'Friday, 02 July 2021', 2, 70, '2021-07-02 09:02:44', '2021-07-02 10:03:17', 7, NULL, '16:02:44', NULL, 1, NULL, '110.767375', '-7.5573683333333', 'Tadi pagi blm bisa clock in, *masa pemakaian habis*', NULL, 'sesuai', 'sesuai', 0),
(322, 'Saturday, 03 July 2021', 1, 65, '2021-07-03 00:23:49', NULL, 7, NULL, '07:23:49', NULL, NULL, NULL, '105.29792010784', '-5.4071402549744', 'Masuk', NULL, 'sesuai', NULL, 0),
(323, 'Saturday, 03 July 2021', 1, 69, '2021-07-03 00:46:40', NULL, 7, NULL, '07:46:40', NULL, NULL, NULL, '105.29471333333', '-5.345465', 'Masuk', NULL, 'sesuai', NULL, 0),
(324, 'Saturday, 03 July 2021', 2, 118, '2021-07-03 00:47:50', '2021-07-03 07:21:20', 7, NULL, '07:47:50', NULL, NULL, NULL, '110.77707231045', '-7.5876528024673', NULL, NULL, 'sesuai', 'sesuai', 0),
(325, 'Saturday, 03 July 2021', 2, 75, '2021-07-03 00:48:49', '2021-07-03 07:01:13', 7, NULL, '07:48:49', NULL, NULL, NULL, '110.76738666667', '-7.5573733333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(326, 'Saturday, 03 July 2021', 2, 66, '2021-07-03 01:01:40', '2021-07-03 07:31:01', 7, NULL, '08:01:40', NULL, 1, NULL, '110.74776197', '-7.5757989', NULL, NULL, 'sesuai', 'sesuai', 0),
(327, 'Saturday, 03 July 2021', 2, 116, '2021-07-03 01:13:56', '2021-07-03 07:02:12', 7, NULL, '08:13:56', NULL, 1, NULL, '108.5577693', '-6.76026953', NULL, 'pulang', 'sesuai', 'sesuai', 0),
(328, 'Saturday, 03 July 2021', 2, 110, '2021-07-03 01:44:47', '2021-07-03 07:07:10', 7, NULL, '08:44:47', NULL, 1, NULL, '110.74056833333', '-7.59697', 'Masuk', 'Clock Out', 'sesuai', 'sesuai', 0),
(329, 'Saturday, 03 July 2021', 2, 67, '2021-07-03 02:23:36', '2021-07-03 07:08:01', 7, NULL, '09:23:36', NULL, 1, NULL, '110.74021166667', '-7.5975183333333', 'Mausk telat karna ada masalah sistem', 'Keluar', 'sesuai', 'sesuai', 0),
(330, 'Saturday, 03 July 2021', 2, 70, '2021-07-03 03:46:22', '2021-07-03 07:01:29', 7, NULL, '10:46:22', NULL, 1, NULL, '110.767485', '-7.55739', 'Baru selesai vaksin', NULL, 'sesuai', 'sesuai', 0),
(331, 'Saturday, 03 July 2021', 2, 117, '2021-07-03 05:54:31', '2021-07-03 07:03:41', 7, NULL, '12:54:31', NULL, 1, NULL, '110.74011441', '-7.59753202', '-', NULL, 'sesuai', 'sesuai', 0),
(332, 'Monday, 05 July 2021', 1, 69, '2021-07-04 23:24:29', NULL, 7, NULL, '06:24:29', NULL, NULL, NULL, '105.29495', '-5.3454783333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(333, 'Monday, 05 July 2021', 2, 117, '2021-07-05 00:37:23', '2021-07-05 10:04:44', 7, NULL, '07:37:23', NULL, NULL, NULL, '110.74014107', '-7.59758414', 'day 2', '-', 'sesuai', 'sesuai', 0),
(334, 'Monday, 05 July 2021', 2, 116, '2021-07-05 00:44:26', '2021-07-05 10:01:43', 7, NULL, '07:44:26', NULL, NULL, NULL, '108.55767701', '-6.75992241', 'masuk', 'pulang', 'sesuai', 'sesuai', 0),
(335, 'Monday, 05 July 2021', 2, 70, '2021-07-05 00:49:42', '2021-07-05 10:01:01', 7, NULL, '07:49:42', NULL, NULL, NULL, '110.767325', '-7.5572566666667', NULL, NULL, 'sesuai', 'sesuai', 0),
(336, 'Monday, 05 July 2021', 2, 75, '2021-07-05 00:52:25', '2021-07-05 10:01:31', 7, NULL, '07:52:25', NULL, NULL, NULL, '110.76738666667', '-7.5573616666667', NULL, NULL, 'sesuai', 'sesuai', 0),
(337, 'Monday, 05 July 2021', 2, 110, '2021-07-05 00:53:44', '2021-07-05 10:00:39', 7, NULL, '07:53:44', NULL, NULL, NULL, '110.73963833333', '-7.596555', 'Clock In', 'Clock Out', 'sesuai', 'sesuai', 0),
(338, 'Monday, 05 July 2021', 2, 67, '2021-07-05 00:53:55', '2021-07-05 10:03:32', 7, NULL, '07:53:55', NULL, NULL, NULL, '110.74052333333', '-7.5980033333333', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(339, 'Monday, 05 July 2021', 2, 118, '2021-07-05 00:56:49', '2021-07-05 10:00:36', 7, NULL, '07:56:49', NULL, NULL, NULL, '110.7772064209', '-7.5875240564346', NULL, NULL, 'sesuai', 'sesuai', 0),
(340, 'Monday, 05 July 2021', 2, 119, '2021-07-05 01:00:50', '2021-07-05 10:00:28', 7, NULL, '08:00:50', NULL, 1, NULL, '109.12281478755', '-6.9848063355312', NULL, NULL, 'sesuai', 'sesuai', 0),
(341, 'Monday, 05 July 2021', 2, 66, '2021-07-05 01:00:50', '2021-07-05 11:55:34', 7, NULL, '08:00:50', NULL, 1, NULL, '110.7478285', '-7.57584852', NULL, NULL, 'sesuai', 'sesuai', 0),
(342, 'Monday, 05 July 2021', 1, 65, '2021-07-05 01:06:47', NULL, 7, NULL, '08:06:47', NULL, 1, NULL, '105.298257', '-5.4067682', 'Masuk', NULL, 'sesuai', NULL, 0),
(343, 'Tuesday, 06 July 2021', 1, 69, '2021-07-06 00:28:18', NULL, 7, NULL, '07:28:18', NULL, NULL, NULL, '105.29503833333', '-5.3451683333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(344, 'Tuesday, 06 July 2021', 2, 117, '2021-07-06 00:34:00', '2021-07-06 10:05:13', 7, NULL, '07:34:00', NULL, NULL, NULL, '110.74010715', '-7.59690053', 'day 3', '-', 'sesuai', 'sesuai', 0),
(345, 'Tuesday, 06 July 2021', 2, 70, '2021-07-06 00:49:16', '2021-07-06 10:01:05', 7, NULL, '07:49:16', NULL, NULL, NULL, '110.76726833333', '-7.5574683333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(346, 'Tuesday, 06 July 2021', 2, 75, '2021-07-06 00:52:08', '2021-07-06 10:03:58', 7, NULL, '07:52:08', NULL, NULL, NULL, '110.76743519', '-7.5575143', NULL, NULL, 'sesuai', 'sesuai', 0),
(347, 'Tuesday, 06 July 2021', 2, 116, '2021-07-06 00:52:58', '2021-07-06 10:00:56', 7, NULL, '07:52:58', NULL, NULL, NULL, '108.5577145', '-6.75998486', 'masuk', 'pulang', 'sesuai', 'sesuai', 0),
(348, 'Tuesday, 06 July 2021', 2, 118, '2021-07-06 00:54:35', '2021-07-06 10:00:23', 7, NULL, '07:54:35', NULL, NULL, NULL, '110.77714204788', '-7.5875723361969', NULL, NULL, 'sesuai', 'sesuai', 0),
(349, 'Tuesday, 06 July 2021', 2, 67, '2021-07-06 00:56:47', '2021-07-06 10:06:54', 7, NULL, '07:56:47', NULL, NULL, NULL, '110.73956333333', '-7.5968066666667', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(350, 'Tuesday, 06 July 2021', 2, 110, '2021-07-06 00:57:45', '2021-07-06 10:08:26', 7, NULL, '07:57:45', NULL, NULL, NULL, '110.74038666667', '-7.5972983333333', 'Clock in', 'Clock Out', 'sesuai', 'sesuai', 0),
(351, 'Tuesday, 06 July 2021', 2, 119, '2021-07-06 00:58:53', '2021-07-06 10:00:38', 7, NULL, '07:58:53', NULL, NULL, NULL, '109.1229475569', '-6.984745063819', NULL, NULL, 'sesuai', 'sesuai', 0),
(352, 'Tuesday, 06 July 2021', 2, 66, '2021-07-06 01:05:36', '2021-07-06 10:18:27', 7, NULL, '08:05:36', NULL, 1, NULL, '110.74771443', '-7.57579654', NULL, NULL, 'sesuai', 'sesuai', 0),
(353, 'Tuesday, 06 July 2021', 1, 65, '2021-07-06 01:06:18', NULL, 7, NULL, '08:06:18', NULL, 1, NULL, '105.29825270176', '-5.4070168733597', 'Masuk', NULL, 'sesuai', NULL, 0),
(354, 'Tuesday, 06 July 2021', 2, 124, '2021-07-06 01:47:52', '2021-07-06 10:00:23', 7, NULL, '08:47:52', NULL, 1, NULL, '109.68932917', '-6.88820607', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(355, 'Wednesday, 07 July 2021', 1, 69, '2021-07-07 00:21:28', NULL, 7, NULL, '07:21:28', NULL, NULL, NULL, '105.29491166667', '-5.34506', 'Masuk', NULL, 'sesuai', NULL, 0),
(356, 'Wednesday, 07 July 2021', 2, 118, '2021-07-07 00:46:12', '2021-07-07 10:02:45', 7, NULL, '07:46:12', NULL, NULL, NULL, '110.77711522579', '-7.5874972343445', NULL, NULL, 'sesuai', 'sesuai', 0),
(357, 'Wednesday, 07 July 2021', 2, 116, '2021-07-07 00:49:36', '2021-07-07 10:01:06', 7, NULL, '07:49:36', NULL, NULL, NULL, '108.55781808', '-6.7598544', 'masuk', 'pulang', 'sesuai', 'sesuai', 0),
(358, 'Wednesday, 07 July 2021', 2, 124, '2021-07-07 00:50:55', '2021-07-07 09:57:49', 7, NULL, '07:50:55', NULL, NULL, NULL, '109.68921608', '-6.88861259', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(359, 'Wednesday, 07 July 2021', 2, 70, '2021-07-07 00:51:27', '2021-07-07 10:07:35', 7, NULL, '07:51:27', NULL, NULL, NULL, '110.767385', '-7.5572583333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(360, 'Wednesday, 07 July 2021', 2, 75, '2021-07-07 00:55:01', '2021-07-07 10:07:41', 7, NULL, '07:55:01', NULL, NULL, NULL, '110.76738333333', '-7.55737', NULL, NULL, 'sesuai', 'sesuai', 0),
(361, 'Wednesday, 07 July 2021', 2, 119, '2021-07-07 00:55:25', '2021-07-07 10:00:19', 7, NULL, '07:55:25', NULL, NULL, NULL, '109.12286792882', '-6.9847812317312', NULL, NULL, 'sesuai', 'sesuai', 0),
(362, 'Wednesday, 07 July 2021', 2, 67, '2021-07-07 00:56:53', '2021-07-07 10:06:28', 7, NULL, '07:56:53', NULL, NULL, NULL, '110.74013166667', '-7.5972383333333', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(363, 'Wednesday, 07 July 2021', 2, 66, '2021-07-07 01:00:05', '2021-07-07 10:21:26', 7, NULL, '08:00:05', NULL, 1, NULL, '110.74773416', '-7.57586028', NULL, NULL, 'sesuai', 'sesuai', 0),
(364, 'Wednesday, 07 July 2021', 2, 110, '2021-07-07 01:00:26', '2021-07-07 10:07:28', 7, NULL, '08:00:26', NULL, 1, NULL, '110.74028833333', '-7.5972983333333', 'Clock in', 'Clock out', 'sesuai', 'sesuai', 0),
(365, 'Wednesday, 07 July 2021', 1, 117, '2021-07-07 01:03:07', NULL, 7, NULL, '08:03:07', NULL, 1, NULL, '110.74013933', '-7.59754542', 'day 4', NULL, 'sesuai', NULL, 0),
(366, 'Wednesday, 07 July 2021', 1, 65, '2021-07-07 01:43:37', NULL, 7, NULL, '08:43:37', NULL, 1, NULL, '105.29905200005', '-5.4059761762619', 'Masuk', NULL, 'sesuai', NULL, 0),
(367, 'Wednesday, 07 July 2021', 2, 126, '2021-07-07 02:01:06', '2021-07-07 10:00:45', 7, NULL, '09:01:06', NULL, 1, NULL, '110.48611265', '-6.97849754', 'Masuk', NULL, 'sesuai', 'sesuai', 0),
(368, 'Thursday, 08 July 2021', 2, 126, '2021-07-08 00:41:18', '2021-07-08 10:00:24', 7, NULL, '07:41:18', NULL, NULL, NULL, '110.48631088', '-6.97840481', 'Masuk kerja', 'Jam pulang kerja', 'sesuai', 'sesuai', 0),
(369, 'Thursday, 08 July 2021', 2, 117, '2021-07-08 00:45:51', '2021-07-08 10:03:59', 7, NULL, '07:45:51', NULL, NULL, NULL, '110.74025394', '-7.59763764', 'day 5', '-', 'sesuai', 'sesuai', 0),
(370, 'Thursday, 08 July 2021', 2, 70, '2021-07-08 00:49:54', '2021-07-08 10:03:24', 7, NULL, '07:49:54', NULL, NULL, NULL, '110.76738666667', '-7.5573716666667', NULL, NULL, 'sesuai', 'sesuai', 0),
(371, 'Thursday, 08 July 2021', 1, 66, '2021-07-08 00:50:27', NULL, 7, NULL, '07:50:27', NULL, NULL, NULL, '110.7477007', '-7.57571072', NULL, NULL, 'sesuai', NULL, 0),
(372, 'Thursday, 08 July 2021', 2, 118, '2021-07-08 00:51:18', '2021-07-08 10:01:05', 7, NULL, '07:51:18', NULL, NULL, NULL, '110.77701866627', '-7.5877064466476', NULL, NULL, 'sesuai', 'sesuai', 0),
(373, 'Thursday, 08 July 2021', 1, 69, '2021-07-08 00:51:31', NULL, 7, NULL, '07:51:31', NULL, NULL, NULL, '105.29508', '-5.344915', 'Masuk', NULL, 'sesuai', NULL, 0),
(374, 'Thursday, 08 July 2021', 2, 119, '2021-07-08 00:55:26', '2021-07-08 10:00:17', 7, NULL, '07:55:26', NULL, NULL, NULL, '109.1230999399', '-6.9847971992567', NULL, NULL, 'sesuai', 'sesuai', 0),
(375, 'Thursday, 08 July 2021', 2, 116, '2021-07-08 00:55:44', '2021-07-08 10:00:39', 7, NULL, '07:55:44', NULL, NULL, NULL, '108.5576349', '-6.7599207', 'masuk', 'pulang', 'sesuai', 'sesuai', 0),
(376, 'Thursday, 08 July 2021', 2, 67, '2021-07-08 00:56:09', '2021-07-08 10:01:03', 7, NULL, '07:56:09', NULL, NULL, NULL, '110.74001945', '-7.5975122', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(377, 'Thursday, 08 July 2021', 2, 75, '2021-07-08 00:57:06', '2021-07-08 10:00:45', 7, NULL, '07:57:06', NULL, NULL, NULL, '110.76737666667', '-7.5573683333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(378, 'Thursday, 08 July 2021', 2, 110, '2021-07-08 00:57:32', '2021-07-08 10:04:27', 7, NULL, '07:57:32', NULL, NULL, NULL, '110.74011599', '-7.59744724', 'Clock in', 'Clock out', 'sesuai', 'sesuai', 0),
(379, 'Thursday, 08 July 2021', 2, 124, '2021-07-08 00:59:05', '2021-07-08 10:02:50', 7, NULL, '07:59:05', NULL, NULL, NULL, '109.6895064', '-6.88839347', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(380, 'Friday, 09 July 2021', 1, 65, '2021-07-09 00:04:31', NULL, 7, NULL, '07:04:31', NULL, NULL, NULL, '105.2983027', '-5.406767', 'Masuk', NULL, 'sesuai', NULL, 0),
(381, 'Friday, 09 July 2021', 2, 67, '2021-07-09 00:50:13', '2021-07-09 10:04:45', 7, NULL, '07:50:12', NULL, NULL, NULL, '110.74008002', '-7.59769607', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(382, 'Friday, 09 July 2021', 2, 116, '2021-07-09 00:50:15', '2021-07-09 10:00:54', 7, NULL, '07:50:15', NULL, NULL, NULL, '108.557633', '-6.7599188', 'masuk', 'pulang', 'sesuai', 'sesuai', 0),
(383, 'Friday, 09 July 2021', 2, 117, '2021-07-09 00:51:02', '2021-07-09 10:09:26', 7, NULL, '07:51:02', NULL, NULL, NULL, '110.7401677', '-7.59736017', 'day 6', '-', 'sesuai', 'sesuai', 0),
(384, 'Friday, 09 July 2021', 2, 70, '2021-07-09 00:52:01', '2021-07-09 10:01:51', 7, NULL, '07:52:01', NULL, NULL, NULL, '110.76728833333', '-7.55734', NULL, NULL, 'sesuai', 'sesuai', 0),
(385, 'Friday, 09 July 2021', 2, 75, '2021-07-09 00:52:14', '2021-07-09 10:01:10', 7, NULL, '07:52:14', NULL, NULL, NULL, '110.76737666667', '-7.5573683333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(386, 'Friday, 09 July 2021', 2, 124, '2021-07-09 00:56:02', '2021-07-09 09:57:16', 7, NULL, '07:56:02', NULL, NULL, NULL, '109.68947052', '-6.88843656', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(387, 'Friday, 09 July 2021', 2, 110, '2021-07-09 00:56:44', '2021-07-09 10:15:16', 7, NULL, '07:56:44', NULL, NULL, NULL, '110.74014471', '-7.59730211', 'Clock In', NULL, 'sesuai', 'sesuai', 0),
(388, 'Friday, 09 July 2021', 2, 118, '2021-07-09 00:57:45', '2021-07-09 05:44:36', 7, NULL, '07:57:45', NULL, NULL, NULL, '110.77706158161', '-7.5875079631805', NULL, 'kantor siwal mau dipake isoman', 'sesuai', 'sesuai', 0),
(389, 'Friday, 09 July 2021', 1, 119, '2021-07-09 01:00:20', NULL, 7, NULL, '08:00:20', NULL, 1, NULL, '109.12280171178', '-6.9847625400871', NULL, NULL, 'sesuai', NULL, 0),
(390, 'Friday, 09 July 2021', 1, 69, '2021-07-09 01:32:15', NULL, 7, NULL, '08:32:15', NULL, 1, NULL, '105.295025', '-5.3451283333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(391, 'Friday, 09 July 2021', 2, 126, '2021-07-09 02:19:20', '2021-07-09 10:00:30', 7, NULL, '09:19:20', NULL, 1, NULL, '110.48622132', '-6.97843849', 'Absen masuk karna habis swab', NULL, 'sesuai', 'sesuai', 0),
(392, 'Thursday, 01 July 2021', 1, 132, '2021-07-09 07:08:38', '2021-07-09 07:08:38', 7, NULL, '14:08:38', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(393, 'Saturday, 10 July 2021', 2, 118, '2021-07-10 00:01:04', '2021-07-10 06:00:35', 7, NULL, '07:01:04', NULL, NULL, NULL, '110.74013292789', '-7.5974804162979', NULL, NULL, 'sesuai', 'sesuai', 0),
(394, 'Saturday, 10 July 2021', 2, 75, '2021-07-10 00:51:04', '2021-07-10 07:01:38', 7, NULL, '07:51:03', NULL, NULL, NULL, '110.76738833333', '-7.557375', NULL, NULL, 'sesuai', 'sesuai', 0),
(395, 'Saturday, 10 July 2021', 2, 70, '2021-07-10 00:51:11', '2021-07-10 07:02:36', 7, NULL, '07:51:11', NULL, NULL, NULL, '110.76737333333', '-7.5574516666667', NULL, NULL, 'sesuai', 'sesuai', 0);
INSERT INTO `kerja` (`id`, `date`, `status`, `user_id`, `created_at`, `updated_at`, `bulan`, `lembur`, `absen`, `lembur_at`, `absen_telat`, `image`, `longitude`, `langitude`, `note`, `note2`, `note_radius_masuk`, `note_radius_keluar`, `cuti`) VALUES
(396, 'Saturday, 10 July 2021', 2, 126, '2021-07-10 00:51:18', '2021-07-10 07:00:39', 7, NULL, '07:51:18', NULL, NULL, NULL, '110.48627234', '-6.97844876', 'Masuk kerja', 'Pulang', 'sesuai', 'sesuai', 0),
(397, 'Saturday, 10 July 2021', 2, 117, '2021-07-10 00:52:59', '2021-07-10 07:07:33', 7, NULL, '07:52:59', NULL, NULL, NULL, '110.74017275', '-7.59720193', 'day 7', '-', 'sesuai', 'sesuai', 0),
(398, 'Saturday, 10 July 2021', 2, 116, '2021-07-10 00:55:14', '2021-07-10 07:01:43', 7, NULL, '07:55:14', NULL, NULL, NULL, '108.5576344', '-6.7599224', 'masuk', 'pulang', 'sesuai', 'sesuai', 0),
(399, 'Saturday, 10 July 2021', 2, 67, '2021-07-10 00:59:06', '2021-07-10 07:01:59', 7, NULL, '07:59:06', NULL, NULL, NULL, '110.74016175', '-7.59728426', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(400, 'Saturday, 10 July 2021', 2, 119, '2021-07-10 00:59:35', '2021-07-10 07:31:27', 7, NULL, '07:59:35', NULL, NULL, NULL, '109.12279936485', '-6.9848197884858', NULL, NULL, 'sesuai', 'sesuai', 0),
(401, 'Saturday, 10 July 2021', 2, 110, '2021-07-10 01:01:03', '2021-07-10 07:03:33', 7, NULL, '08:01:03', NULL, 1, NULL, '110.74016085', '-7.59737364', 'Mapnya lama keluar di HP saya, jadi minjam HP fakhru', 'Clock Out', 'sesuai', 'sesuai', 0),
(402, 'Saturday, 10 July 2021', 1, 66, '2021-07-10 01:02:43', NULL, 7, NULL, '08:02:43', NULL, 1, NULL, '110.74782599', '-7.57612849', NULL, NULL, 'sesuai', NULL, 0),
(403, 'Saturday, 10 July 2021', 1, 69, '2021-07-10 01:08:10', NULL, 7, NULL, '08:08:10', NULL, 1, NULL, '105.2937', '-5.34389', 'Masuk', NULL, 'sesuai', NULL, 0),
(404, 'Saturday, 10 July 2021', 2, 131, '2021-07-10 01:19:32', '2021-07-10 07:07:00', 7, NULL, '08:19:32', NULL, 1, NULL, '110.466765', '-7.7026', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(405, 'Monday, 12 July 2021', 2, 117, '2021-07-12 00:37:58', '2021-07-12 10:04:31', 7, NULL, '07:37:58', NULL, NULL, NULL, '110.74012069', '-7.59747647', 'day 8', '-', 'sesuai', 'sesuai', 0),
(406, 'Monday, 12 July 2021', 2, 70, '2021-07-12 00:44:51', '2021-07-12 10:01:02', 7, NULL, '07:44:51', NULL, NULL, NULL, '110.76737666667', '-7.55696', NULL, NULL, 'sesuai', 'sesuai', 0),
(407, 'Monday, 12 July 2021', 2, 67, '2021-07-12 00:45:57', '2021-07-12 10:02:22', 7, NULL, '07:45:57', NULL, NULL, NULL, '110.74009858', '-7.59747511', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(408, 'Monday, 12 July 2021', 2, 126, '2021-07-12 00:46:22', '2021-07-12 10:00:41', 7, NULL, '07:46:22', NULL, NULL, NULL, '110.48641513', '-6.97841901', 'Masuk kerja', NULL, 'sesuai', 'sesuai', 0),
(409, 'Monday, 12 July 2021', 2, 110, '2021-07-12 00:47:12', '2021-07-12 10:01:04', 7, NULL, '07:47:12', NULL, NULL, NULL, '110.74010558', '-7.59749474', 'Clock in', 'Keluar', 'sesuai', 'sesuai', 0),
(410, 'Monday, 12 July 2021', 2, 116, '2021-07-12 00:53:06', '2021-07-12 10:01:23', 7, NULL, '07:53:06', NULL, NULL, NULL, '108.5576336', '-6.7599213', 'masuk', 'pulang', 'sesuai', 'sesuai', 0),
(411, 'Monday, 12 July 2021', 2, 75, '2021-07-12 00:54:50', '2021-07-12 10:01:35', 7, NULL, '07:54:50', NULL, NULL, NULL, '110.767385', '-7.5573783333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(412, 'Monday, 12 July 2021', 2, 119, '2021-07-12 00:57:33', '2021-07-12 10:00:18', 7, NULL, '07:57:33', NULL, NULL, NULL, '109.12278704345', '-6.9848109874874', NULL, NULL, 'sesuai', 'sesuai', 0),
(413, 'Monday, 12 July 2021', 1, 118, '2021-07-12 01:00:38', NULL, 7, NULL, '08:00:38', NULL, 1, NULL, '110.73996126652', '-7.5976145267487', NULL, NULL, 'sesuai', NULL, 0),
(414, 'Monday, 12 July 2021', 2, 66, '2021-07-12 01:07:12', '2021-07-12 10:51:59', 7, NULL, '08:07:12', NULL, 1, NULL, '110.74768038', '-7.57573044', NULL, NULL, 'sesuai', 'sesuai', 0),
(415, 'Monday, 12 July 2021', 1, 69, '2021-07-12 01:52:41', NULL, 7, NULL, '08:52:41', NULL, 1, NULL, '105.29503666667', '-5.344955', 'Masuk', NULL, 'sesuai', NULL, 0),
(416, 'Monday, 12 July 2021', 2, 131, '2021-07-12 03:37:59', '2021-07-12 10:01:57', 7, NULL, '10:37:58', NULL, 1, NULL, '110.46648166667', '-7.7022966666667', NULL, 'Pulang', 'sesuai', 'sesuai', 0),
(417, 'Tuesday, 13 July 2021', 1, 116, '2021-07-13 00:07:09', NULL, 7, NULL, '07:07:09', NULL, NULL, NULL, '108.55769715', '-6.76002295', 'masuk', NULL, 'sesuai', NULL, 0),
(418, 'Tuesday, 13 July 2021', 2, 126, '2021-07-13 00:44:26', '2021-07-13 10:00:45', 7, NULL, '07:44:26', NULL, NULL, NULL, '110.4862625', '-6.97835846', NULL, NULL, 'sesuai', 'sesuai', 0),
(419, 'Tuesday, 13 July 2021', 2, 118, '2021-07-13 00:46:55', '2021-07-13 10:00:21', 7, NULL, '07:46:55', NULL, NULL, NULL, '110.74013801', '-7.59719134', NULL, NULL, 'sesuai', 'sesuai', 0),
(420, 'Tuesday, 13 July 2021', 2, 117, '2021-07-13 00:48:42', '2021-07-13 03:52:43', 7, NULL, '07:48:42', NULL, NULL, NULL, '110.7400974', '-7.597477', 'day 9', '-', 'sesuai', 'sesuai', 0),
(421, 'Tuesday, 13 July 2021', 2, 67, '2021-07-13 00:49:03', '2021-07-13 10:01:29', 7, NULL, '07:49:03', NULL, NULL, NULL, '110.74022519', '-7.5975203', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(422, 'Tuesday, 13 July 2021', 2, 110, '2021-07-13 00:50:43', '2021-07-13 10:02:30', 7, NULL, '07:50:43', NULL, NULL, NULL, '110.74023749', '-7.59756184', 'Clock in', 'Clock out', 'sesuai', 'sesuai', 0),
(423, 'Tuesday, 13 July 2021', 2, 70, '2021-07-13 00:54:20', '2021-07-13 10:00:53', 7, NULL, '07:54:20', NULL, NULL, NULL, '110.76747333333', '-7.5575416666667', NULL, NULL, 'sesuai', 'sesuai', 0),
(424, 'Tuesday, 13 July 2021', 2, 75, '2021-07-13 00:54:32', '2021-07-13 10:00:31', 7, NULL, '07:54:32', NULL, NULL, NULL, '110.76737166667', '-7.5573683333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(425, 'Tuesday, 13 July 2021', 2, 119, '2021-07-13 00:57:41', '2021-07-13 10:00:27', 7, NULL, '07:57:41', NULL, NULL, NULL, '109.12275779061', '-6.9847904937342', NULL, NULL, 'sesuai', 'sesuai', 0),
(426, 'Tuesday, 13 July 2021', 1, 69, '2021-07-13 01:01:43', NULL, 7, NULL, '08:01:43', NULL, 1, NULL, '105.29483', '-5.3449716666667', 'Masuk', NULL, 'sesuai', NULL, 0),
(427, 'Tuesday, 13 July 2021', 2, 66, '2021-07-13 01:01:47', '2021-07-13 10:33:23', 7, NULL, '08:01:47', NULL, 1, NULL, '110.74775916', '-7.57565017', NULL, NULL, 'sesuai', 'sesuai', 0),
(428, 'Tuesday, 13 July 2021', 2, 131, '2021-07-13 01:08:49', '2021-07-13 10:01:07', 7, NULL, '08:08:49', NULL, 1, NULL, '110.46636833333', '-7.70239', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(429, 'Wednesday, 14 July 2021', 2, 67, '2021-07-14 00:39:12', '2021-07-14 10:00:08', 7, NULL, '07:39:12', NULL, NULL, NULL, '110.74017996', '-7.59740278', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(430, 'Wednesday, 14 July 2021', 2, 110, '2021-07-14 00:40:12', '2021-07-14 09:57:45', 7, NULL, '07:40:12', NULL, NULL, NULL, '110.7401178', '-7.59745294', 'Clock In', 'Clock Out', 'sesuai', 'sesuai', 0),
(431, 'Wednesday, 14 July 2021', 2, 118, '2021-07-14 00:40:15', '2021-07-14 06:00:19', 7, NULL, '07:40:15', NULL, NULL, NULL, '110.74009537697', '-7.5975394248962', NULL, NULL, 'sesuai', 'sesuai', 0),
(432, 'Wednesday, 14 July 2021', 2, 70, '2021-07-14 00:45:40', '2021-07-14 10:01:20', 7, NULL, '07:45:40', NULL, NULL, NULL, '110.76724833333', '-7.5575216666667', NULL, NULL, 'sesuai', 'sesuai', 0),
(433, 'Wednesday, 14 July 2021', 2, 126, '2021-07-14 00:46:45', '2021-07-14 10:00:16', 7, NULL, '07:46:45', NULL, NULL, NULL, '110.48606186', '-6.97851338', NULL, NULL, 'sesuai', 'sesuai', 0),
(434, 'Wednesday, 14 July 2021', 2, 75, '2021-07-14 00:55:02', '2021-07-14 10:02:15', 7, NULL, '07:55:02', NULL, NULL, NULL, '110.76738355', '-7.55736251', NULL, NULL, 'sesuai', 'sesuai', 0),
(435, 'Wednesday, 14 July 2021', 2, 119, '2021-07-14 00:56:07', '2021-07-14 10:01:01', 7, NULL, '07:56:07', NULL, NULL, NULL, '109.12308300845', '-6.984753110446', NULL, NULL, 'sesuai', 'sesuai', 0),
(436, 'Wednesday, 14 July 2021', 1, 69, '2021-07-14 00:56:45', NULL, 7, NULL, '07:56:45', NULL, NULL, NULL, '105.29504333333', '-5.3451233333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(437, 'Wednesday, 14 July 2021', 2, 116, '2021-07-14 01:00:38', '2021-07-14 10:01:14', 7, NULL, '08:00:38', NULL, 1, NULL, '108.557714', '-6.7597006', 'masuk', 'pulang', 'sesuai', 'sesuai', 0),
(438, 'Wednesday, 14 July 2021', 1, 66, '2021-07-14 01:04:51', NULL, 7, NULL, '08:04:51', NULL, 1, NULL, '110.74759489', '-7.5757384', NULL, NULL, 'sesuai', NULL, 0),
(439, 'Wednesday, 14 July 2021', 2, 131, '2021-07-14 01:11:13', '2021-07-14 10:02:24', 7, NULL, '08:11:13', NULL, 1, NULL, '110.46653833333', '-7.7023366666667', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(440, 'Thursday, 15 July 2021', 2, 131, '2021-07-14 23:31:36', '2021-07-15 10:01:13', 7, NULL, '06:31:36', NULL, NULL, NULL, '110.46650833333', '-7.7023283333333', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(441, 'Thursday, 15 July 2021', 2, 67, '2021-07-15 00:45:06', '2021-07-15 10:05:47', 7, NULL, '07:45:06', NULL, NULL, NULL, '110.74006345', '-7.59753739', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(442, 'Thursday, 15 July 2021', 2, 110, '2021-07-15 00:46:19', '2021-07-15 10:06:44', 7, NULL, '07:46:19', NULL, NULL, NULL, '110.74010495', '-7.5975171', 'Clock in', 'Clock out', 'sesuai', 'sesuai', 0),
(443, 'Thursday, 15 July 2021', 2, 117, '2021-07-15 00:48:28', '2021-07-15 10:08:22', 7, NULL, '07:48:28', NULL, NULL, NULL, '110.74079695', '-7.59815208', 'day 10', '-', 'sesuai', 'sesuai', 0),
(444, 'Thursday, 15 July 2021', 2, 75, '2021-07-15 00:48:30', '2021-07-15 10:00:40', 7, NULL, '07:48:30', NULL, NULL, NULL, '110.76738666667', '-7.557375', NULL, NULL, 'sesuai', 'sesuai', 0),
(445, 'Thursday, 15 July 2021', 1, 69, '2021-07-15 00:51:29', NULL, 7, NULL, '07:51:29', NULL, NULL, NULL, '105.2949', '-5.3451533333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(446, 'Thursday, 15 July 2021', 2, 70, '2021-07-15 00:52:37', '2021-07-15 10:02:05', 7, NULL, '07:52:37', NULL, NULL, NULL, '110.76768166667', '-7.5574033333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(447, 'Thursday, 15 July 2021', 2, 126, '2021-07-15 00:54:18', '2021-07-15 10:00:55', 7, NULL, '07:54:18', NULL, NULL, NULL, '110.48617574', '-6.97842924', NULL, NULL, 'sesuai', 'sesuai', 0),
(448, 'Thursday, 15 July 2021', 2, 119, '2021-07-15 00:54:59', '2021-07-15 10:00:20', 7, NULL, '07:54:59', NULL, NULL, NULL, '109.12292257883', '-6.9846983347088', NULL, NULL, 'sesuai', 'sesuai', 0),
(449, 'Thursday, 15 July 2021', 2, 66, '2021-07-15 00:58:32', '2021-07-15 11:00:02', 7, NULL, '07:58:32', NULL, NULL, NULL, '110.74774332', '-7.57573995', NULL, NULL, 'sesuai', 'sesuai', 0),
(450, 'Thursday, 15 July 2021', 2, 116, '2021-07-15 00:58:46', '2021-07-15 10:01:11', 7, NULL, '07:58:46', NULL, NULL, NULL, '108.55782011', '-6.75987997', 'masuk', 'pulang', 'sesuai', 'sesuai', 0),
(451, 'Friday, 16 July 2021', 2, 117, '2021-07-16 00:23:52', '2021-07-16 10:09:51', 7, NULL, '07:23:52', NULL, NULL, NULL, '110.74022503', '-7.5974386', 'day 11', '-', 'sesuai', 'sesuai', 0),
(452, 'Friday, 16 July 2021', 2, 131, '2021-07-16 00:30:15', '2021-07-16 10:00:48', 7, NULL, '07:30:15', NULL, NULL, NULL, '110.46654833333', '-7.7024', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(453, 'Friday, 16 July 2021', 2, 67, '2021-07-16 00:45:06', '2021-07-16 10:00:54', 7, NULL, '07:45:06', NULL, NULL, NULL, '110.74018707', '-7.59738963', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(454, 'Friday, 16 July 2021', 2, 110, '2021-07-16 00:46:49', '2021-07-16 10:02:01', 7, NULL, '07:46:49', NULL, NULL, NULL, '110.74023403', '-7.5973747', 'Clock in', 'Clock out', 'sesuai', 'sesuai', 0),
(455, 'Friday, 16 July 2021', 1, 69, '2021-07-16 00:49:36', NULL, 7, NULL, '07:49:36', NULL, NULL, NULL, '105.29489166667', '-5.3451633333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(456, 'Friday, 16 July 2021', 1, 118, '2021-07-16 00:50:28', NULL, 7, NULL, '07:50:28', NULL, NULL, NULL, '110.74018120766', '-7.5973838567734', NULL, NULL, 'sesuai', NULL, 0),
(457, 'Friday, 16 July 2021', 2, 70, '2021-07-16 00:53:33', '2021-07-16 10:01:34', 7, NULL, '07:53:33', NULL, NULL, NULL, '110.76736', '-7.557385', NULL, NULL, 'sesuai', 'sesuai', 0),
(458, 'Friday, 16 July 2021', 2, 75, '2021-07-16 00:54:40', '2021-07-16 10:01:39', 7, NULL, '07:54:40', NULL, NULL, NULL, '110.76729919', '-7.55734474', NULL, NULL, 'sesuai', 'sesuai', 0),
(459, 'Friday, 16 July 2021', 2, 119, '2021-07-16 00:55:54', '2021-07-16 10:00:19', 7, NULL, '07:55:54', NULL, NULL, NULL, '109.12280439399', '-6.9847218878567', NULL, NULL, 'sesuai', 'sesuai', 0),
(460, 'Friday, 16 July 2021', 2, 116, '2021-07-16 00:55:57', '2021-07-16 10:00:41', 7, NULL, '07:55:57', NULL, NULL, NULL, '108.55783821', '-6.75968167', 'masuk', 'pulang', 'sesuai', 'sesuai', 0),
(461, 'Friday, 16 July 2021', 2, 126, '2021-07-16 00:56:36', '2021-07-16 10:00:26', 7, NULL, '07:56:36', NULL, NULL, NULL, '110.48649482', '-6.97850256', NULL, NULL, 'sesuai', 'sesuai', 0),
(462, 'Friday, 16 July 2021', 2, 66, '2021-07-16 01:02:38', '2021-07-16 10:45:22', 7, NULL, '08:02:38', NULL, 1, NULL, '110.74757399', '-7.57575585', NULL, NULL, 'sesuai', 'sesuai', 0),
(463, 'Thursday, 01 July 2021', 1, 140, '2021-07-16 04:54:07', '2021-07-16 04:54:07', 7, NULL, '11:54:07', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(464, 'Saturday, 17 July 2021', 1, 69, '2021-07-16 23:59:24', NULL, 7, NULL, '06:59:24', NULL, NULL, NULL, '105.29495333333', '-5.34505', 'Masuk', NULL, 'sesuai', NULL, 0),
(465, 'Saturday, 17 July 2021', 2, 131, '2021-07-17 00:26:01', '2021-07-17 07:02:31', 7, NULL, '07:26:01', NULL, NULL, NULL, '110.466475', '-7.7022983333333', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(466, 'Saturday, 17 July 2021', 2, 126, '2021-07-17 00:38:55', '2021-07-17 07:00:19', 7, NULL, '07:38:54', NULL, NULL, NULL, '110.4863277', '-6.97846385', NULL, NULL, 'sesuai', 'sesuai', 0),
(467, 'Saturday, 17 July 2021', 2, 67, '2021-07-17 00:43:16', '2021-07-17 07:09:28', 7, NULL, '07:43:16', NULL, NULL, NULL, '110.74005878', '-7.5973495', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(468, 'Saturday, 17 July 2021', 2, 110, '2021-07-17 00:43:57', '2021-07-17 07:10:10', 7, NULL, '07:43:57', NULL, NULL, NULL, '110.74011924', '-7.59746955', 'Clock in', 'Clock out', 'sesuai', 'sesuai', 0),
(469, 'Saturday, 17 July 2021', 2, 117, '2021-07-17 00:44:13', '2021-07-17 07:01:05', 7, NULL, '07:44:13', NULL, NULL, NULL, '110.74004981', '-7.59759389', 'day 12', '-', 'sesuai', 'sesuai', 0),
(470, 'Saturday, 17 July 2021', 2, 75, '2021-07-17 00:50:18', '2021-07-17 07:00:52', 7, NULL, '07:50:18', NULL, NULL, NULL, '110.76738666667', '-7.5573716666667', NULL, NULL, 'sesuai', 'sesuai', 0),
(471, 'Saturday, 17 July 2021', 2, 70, '2021-07-17 00:51:16', '2021-07-17 07:01:04', 7, NULL, '07:51:16', NULL, NULL, NULL, '110.76748333333', '-7.5572766666667', NULL, NULL, 'sesuai', 'sesuai', 0),
(472, 'Saturday, 17 July 2021', 2, 116, '2021-07-17 00:52:49', '2021-07-17 07:01:50', 7, NULL, '07:52:49', NULL, NULL, NULL, '108.55773739', '-6.76000102', 'masuk', 'pulang', 'sesuai', 'sesuai', 0),
(473, 'Saturday, 17 July 2021', 2, 119, '2021-07-17 00:55:09', '2021-07-17 07:00:15', 7, NULL, '07:55:09', NULL, NULL, NULL, '109.12272870541', '-6.9847710896283', NULL, NULL, 'sesuai', 'sesuai', 0),
(474, 'Saturday, 17 July 2021', 1, 66, '2021-07-17 01:01:03', NULL, 7, NULL, '08:01:03', NULL, 1, NULL, '110.74751879', '-7.575663', NULL, NULL, 'sesuai', NULL, 0),
(475, 'Monday, 19 July 2021', 1, 69, '2021-07-19 00:18:39', NULL, 7, NULL, '07:18:39', NULL, NULL, NULL, '105.29502166667', '-5.3450733333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(476, 'Monday, 19 July 2021', 2, 67, '2021-07-19 00:38:38', '2021-07-19 10:00:39', 7, NULL, '07:38:38', NULL, NULL, NULL, '110.74021245', '-7.59747304', 'Masuk', 'Keluatlr', 'sesuai', 'sesuai', 0),
(477, 'Monday, 19 July 2021', 2, 110, '2021-07-19 00:39:45', '2021-07-19 10:01:32', 7, NULL, '07:39:45', NULL, NULL, NULL, '110.74002487', '-7.59720867', 'Clock in', 'Clock out', 'sesuai', 'sesuai', 0),
(478, 'Monday, 19 July 2021', 2, 131, '2021-07-19 00:40:52', '2021-07-19 10:00:24', 7, NULL, '07:40:51', NULL, NULL, NULL, '110.46644833333', '-7.7023066666667', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(479, 'Monday, 19 July 2021', 2, 116, '2021-07-19 00:52:45', '2021-07-19 10:01:11', 7, NULL, '07:52:45', NULL, NULL, NULL, '108.55784681', '-6.75978976', 'masuk', 'pulang', 'sesuai', 'sesuai', 0),
(480, 'Monday, 19 July 2021', 2, 126, '2021-07-19 00:53:05', '2021-07-19 10:00:16', 7, NULL, '07:53:05', NULL, NULL, NULL, '110.48621537', '-6.97841856', NULL, NULL, 'sesuai', 'sesuai', 0),
(481, 'Monday, 19 July 2021', 2, 70, '2021-07-19 00:54:40', '2021-07-19 10:01:20', 7, NULL, '07:54:40', NULL, NULL, NULL, '110.76739166667', '-7.5573233333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(482, 'Monday, 19 July 2021', 2, 119, '2021-07-19 00:55:41', '2021-07-19 10:00:11', 7, NULL, '07:55:41', NULL, NULL, NULL, '109.12278888747', '-6.9847813155502', NULL, NULL, 'sesuai', 'sesuai', 0),
(483, 'Monday, 19 July 2021', 2, 75, '2021-07-19 00:58:53', '2021-07-19 10:01:50', 7, NULL, '07:58:53', NULL, NULL, NULL, '110.76751752', '-7.55744437', NULL, NULL, 'sesuai', 'sesuai', 0),
(484, 'Monday, 19 July 2021', 1, 66, '2021-07-19 01:03:57', NULL, 7, NULL, '08:03:57', NULL, 1, NULL, '110.7477628', '-7.5757244', NULL, NULL, 'sesuai', NULL, 0),
(485, 'Monday, 19 July 2021', 2, 74, '2021-07-19 09:50:46', '2021-07-19 10:04:25', 7, NULL, '16:50:46', NULL, 1, NULL, '110.77708333333', '-7.5876566666667', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(486, 'Wednesday, 21 July 2021', 2, 118, '2021-07-21 00:47:04', '2021-07-21 10:02:33', 7, NULL, '07:47:04', NULL, NULL, NULL, '110.77701330185', '-7.5876259803772', NULL, NULL, 'sesuai', 'sesuai', 0),
(487, 'Wednesday, 21 July 2021', 2, 119, '2021-07-21 00:51:20', '2021-07-21 10:00:22', 7, NULL, '07:51:20', NULL, NULL, NULL, '109.12275443785', '-6.9847443094477', NULL, NULL, 'sesuai', 'sesuai', 0),
(488, 'Wednesday, 21 July 2021', 2, 75, '2021-07-21 00:51:24', '2021-07-21 10:00:52', 7, NULL, '07:51:24', NULL, NULL, NULL, '110.76738666667', '-7.5573766666667', NULL, NULL, 'sesuai', 'sesuai', 0),
(489, 'Wednesday, 21 July 2021', 2, 70, '2021-07-21 00:51:41', '2021-07-21 10:01:00', 7, NULL, '07:51:41', NULL, NULL, NULL, '110.76767833333', '-7.55747', NULL, NULL, 'sesuai', 'sesuai', 0),
(490, 'Wednesday, 21 July 2021', 2, 131, '2021-07-21 00:51:51', '2021-07-21 10:01:56', 7, NULL, '07:51:51', NULL, NULL, NULL, '110.46654', '-7.7023716666667', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(491, 'Wednesday, 21 July 2021', 2, 126, '2021-07-21 00:52:46', '2021-07-21 10:00:21', 7, NULL, '07:52:46', NULL, NULL, NULL, '110.48635902', '-6.97839414', NULL, NULL, 'sesuai', 'sesuai', 0),
(492, 'Wednesday, 21 July 2021', 2, 117, '2021-07-21 00:55:57', '2021-07-21 10:13:58', 7, NULL, '07:55:57', NULL, NULL, NULL, '110.74011364', '-7.59758745', 'day 13', '-', 'sesuai', 'sesuai', 0),
(493, 'Wednesday, 21 July 2021', 2, 116, '2021-07-21 00:56:47', '2021-07-21 10:01:52', 7, NULL, '07:56:47', NULL, NULL, NULL, '108.55743342', '-6.76013634', 'masuk', 'pulang', 'sesuai', 'sesuai', 0),
(494, 'Wednesday, 21 July 2021', 2, 110, '2021-07-21 01:01:06', '2021-07-21 10:14:36', 7, NULL, '08:01:06', NULL, 1, NULL, '110.73987166667', '-7.5974816666667', 'Clock in', 'Clock Out', 'sesuai', 'sesuai', 0),
(495, 'Wednesday, 21 July 2021', 2, 67, '2021-07-21 01:02:05', '2021-07-21 10:14:12', 7, NULL, '08:02:05', NULL, 1, NULL, '110.7400881', '-7.59746113', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(496, 'Wednesday, 21 July 2021', 1, 66, '2021-07-21 01:02:27', NULL, 7, NULL, '08:02:27', NULL, 1, NULL, '110.74768661', '-7.57572021', NULL, NULL, 'sesuai', NULL, 0),
(497, 'Wednesday, 21 July 2021', 1, 69, '2021-07-21 01:10:02', NULL, 7, NULL, '08:10:02', NULL, 1, NULL, '105.29496', '-5.3450933333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(498, 'Wednesday, 21 July 2021', 2, 74, '2021-07-21 09:56:24', '2021-07-21 09:57:05', 7, NULL, '16:56:24', NULL, 1, NULL, '110.77697166667', '-7.587625', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(499, 'Thursday, 22 July 2021', 1, 131, '2021-07-22 00:32:23', NULL, 7, NULL, '07:32:23', NULL, NULL, NULL, '110.46642666667', '-7.7023866666667', 'Masuk', NULL, 'sesuai', NULL, 0),
(500, 'Thursday, 22 July 2021', 2, 110, '2021-07-22 00:43:12', '2021-07-22 10:11:22', 7, NULL, '07:43:12', NULL, NULL, NULL, '110.74009666667', '-7.5976716666667', 'Clock in', 'Clock Out', 'sesuai', 'sesuai', 0),
(501, 'Thursday, 22 July 2021', 2, 67, '2021-07-22 00:44:35', '2021-07-22 10:12:01', 7, NULL, '07:44:35', NULL, NULL, NULL, '110.74011966', '-7.59758585', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(502, 'Thursday, 22 July 2021', 2, 116, '2021-07-22 00:49:48', '2021-07-22 10:01:20', 7, NULL, '07:49:48', NULL, NULL, NULL, '108.55769956', '-6.7597868', 'masuk', 'pulang', 'sesuai', 'sesuai', 0),
(503, 'Thursday, 22 July 2021', 2, 126, '2021-07-22 00:49:54', '2021-07-22 10:00:39', 7, NULL, '07:49:54', NULL, NULL, NULL, '110.48633661', '-6.97841273', NULL, NULL, 'sesuai', 'sesuai', 0),
(504, 'Thursday, 22 July 2021', 2, 75, '2021-07-22 00:50:48', '2021-07-22 10:01:33', 7, NULL, '07:50:48', NULL, NULL, NULL, '110.76740461', '-7.55730187', NULL, NULL, 'sesuai', 'sesuai', 0),
(505, 'Thursday, 22 July 2021', 1, 118, '2021-07-22 00:51:23', NULL, 7, NULL, '07:51:23', NULL, NULL, NULL, '110.77704012394', '-7.5872987508774', NULL, NULL, 'sesuai', NULL, 0),
(506, 'Thursday, 22 July 2021', 2, 119, '2021-07-22 00:51:46', '2021-07-22 10:00:13', 7, NULL, '07:51:46', NULL, NULL, NULL, '109.12283322774', '-6.9847786333412', NULL, NULL, 'sesuai', 'sesuai', 0),
(507, 'Thursday, 22 July 2021', 2, 117, '2021-07-22 00:53:03', '2021-07-22 10:04:40', 7, NULL, '07:53:03', NULL, NULL, NULL, '110.74014306', '-7.59752236', 'day 14', '-', 'sesuai', 'sesuai', 0),
(508, 'Thursday, 22 July 2021', 2, 70, '2021-07-22 00:56:01', '2021-07-22 10:03:27', 7, NULL, '07:56:01', NULL, NULL, NULL, '110.76732333333', '-7.557325', NULL, NULL, 'sesuai', 'sesuai', 0),
(509, 'Thursday, 22 July 2021', 2, 124, '2021-07-22 00:58:51', '2021-07-22 10:01:06', 7, NULL, '07:58:51', NULL, NULL, NULL, '109.68943043', '-6.88842227', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(510, 'Friday, 23 July 2021', 2, 131, '2021-07-23 00:21:24', '2021-07-23 10:01:53', 7, NULL, '07:21:24', NULL, NULL, NULL, '110.466475', '-7.7022166666667', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(511, 'Friday, 23 July 2021', 2, 117, '2021-07-23 00:42:29', '2021-07-23 10:04:03', 7, NULL, '07:42:29', NULL, NULL, NULL, '110.73997512', '-7.59808133', 'day 15', '-', 'sesuai', 'sesuai', 0),
(512, 'Friday, 23 July 2021', 2, 75, '2021-07-23 00:46:36', '2021-07-23 10:00:42', 7, NULL, '07:46:36', NULL, NULL, NULL, '110.76737833333', '-7.55737', NULL, NULL, 'sesuai', 'sesuai', 0),
(513, 'Friday, 23 July 2021', 2, 119, '2021-07-23 00:51:21', '2021-07-23 10:00:12', 7, NULL, '07:51:21', NULL, NULL, NULL, '109.12285443395', '-6.9847910804674', NULL, NULL, 'sesuai', 'sesuai', 0),
(514, 'Friday, 23 July 2021', 2, 118, '2021-07-23 00:52:43', '2021-07-23 10:00:38', 7, NULL, '07:52:43', NULL, NULL, NULL, '110.77706694603', '-7.5876206159592', NULL, NULL, 'sesuai', 'sesuai', 0),
(515, 'Friday, 23 July 2021', 2, 116, '2021-07-23 00:54:03', '2021-07-23 10:01:08', 7, NULL, '07:54:03', NULL, NULL, NULL, '108.55779546', '-6.75990661', 'masuk', 'pulang', 'sesuai', 'sesuai', 0),
(516, 'Friday, 23 July 2021', 1, 69, '2021-07-23 00:54:37', NULL, 7, NULL, '07:54:37', NULL, NULL, NULL, '105.29490666667', '-5.345095', 'Masuk', NULL, 'sesuai', NULL, 0),
(517, 'Friday, 23 July 2021', 2, 67, '2021-07-23 00:56:36', '2021-07-23 10:09:08', 7, NULL, '07:56:36', NULL, NULL, NULL, '110.74010627', '-7.59749847', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(518, 'Friday, 23 July 2021', 2, 124, '2021-07-23 00:56:36', '2021-07-23 10:00:08', 7, NULL, '07:56:36', NULL, NULL, NULL, '109.68935504', '-6.88830409', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(519, 'Friday, 23 July 2021', 2, 110, '2021-07-23 00:57:04', '2021-07-23 10:11:37', 7, NULL, '07:57:04', NULL, NULL, NULL, '110.73945666667', '-7.5972366666667', 'Clock in', 'Clock out', 'sesuai', 'sesuai', 0),
(520, 'Friday, 23 July 2021', 2, 70, '2021-07-23 00:57:18', '2021-07-23 10:03:17', 7, NULL, '07:57:18', NULL, NULL, NULL, '110.767395', '-7.5573983333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(521, 'Friday, 23 July 2021', 1, 74, '2021-07-23 01:42:36', NULL, 7, NULL, '08:42:36', NULL, 1, NULL, '110.77710666667', '-7.587765', 'Masuk', NULL, 'sesuai', NULL, 0),
(522, 'Friday, 23 July 2021', 2, 126, '2021-07-23 08:09:45', '2021-07-23 10:00:20', 7, NULL, '15:09:45', NULL, 1, NULL, '110.48636188', '-6.97837433', 'Baru bisa login absen karna dari tadi pagi eror terus', NULL, 'sesuai', 'sesuai', 0),
(523, 'Saturday, 24 July 2021', 2, 131, '2021-07-24 00:26:22', '2021-07-24 07:35:13', 7, NULL, '07:26:22', NULL, NULL, NULL, '110.46640833333', '-7.7023866666667', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(524, 'Saturday, 24 July 2021', 2, 110, '2021-07-24 00:37:01', '2021-07-24 07:02:43', 7, NULL, '07:37:01', NULL, NULL, NULL, '110.7400699', '-7.597419', 'Clock In', 'Clock Out', 'sesuai', 'sesuai', 0),
(525, 'Saturday, 24 July 2021', 2, 126, '2021-07-24 00:46:32', '2021-07-24 07:00:20', 7, NULL, '07:46:32', NULL, NULL, NULL, '110.48639468', '-6.97843472', NULL, NULL, 'sesuai', 'sesuai', 0),
(526, 'Saturday, 24 July 2021', 2, 75, '2021-07-24 00:49:32', '2021-07-24 07:00:30', 7, NULL, '07:49:32', NULL, NULL, NULL, '110.767375', '-7.5573683333333', NULL, NULL, 'sesuai', 'sesuai', 0),
(527, 'Saturday, 24 July 2021', 2, 117, '2021-07-24 00:51:05', '2021-07-24 07:14:09', 7, NULL, '07:51:05', NULL, NULL, NULL, '110.7401788', '-7.59748294', 'day 16', '-', 'sesuai', 'sesuai', 0),
(528, 'Saturday, 24 July 2021', 2, 119, '2021-07-24 00:51:17', '2021-07-24 07:00:18', 7, NULL, '07:51:17', NULL, NULL, NULL, '109.12283037789', '-6.9847485003993', NULL, NULL, 'sesuai', 'sesuai', 0),
(529, 'Saturday, 24 July 2021', 2, 67, '2021-07-24 00:52:20', '2021-07-24 07:05:13', 7, NULL, '07:52:20', NULL, NULL, NULL, '110.74012976', '-7.59752617', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(530, 'Saturday, 24 July 2021', 2, 116, '2021-07-24 00:53:04', '2021-07-24 07:02:19', 7, NULL, '07:53:04', NULL, NULL, NULL, '108.55730775', '-6.76003062', 'masuk', 'pulang', 'sesuai', 'sesuai', 0),
(531, 'Saturday, 24 July 2021', 2, 70, '2021-07-24 00:55:16', '2021-07-24 07:01:29', 7, NULL, '07:55:16', NULL, NULL, NULL, '110.76741', '-7.557345', NULL, NULL, 'sesuai', 'sesuai', 0),
(532, 'Saturday, 24 July 2021', 2, 118, '2021-07-24 00:56:38', '2021-07-24 07:01:03', 7, NULL, '07:56:38', NULL, NULL, NULL, '110.77717959881', '-7.5875669717789', NULL, NULL, 'sesuai', 'sesuai', 0),
(533, 'Saturday, 24 July 2021', 2, 124, '2021-07-24 00:56:38', '2021-07-24 07:01:01', 7, NULL, '07:56:38', NULL, NULL, NULL, '109.68964071', '-6.8883183', 'Masuk', 'Keluar', 'sesuai', 'sesuai', 0),
(534, 'Saturday, 24 July 2021', 2, 74, '2021-07-24 01:21:47', '2021-07-24 07:01:12', 7, NULL, '08:21:47', NULL, 1, NULL, '110.77722666667', '-7.587695', 'Masuk', 'Pulang', 'sesuai', 'sesuai', 0),
(535, 'Monday, 26 July 2021', 1, 126, '2021-07-26 00:41:37', NULL, 7, NULL, '07:41:37', NULL, NULL, NULL, '110.48638276', '-6.97841404', NULL, NULL, 'sesuai', NULL, 0),
(536, 'Monday, 26 July 2021', 1, 70, '2021-07-26 00:42:24', NULL, 7, NULL, '07:42:24', NULL, NULL, NULL, '110.76749666667', '-7.557345', NULL, NULL, 'sesuai', NULL, 0),
(537, 'Monday, 26 July 2021', 1, 131, '2021-07-26 00:45:08', NULL, 7, NULL, '07:45:08', NULL, NULL, NULL, '110.46657', '-7.7024316666667', 'Masuk', NULL, 'sesuai', NULL, 0),
(538, 'Monday, 26 July 2021', 1, 119, '2021-07-26 00:50:29', NULL, 7, NULL, '07:50:29', NULL, NULL, NULL, '109.12268478423', '-6.984725156799', NULL, NULL, 'sesuai', NULL, 0),
(539, 'Monday, 26 July 2021', 1, 67, '2021-07-26 00:50:45', NULL, 7, NULL, '07:50:45', NULL, NULL, NULL, '110.74011024', '-7.59747453', 'Masuk', NULL, 'sesuai', NULL, 0),
(540, 'Monday, 26 July 2021', 1, 116, '2021-07-26 00:50:52', NULL, 7, NULL, '07:50:52', NULL, NULL, NULL, '108.55769924', '-6.76044709', 'masuk', NULL, 'sesuai', NULL, 0),
(541, 'Monday, 26 July 2021', 1, 110, '2021-07-26 00:51:01', NULL, 7, NULL, '07:51:01', NULL, NULL, NULL, '110.74018333333', '-7.5978083333333', 'Clock In', NULL, 'sesuai', NULL, 0),
(542, 'Monday, 26 July 2021', 1, 118, '2021-07-26 00:51:12', NULL, 7, NULL, '07:51:12', NULL, NULL, NULL, '110.77655732632', '-7.5867515802383', NULL, NULL, 'sesuai', NULL, 0),
(543, 'Monday, 26 July 2021', 1, 75, '2021-07-26 00:51:40', NULL, 7, NULL, '07:51:40', NULL, NULL, NULL, '110.7679296', '-7.55751577', NULL, NULL, 'sesuai', NULL, 0),
(544, 'Monday, 26 July 2021', 1, 124, '2021-07-26 00:58:53', NULL, 7, NULL, '07:58:53', NULL, NULL, NULL, '109.68946878', '-6.88824975', 'Masuk', NULL, 'sesuai', NULL, 0),
(545, 'Monday, 26 July 2021', 1, 117, '2021-07-26 01:00:10', NULL, 7, NULL, '08:00:10', NULL, 1, NULL, '110.74006637', '-7.59744808', 'day 17', NULL, 'sesuai', NULL, 0),
(546, 'Monday, 26 July 2021', 1, 66, '2021-07-26 01:07:18', NULL, 7, NULL, '08:07:18', NULL, 1, NULL, '110.74762196', '-7.57570729', NULL, NULL, 'sesuai', NULL, 0),
(547, 'Monday, 26 July 2021', 1, 74, '2021-07-26 01:07:30', NULL, 7, NULL, '08:07:30', NULL, 1, NULL, '110.77691833333', '-7.5879833333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(548, 'Monday, 26 July 2021', 1, 144, '2021-07-26 01:40:16', '2021-07-26 01:40:16', 7, NULL, '08:40:16', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(549, 'Monday, 26 July 2021', 1, 145, '2021-07-26 01:41:30', '2021-07-26 01:41:30', 7, NULL, '08:41:30', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(550, 'Monday, 26 July 2021', 1, 146, '2021-07-26 01:41:38', '2021-07-26 01:41:38', 7, NULL, '08:41:38', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(551, 'Monday, 26 July 2021', 1, 69, '2021-07-26 03:27:18', NULL, 7, NULL, '10:27:18', NULL, 1, NULL, '105.29448333333', '-5.3449433333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(552, 'Tuesday, 27 July 2021', 1, 131, '2021-07-27 00:15:16', NULL, 7, NULL, '07:15:15', NULL, NULL, NULL, '110.46674333333', '-7.702335', 'Masuk', NULL, 'sesuai', NULL, 0),
(553, 'Tuesday, 27 July 2021', 1, 124, '2021-07-27 00:57:27', NULL, 7, NULL, '07:57:27', NULL, NULL, NULL, '109.68939332', '-6.88851508', 'Masuk', NULL, 'sesuai', NULL, 0),
(554, 'Tuesday, 27 July 2021', 1, 67, '2021-07-27 02:24:20', NULL, 7, NULL, '09:24:20', NULL, 1, NULL, '110.74008213', '-7.5975131', 'Masuk', NULL, 'sesuai', NULL, 0),
(555, 'Tuesday, 27 July 2021', 1, 117, '2021-07-27 02:27:26', NULL, 7, NULL, '09:27:26', NULL, 1, NULL, '110.74006195', '-7.59748729', 'day 18', NULL, 'sesuai', NULL, 0),
(556, 'Tuesday, 27 July 2021', 1, 126, '2021-07-27 03:18:51', NULL, 7, NULL, '10:18:51', NULL, 1, NULL, '110.48627787', '-6.97843413', 'Baru bisa clock in tapi tadi sudah absen manual di asia one', NULL, 'sesuai', NULL, 0),
(557, 'Thursday, 01 July 2021', 1, 148, '2021-07-27 12:46:10', '2021-07-27 12:46:10', 7, NULL, '19:46:10', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(558, 'Wednesday, 28 July 2021', 1, 69, '2021-07-28 00:05:29', NULL, 7, NULL, '07:05:29', NULL, NULL, NULL, '105.294895', '-5.3450683333333', 'Masuk', NULL, 'sesuai', NULL, 0),
(559, 'Wednesday, 28 July 2021', 1, 131, '2021-07-28 00:21:18', NULL, 7, NULL, '07:21:18', NULL, NULL, NULL, '110.46643166667', '-7.7022816666667', 'Masuk', NULL, 'sesuai', NULL, 0),
(560, 'Wednesday, 28 July 2021', 1, 67, '2021-07-28 00:42:09', NULL, 7, NULL, '07:42:09', NULL, NULL, NULL, '110.74006529', '-7.59737381', 'Masuk', NULL, 'sesuai', NULL, 0),
(561, 'Wednesday, 28 July 2021', 1, 126, '2021-07-28 00:46:08', NULL, 7, NULL, '07:46:08', NULL, NULL, NULL, '110.48634983', '-6.97835649', NULL, NULL, 'sesuai', NULL, 0),
(562, 'Wednesday, 28 July 2021', 1, 70, '2021-07-28 00:46:16', NULL, 7, NULL, '07:46:16', NULL, NULL, NULL, '110.76739833333', '-7.5573566666667', NULL, NULL, 'sesuai', NULL, 0),
(563, 'Wednesday, 28 July 2021', 1, 117, '2021-07-28 00:54:23', NULL, 7, NULL, '07:54:23', NULL, NULL, NULL, '110.7400631', '-7.5974152', 'day 19', NULL, 'sesuai', NULL, 0),
(564, 'Wednesday, 28 July 2021', 1, 116, '2021-07-28 00:54:56', NULL, 7, NULL, '07:54:56', NULL, NULL, NULL, '108.55774133', '-6.76000742', 'masuk- bru bisa di akses', NULL, 'sesuai', NULL, 0),
(565, 'Wednesday, 28 July 2021', 1, 75, '2021-07-28 00:55:37', NULL, 7, NULL, '07:55:37', NULL, NULL, NULL, '110.76747961', '-7.55741298', NULL, NULL, 'sesuai', NULL, 0),
(566, 'Wednesday, 28 July 2021', 1, 66, '2021-07-28 00:59:39', NULL, 7, NULL, '07:59:39', NULL, NULL, NULL, '110.74765723', '-7.57563517', NULL, NULL, 'sesuai', NULL, 0),
(567, 'Wednesday, 28 July 2021', 1, 124, '2021-07-28 00:59:54', NULL, 7, NULL, '07:59:54', NULL, NULL, NULL, '109.68947159', '-6.88819117', 'Masuk', NULL, 'sesuai', NULL, 0),
(568, 'Wednesday, 28 July 2021', 1, 118, '2021-07-28 01:11:52', NULL, 7, NULL, '08:11:52', NULL, 1, NULL, '110.7770884037', '-7.5875616073608', NULL, NULL, 'sesuai', NULL, 0),
(569, 'Thursday, 01 July 2021', 2, 11, '2021-07-28 08:17:04', '2021-07-28 08:17:44', 7, NULL, '15:17:04', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

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
(4, '2021_01_21_154556_create_absensi_table', 1),
(5, '2021_01_24_224944_create_kerja_table', 2),
(6, '2021_01_25_200811_create_gaji_table', 3),
(7, '2021_01_25_205349_create_potongan_table', 4),
(8, '2021_04_04_200032_create_jam_kerja_table', 5),
(9, '2021_04_04_205313_create_gaji_lembur_table', 6),
(10, '2021_04_05_193801_create_gaji_cuti_table', 7),
(11, '2021_04_05_194636_create_role_pay_table', 8),
(12, '2021_04_05_194715_create_role_payment_table', 8),
(13, '2021_04_06_221449_add_google_to_users_table', 9),
(14, '2021_04_07_203232_create_perusahaan_table', 10),
(15, '2021_04_19_135656_create_setting_cuti_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('zanzahmad@gmail.com', '$2y$10$LEcwmZ4n9D2K5KKcVNyNbep0bcM3lVw564c/U9xZKtwjdd8EgCl6S', '2021-04-25 01:41:20'),
('Bambangirawansolo@gmail.com', '$2y$10$SdK9OduVC/nrQAjn7gM3tOgvvpwgnZhNnMdEp4X9GWK3JILb1VCyG', '2021-06-09 01:14:54'),
('dindaramitha@gmail.com', '$2y$10$AnlTDUTXWD7Lqmadkqg8yO8xlH.LPmxfd8DCMgd3zrAqKIsJ1j0Km', '2021-07-02 08:21:31');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_team` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id`, `id_team`, `nama_perusahaan`, `lokasi`, `alamat`, `longitude`, `latitude`, `created_at`, `updated_at`) VALUES
(1, '51ad840dd1f1be2f10c03622ea4e962fe4c9b517', 'mana aja bisa', 'surakarta selatan', 'SURAKARTA TENGAH', NULL, NULL, '2021-04-19 05:33:30', '2021-04-19 05:33:30'),
(2, '76c7347ede6629e5638a179c9312fcc274d1b60a', 'mana aja bisa', 'kintil', 'kintil panas', NULL, NULL, '2021-04-19 05:43:42', '2021-04-19 05:43:42'),
(3, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', 'Digital Absensi', 'Jawa Tengah', 'Tangerang Selatan, Indonesia Jawa Tengah', '110.90360786766', '-7.6129650353317', NULL, NULL),
(4, 'cc27542e46e8fbe812ce743020c1fb898e2fe7f0', 'Rawa Fronted', 'Tilo', 'Kotak', '-122.08400000000002', '37.421998333333335', '2021-04-20 10:13:59', '2021-04-20 10:13:59'),
(6, 'd8da7197dc20f7cee0a773055e89f86465a793b6', 'Ardhy', 'Surakarta', 'Surakarta', '110.82902464568834', '-7.526126064885443', '2021-04-22 12:21:02', '2021-04-22 12:21:02'),
(7, '6f4ff879f54f92b89f9990bcf6ac403d0efa86cc', 'Ardhy', 'Surakarta', 'Surakarta', '110.82902464568834', '-7.526126064885443', '2021-04-22 12:21:02', '2021-04-22 12:21:02'),
(8, 'ffda527a1b1728baf1d7f3958b2a4a3e94a55b5b', 'Ardhy', 'Surakarta', 'Surakarta', '110.82902464568834', '-7.526126064885443', '2021-04-22 12:21:03', '2021-04-22 12:21:03'),
(9, 'a68df49faede42bebb94ee245b8bb245ca67a2eb', 'Tes ardi', 'Karangayar', 'Kodan RT. 07 RW.05 Tohdan Colomadu', '110.8298724331', '-7.528919029429', '2021-04-22 12:22:53', '2021-04-22 12:22:53'),
(10, 'c0b763027db04b244eea3a71030cc16068c3395b', 'colour ard', 'SURAKARTA', 'Surakarta', '110.77264113352', '-7.5861266280314', '2021-04-25 16:20:35', '2021-04-25 16:20:35'),
(11, 'f7f5d94e6d9c97bd762240932a1c177ae2c9b18b', 'Yudha', 'Mojolaban', 'Solo', NULL, NULL, '2021-04-26 15:02:30', '2021-04-26 15:02:30'),
(12, '22c01d235b227abbb30792e0ca9ad5ac38c2e59e', 'Khalifah Property Land', 'SURAKARTA', 'Surakarta', NULL, NULL, '2021-04-26 15:25:01', '2021-04-26 15:25:01'),
(13, '7281587cf1f867e5a4a97fa8fda27787c71e8328', 'Radja Creative', 'Jakarta', 'Jakarta', NULL, NULL, '2021-04-27 06:21:24', '2021-04-27 06:21:24'),
(14, 'ed7018f5961f9fa2a9cc572a83b4336633c82728', 'Radja Creative', 'Jakarta', 'Jakarta', NULL, NULL, '2021-04-27 06:43:06', '2021-04-27 06:43:06'),
(15, 'f371772efbf2d2989b55c35ea4d3b7640f32deb4', 'Radja Creative', 'Jakarta', 'Jakarta', '110.77248791233', '-7.5858531107817', '2021-04-27 07:23:53', '2021-04-27 07:23:53'),
(16, '3549b44885e2ab1bf52f1e0ff5de4f824a6025ec', 'repurpose', 'parsing', 'Kansas', NULL, NULL, '2021-04-28 00:29:46', '2021-04-28 00:29:46'),
(17, 'f8fcc0aa81fa6904a30ba60b03b6328ae79b3d65', 'rest', 'Jogja', 'Solomon', NULL, NULL, '2021-04-30 13:34:13', '2021-04-30 13:34:13'),
(18, '815b32d123724d38687df596c821de633b06e3c7', '123', '123', '1234', '-122.08400001749', '37.421995550294', '2021-05-01 06:03:16', '2021-05-01 06:03:16'),
(19, 'e1f7262b60015a1cdee3a2de4b74e9cfb3e7b07b', 'Mt view', 'Mt view', 'Mt view 123', NULL, NULL, '2021-05-12 02:19:22', '2021-05-12 02:19:22'),
(20, '5d8fafd6e39a4733cc8ec9f37b2ea1386a4de1bd', 'Min gook', 'Lampung', 'Jl.lintas sumatera km 97 lampung utara', NULL, NULL, '2021-05-16 02:47:31', '2021-05-16 02:47:31'),
(22, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', 'Sentora', 'Wonogiri', 'mana aja', '432983423', '432423', NULL, NULL),
(23, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', 'mana aja bisa', 'lampung utara', 'mana aja bisa yang penting happy', NULL, NULL, NULL, NULL),
(24, '0e8ad76a436ad7844b71d7cd082c8953b696a723', 'dfioudasiuh', 'dasiuhda', 'diudhasiu', NULL, NULL, '2021-05-20 05:50:39', '2021-05-20 05:50:39'),
(25, 'c7db0c6dee4dd9c200bdae16554050f5d5c639d1', 'daiouda', 'dasoidjas', 'dasoidjas', NULL, NULL, '2021-05-20 05:52:25', '2021-05-20 05:52:25'),
(26, '4cd97b4d1ace534042a2e359a808f37d69f80e73', 'dasoiudjas', '1dasoidjas', 'dasoijdas', NULL, NULL, '2021-05-20 05:52:59', '2021-05-20 05:52:59'),
(27, '79c3a2185a1ffdecba7b031df981d6df9a003712', 'foifjds', 'foijfsd', 'fdsoifjds', NULL, NULL, '2021-05-20 13:33:30', '2021-05-20 13:33:30'),
(28, '0d90ac46cdcd27b2a84bd1269eb71f3a12224b71', 'tes', 'tes2', 'tess', '-121.99319818988', '37.374506149562', '2021-05-21 08:37:32', '2021-05-21 08:37:32'),
(82, '0d90ac46cdcd27b2a84bd1269eb71f3a12224b71', 'tes 3', 'tes', 'tes', '-122.28678742424', '37.259937778355', '2021-05-21 08:38:50', '2021-05-21 08:38:50'),
(85, '0d90ac46cdcd27b2a84bd1269eb71f3a12224b71', 'Google Plex', '1231', '1234', '-122.08400001749', '37.421997147914', '2021-05-21 09:32:01', '2021-05-21 09:32:01'),
(86, '5d749cf787c3d367fdead73ab49a7f895451c44f', 'Yumna', 'tes', 'tes', NULL, NULL, '2021-05-21 15:37:04', '2021-05-21 15:37:04'),
(87, '9cfac74dc6883e9a88909dd81685a01943f64f0f', 'Tes 3', 'Tes 3', 'Tes 3', NULL, NULL, '2021-05-22 10:32:07', '2021-05-22 10:32:07'),
(88, '9cfac74dc6883e9a88909dd81685a01943f64f0f', 'Tes 2', 'Tes 2', 'Tes 2', NULL, NULL, NULL, NULL),
(89, '830fe47dd02c279ce06ccc4bbdfd14add03a76c9', 'PT. Ardi', 'Jakarta', 'Jakarta', NULL, NULL, '2021-05-23 15:18:07', '2021-05-23 15:18:07'),
(90, '830fe47dd02c279ce06ccc4bbdfd14add03a76c9', 'Surakarta', 'Solo', 'Solo', NULL, NULL, NULL, NULL),
(91, '1ac59b32465807295477fca51d1f34c92d8e9e07', 'jaya mandiri trans', 'jakarta timur', 'jalan raya sodong no 48', NULL, NULL, '2021-05-24 07:04:58', '2021-05-24 07:04:58'),
(92, 'b24ef23c293c48613adfd44b74fe8d121e3527f4', 'PT. Ardib', 'Jakarta', 'Jakarta', NULL, NULL, '2021-05-24 12:22:10', '2021-05-24 12:22:10'),
(93, 'b24ef23c293c48613adfd44b74fe8d121e3527f4', 'Ardib Surabaya', 'Surabaya', 'Surabaya', NULL, NULL, NULL, NULL),
(95, 'f1f9571777e0b3eba08ea1b650e4c243263a01ed', 'Rahma', 'Solo', 'Solo', NULL, NULL, '2021-05-29 13:43:42', '2021-05-29 13:43:42'),
(96, 'c9c230d059c0446569a92b18a07fd07066e4c30c', 'kedaiX', 'Kodya Bekasi', 'JALAN ARTERI KALIMALANG KOMPLEK DEPKES 1', NULL, NULL, '2021-05-30 12:17:47', '2021-05-30 12:17:47'),
(97, '4176828d6f01714586bf15d5702c7b6010cc38e0', 'sdn 1 singajaya', 'garut', 'singajaya', NULL, NULL, '2021-05-31 01:00:46', '2021-05-31 01:00:46'),
(98, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'CV. RADJA ADVERTISE INDONESIA', 'BANDAR LAMPUNG', 'bandar lampung', '105.29831657186', '-5.4074643745668', '2021-06-01 11:06:20', '2021-06-01 11:06:20'),
(103, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'GERAI RADJA - SOLO II', 'SOLO', 'Solo', '110.76732700691', '-7.5573681466925', NULL, NULL),
(105, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'GERAI RADJA - Solo I', 'SOLO', 'Solo', '110.74769558385', '-7.5757604353757', NULL, NULL),
(106, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'GERAI RADJA - Lampung', 'BANDAR LAMPUNG', 'Jl. Senopati Gg. Cendana 1 Jatimulyo - jatiagung Lampung selatan', '105.29594080523', '-5.3452445109932', NULL, NULL),
(107, '910ae7a108aec499a01dd9c6c6e408fbedc354bd', 'Anugerah Teknik', 'Bau bau', 'Jl Erlangga pos 3', '122.59474927559', '-5.4627641813197', '2021-06-03 00:04:15', '2021-06-03 00:04:15'),
(108, '40a927ab97dc5791bf63b6118adb41f0cef1d6d2', 'Hayu-ka japanese shabu & bbq', 'Garut', 'Blubur limbangan', NULL, NULL, '2021-06-03 15:20:53', '2021-06-03 15:20:53'),
(109, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'GERAI RADJA - HO Solo', 'SOLO', 'Solo', '110.77702989802', '-7.5876364534196', NULL, NULL),
(111, 'be7230b228317c581b058af8f17bb339cb6331f5', 'Chiro petshop', 'Sidoarjo', 'Pondok Sidokare asri, sidoarjo', NULL, NULL, '2021-06-05 02:08:07', '2021-06-05 02:08:07'),
(112, '2a1378c91bfe2980474f5c0e800b07e4565c03c1', 'HASYIFA PAYMENT', 'Brebes', 'Jl. KH Mukhlas Dukuhturi 1 Rt 008 Rw 002 kec.Ketanggungan', NULL, NULL, '2021-06-05 09:54:29', '2021-06-05 09:54:29'),
(113, '6f8d9a0b16bb4b8867d383c15325293368e6f8e2', 'Nongki Square', 'Medan', 'Jalan Menteng Raya', NULL, NULL, '2021-06-05 10:24:34', '2021-06-05 10:24:34'),
(114, 'ad65988998c14646f3c492c367fe8b3eec464f79', 'PT. Sumatra Inti Seluler', 'Pekanbaru', 'Jln.  Jendral sudirman', NULL, NULL, '2021-06-08 01:07:16', '2021-06-08 01:07:16'),
(115, '63cd28aae9f9174eaa45a2f11d52839e56a668eb', 'PT. Dwi karya Primajaya', 'Cirebon', 'Losari kidul', NULL, NULL, '2021-06-11 04:20:19', '2021-06-11 04:20:19'),
(116, 'a01d9f5353099b33fcbd6316597657b09de1fc27', 'PHG', 'Dumai', 'Teladan', NULL, NULL, '2021-06-14 07:16:39', '2021-06-14 07:16:39'),
(117, '7b845ab1572db9b8323d497791716c6543cf3bba', 'Empat bersaudara', 'DKI Jakarta', 'Jln Cilangkap indah', '0', '0', '2021-06-15 04:05:41', '2021-06-15 04:05:41'),
(118, '50ec48b2ba11917e9a38b93697551ac97fa769b1', 'Yamaha SIP Semeru', 'Lumajang', 'Jl. Bridjend Slamet Riyadi No. 115', NULL, NULL, '2021-06-16 06:31:51', '2021-06-16 06:31:51'),
(119, '521c76195a70f5d34a6214db7a210786a9919973', 'Lazismu Kotagede', 'Yogyakarta', 'Jl. Mendoakan 47 Kotagede', NULL, NULL, '2021-06-17 08:21:21', '2021-06-17 08:21:21'),
(120, '7a25e7deee42f9b9c0750ed1f80f28e9d234fb52', 'cv makmur jaya', 'Jln pelayaran tempel krian jatim', 'jln pelayanan tempel krian jatim', NULL, NULL, '2021-06-19 04:33:45', '2021-06-19 04:33:45'),
(121, '0728eaa547dfc9fca4ab0869bf3cec7253ba865e', 'Perpustakaab', 'Kendari', 'Jl. La ute l no. 30A', NULL, NULL, '2021-06-19 09:34:08', '2021-06-19 09:34:08'),
(122, '4a08abddc4dfd9986f4ead30b898665d078ff94b', 'Rsud kaur', 'Kaur', 'Jl.lintas barat sumatera', NULL, NULL, '2021-06-21 03:06:09', '2021-06-21 03:06:09'),
(123, '342f64613a856fae47cac2b0c02abdc51ce0ee23', 'Bintang wisata', 'Makassar', 'Bontomene 9', NULL, NULL, '2021-06-22 00:11:43', '2021-06-22 00:11:43'),
(124, 'a8cdce6fbd4bb81c6ea6f0083cebf6579157cd0f', 'Ditbinmas', 'Ternate', 'Jl maliaro kota terntae', NULL, NULL, '2021-06-22 12:12:47', '2021-06-22 12:12:47'),
(125, 'fa43ebea000f4bd4cdaf58a04a1ca995969f2e50', 'Radja Digital Adsense', 'Sukoharjo', 'Jl. Bintan No. 10, Siwal, Sukoharjo', NULL, NULL, '2021-06-23 02:38:47', '2021-06-23 02:38:47'),
(126, '886003b53a7d230dd149ff4f59c7acefb7f86d27', 'PT. Infinit Jaya Internasional', 'Surabaya', 'Jl.kedung Baruk No.96 Gunawangsa Merr KS-08', NULL, NULL, '2021-06-23 14:50:44', '2021-06-23 14:50:44'),
(127, 'fd3d5752a71a1549ef65518330c0bc1fd1a39554', 'BRIN', 'DKI jakarta', 'BPPT II, Jalan Kampung Bali XXXIV, RW 10, Kampung Bali, Tanah Abang, Jakarta Pusat, Daerah Khusus Ibukota Jakarta, 10250, Indonesia', NULL, NULL, '2021-06-27 09:49:48', '2021-06-27 09:49:48'),
(128, 'f36c18a8c0ed5c07ef2e8754b7145fbe163efa50', 'SMP Matusha Dwi Elang', 'Bogor', 'Jln desa girimulya rt 01/01', NULL, NULL, '2021-06-28 11:45:03', '2021-06-28 11:45:03'),
(129, 'b696c4cd52d1e4ba62d7d0d223fa30ed2c95e1c7', 'Bpd', 'Magelang', 'Jl aloon aloon selatan magelang', NULL, NULL, '2021-06-29 00:27:32', '2021-06-29 00:27:32'),
(130, 'f63c2db4f7d2bc1e39d3783acb13c11803d83889', 'catering', 'bandung', 'jl kresna dalam 49', NULL, NULL, '2021-06-29 07:47:13', '2021-06-29 07:47:13'),
(131, 'd34dcc28ba173f18db709967a3bdea95062a6c2b', 'ONE NETWORK.NET', 'Lamongan', 'DS Tunggunjagir Kec Mantup Kab Lamongan', NULL, NULL, '2021-06-29 16:14:01', '2021-06-29 16:14:01'),
(132, '8d185036ad0b836190f3a72962ecf7781a172af2', 'PT. HARAPAN JAYA MULTI BISNIS', 'MAROS', 'PATTENE 88', NULL, NULL, '2021-06-30 06:12:36', '2021-06-30 06:12:36'),
(133, 'dd1a3c3ad7db0997d3729db97c8c57670db5ba19', 'PT Sansico Natura Resources', 'Jakarta', 'Jakarta Selatan', NULL, NULL, '2021-07-01 00:16:18', '2021-07-01 00:16:18'),
(134, 'a277001fb8d644a58aa4211e3c02855dd0709727', 'CV ISM', 'Tangerang Selatan', 'Ciputat', NULL, NULL, '2021-07-01 07:16:48', '2021-07-01 07:16:48'),
(135, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'Gerai radja - SOLO III', 'SOLO', 'solo', '110.74069937691', '-7.5973845534219', NULL, NULL),
(136, '59e6d7ba5a2877b1ccd975a7b3ff3192ecc13c71', 'MUTIARA TEKNIK AC', 'Mojokerto', 'Perum. Javaland Blok A -09', NULL, NULL, '2021-07-01 15:31:05', '2021-07-01 15:31:05'),
(137, 'f2fb0b6a0d95a4af3a83d2ef17f76529428ce979', 'Taman jahit', 'Takengon', 'Takengon Barat KECAMATAN Lut tawar', NULL, NULL, '2021-07-01 20:27:00', '2021-07-01 20:27:00'),
(138, '36edb1e626a2a3ce8aa31f03c4e2c0d1232e3918', 'GEZA TOYS KIDS', 'Bojonegoro', 'Ds. Purwosari, 003/002, Bojonegoro', NULL, NULL, '2021-07-02 05:55:53', '2021-07-02 05:55:53'),
(139, '1dc6b19059b347918673608bb7fc576376b516ca', 'restaurant', 'manado', 'ringroad', NULL, NULL, '2021-07-02 15:59:45', '2021-07-02 15:59:45'),
(140, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'Gerai radja - CIREBON', 'CIREBON', 'Cirebon', '108.55758408085', '-6.7599106335006', NULL, NULL),
(141, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'Gerai radja - TEGAL', 'TEGAL', 'Tegal', '109.1229387559', '-6.98488344196', NULL, NULL),
(142, '6c91bb6742fd803b2c85668f6191e617359f2155', 'Proyek', 'Pasuruan', 'Jln paras rejo', NULL, NULL, '2021-07-03 14:28:37', '2021-07-03 14:28:37'),
(143, 'ef301b362774850d0e298177422a01f18e95a5a7', 'SMPIT Ibnul Qayyim Makassar', 'Makassar', 'Manggala', NULL, NULL, '2021-07-04 20:38:29', '2021-07-04 20:38:29'),
(144, '0181cdd5db0a5629b7a84b5858503c358cb50213', 'PT. MITRA DEWAN JAYA', 'Surabaya', 'Griya Kebraon Barat No. BA/22A', NULL, NULL, '2021-07-05 09:46:46', '2021-07-05 09:46:46'),
(145, '3c273e8815e8ee75ed1cc4d4574d33bb4bbcba68', 'Subcount', 'DeltaMas', 'Tegaldanas', NULL, NULL, '2021-07-05 12:06:12', '2021-07-05 12:06:12'),
(146, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'Gerai radja - PEKALONGAN', 'PEKALONGAN', 'Pekalongan', '109.68948131427', '-6.8884103367048', NULL, NULL),
(147, '60760f10c440356438d010df7acea56cfd52c0ce', 'PT. ARMINDO JAYA MANDIRI', 'BEKASIH', 'JABABEKA II', NULL, NULL, '2021-07-06 14:03:40', '2021-07-06 14:03:40'),
(148, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'Gerai radja - SEMARANG', 'SEMARANG', 'Semarang', '110.48638338223', '-6.9784080122233', NULL, NULL),
(149, '11b72e8ce60d67734a3607cb046b0f746499aadf', 'Kecil', 'Banjarmasin', 'Jln. Kelayan B GG.Ismail Buntu', NULL, NULL, '2021-07-07 18:07:11', '2021-07-07 18:07:11'),
(150, '66f854ef515616a82699e16fb8840e3051069c14', 'Desa rengasdengklok', 'Karawang', 'Rengasdengklok', NULL, NULL, '2021-07-08 00:57:56', '2021-07-08 00:57:56'),
(151, 'afbae82beac065e741da8199ab8aa72fda4995a0', 'YIGA DARUSSALAM', 'Nganjuk', 'Krempyang', NULL, NULL, '2021-07-08 02:23:38', '2021-07-08 02:23:38'),
(152, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'Gerai radja - JOGYAKARTA', 'JOGYAKARTA', 'Jogyakarta', '110.46655816957', '-7.7023270651776', NULL, NULL),
(154, '0c71b8f68221f560cfca4b88e5014e3996ddad1c', 'SDN KARANGMANGU KORWILCAM DINDIK BATURRADEN', 'Baturraden', 'Jl.Raya Baturraden Timur Km.12', NULL, NULL, '2021-07-09 12:43:22', '2021-07-09 12:43:22'),
(155, '2813fa6b0cfca87de2efc4e86d62dbb146d4e6b5', 'Sekolah', 'Merauke', 'Samkai', NULL, NULL, '2021-07-09 13:25:14', '2021-07-09 13:25:14'),
(156, '65db8d38c5d6175bda755470bc779de5624abc21', 'ECO PRODUCT', 'Pati', 'Juwana', NULL, NULL, '2021-07-12 09:28:10', '2021-07-12 09:28:10'),
(157, 'c510cc31f7844d40002eaf93beef16054b7be201', 'Riel Farm and Resdence', 'Bogor', 'Kongsi cijeruk Bogor', NULL, NULL, '2021-07-13 08:41:43', '2021-07-13 08:41:43'),
(158, '46583e5d8a345e0a7ed78b50a846236e474ac7ad', 'Raaj Gill Arsitek', 'Tangerang', 'Green lake city ruko crown blok I-23', NULL, NULL, '2021-07-14 14:29:06', '2021-07-14 14:29:06'),
(159, '9a936c76fa358843b1abb07f5e6e9970cb13d5b5', 'PT. Barisan Vision Networks', 'Sampang', 'Barisan indah, blok A', NULL, NULL, '2021-07-16 04:50:36', '2021-07-16 04:50:36'),
(160, 'b6ee9619ff55cd770a7d0c008be998d05da4e305', 'pt BGR', 'semarang', 'jl dokter Wahidin 85', NULL, NULL, '2021-07-23 01:19:51', '2021-07-23 01:19:51'),
(161, 'ff22cfd436bd05cec43e8e6a495c2f12572b7c56', 'Mie Jabrix', 'Mie Jabrix, Pekunden, Pakukerto, Pasuruan, Jawa Timur', 'Jalan Taman Safari II Dusun Kemiri, Pakukerto, Sukorejo, Pekunden, Pakukerto, Kec. Sukorejo, Pasuruan, Jawa Timur 67161', NULL, NULL, '2021-07-25 16:46:34', '2021-07-25 16:46:34'),
(162, '2cbb48d9a462ef04745d0397cc7650b392c72c05', 'STIKes Permata Nusantara', 'Cianjur', 'Jl. Raya Cibeber KM. 8 Cibeber-Cianjur', NULL, NULL, '2021-07-25 22:16:14', '2021-07-25 22:16:14'),
(163, '595b7487ba77c83930f9307e6e521226f72f5f57', 'AURAA WEDDING ORGANIZER', 'tangerang', 'tangerang pasarkemis', NULL, NULL, '2021-07-27 12:40:39', '2021-07-27 12:40:39'),
(164, '28fe9a0ded1b59be79903f917998473495ca66f2', 'King banana', 'Semarang', 'Dsn.Kenteng Sumowono', NULL, NULL, '2021-07-28 01:08:09', '2021-07-28 01:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `potongan`
--

CREATE TABLE `potongan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `komponen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `ket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `potongan`
--

INSERT INTO `potongan` (`id`, `komponen`, `user_id`, `total`, `ket`, `created_at`, `updated_at`) VALUES
(16, 'Tes', 25, 50000, 'potongan', '2021-04-22 12:41:31', '2021-04-22 12:41:31'),
(19, 'uang kentu', 24, 43434, 'potongan', '2021-04-22 16:35:34', '2021-04-22 16:35:34'),
(20, 'uang bpjs', 24, 4654645, 'potongan', '2021-04-22 16:37:09', '2021-04-22 16:37:09'),
(21, 'uapot', 11, 100000, 'potongan', '2021-04-24 07:41:15', '2021-04-24 07:41:15'),
(22, 'uang tidur', 14, 90000, 'potongan', '2021-04-24 08:28:08', '2021-04-24 08:28:08'),
(23, 'Bpjs', 27, 100000, 'potongan', '2021-04-25 16:26:45', '2021-04-25 16:26:45'),
(24, 'BPJS', 25, 100000, 'potongan', '2021-04-26 13:49:41', '2021-04-26 13:49:41'),
(25, 'BPJS', 25, 100000, 'potongan', '2021-04-26 13:56:05', '2021-04-26 13:56:05'),
(26, 'tes', 20, 10000, 'potongan', '2021-04-26 23:02:05', '2021-04-26 23:02:05'),
(27, 'tes', 19, 1000000, 'potongan', '2021-04-26 23:03:34', '2021-04-26 23:03:34'),
(28, 'BPJS', 34, 150000, 'potongan', '2021-04-27 07:36:12', '2021-04-27 07:36:12'),
(33, 'Suhe', 69, 0, 'potongan', '2021-06-01 14:29:49', '2021-06-01 14:29:49'),
(34, 'Binta', 70, 0, 'potongan', '2021-06-01 14:31:02', '2021-06-01 14:31:02');

-- --------------------------------------------------------

--
-- Table structure for table `role_pay`
--

CREATE TABLE `role_pay` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_pay`
--

INSERT INTO `role_pay` (`id`, `user_id`, `bulan`, `harga`, `created_at`, `updated_at`) VALUES
(22, NULL, '1', '15000', '2021-04-26 16:44:17', '2021-04-26 16:44:17'),
(23, NULL, '6', '80000', '2021-04-26 16:44:17', '2021-04-26 16:44:17'),
(24, NULL, '12', '150000', '2021-04-26 16:44:17', '2021-04-26 16:44:17');

-- --------------------------------------------------------

--
-- Table structure for table `role_payment`
--

CREATE TABLE `role_payment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `dibayar` datetime DEFAULT NULL,
  `tgl_bayar` datetime DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `pay` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` int(11) DEFAULT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_payment`
--

INSERT INTO `role_payment` (`id`, `user_id`, `dibayar`, `tgl_bayar`, `harga`, `bank`, `pay`, `image`, `is_read`, `bulan`, `created_at`, `updated_at`) VALUES
(1, 11, '2021-06-02 00:00:00', '2021-04-06 23:17:36', 4343343, NULL, 2, '163616546.png', NULL, '2', '2021-04-06 16:17:36', '2021-04-06 16:17:36'),
(3, 14, '2021-06-18 00:00:00', '2021-04-19 12:34:21', 4343343, NULL, 2, '1118010873.jpg', NULL, '2', '2021-04-19 05:34:21', '2021-04-19 05:34:21'),
(4, 15, '2023-12-05 00:00:00', '2021-04-19 12:43:48', 4343, NULL, 2, '1641060846.png', NULL, '32', '2021-04-19 05:43:48', '2021-04-19 05:43:48'),
(6, 17, '2021-11-16 00:00:00', '2021-05-20 20:19:05', 80000, NULL, 2, '328443326.jpg', NULL, '6', '2021-05-20 13:19:05', '2021-05-20 13:19:05'),
(7, 18, '2021-04-27 00:00:00', '2021-05-20 20:50:08', 150000, NULL, 1, '660498930.jpg', 1, '12', '2021-05-20 13:50:08', '2021-05-20 13:50:08'),
(8, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-20 12:49:12', '2021-04-20 12:49:12'),
(9, 20, NULL, '2021-04-20 21:42:18', 4343, NULL, NULL, '1677823938.jpg', NULL, '32', '2021-04-20 14:42:18', '2021-04-20 14:42:18'),
(10, 22, '2021-04-29 00:00:00', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(11, 21, '2021-04-29 00:00:00', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(15, 26, '2021-05-25 00:00:00', '2021-04-25 23:22:12', 23333, NULL, 2, '2064451341.jpg', NULL, '1', '2021-04-25 16:22:12', '2021-04-25 16:22:12'),
(16, 27, '2021-05-25 00:00:00', '2021-04-25 23:24:38', 23333, NULL, 2, '830134996.jpg', NULL, '1', '2021-04-25 16:24:38', '2021-04-25 16:24:38'),
(17, 28, '2021-05-26 00:00:00', '2021-04-26 19:47:25', 23333, NULL, 2, '593735541.jpg', NULL, '1', '2021-04-26 12:47:25', '2021-04-26 12:47:25'),
(18, 29, NULL, '2021-04-26 22:04:09', 23333, NULL, NULL, '1982089574.jpg', NULL, '1', '2021-04-26 15:04:09', '2021-04-26 15:04:09'),
(22, 33, '2021-11-17 00:00:00', '2021-05-21 23:09:54', 80000, NULL, 2, '74039547.jpg', NULL, '6', '2021-05-21 16:09:54', '2021-05-21 16:09:54'),
(23, 34, '2022-04-22 00:00:00', '2021-04-27 14:25:17', 150000, NULL, 2, '794712649.jpg', NULL, '12', '2021-04-27 07:25:17', '2021-04-27 07:25:17'),
(24, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-28 00:29:46', '2021-04-28 00:29:46'),
(26, 37, NULL, '2021-05-01 13:06:03', 15000, NULL, NULL, '1408186158.jpg', NULL, '1', '2021-05-01 06:06:03', '2021-05-01 06:06:03'),
(27, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-12 02:19:22', '2021-05-12 02:19:22'),
(28, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-16 02:47:31', '2021-05-16 02:47:31'),
(29, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-20 05:50:39', '2021-05-20 05:50:39'),
(30, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-20 05:52:25', '2021-05-20 05:52:25'),
(31, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-20 05:52:59', '2021-05-20 05:52:59'),
(32, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-20 13:33:30', '2021-05-20 13:33:30'),
(33, 44, NULL, '2021-05-21 23:19:38', 150000, NULL, 1, '173216991.jpg', 1, '12', '2021-05-21 16:19:38', '2021-05-21 16:19:38'),
(34, 45, '2022-05-17 00:00:00', '2021-05-22 17:32:34', 150000, NULL, 2, '227896804.jpg', NULL, '12', '2021-05-22 10:32:34', '2021-05-22 10:32:34'),
(35, 46, '2022-05-17 00:00:00', '2021-05-22 17:35:34', 150000, NULL, 2, '1730935972.jpg', NULL, '12', '2021-05-22 10:35:34', '2021-05-22 10:35:34'),
(36, 47, '2022-05-17 00:00:00', '2021-05-22 17:37:05', 150000, NULL, 2, '911372542.jpg', NULL, '12', '2021-05-22 10:37:05', '2021-05-22 10:37:05'),
(38, 49, '2021-06-22 00:00:00', '2021-05-23 22:18:07', NULL, NULL, 2, NULL, NULL, '1', '2021-05-23 15:18:07', '2021-05-23 15:18:07'),
(39, 50, '2021-06-22 00:00:00', '2021-05-23 22:19:12', NULL, NULL, 2, NULL, NULL, '1', '2021-05-23 15:19:12', '2021-05-23 15:19:12'),
(40, 51, '2021-06-22 00:00:00', '2021-05-23 22:19:45', NULL, NULL, 2, NULL, NULL, '1', '2021-05-23 15:19:45', '2021-05-23 15:19:45'),
(41, 52, '2021-06-22 00:00:00', '2021-05-23 22:20:37', NULL, NULL, 2, NULL, NULL, '1', '2021-05-23 15:20:37', '2021-05-23 15:20:37'),
(42, 53, '2021-06-23 00:00:00', '2021-05-24 14:04:58', NULL, NULL, 2, NULL, NULL, '1', '2021-05-24 07:04:58', '2021-05-24 07:04:58'),
(43, 54, '2021-06-23 00:00:00', '2021-05-24 19:22:10', NULL, NULL, 2, NULL, NULL, '1', '2021-05-24 12:22:10', '2021-05-24 12:22:10'),
(44, 55, '2021-06-23 00:00:00', '2021-05-24 19:22:50', NULL, NULL, 2, NULL, NULL, '1', '2021-05-24 12:22:50', '2021-05-24 12:22:50'),
(45, 56, '2021-06-23 00:00:00', '2021-05-24 19:23:05', NULL, NULL, 2, NULL, NULL, '1', '2021-05-24 12:23:05', '2021-05-24 12:23:05'),
(48, 59, '2021-06-27 00:00:00', '2021-05-28 10:09:15', NULL, NULL, 2, NULL, NULL, '1', '2021-05-28 03:09:15', '2021-05-28 03:09:15'),
(49, 60, '2021-06-28 00:00:00', '2021-05-29 20:43:42', NULL, NULL, 2, NULL, NULL, '1', '2021-05-29 13:43:42', '2021-05-29 13:43:42'),
(50, 61, '2021-06-28 00:00:00', '2021-05-29 20:44:10', NULL, NULL, 2, NULL, NULL, '1', '2021-05-29 13:44:10', '2021-05-29 13:44:10'),
(51, 62, '2021-06-29 00:00:00', '2021-05-30 19:17:47', NULL, NULL, 2, NULL, NULL, '1', '2021-05-30 12:17:47', '2021-05-30 12:17:47'),
(52, 63, '2021-06-30 00:00:00', '2021-05-31 08:00:46', NULL, NULL, 2, NULL, NULL, '1', '2021-05-31 01:00:46', '2021-05-31 01:00:46'),
(53, 64, '2022-06-27 00:00:00', '2021-07-02 08:13:08', 150000, NULL, 2, '1957941203.jpg', NULL, '12', '2021-07-02 01:13:08', '2021-07-02 01:13:08'),
(54, 65, '2022-06-27 00:00:00', '2021-07-02 08:13:42', 150000, NULL, 2, '945879807.jpg', NULL, '12', '2021-07-02 01:13:42', '2021-07-02 01:13:42'),
(55, 66, '2022-06-27 00:00:00', '2021-07-02 08:14:27', 150000, NULL, 2, '1370551487.jpg', NULL, '12', '2021-07-02 01:14:27', '2021-07-02 01:14:27'),
(56, 67, '2022-06-28 00:00:00', '2021-07-03 07:27:53', 150000, NULL, 2, '57434037.jpg', NULL, '12', '2021-07-03 00:27:53', '2021-07-03 00:27:53'),
(57, 68, '2021-07-01 00:00:00', '2021-06-01 18:41:22', NULL, NULL, 2, NULL, NULL, '1', '2021-06-01 11:41:22', '2021-06-01 11:41:22'),
(58, 69, '2022-06-27 00:00:00', '2021-07-02 08:15:42', 150000, NULL, 2, '2027079749.jpg', NULL, '12', '2021-07-02 01:15:42', '2021-07-02 01:15:42'),
(59, 70, '2022-06-27 00:00:00', '2021-07-02 08:16:36', 150000, NULL, 2, '354332402.jpg', NULL, '12', '2021-07-02 01:16:36', '2021-07-02 01:16:36'),
(60, 71, '2021-07-03 00:00:00', '2021-06-03 07:04:15', NULL, NULL, 2, NULL, NULL, '1', '2021-06-03 00:04:15', '2021-06-03 00:04:15'),
(61, 72, '2021-07-03 00:00:00', '2021-06-03 07:29:07', NULL, NULL, 2, NULL, NULL, '1', '2021-06-03 00:29:07', '2021-06-03 00:29:07'),
(62, 73, '2021-07-03 00:00:00', '2021-06-03 07:31:46', NULL, NULL, 2, NULL, NULL, '1', '2021-06-03 00:31:46', '2021-06-03 00:31:46'),
(63, 74, '2022-06-28 00:00:00', '2021-07-03 07:28:33', 150000, NULL, 2, '906168131.jpg', NULL, '12', '2021-07-03 00:28:33', '2021-07-03 00:28:33'),
(64, 75, '2022-06-28 00:00:00', '2021-07-03 07:29:09', 150000, NULL, 2, '11631785.jpg', NULL, '12', '2021-07-03 00:29:09', '2021-07-03 00:29:09'),
(65, 76, '2021-07-03 00:00:00', '2021-06-03 22:20:53', NULL, NULL, 2, NULL, NULL, '1', '2021-06-03 15:20:53', '2021-06-03 15:20:53'),
(66, 77, '2021-07-05 00:00:00', '2021-06-05 09:08:07', NULL, NULL, 2, NULL, NULL, '1', '2021-06-05 02:08:07', '2021-06-05 02:08:07'),
(67, 78, '2021-07-05 00:00:00', '2021-06-05 16:54:29', NULL, NULL, 2, NULL, NULL, '1', '2021-06-05 09:54:29', '2021-06-05 09:54:29'),
(68, 79, '2021-07-05 00:00:00', '2021-06-05 17:24:34', NULL, NULL, 2, NULL, NULL, '1', '2021-06-05 10:24:34', '2021-06-05 10:24:34'),
(69, 80, '2021-07-05 00:00:00', '2021-06-05 17:26:08', NULL, NULL, 2, NULL, NULL, '1', '2021-06-05 10:26:08', '2021-06-05 10:26:08'),
(70, 81, '2021-07-08 00:00:00', '2021-06-08 08:07:16', NULL, NULL, 2, NULL, NULL, '1', '2021-06-08 01:07:16', '2021-06-08 01:07:16'),
(71, 82, '2021-07-08 00:00:00', '2021-06-08 13:10:26', NULL, NULL, 2, NULL, NULL, '1', '2021-06-08 06:10:26', '2021-06-08 06:10:26'),
(72, 83, '2021-07-09 00:00:00', '2021-07-26 17:28:04', 150000, NULL, 1, '1813235756.jpg', NULL, '12', '2021-07-26 10:28:04', '2021-07-26 10:28:04'),
(73, 84, '2021-07-11 00:00:00', '2021-06-11 11:20:19', NULL, NULL, 2, NULL, NULL, '1', '2021-06-11 04:20:19', '2021-06-11 04:20:19'),
(74, 85, '2021-07-14 00:00:00', '2021-06-14 14:16:39', NULL, NULL, 2, NULL, NULL, '1', '2021-06-14 07:16:39', '2021-06-14 07:16:39'),
(75, 86, '2021-07-15 00:00:00', '2021-06-15 08:21:53', NULL, NULL, 2, NULL, NULL, '1', '2021-06-15 01:21:53', '2021-06-15 01:21:53'),
(76, 87, '2021-07-15 00:00:00', '2021-06-15 11:05:41', NULL, NULL, 2, NULL, NULL, '1', '2021-06-15 04:05:41', '2021-06-15 04:05:41'),
(77, 88, '2021-07-16 00:00:00', '2021-06-16 13:31:51', NULL, NULL, 2, NULL, NULL, '1', '2021-06-16 06:31:51', '2021-06-16 06:31:51'),
(78, 89, '2021-07-17 00:00:00', '2021-06-17 15:21:21', NULL, NULL, 2, NULL, NULL, '1', '2021-06-17 08:21:21', '2021-06-17 08:21:21'),
(79, 90, '2021-07-19 00:00:00', '2021-06-19 11:33:45', NULL, NULL, 2, NULL, NULL, '1', '2021-06-19 04:33:45', '2021-06-19 04:33:45'),
(80, 91, '2021-07-19 00:00:00', '2021-06-19 16:34:08', NULL, NULL, 2, NULL, NULL, '1', '2021-06-19 09:34:08', '2021-06-19 09:34:08'),
(81, 92, '2021-07-21 00:00:00', '2021-06-21 10:06:09', NULL, NULL, 2, NULL, NULL, '1', '2021-06-21 03:06:09', '2021-06-21 03:06:09'),
(82, 93, '2021-07-22 00:00:00', '2021-06-22 07:11:43', NULL, NULL, 2, NULL, NULL, '1', '2021-06-22 00:11:43', '2021-06-22 00:11:43'),
(83, 94, '2021-07-22 00:00:00', '2021-06-22 19:12:47', NULL, NULL, 2, NULL, NULL, '1', '2021-06-22 12:12:47', '2021-06-22 12:12:47'),
(84, 95, '2021-07-23 00:00:00', '2021-06-23 09:38:47', NULL, NULL, 2, NULL, NULL, '1', '2021-06-23 02:38:47', '2021-06-23 02:38:47'),
(85, 96, '2021-07-23 00:00:00', '2021-06-23 21:50:44', NULL, NULL, 2, NULL, NULL, '1', '2021-06-23 14:50:44', '2021-06-23 14:50:44'),
(86, 97, '2021-07-23 00:00:00', '2021-06-23 21:57:12', NULL, NULL, 2, NULL, NULL, '1', '2021-06-23 14:57:12', '2021-06-23 14:57:12'),
(87, 98, '2021-07-23 00:00:00', '2021-06-23 22:28:07', NULL, NULL, 2, NULL, NULL, '1', '2021-06-23 15:28:07', '2021-06-23 15:28:07'),
(88, 99, '2021-07-23 00:00:00', '2021-06-23 22:36:42', NULL, NULL, 2, NULL, NULL, '1', '2021-06-23 15:36:42', '2021-06-23 15:36:42'),
(89, 100, '2021-07-23 00:00:00', '2021-06-23 22:39:55', NULL, NULL, 2, NULL, NULL, '1', '2021-06-23 15:39:55', '2021-06-23 15:39:55'),
(90, 101, '2021-07-27 00:00:00', '2021-06-27 16:49:48', NULL, NULL, 2, NULL, NULL, '1', '2021-06-27 09:49:48', '2021-06-27 09:49:48'),
(91, 102, '2021-07-28 00:00:00', '2021-06-28 18:45:03', NULL, NULL, 2, NULL, NULL, '1', '2021-06-28 11:45:03', '2021-06-28 11:45:03'),
(92, 103, '2021-07-29 00:00:00', '2021-06-29 07:27:32', NULL, NULL, 2, NULL, NULL, '1', '2021-06-29 00:27:32', '2021-06-29 00:27:32'),
(93, 104, '2021-07-29 00:00:00', '2021-06-29 14:47:13', NULL, NULL, 2, NULL, NULL, '1', '2021-06-29 07:47:13', '2021-06-29 07:47:13'),
(94, 105, '2021-07-29 00:00:00', '2021-06-29 23:14:01', NULL, NULL, 2, NULL, NULL, '1', '2021-06-29 16:14:01', '2021-06-29 16:14:01'),
(95, 106, '2021-07-30 00:00:00', '2021-06-30 13:12:36', NULL, NULL, 2, NULL, NULL, '1', '2021-06-30 06:12:36', '2021-06-30 06:12:36'),
(96, 107, '2021-07-31 00:00:00', '2021-07-01 07:16:18', NULL, NULL, 2, NULL, NULL, '1', '2021-07-01 00:16:18', '2021-07-01 00:16:18'),
(97, 108, '2021-07-31 00:00:00', '2021-07-01 14:16:48', NULL, NULL, 2, NULL, NULL, '1', '2021-07-01 07:16:48', '2021-07-01 07:16:48'),
(99, 110, '2021-07-31 00:00:00', '2021-07-01 15:13:31', NULL, NULL, 2, NULL, NULL, '1', '2021-07-01 08:13:31', '2021-07-01 08:13:31'),
(100, 111, '2021-07-31 00:00:00', '2021-07-01 16:00:30', NULL, NULL, 2, NULL, NULL, '1', '2021-07-01 09:00:30', '2021-07-01 09:00:30'),
(101, 112, '2021-07-31 00:00:00', '2021-07-01 22:31:05', NULL, NULL, 2, NULL, NULL, '1', '2021-07-01 15:31:05', '2021-07-01 15:31:05'),
(102, 113, '2021-08-01 00:00:00', '2021-07-02 03:27:00', NULL, NULL, 2, NULL, NULL, '1', '2021-07-01 20:27:00', '2021-07-01 20:27:00'),
(103, 114, '2021-08-01 00:00:00', '2021-07-02 12:55:53', NULL, NULL, 2, NULL, NULL, '1', '2021-07-02 05:55:53', '2021-07-02 05:55:53'),
(104, 115, '2021-08-01 00:00:00', '2021-07-02 22:59:45', NULL, NULL, 2, NULL, NULL, '1', '2021-07-02 15:59:45', '2021-07-02 15:59:45'),
(105, 116, '2021-08-02 00:00:00', '2021-07-03 07:08:03', NULL, NULL, 2, NULL, NULL, '1', '2021-07-03 00:08:03', '2021-07-03 00:08:03'),
(106, 117, '2021-08-02 00:00:00', '2021-07-03 07:11:43', NULL, NULL, 2, NULL, NULL, '1', '2021-07-03 00:11:43', '2021-07-03 00:11:43'),
(107, 118, '2021-08-02 00:00:00', '2021-07-03 07:14:31', NULL, NULL, 2, NULL, NULL, '1', '2021-07-03 00:14:31', '2021-07-03 00:14:31'),
(108, 119, '2021-08-02 00:00:00', '2021-07-03 14:14:56', NULL, NULL, 2, NULL, NULL, '1', '2021-07-03 07:14:56', '2021-07-03 07:14:56'),
(109, 120, '2021-08-02 00:00:00', '2021-07-03 21:28:37', NULL, NULL, 2, NULL, NULL, '1', '2021-07-03 14:28:37', '2021-07-03 14:28:37'),
(110, 121, '2021-08-04 00:00:00', '2021-07-05 03:38:29', NULL, NULL, 2, NULL, NULL, '1', '2021-07-04 20:38:29', '2021-07-04 20:38:29'),
(111, 122, '2021-08-04 00:00:00', '2021-07-05 16:46:46', NULL, NULL, 2, NULL, NULL, '1', '2021-07-05 09:46:46', '2021-07-05 09:46:46'),
(112, 123, '2021-08-04 00:00:00', '2021-07-05 19:06:12', NULL, NULL, 2, NULL, NULL, '1', '2021-07-05 12:06:12', '2021-07-05 12:06:12'),
(113, 124, '2021-08-05 00:00:00', '2021-07-06 07:48:34', NULL, NULL, 2, NULL, NULL, '1', '2021-07-06 00:48:34', '2021-07-06 00:48:34'),
(114, 125, '2021-08-05 00:00:00', '2021-07-06 21:03:40', NULL, NULL, 2, NULL, NULL, '1', '2021-07-06 14:03:40', '2021-07-06 14:03:40'),
(115, 126, '2021-08-06 00:00:00', '2021-07-07 08:39:24', NULL, NULL, 2, NULL, NULL, '1', '2021-07-07 01:39:24', '2021-07-07 01:39:24'),
(116, 127, '2021-08-07 00:00:00', '2021-07-08 01:07:11', NULL, NULL, 2, NULL, NULL, '1', '2021-07-07 18:07:11', '2021-07-07 18:07:11'),
(117, 128, '2021-08-07 00:00:00', '2021-07-08 07:57:56', NULL, NULL, 2, NULL, NULL, '1', '2021-07-08 00:57:56', '2021-07-08 00:57:56'),
(118, 129, '2021-08-07 00:00:00', '2021-07-08 09:23:38', NULL, NULL, 2, NULL, NULL, '1', '2021-07-08 02:23:38', '2021-07-08 02:23:38'),
(119, 130, '2021-08-07 00:00:00', '2021-07-08 13:51:17', NULL, NULL, 2, NULL, NULL, '1', '2021-07-08 06:51:17', '2021-07-08 06:51:17'),
(120, 131, '2021-08-08 00:00:00', '2021-07-09 09:29:07', NULL, NULL, 2, NULL, NULL, '1', '2021-07-09 02:29:07', '2021-07-09 02:29:07'),
(121, 132, '2021-08-08 00:00:00', '2021-07-09 13:57:45', NULL, NULL, 2, NULL, NULL, '1', '2021-07-09 06:57:45', '2021-07-09 06:57:45'),
(122, 133, '2021-08-08 00:00:00', '2021-07-09 14:01:48', NULL, NULL, 2, NULL, NULL, '1', '2021-07-09 07:01:48', '2021-07-09 07:01:48'),
(123, 134, '2021-08-08 00:00:00', '2021-07-09 19:43:22', NULL, NULL, 2, NULL, NULL, '1', '2021-07-09 12:43:22', '2021-07-09 12:43:22'),
(124, 135, '2021-08-08 00:00:00', '2021-07-09 19:52:32', NULL, NULL, 2, NULL, NULL, '1', '2021-07-09 12:52:32', '2021-07-09 12:52:32'),
(125, 136, '2021-08-08 00:00:00', '2021-07-09 20:25:14', NULL, NULL, 2, NULL, NULL, '1', '2021-07-09 13:25:14', '2021-07-09 13:25:14'),
(126, 137, '2021-08-11 00:00:00', '2021-07-12 16:28:10', NULL, NULL, 2, NULL, NULL, '1', '2021-07-12 09:28:10', '2021-07-12 09:28:10'),
(127, 138, '2021-08-12 00:00:00', '2021-07-13 15:41:43', NULL, NULL, 2, NULL, NULL, '1', '2021-07-13 08:41:43', '2021-07-13 08:41:43'),
(128, 139, '2021-08-13 00:00:00', '2021-07-14 21:29:06', NULL, NULL, 2, NULL, NULL, '1', '2021-07-14 14:29:06', '2021-07-14 14:29:06'),
(129, 140, '2021-08-15 00:00:00', '2021-07-16 11:50:36', NULL, NULL, 2, NULL, NULL, '1', '2021-07-16 04:50:36', '2021-07-16 04:50:36'),
(130, 141, '2021-08-22 00:00:00', '2021-07-23 08:19:51', NULL, NULL, 2, NULL, NULL, '1', '2021-07-23 01:19:51', '2021-07-23 01:19:51'),
(131, 142, '2021-08-24 00:00:00', '2021-07-25 23:46:34', NULL, NULL, 2, NULL, NULL, '1', '2021-07-25 16:46:34', '2021-07-25 16:46:34'),
(132, 143, '2021-08-25 00:00:00', '2021-07-26 05:16:14', NULL, NULL, 2, NULL, NULL, '1', '2021-07-25 22:16:14', '2021-07-25 22:16:14'),
(133, 144, '2021-08-25 00:00:00', '2021-07-26 08:08:50', NULL, NULL, 2, NULL, NULL, '1', '2021-07-26 01:08:50', '2021-07-26 01:08:50'),
(134, 145, '2021-08-25 00:00:00', '2021-07-26 08:10:47', NULL, NULL, 2, NULL, NULL, '1', '2021-07-26 01:10:47', '2021-07-26 01:10:47'),
(135, 146, '2021-08-25 00:00:00', '2021-07-26 08:13:08', NULL, NULL, 2, NULL, NULL, '1', '2021-07-26 01:13:08', '2021-07-26 01:13:08'),
(136, 147, '2021-08-26 00:00:00', '2021-07-27 19:40:39', NULL, NULL, 2, NULL, NULL, '1', '2021-07-27 12:40:39', '2021-07-27 12:40:39'),
(137, 148, '2021-08-26 00:00:00', '2021-07-27 19:44:42', NULL, NULL, 2, NULL, NULL, '1', '2021-07-27 12:44:42', '2021-07-27 12:44:42'),
(138, 149, '2021-08-27 00:00:00', '2021-07-28 08:08:09', NULL, NULL, 2, NULL, NULL, '1', '2021-07-28 01:08:09', '2021-07-28 01:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_upah`
--

CREATE TABLE `role_upah` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `persen` int(11) DEFAULT NULL,
  `agen_status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_upah`
--

INSERT INTO `role_upah` (`id`, `user_id`, `persen`, `agen_status`, `created_at`) VALUES
(2, 11, 67, 2, '2021-05-20 05:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `setting_cuti`
--

CREATE TABLE `setting_cuti` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gaji` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hari` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_cuti`
--

INSERT INTO `setting_cuti` (`id`, `user_id`, `gaji`, `hari`, `created_at`, `updated_at`) VALUES
(1, '17', '400000', '4', '2021-04-19 07:00:54', '2021-04-19 07:00:54'),
(2, '20', '100000', '12', '2021-04-20 12:50:15', '2021-04-20 12:50:15'),
(3, '25', '1000000', '12', '2021-04-22 12:45:58', '2021-04-22 12:45:58'),
(4, '27', '1500000', '12', '2021-04-25 16:28:15', '2021-04-25 16:28:15'),
(5, '34', '1500000', '12', '2021-04-27 07:34:22', '2021-04-27 07:34:22'),
(6, '14', '9000', '9', '2021-04-28 15:41:46', '2021-04-28 15:41:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_team` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notelp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perusahaan_id` int(11) DEFAULT NULL,
  `agen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sales` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `image`, `password`, `remember_token`, `id_team`, `level`, `created_at`, `updated_at`, `google_id`, `longitude`, `latitude`, `notelp`, `perusahaan_id`, `agen`, `referal`, `is_sales`) VALUES
(11, 'Super Owner', 'radjasistem@gmail.com', NULL, '370190915.jpg', '$2y$10$TgcxmQ/a71yStVGUauI47.dTVkBv9TN59UyEni6q5knDtjUiW5Soq', 'dJluhEKoYNQ2YZanxtvmPgCAGvONy4vdyEaNuWtHIDZlIPMLfXlTwbxQCjyg', '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', 'super', '2021-02-06 08:54:16', '2021-04-26 14:25:06', NULL, '110.78082039449', '-7.6035287525463', '8327632342', 3, '1', '88335475', 1),
(14, 'teling manis', 'teling@gmail.com', NULL, '2040593710.png', '$2y$10$OJKU5q7o2Y8fMrZj3u39z.19GuoHfGRc4YV6qNPLDRMJR8FekksbO', NULL, '2c5a14d23405bac6f25de27ce49053f3f57ee3e6', 'pegawai', '2021-04-19 05:33:30', '2021-04-19 05:33:30', NULL, '-122.084', '37.421998333333', '8327632342', 22, '2', '88335475', NULL),
(15, 'teling panas pahit', 'telingpahit@gmail.com', NULL, NULL, '$2y$10$IkpEHN6C5rHfb/G76MuNG.7s2epsUfvvZRs0Sw8npiYpohzBr62zS', NULL, '76c7347ede6629e5638a179c9312fcc274d1b60a', 'owner', '2021-04-19 05:43:42', '2021-04-19 05:43:42', NULL, NULL, NULL, '8327632342', NULL, '1', '711495803', NULL),
(17, 'paijo indah', 'paijo@gmail.com', NULL, '1658064768.png', '$2y$10$Q/elwuz0EE3M5h7Gkn32tOHHJ49kDkAmueJOm48T0K8glRySx1ki2', NULL, '51ad840dd1f1be2f10c03622ea4e962fe4c9b517', 'pegawai', '2021-04-19 06:00:27', '2021-04-19 06:00:27', NULL, NULL, NULL, '8327632342', NULL, '2', '', NULL),
(18, 'tes', 'zanzahmad23@gmail.com', NULL, '602443083.jpg', '$2y$10$DnrGBshxFbreZ.R0AQh3g.ndHYJZEikoR9ytvgne8PCNFyVZJu2jO', NULL, 'cc27542e46e8fbe812ce743020c1fb898e2fe7f0', NULL, '2021-04-20 10:13:59', '2021-04-20 10:13:59', NULL, '110.894985', '-7.6144883333333', '8327632342', NULL, '1', '1366130484', NULL),
(19, 'tessa', 'zanzahmad@gmail.com', NULL, '2040260662.jpg', '$2y$10$1ip/EGyUN.CQQcrTYpz7yOAPm30CZil66x1RDIX2.dGpkyW2G.1Gy', NULL, '0d90ac46cdcd27b2a84bd1269eb71f3a12224b71', 'owner', '2021-04-20 12:49:12', '2021-04-20 12:49:12', NULL, '110.894985', '-7.6144883333333', '8327632342', NULL, NULL, '', NULL),
(20, 'lawak', 'zanzahmad26@gmail.com', NULL, NULL, '$2y$10$UblUvEZz0W5U9zqfZyFIuuEO7AUe2A09ybLmlR.xTXu159fk6LQbC', NULL, '0d90ac46cdcd27b2a84bd1269eb71f3a12224b71', 'pegawai', '2021-04-20 12:49:47', '2021-04-20 12:49:47', NULL, '-122.084', '37.421998333333', '8327632342', NULL, NULL, '', NULL),
(21, 'Ardhy', 'ardhy.zolo@gmail.com', NULL, NULL, '$2y$10$7bCj9lpdAp8SwEifsVTsE.vKRDIaPhYQKZAu06sm573JXnwbwwbsi', NULL, '6f4ff879f54f92b89f9990bcf6ac403d0efa86cc', NULL, '2021-04-22 12:21:02', '2021-04-22 12:21:02', NULL, '110.772783331', '-7.5863040345875', '8327632342', NULL, NULL, '', NULL),
(22, 'Ardhy', 'ardhy.zolo@gmail.com', NULL, NULL, '$2y$10$DcRrfQAWIOYDeo2nYYcMreD.tpv6CTdBlpAETKBFnmZf8Zi02LLAO', NULL, 'd8da7197dc20f7cee0a773055e89f86465a793b6', NULL, '2021-04-22 12:21:02', '2021-04-22 12:21:02', NULL, NULL, NULL, '8327632342', NULL, NULL, '', NULL),
(26, 'Colour ard', 'colour.ard@gmail.com', NULL, NULL, '$2y$10$oRM.01q0c.r03BmjPS8WKeqU/YvvfZSJ9qGd.tSBX7oUh2qkFoPx2', NULL, 'c0b763027db04b244eea3a71030cc16068c3395b', 'owner', '2021-04-25 16:20:35', '2021-04-25 16:20:35', NULL, '110.90248718329', '-7.6137030951997', '8327632342', NULL, NULL, '', NULL),
(27, 'Arwan', 'arwan@gmail.com', NULL, NULL, '$2y$10$AY6Q9XBvurhvvEiFRLM0RevgxFXrnUAJmC8Nqncr0JdP4umDT2y7a', NULL, 'c0b763027db04b244eea3a71030cc16068c3395b', 'pegawai', '2021-04-25 16:24:11', '2021-04-25 16:24:11', NULL, '110.85324908217', '-7.3348583849103', '8327632342', NULL, NULL, '', NULL),
(28, 'nina', 'nina@gmail.com', NULL, NULL, '$2y$10$KpEBRvbWLQZMVap/v6oNHeHjsq8GmTC7wUzOtcrRFXbMMe.al3N.W', NULL, '6f4ff879f54f92b89f9990bcf6ac403d0efa86cc', 'pegawai', '2021-04-26 12:47:03', '2021-04-26 12:47:03', NULL, NULL, NULL, '8327632342', NULL, NULL, '', NULL),
(29, 'Yudha', 'Yudhayh1402@gmail.com', NULL, NULL, '$2y$10$UuZ5akik9wNZiT98jfkQJuBS6tNb.DjPKQ3NaYaQSLyQy1/W.OJwW', NULL, 'f7f5d94e6d9c97bd762240932a1c177ae2c9b18b', 'owner', '2021-04-26 15:02:30', '2021-04-26 15:02:30', NULL, '110.90369275319', '-7.6129188992591', '8327632342', NULL, NULL, '', NULL),
(33, 'Radja Creative', 'radjadigitalcreativetim@gmail.com', NULL, '1201594478.jpg', '$2y$10$J/f3gMK.F4ZlaaeMeJEMMuGaf0o.MGglsSkNK7jzV70ZAXLxBTvVS', NULL, 'f371772efbf2d2989b55c35ea4d3b7640f32deb4', 'owner', '2021-04-27 07:23:53', '2021-04-27 07:23:53', NULL, '110.90228142379', '-7.6133156914977', '8327632342', 3, NULL, '', NULL),
(34, 'Pak Budi', 'budi@gmail.com', NULL, '1897193960.jpg', '$2y$10$YlAmbxFdTLxna1CDroXrDOAlkgsryPtnUpa3q0ptgxdLOQ9Ohnrte', NULL, 'f371772efbf2d2989b55c35ea4d3b7640f32deb4', 'pegawai', '2021-04-27 07:24:37', '2021-04-27 07:24:37', NULL, '110.81662962236', '-7.5994736268986', '8327632342', 3, NULL, '', NULL),
(35, 'Narciso Maggio', 'Leta.McClure@yahoo.com', NULL, NULL, '$2y$10$.r5JP/BvpKnrGoiAwvemq.j6R6D0E55Jnj3zNEzYfUCi7h/l9ogU6', NULL, '3549b44885e2ab1bf52f1e0ff5de4f824a6025ec', 'owner', '2021-04-28 00:29:46', '2021-04-28 00:29:46', NULL, NULL, NULL, '8327632342', NULL, NULL, '', NULL),
(37, 'retur', 'terwanda@gmail.com', NULL, NULL, '$2y$10$Z1Qx8n3H0zaqcBVUdjlpMuovvvovTNpT5lbrP3/dbF2doWr1r4prW', NULL, '815b32d123724d38687df596c821de633b06e3c7', 'owner', '2021-05-01 06:03:16', '2021-05-01 06:03:16', NULL, '-122.084', '37.421998333333', '8327632342', NULL, NULL, '', NULL),
(38, 'johndoe123', 'dffrxplusklmy@gmail.com', NULL, NULL, '$2y$10$GxAecKAwYK0GgGLwtf6IkOuGBYqqHT5Ws.dBHfl4UWklL5FbbW9k2', NULL, 'e1f7262b60015a1cdee3a2de4b74e9cfb3e7b07b', 'owner', '2021-05-12 02:19:22', '2021-05-12 02:19:22', NULL, NULL, NULL, '8327632342', NULL, NULL, '', NULL),
(39, 'Romauli', 'romauli80@yahoo.co.id', NULL, NULL, '$2y$10$M8ouPEEdI88ILQJ3H3N1iefF6z78MYdX.M2uJ7R4kR2DoGkhl9jQ.', NULL, '5d8fafd6e39a4733cc8ec9f37b2ea1386a4de1bd', 'owner', '2021-05-16 02:47:31', '2021-05-16 02:47:31', NULL, NULL, NULL, '8327632342', NULL, NULL, '', NULL),
(42, 'bintot', 'bintot@gmail.com', NULL, NULL, '$2y$10$GskaKAtAUJAthwP4WAR9HubEufiL0f7ZCJHtC0Cq2qkr/bVhHugDq', NULL, '4cd97b4d1ace534042a2e359a808f37d69f80e73', 'owner', '2021-05-20 05:52:59', '2021-05-20 05:52:59', NULL, NULL, NULL, 'notelp', NULL, '2', '88335475', NULL),
(43, 'paiman', 'paiman@gmail.com', NULL, NULL, '$2y$10$N51F/nkEH731RPxDxrssh.OWYGDEiC5JaUln6m6F87aX6wz7whsTS', NULL, '79c3a2185a1ffdecba7b031df981d6df9a003712', 'owner', '2021-05-20 13:33:30', '2021-05-20 13:33:30', NULL, NULL, NULL, '08534987534', NULL, '2', '88335475', NULL),
(44, 'yumna', 'zanzahmad25@gmail.com', NULL, '2049401625.jpg', '$2y$10$feSlYD9SI/vLC4hFsLaT1eoDxpT9jwScsOzfL864zbOn5VK8jhUWa', NULL, '5d749cf787c3d367fdead73ab49a7f895451c44f', 'owner', '2021-05-21 15:37:04', '2021-05-21 15:37:04', NULL, '-122.084', '37.421998333333', '081827387123', NULL, '2', '1234', NULL),
(45, 'Tes3', 'tes3@gmail.com', NULL, NULL, '$2y$10$mnqE6Y4WJad2xyyXvI15we0PgUJQpwPnzCSTs/ePO1.oqdRLCrOo2', NULL, '9cfac74dc6883e9a88909dd81685a01943f64f0f', 'owner', '2021-05-22 10:32:07', '2021-05-22 10:32:07', NULL, '110.23655123343', '-7.6093886813934', '086', 87, NULL, NULL, NULL),
(46, 'Admin tes 1', 'admintes1@gmail.com', NULL, NULL, '$2y$10$E385dv./FWe5JqJXlZ38Le7r5dS3JsjSDIKCkpIyGATbhksHx0CiG', NULL, '9cfac74dc6883e9a88909dd81685a01943f64f0f', 'pegawai', '2021-05-22 10:35:17', '2021-05-22 10:35:17', NULL, NULL, NULL, 'notelp', 88, NULL, NULL, NULL),
(47, 'Admin tes 2', 'admintes2@gmail.com', NULL, NULL, '$2y$10$BCL.AJYSgySNgdYpgE9aG.OcHJj9Z1XjUUxolbqm3sBoI4cP0gfoe', NULL, '9cfac74dc6883e9a88909dd81685a01943f64f0f', 'pegawai', '2021-05-22 10:36:14', '2021-05-22 10:36:14', NULL, NULL, NULL, 'notelp', 87, NULL, NULL, NULL),
(49, 'ardi', 'ardi@gmail.com', NULL, NULL, '$2y$10$NsK5Wde4.seiTk/mBqLcTeihHYwfC2/QaDWqRWc6nM9IjaxI.KLWe', NULL, '830fe47dd02c279ce06ccc4bbdfd14add03a76c9', 'owner', '2021-05-23 15:18:07', '2021-05-23 15:18:07', NULL, NULL, NULL, '08565805801', NULL, NULL, NULL, NULL),
(50, 'Budio', 'budio@gmail.com', NULL, NULL, '$2y$10$zOmbDhLfQjV7J2cOU60VzuUGu4vgQQcLymmlx3gepCna2h5D7i2G6', NULL, '830fe47dd02c279ce06ccc4bbdfd14add03a76c9', 'pegawai', '2021-05-23 15:19:12', '2021-05-23 15:19:12', NULL, NULL, NULL, 'notelp', 89, NULL, NULL, NULL),
(51, 'budiono', 'budion@gmail.com', NULL, NULL, '$2y$10$8TRWryFTNE3Jr6ICnFCYy.gxQZ0MawiI2Jq2KH8FHjpeEoFkM/Poe', NULL, '830fe47dd02c279ce06ccc4bbdfd14add03a76c9', 'pegawai', '2021-05-23 15:19:45', '2021-05-23 15:19:45', NULL, NULL, NULL, 'notelp', 89, NULL, NULL, NULL),
(52, 'Tina', 'tina@gmail.com', NULL, NULL, '$2y$10$d2akTxD2E8lYfTdirq62lONcFao6i1zU6DXwMVY2fiO7Lly3OqDa.', NULL, '830fe47dd02c279ce06ccc4bbdfd14add03a76c9', 'pegawai', '2021-05-23 15:20:37', '2021-05-23 15:20:37', NULL, NULL, NULL, 'notelp', 90, NULL, NULL, NULL),
(53, 'sihol', 'siholpakpahan2@gmail.com', NULL, NULL, '$2y$10$GtFt3nVLdJ4gzwkiDNpBc.3dZVacxpPXYnTk4qPwQDIfqINHACRbq', NULL, '1ac59b32465807295477fca51d1f34c92d8e9e07', 'owner', '2021-05-24 07:04:58', '2021-05-24 07:04:58', NULL, NULL, NULL, '08158764032', NULL, NULL, NULL, NULL),
(54, 'Ardib', 'ardib@gmail.com', NULL, NULL, '$2y$10$mi1bD5i02MtQo63Ik0sxbepJq9z16RBVbqkUxdXsPudoEQUS8.IbG', NULL, 'b24ef23c293c48613adfd44b74fe8d121e3527f4', 'owner', '2021-05-24 12:22:10', '2021-05-24 12:22:10', NULL, NULL, NULL, '085685984458', NULL, NULL, NULL, NULL),
(55, 'Ardib 1', 'ardib1@gmail.com', NULL, NULL, '$2y$10$rcOQOT9J2cA6QivQxzJkO.dlMV/LItRniiK3YE4GpYorrEEUqaFgK', NULL, 'b24ef23c293c48613adfd44b74fe8d121e3527f4', 'pegawai', '2021-05-24 12:22:50', '2021-05-24 12:22:50', NULL, NULL, NULL, 'notelp', 92, NULL, NULL, NULL),
(56, 'Ardib 2', 'ardib1@gmail.com', NULL, NULL, '$2y$10$S/3vjj4EbSM9sXMRwso6Fut9/YUR30tyxCWs4SiWALYg3ie0Z2r5i', NULL, 'b24ef23c293c48613adfd44b74fe8d121e3527f4', 'pegawai', '2021-05-24 12:23:05', '2021-05-24 12:23:05', NULL, NULL, NULL, 'notelp', 93, NULL, NULL, NULL),
(59, 'haidar', 'haidar.khalidsp@gmail.com', NULL, NULL, '$2y$10$9O6eulN.D3HrcsuEx6cni.R9pQhWn3grHtud3Msj0.DBmVJIifgY6', NULL, '729a294ce73c711728fa8db9d500f67e61b34631', 'owner', '2021-05-28 03:09:15', '2021-05-28 03:09:15', NULL, '110.77719333333', '-7.58769', '0', NULL, NULL, NULL, NULL),
(60, 'Rahma', 'rahma@gmail.com', NULL, NULL, '$2y$10$OkEoYVLe4WBNRSb7CjVZC./2v/mWCTdxr4ARGePiueTmuCHA/0nMG', NULL, 'f1f9571777e0b3eba08ea1b650e4c243263a01ed', 'owner', '2021-05-29 13:43:42', '2021-05-29 13:43:42', NULL, NULL, NULL, '085628121113', NULL, NULL, NULL, NULL),
(61, 'Rahma 1', 'rahma1@gmail.com', NULL, NULL, '$2y$10$DuErjVb5uieo1lGZ8XI9l.RIKZD5i.2UDteGMhUJQxr3YTLfZtihG', NULL, 'f1f9571777e0b3eba08ea1b650e4c243263a01ed', 'pegawai', '2021-05-29 13:44:10', '2021-05-29 13:44:10', NULL, NULL, NULL, '085628121116', NULL, NULL, NULL, NULL),
(62, 'kedaiX', 'kedaix.tamankulinerdepkes@gmail.com', NULL, '1524616401.jpg', '$2y$10$s6rrKU6/YF.cPv//cbfv2euSX7z751tXHqqPlBtf00IE4ncYQapwW', NULL, 'c9c230d059c0446569a92b18a07fd07066e4c30c', 'owner', '2021-05-30 12:17:47', '2021-05-30 12:17:47', NULL, NULL, NULL, '081320260812', NULL, NULL, NULL, NULL),
(63, 'DADANG SUPRIATNA', 'adangmanaf@mail.com', NULL, NULL, '$2y$10$8vR1vrxgbk4dJexVfABwVORRpY/pQP666vU2UHIO9TNH8HH7fTG2O', NULL, '4176828d6f01714586bf15d5702c7b6010cc38e0', 'owner', '2021-05-31 01:00:46', '2021-05-31 01:00:46', NULL, NULL, NULL, '083827100007', NULL, NULL, NULL, NULL),
(64, 'ADMIN GERAI RADJA', 'gerairadjaa@gmail.com', NULL, NULL, '$2y$10$rU7afnnBxst70ZsuuJbqSOpTHm1O/q7GAX.eRx3.wWLbCAedNl.qW', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'owner', '2021-06-01 11:06:20', '2021-06-01 11:06:20', NULL, '105.29838144779', '-5.4070436954498', '081271149263', NULL, NULL, NULL, NULL),
(65, 'Neli septianti', 'neliphotographerr@gmail.com', NULL, NULL, '$2y$10$FrAGGVIhfsc/gShr4EzsK.FtwKNN7S1QRmWwUCzqRck2qY6boG2Ee', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'pegawai', '2021-06-01 11:08:49', '2021-06-01 11:08:49', NULL, '105.2982541', '-5.4072511', '081271149263', 98, NULL, NULL, NULL),
(66, 'Bambang irawan', 'Bambangirawansolo@gmail.com', NULL, NULL, '$2y$10$Chvx7bpoCQuoy2fc9vjMMOj7qmuvDqznSXuj3vROPjZpiveTbFkHO', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'pegawai', '2021-06-01 11:13:56', '2021-06-01 11:13:56', NULL, '110.74765657', '-7.57563407', '082242072085', 105, NULL, NULL, NULL),
(67, 'Muhammad fakhru alfarizqi', 'mfakhrualfarizqi91@gmail.com', NULL, '1752900866.jpg', '$2y$10$3phh7LXtT/enQE1OfHrrPOWFfvSTV1kOdsR7itAsHxGdyGJomIpQe', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'pegawai', '2021-06-01 11:39:52', '2021-06-01 11:39:52', NULL, '110.74007349', '-7.59737981', '082336027960', 135, NULL, NULL, NULL),
(69, 'Heri wahono', 'wahonoh92@gmail.com', NULL, NULL, '$2y$10$Ocjypi6MeQwQ6oN7XusDW.H.uz0wTTjfxbLeD4iun40jYEGLe4KqK', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'pegawai', '2021-06-01 11:44:26', '2021-06-01 11:44:26', NULL, '105.29467333333', '-5.34504', '085809156213', 106, NULL, NULL, NULL),
(70, 'Binta chizba adila', 'binta.adila15@gmail.com', NULL, NULL, '$2y$10$NcehP5HUAsV7x1wZBiCC9ecdBR82DAnBoi79oz7PciMG0i1Pbq6de', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'pegawai', '2021-06-01 12:18:04', '2021-06-01 12:18:04', NULL, '110.76739833333', '-7.5573566666667', '0895622157137', 103, NULL, NULL, NULL),
(71, 'Anugerah', 'ascbaubau90@gmail.com', NULL, NULL, '$2y$10$k95c.leKndg2YZMdaSepDuqDSkKpL6/8LhFT7iK8XtXGBrmIA/3JS', NULL, '910ae7a108aec499a01dd9c6c6e408fbedc354bd', 'owner', '2021-06-03 00:04:15', '2021-06-03 00:04:15', NULL, '122.59489666667', '-5.4629816666667', '085243222400', NULL, NULL, NULL, NULL),
(72, 'Musyafar', 'musyafar06@gmail.com', NULL, NULL, '$2y$10$hQQVQfTuGJLzHgAjNNvKaeGS32yHFoiYT9QfTCXsnKr/STn0619/m', NULL, '910ae7a108aec499a01dd9c6c6e408fbedc354bd', 'pegawai', '2021-06-03 00:29:07', '2021-06-03 00:29:07', NULL, '122.59475666667', '-5.4628183333333', '082394673164', 107, NULL, NULL, NULL),
(73, 'Sarman', 'bibh6180@gmail.com', NULL, NULL, '$2y$10$EMsAXhgDMXGnzE53XLDZH.upZnJkOaXX1cufsN3srLtZnGuAVooNm', NULL, '910ae7a108aec499a01dd9c6c6e408fbedc354bd', 'pegawai', '2021-06-03 00:31:46', '2021-06-03 00:31:46', NULL, NULL, NULL, '085326030834', 107, NULL, NULL, NULL),
(74, 'HAIDAR KHALID SYAHPUTRA', 'Haidar.ksp92@gmail.com', NULL, NULL, '$2y$10$MYw..mUcRqPbQF4WqszEyeyiD43fUOttOWZUnrrpOmE.BM2fu3HPS', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'pegawai', '2021-06-03 02:12:55', '2021-06-03 02:12:55', NULL, '110.77691833333', '-7.5879833333333', '082223519133', 109, NULL, NULL, NULL),
(75, 'KALITA PURWANTI', 'kelitapurwanti@gmail.com', NULL, NULL, '$2y$10$mUYyjFLo4X.Klmivtx1qPuw/0cUx7UkMu7EjxerUAWVtSACUmMa42', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'pegawai', '2021-06-03 02:17:44', '2021-06-03 02:17:44', NULL, '110.76747961', '-7.55741298', '085717195160', 103, NULL, NULL, NULL),
(76, 'Raihan muhamad rizkan', 'raihanmuhamad016@gmail.com', NULL, NULL, '$2y$10$SgbA00Vxwobp3csw/U/RBe0Gi3fQITJjVivvZCVoSwa/lCMhPNrK6', NULL, '40a927ab97dc5791bf63b6118adb41f0cef1d6d2', 'owner', '2021-06-03 15:20:53', '2021-06-03 15:20:53', NULL, NULL, NULL, '0895428995858', NULL, NULL, NULL, NULL),
(77, 'Habsyi', 'habsyi001@gmail.com', NULL, NULL, '$2y$10$toUw3pCGJpK1pilFFRgRIeiA..oy1wxRqdhCdk/DhVBblj4cVHdP.', NULL, 'be7230b228317c581b058af8f17bb339cb6331f5', 'owner', '2021-06-05 02:08:07', '2021-06-05 02:08:07', NULL, NULL, NULL, '082140766163', NULL, NULL, NULL, NULL),
(78, 'Hasyifapayment', 'casripin.ipin87@gmail.com', NULL, '199871431.jpg', '$2y$10$8WxeO3U9a.nG8eU1/eoJp.s8OOm0.rQk9M/RhRqw6e9zVut6EF3RC', NULL, '2a1378c91bfe2980474f5c0e800b07e4565c03c1', 'owner', '2021-06-05 09:54:29', '2021-06-05 09:54:29', NULL, '108.8931338', '-6.94319568', '082328764089', NULL, NULL, NULL, NULL),
(79, 'Nongki Square', 'nongki.square@gmail.com', NULL, NULL, '$2y$10$AcD1//H2ijf.6m9YbPrOZuT01Ppg3f20IVslwbapjyJMt2.vV0wli', NULL, '6f8d9a0b16bb4b8867d383c15325293368e6f8e2', 'owner', '2021-06-05 10:24:34', '2021-06-05 10:24:34', NULL, NULL, NULL, '089601892771', NULL, NULL, NULL, NULL),
(80, 'Muhammad Fachrurrozy', 'bakardulu90@gmail.com', NULL, NULL, '$2y$10$Lmt61a70qPO1kmghWbVXO.uwTMcT0RRgFq7cDeSP6eYS40G.oTCIW', NULL, '6f8d9a0b16bb4b8867d383c15325293368e6f8e2', 'pegawai', '2021-06-05 10:26:08', '2021-06-05 10:26:08', NULL, NULL, NULL, '089601892771', NULL, NULL, NULL, NULL),
(81, 'Riris', 'ristragusmanto@gmail.com', NULL, NULL, '$2y$10$2Irm7yA9MUcnE7p2TgihR.G75OBaXad0PpwSL7Ml1R4V29EbrIISm', NULL, 'ad65988998c14646f3c492c367fe8b3eec464f79', 'owner', '2021-06-08 01:07:16', '2021-06-08 01:07:16', NULL, '101.4483', '0.53278', '081247184339', NULL, NULL, NULL, NULL),
(83, 'IBNU AGUS SETIAWAN', 'ibnuaagussetiawan223@gmail.com', NULL, NULL, '$2y$10$Vx6rUB/nHC0vqYfrTEIW8uvf9ay8Ufa8HTGXUmXOPIGhwFT.c4LFW', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'pegawai', '2021-06-09 02:28:51', '2021-06-09 02:28:51', NULL, '110.777297616', '-7.5877010822296', '089649268719', 109, NULL, NULL, NULL),
(84, 'Pungki', 'artjatmiko@gmail.com', NULL, NULL, '$2y$10$J.uD571Otc/z44IDlB6LpuHPB2nKdClZux30Gyn9SSl5L3tdytwHu', NULL, '63cd28aae9f9174eaa45a2f11d52839e56a668eb', 'owner', '2021-06-11 04:20:19', '2021-06-11 04:20:19', NULL, NULL, NULL, '081919954739', NULL, NULL, NULL, NULL),
(85, 'Hendra', 'zulfahendra05@gmail.com', NULL, NULL, '$2y$10$iSbkInZLqA7EsjcVin2IxubZOzOqJq8U6qAU6bfYUXrupZvTr//Vu', NULL, 'a01d9f5353099b33fcbd6316597657b09de1fc27', 'owner', '2021-06-14 07:16:39', '2021-06-14 07:16:39', NULL, NULL, NULL, '082391831230', NULL, NULL, NULL, NULL),
(86, 'ROFIQ ICHSANUDIN MUNTORO', 'rofiqmuntoro@gmail.com', NULL, NULL, '$2y$10$x2qI4VZeB.pmHBjPu0ninuSq/nHLepvpE5rnWlIm.18v2/bbnRfG2', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'pegawai', '2021-06-15 01:21:53', '2021-06-15 01:21:53', NULL, '110.77777504921', '-7.5884199142456', '08386411968', 109, NULL, NULL, NULL),
(87, 'Suhut Sumadilaga', 'suhutsumadilaga@gmail.com', NULL, NULL, '$2y$10$zWR3JzWIAXYc8TuYKvsgUusgDOtuE9VigW3Bd7QeRypig0G5c6t7m', NULL, '7b845ab1572db9b8323d497791716c6543cf3bba', 'owner', '2021-06-15 04:05:41', '2021-06-15 04:05:41', NULL, NULL, NULL, '081219211114', NULL, NULL, NULL, NULL),
(88, 'ardistalink', 'sipsemeru.yamaha@gmail.com', NULL, NULL, '$2y$10$jHxjg5LQhvFBaOVZ/Iy8pOb8D8KsHuyLS9EYXbKsmlv5kgeMc..4O', NULL, '50ec48b2ba11917e9a38b93697551ac97fa769b1', 'owner', '2021-06-16 06:31:51', '2021-06-16 06:31:51', NULL, '113.21198238', '-8.13529001', '085156744809', NULL, NULL, NULL, NULL),
(89, 'lazismukotagede', 'lazismukotagede@gmail.com', NULL, NULL, '$2y$10$4HzpTSMBNlonUBZjer8W/.Zas1AoG6o6rpXiefhG/H6Cn1S2eWs.W', NULL, '521c76195a70f5d34a6214db7a210786a9919973', 'owner', '2021-06-17 08:21:21', '2021-06-17 08:21:21', NULL, '110.39415', '-7.82484', '088980809341', NULL, NULL, NULL, NULL),
(90, 'khoirularif84', 'khoirularifviyono@gmail.com', NULL, NULL, '$2y$10$tZPNFo/4ICngtNtxBOhZweeuUQnt4jNQwrMn8mJtS0VEqb/h39/76', NULL, '7a25e7deee42f9b9c0750ed1f80f28e9d234fb52', 'owner', '2021-06-19 04:33:45', '2021-06-19 04:33:45', NULL, NULL, NULL, '081259088585', NULL, NULL, NULL, NULL),
(91, 'Mustamin', 'dj.mustamin@gmail.com', NULL, NULL, '$2y$10$l9ThIFTnFo9WPQYu7JOsD.S9lnqwYqfqPWVY/LgtJl7nxi4VB/pyW', NULL, '0728eaa547dfc9fca4ab0869bf3cec7253ba865e', 'owner', '2021-06-19 09:34:08', '2021-06-19 09:34:08', NULL, NULL, NULL, '08114054661', NULL, NULL, NULL, NULL),
(92, 'Mursalin', 'Hossaliin@gmail.com', NULL, NULL, '$2y$10$6fbDB/Rhp.IY3iF28yTHi.km5bT/ZMdnrNBRNk7sNw2ugIl945YmG', NULL, '4a08abddc4dfd9986f4ead30b898665d078ff94b', 'owner', '2021-06-21 03:06:09', '2021-06-21 03:06:09', NULL, NULL, NULL, '085758660877', NULL, NULL, NULL, NULL),
(93, 'andi nu\'man fadhlullah jumhari', 'andi.numan.fj@gmail.com', NULL, NULL, '$2y$10$tShROYjGhc0IpvEAX.vYpeYCoH81TkVTRKaZWab307T/qaFDZZJNW', NULL, '342f64613a856fae47cac2b0c02abdc51ce0ee23', 'owner', '2021-06-22 00:11:43', '2021-06-22 00:11:43', NULL, NULL, NULL, '085298010262', NULL, NULL, NULL, NULL),
(94, 'Aditya Kurniawan', 'aditya2004ttt@gmail.com', NULL, NULL, '$2y$10$.CQOjKflfoFa/7gUhSkSxuvmr2CAjFNuRC1aTWV4YDrUGfBzQ7k0S', NULL, 'a8cdce6fbd4bb81c6ea6f0083cebf6579157cd0f', 'owner', '2021-06-22 12:12:47', '2021-06-22 12:12:47', NULL, NULL, NULL, '08117288168', NULL, NULL, NULL, NULL),
(95, 'Adzkia Dinda Paramitha', 'dindaramitha@gmail.com', NULL, NULL, '$2y$10$66Ff4N2.cfCUhDNhr87/COpBq.WLGK5jTTV/t/oYI6g8JYZG0c5Ni', NULL, 'fa43ebea000f4bd4cdaf58a04a1ca995969f2e50', 'owner', '2021-06-23 02:38:47', '2021-06-23 02:38:47', NULL, NULL, NULL, '088980394506', NULL, NULL, NULL, NULL),
(96, 'Johanes Soeling', 'infinitjayainternasional@gmail.com', NULL, '79639284.jpg', '$2y$10$vTHn3l40X2U3aCmQEtRdrOFdBuNZV9aVx/zs0RJgSkgBCM0.ONcmK', NULL, '886003b53a7d230dd149ff4f59c7acefb7f86d27', 'owner', '2021-06-23 14:50:44', '2021-06-23 14:50:44', NULL, '112.78146', '-7.31157177', '082399493189', NULL, NULL, NULL, NULL),
(97, 'Joko ris handoko', 'arisunyil91@gmail.com', NULL, '1077774455.jpg', '$2y$10$6Rip1RsHMgsCSAZqmcoPB.gKNlTsxTO/cTfWMptTtwrjUkJHZlhxO', NULL, '886003b53a7d230dd149ff4f59c7acefb7f86d27', 'pegawai', '2021-06-23 14:57:12', '2021-06-23 14:57:12', NULL, '112.78159666667', '-7.3117683333333', '085746831662', NULL, NULL, NULL, NULL),
(98, 'Cika Nirmalasari', 'cnirmalasari@gmail.com', NULL, '1999370368.jpg', '$2y$10$xOt4RipXKDbcuiBhnZ.a4um8OClafsSt8YpLcL00B7XSdPozlGkqm', NULL, '886003b53a7d230dd149ff4f59c7acefb7f86d27', 'pegawai', '2021-06-23 15:28:07', '2021-06-23 15:28:07', NULL, '112.78183658', '-7.31190205', '085877709155', NULL, NULL, NULL, NULL),
(99, 'fadhillah fiannisa', 'fadhillahannisa123@gmail.com', NULL, NULL, '$2y$10$7jEBYVZaAGsPTXfJZEYH1u30yETSPxpIMQtmCJKdcdCJjuGQVpOYi', NULL, '886003b53a7d230dd149ff4f59c7acefb7f86d27', 'pegawai', '2021-06-23 15:36:42', '2021-06-23 15:36:42', NULL, '112.69904088', '-7.42526911', '081231538911', NULL, NULL, NULL, NULL),
(100, 'Andre gema alam', 'ucokritonga72@gmail.com', NULL, NULL, '$2y$10$O4Q/ZVvkcoOq2zciwrb9MOMCuH224utuYoCXn5Joa9Hfd5w7fDBhe', NULL, '886003b53a7d230dd149ff4f59c7acefb7f86d27', 'pegawai', '2021-06-23 15:39:55', '2021-06-23 15:39:55', NULL, NULL, NULL, '081338268468', NULL, NULL, NULL, NULL),
(101, 'Hamdani', 'Hamdanidanny57@gmail.com', NULL, NULL, '$2y$10$3aaF0x1.mBlUnIYOTgsx7uemi.ok9w6/QTZBy.1q6BtmIyZMvRVPS', NULL, 'fd3d5752a71a1549ef65518330c0bc1fd1a39554', 'owner', '2021-06-27 09:49:48', '2021-06-27 09:49:48', NULL, NULL, NULL, '0213160988', NULL, NULL, NULL, NULL),
(102, 'Dindin Kurnia', 'dindinkurnia25@gmail.com', NULL, NULL, '$2y$10$FcmZDlAVp3VP6YWedpbNh.B3UtFyQjFA4yFtY2XdWw870XLMsXfUm', NULL, 'f36c18a8c0ed5c07ef2e8754b7145fbe163efa50', 'owner', '2021-06-28 11:45:03', '2021-06-28 11:45:03', NULL, NULL, NULL, '085880000898', NULL, NULL, NULL, NULL),
(103, 'Legiman', 'el.gie.man@gmail.com', NULL, '1906221186.jpg', '$2y$10$suiRO9v2WK1895gfJf9yi.E53AiwhzFFcI7oDJ34SgAZGz5.KeUqe', NULL, 'b696c4cd52d1e4ba62d7d0d223fa30ed2c95e1c7', 'owner', '2021-06-29 00:27:32', '2021-06-29 00:27:32', NULL, NULL, NULL, '085643009395', NULL, NULL, NULL, NULL),
(104, 'realdiet', 'realdiet.bdg@gmail.com', NULL, NULL, '$2y$10$TWRXuOW6vn7D8W2W1JuQuOr9XArj6NYtKKDrVYj20N4pjirtInQZq', NULL, 'f63c2db4f7d2bc1e39d3783acb13c11803d83889', 'owner', '2021-06-29 07:47:13', '2021-06-29 07:47:13', NULL, NULL, NULL, '082118067969', NULL, NULL, NULL, NULL),
(105, 'ARIS SUDARSONO', 'devilgrafis@gmail.con', NULL, NULL, '$2y$10$1kpZXlvR9X6SOXkeucE0qeHua.BaAiH8mzPRHabLw8DOebw4oeV9.', NULL, 'd34dcc28ba173f18db709967a3bdea95062a6c2b', 'owner', '2021-06-29 16:14:01', '2021-06-29 16:14:01', NULL, NULL, NULL, '085804222202', NULL, NULL, NULL, NULL),
(106, 'SAMSUDARMAN', 'samsudarman_yudha@yahoo.com', NULL, NULL, '$2y$10$.EsTgmtzGHIYU8QI/6StneeoMZ3bbGM7frPazTuvGU9/DVbhR2zMK', NULL, '8d185036ad0b836190f3a72962ecf7781a172af2', 'owner', '2021-06-30 06:12:36', '2021-06-30 06:12:36', NULL, NULL, NULL, '085343982994', NULL, NULL, NULL, NULL),
(107, 'Sansico Natura', 'drivethrucikini@gmail.com', NULL, NULL, '$2y$10$3yXDNRYFh7AjriYGSkxs4eOZ7gPPfC/7.JgdhDeqyhkw0h81DB63u', NULL, 'dd1a3c3ad7db0997d3729db97c8c57670db5ba19', 'owner', '2021-07-01 00:16:18', '2021-07-01 00:16:18', NULL, NULL, NULL, '081383850655', NULL, NULL, NULL, NULL),
(108, 'Dinda', 'rag.ghaisani16@gmail.com', NULL, NULL, '$2y$10$hxvL.ja2kvPIA30J3sX3G.2fPWMiAvYiJlfJBjgAFqXV0Yc/DLqJK', NULL, 'a277001fb8d644a58aa4211e3c02855dd0709727', 'owner', '2021-07-01 07:16:48', '2021-07-01 07:16:48', NULL, NULL, NULL, '0895391779942', NULL, NULL, NULL, NULL),
(110, 'M Khoironi Subagio', 'khoironisubagio01@gmail.com', NULL, '762072384.jpg', '$2y$10$MzVs5A.VWg.JejNutS1M1.jlZJ8Ewj5u432lgiB.E8Ae4Cgm7F08G', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'pegawai', '2021-07-01 08:13:31', '2021-07-01 08:13:31', NULL, '110.7400706', '-7.5974169', '081395729955', 135, NULL, NULL, NULL),
(111, 'Azkia Dinda Paramitha', 'dindaramitha@gmail.com', NULL, NULL, '$2y$10$sZUD7HRaKNSo2IkD1hNhMOfCsOREm9svyhVMnCc8YXC/H64ks/2UO', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'pegawai', '2021-07-01 09:00:30', '2021-07-01 09:00:30', NULL, NULL, NULL, '088980394506', 140, NULL, NULL, NULL),
(113, 'EDI WAHYU NIGAYO', 'birahpanyang21@gmail.com', NULL, NULL, '$2y$10$UX4hC0b/DyEcGP8r35vE/.hyKor9BJ7JVWmpLgdQRQ1GOA/NcPz46', NULL, 'f2fb0b6a0d95a4af3a83d2ef17f76529428ce979', 'owner', '2021-07-01 20:27:00', '2021-07-01 20:27:00', NULL, NULL, NULL, '085277453443', NULL, NULL, NULL, NULL),
(114, 'Wafa3881', 'wafatrader@gmail.com', NULL, NULL, '$2y$10$/B.o7lmsdNbvXIyi5uJAJ.uKyaI93Kt66GvQ.jAjRGIJ6OlFtqT1O', NULL, '36edb1e626a2a3ce8aa31f03c4e2c0d1232e3918', 'owner', '2021-07-02 05:55:53', '2021-07-02 05:55:53', NULL, '111.69619666667', '-7.1521166666667', '082235535925', NULL, NULL, NULL, NULL),
(115, 'daunkuring', 'Daunkuring@gmail.com', NULL, NULL, '$2y$10$nDS8nBCFZ2LJ9RHeHqLZT.sXPTtvRRPWu4Dm2wIbuVEcaLgmUMKi6', NULL, '1dc6b19059b347918673608bb7fc576376b516ca', 'owner', '2021-07-02 15:59:45', '2021-07-02 15:59:45', NULL, NULL, NULL, '081343966415', NULL, NULL, NULL, NULL),
(116, 'SUWANDA', 'suwanda2109@gmail.com', NULL, NULL, '$2y$10$9Uu9uacPSc3OIIIM0KwSne3Ih19qkdP.qrM4fktj5TKwhbxxTN59a', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'pegawai', '2021-07-03 00:08:03', '2021-07-03 00:08:03', NULL, '108.55774133', '-6.76000742', '083824928010', 140, NULL, NULL, NULL),
(117, 'WAHYU SETIAWAN', 'wahyusetiaone@gmail.com', NULL, NULL, '$2y$10$x7GjSvEm3B7dkDprcJu70.BBo1nKZ5fezSVHPO.0/QxKxqjlb0zQ6', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'pegawai', '2021-07-03 00:11:43', '2021-07-03 00:11:43', NULL, '110.7400593', '-7.5974124', '081882881286', 135, NULL, NULL, NULL),
(118, 'Azkia Dinda Paramitha', 'dindareyhan190@gmail.com', NULL, NULL, '$2y$10$q6f.Xnq/ZhFRpUa1gMflc.13yJy5GGE7oaWBqb95mM9FctlbKixj6', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'pegawai', '2021-07-03 00:14:31', '2021-07-03 00:14:31', NULL, '110.77716350555', '-7.5875508785248', '088980394506', 109, NULL, NULL, NULL),
(119, 'Siti Farkhatun', 'sitifarkhatun17@gmail.com', NULL, NULL, '$2y$10$Ahnw4VcsOJldnDonSRRAPeNupyvllluVHCMPTZj51v/mYttCcpw4m', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'pegawai', '2021-07-03 07:14:56', '2021-07-03 07:14:56', NULL, '109.12283280864', '-6.9848228059709', '087895739241', 141, NULL, NULL, NULL),
(120, 'Iwan efendy', 'alexmurtado031@gmail.com', NULL, NULL, '$2y$10$D4HntYBmNLpSTWoyywBAyePfxC.uQVhRXcPxg0Ys/icxjKblRIsae', NULL, '6c91bb6742fd803b2c85668f6191e617359f2155', 'owner', '2021-07-03 14:28:37', '2021-07-03 14:28:37', NULL, '112.880185', '-7.6689066666667', '081333914333', NULL, NULL, NULL, NULL),
(121, 'asharyalam', 'asharyalam@gmail.com', NULL, NULL, '$2y$10$EC14JCkC6DTZaw0TLhNIQuKT6reiwhh4AsnZqMAw38otj9H2BZ98S', NULL, 'ef301b362774850d0e298177422a01f18e95a5a7', 'owner', '2021-07-04 20:38:29', '2021-07-04 20:38:29', NULL, '119.47655295', '-5.16281', '085219712696', NULL, NULL, NULL, NULL),
(122, 'Fariz Kurniawan', 'farizkurniawan205@gmail.com', NULL, NULL, '$2y$10$29K5findrHdDJReirM8H8e9WnvLrkc6a9ZuSPyG4SmeCSD8eBumrS', NULL, '0181cdd5db0a5629b7a84b5858503c358cb50213', 'owner', '2021-07-05 09:46:46', '2021-07-05 09:46:46', NULL, NULL, NULL, '08129419496', NULL, NULL, NULL, NULL),
(123, 'Perum savasa', 'acarwan2@gmail.com', NULL, '1004695200.jpg', '$2y$10$6wFzgZRJoKYi6LboMraCqeieg1Tk.z3zWvY5oivjHPCgS8P0l.0ka', NULL, '3c273e8815e8ee75ed1cc4d4574d33bb4bbcba68', 'owner', '2021-07-05 12:06:12', '2021-07-05 12:06:12', NULL, NULL, NULL, '085719761997', NULL, NULL, NULL, NULL),
(124, 'ABDUL AZIZ', 'abdulaziz13.aa13@gmail.com', NULL, NULL, '$2y$10$QRu.5I0tplGhZw74YnS8tOzxhKaDA725o0XtRsBxsNoX5bmGD4WTi', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'pegawai', '2021-07-06 00:48:34', '2021-07-06 00:48:34', NULL, '109.68947159', '-6.88819117', '085742299461', 146, NULL, NULL, NULL),
(125, 'Aa syihabuddin', 'aasyihabuddin@gmail.com', NULL, NULL, '$2y$10$PgefGgaHIGEcgmSL13MexeBfs0Qx8PiNkzcHUjYD7vhGBckV9VOly', NULL, '60760f10c440356438d010df7acea56cfd52c0ce', 'owner', '2021-07-06 14:03:40', '2021-07-06 14:03:40', NULL, NULL, NULL, '085280077704', NULL, NULL, NULL, NULL),
(126, 'MIRA NISA', 'miranisa1421@gmail.com', NULL, NULL, '$2y$10$DdNR4ur7VB1S2FmN0F9fSejYqYFxuUaVgf1mnzoupj7Ez1C.v69xe', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'pegawai', '2021-07-07 01:39:24', '2021-07-07 01:39:24', NULL, '110.48638011', '-6.97845335', '081226998506', 148, NULL, NULL, NULL),
(127, 'Kasful Anwar', 'anwarkasful990@gmail.com', NULL, NULL, '$2y$10$EyOaBDrezMKmfK6nOpfXeeDtSZ5MAhHNxTcU3lNTIeJbBz.LWvXCm', NULL, '11b72e8ce60d67734a3607cb046b0f746499aadf', 'owner', '2021-07-07 18:07:11', '2021-07-07 18:07:11', NULL, NULL, NULL, '085388210692', NULL, '2', 'Jalan kaki', NULL),
(128, 'Pardi', 'radeyafadhil@gmail.com', NULL, NULL, '$2y$10$D1D2yLht9M4Rci0scRVXrusn/wSqT8f/dt.iJ.RoyYpnkCT3C8N02', NULL, '66f854ef515616a82699e16fb8840e3051069c14', 'owner', '2021-07-08 00:57:56', '2021-07-08 00:57:56', NULL, '107.3019143', '-6.1592037', '083805174743', NULL, NULL, NULL, NULL),
(129, 'Alex', 'akholiq44@gmail.com', NULL, NULL, '$2y$10$kuxbEaBb/yYGQKOvf/HBbuN4tUL1qoiafMyO9czu.6N/ajLGTKSNm', NULL, 'afbae82beac065e741da8199ab8aa72fda4995a0', 'owner', '2021-07-08 02:23:38', '2021-07-08 02:23:38', NULL, NULL, NULL, '085748122234', NULL, NULL, NULL, NULL),
(130, 'MAULANRIAN', 'maulanrian0@gmail.com', NULL, NULL, '$2y$10$OC/v2en/..Xpy13OBivGPu2G3uPGMqX6adtKddPwfAel84f55QNdu', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'pegawai', '2021-07-08 06:51:17', '2021-07-08 06:51:17', NULL, NULL, NULL, '088232267416', 152, NULL, NULL, NULL),
(131, 'MAULANRIAN', 'Gerairadjajogja@gmail.com', NULL, NULL, '$2y$10$nXcuRW6xToWxfM8tvuOkzue9xcndizBJ6ddorRFmgsHwy5IQW2Evy', NULL, 'c9c361698e7182c87986c9bcdb33383a2048843b', 'pegawai', '2021-07-09 02:29:07', '2021-07-09 02:29:07', NULL, '110.46647166667', '-7.7025333333333', '088232267416', 152, NULL, NULL, NULL),
(132, 'Putri Danurdara Hand', 'handdanur@gmail.com', NULL, NULL, '$2y$10$VT7.chpIpbZD/sf3VNu9zenZJy.YZwbrx6eK3MTHr6OaTQqtDpPza', NULL, '8c5e19c526820ddc7524aade391538e79650c10d', 'owner', '2021-07-09 06:57:45', '2021-07-09 06:57:45', NULL, NULL, NULL, '087775136350', NULL, NULL, NULL, NULL),
(133, 'Singgih', 'singpsikologi04@gmail.com', NULL, NULL, '$2y$10$KLlxp2Wh.uXGw/7urypskudMVJpah57/pE0T9ilxdU7AKcrnzVbzC', NULL, '8c5e19c526820ddc7524aade391538e79650c10d', 'pegawai', '2021-07-09 07:01:48', '2021-07-09 07:01:48', NULL, NULL, NULL, '081393604442', 153, NULL, NULL, NULL),
(134, 'Yohana Syarif Krisqianto', 'yohanszsyarif@gmail.com', NULL, NULL, '$2y$10$/8T3X4dpZj39k2wGztepoOLktiIuGBD2XRiUlm1x2oTKLByFJpbN6', NULL, '0c71b8f68221f560cfca4b88e5014e3996ddad1c', 'owner', '2021-07-09 12:43:22', '2021-07-09 12:43:22', NULL, NULL, NULL, '02816871310', NULL, NULL, NULL, NULL),
(135, 'Rianto', 'riantonn@gmail.com', NULL, NULL, '$2y$10$CHmjDAAWid4aiH7050EyV.JlGoc.EbZ5eZALHSrWi1uFjENyYRXOS', NULL, '0c71b8f68221f560cfca4b88e5014e3996ddad1c', 'pegawai', '2021-07-09 12:52:32', '2021-07-09 12:52:32', NULL, '109.23499333333', '-7.3580883333333', '085156487764', NULL, NULL, NULL, NULL),
(136, 'Manik', 'kukuhmanik04@gmail.com', NULL, NULL, '$2y$10$WJ1seDJS6z/mF0pkHMR/XOxno/pLfRvAyBG6msgRIeA8TcnzpZUge', NULL, '2813fa6b0cfca87de2efc4e86d62dbb146d4e6b5', 'owner', '2021-07-09 13:25:14', '2021-07-09 13:25:14', NULL, NULL, NULL, '081248321418', NULL, NULL, NULL, NULL),
(137, 'Eko Waluyo', 'eckowaluyo47@gmail.com', NULL, '1685671639.jpg', '$2y$10$AYi0CpsqRXDFNdMqDrIs/OPS1cpERO63mFhmKhmJymHGy5MY./eNy', NULL, '65db8d38c5d6175bda755470bc779de5624abc21', 'owner', '2021-07-12 09:28:10', '2021-07-12 09:28:10', NULL, '111.138556', '-6.707439', '08112541606', NULL, NULL, NULL, NULL),
(138, 'rielfarm', 'rielfarmresort2@gmail.com', NULL, NULL, '$2y$10$.EnKVvEMPkCk6YVzOh1xUOfz5eYKQ14JB1vVn/AUna4708LUV3.gO', NULL, 'c510cc31f7844d40002eaf93beef16054b7be201', 'owner', '2021-07-13 08:41:43', '2021-07-13 08:41:43', NULL, NULL, NULL, '085715568690', NULL, NULL, NULL, NULL),
(139, 'Syahrul', 'syahrulmocha@gmail.com', NULL, NULL, '$2y$10$MW/0Jm8eG5FVTsl3CYahYOGYFuVTN/ggqYBbT.7hB5X3rT.t.Rzdm', NULL, '46583e5d8a345e0a7ed78b50a846236e474ac7ad', 'owner', '2021-07-14 14:29:06', '2021-07-14 14:29:06', NULL, NULL, NULL, '02154335858', NULL, NULL, NULL, NULL),
(140, 'BVN', 'miyammmobilelegend5@gmail.com', NULL, NULL, '$2y$10$ltTQWwpUR9OO0CKGceojmuP6E5px0jbbK5Yq///paMxyMc2ZXMR5y', NULL, '9a936c76fa358843b1abb07f5e6e9970cb13d5b5', 'owner', '2021-07-16 04:50:36', '2021-07-16 04:50:36', NULL, NULL, NULL, '0859188350955', NULL, NULL, NULL, NULL),
(141, 'andip', 'andipurnomo.work@gmail.com', NULL, NULL, '$2y$10$kEZp0NQdDAAH1gCXL5bOCuVZK.3vKDFcYoyFEJf8xNiJ4DQ6N1v0q', NULL, 'b6ee9619ff55cd770a7d0c008be998d05da4e305', 'owner', '2021-07-23 01:19:51', '2021-07-23 01:19:51', NULL, NULL, NULL, '0895356702702', NULL, NULL, NULL, NULL),
(142, 'M.IMRON', 'imronz8848@gmail.com', NULL, NULL, '$2y$10$7mW6BICgj1NksYGF7COgP.UudOGv2xSI8ZG95DYR.VQttnePq5gYS', NULL, 'ff22cfd436bd05cec43e8e6a495c2f12572b7c56', 'owner', '2021-07-25 16:46:34', '2021-07-25 16:46:34', NULL, NULL, NULL, '088289038920', 161, NULL, NULL, NULL),
(143, 'Pernus', 'asuryadin@gmail.com', NULL, NULL, '$2y$10$bgccTD1K3jJ8Ke2nsprZNu2oWIzsqjq/Tm9HQVRhN/YUfgQUVvnF.', NULL, '2cbb48d9a462ef04745d0397cc7650b392c72c05', 'owner', '2021-07-25 22:16:14', '2021-07-25 22:16:14', NULL, '106.98273166667', '-7.3691166666667', '085624223344', NULL, NULL, NULL, NULL),
(144, 'MUHAMMAD AGUS', '', NULL, NULL, '$2y$10$cRovb1/DHbTchSEGzE9THey63IZyYNALPQnKVPVmbmoRt4ZvlSvpW', NULL, 'ff22cfd436bd05cec43e8e6a495c2f12572b7c56', 'pegawai', '2021-07-26 01:08:50', '2021-07-26 01:08:50', NULL, NULL, NULL, '083117583159', 161, NULL, NULL, NULL),
(145, 'NOVI', '', NULL, NULL, '$2y$10$187WvV2A9JZxeYxTK/CJY.mJX4/RG4Q5Hegcvlpe0rzh3vNc73bqa', NULL, 'ff22cfd436bd05cec43e8e6a495c2f12572b7c56', 'pegawai', '2021-07-26 01:10:47', '2021-07-26 01:10:47', NULL, NULL, NULL, '085775428862', 161, NULL, NULL, NULL),
(146, 'KHARISMA', '', NULL, NULL, '$2y$10$0J1iPO1t3xvonMxxB/oVR.znZbw2a8bDymX9zBF3pJH6whgWAjCrO', NULL, 'ff22cfd436bd05cec43e8e6a495c2f12572b7c56', 'pegawai', '2021-07-26 01:13:08', '2021-07-26 01:13:08', NULL, NULL, NULL, '085706864266', 161, NULL, NULL, NULL),
(147, 'AURAA WEDDING ORGANIZER', 'auraamakeup@gmail.com', NULL, NULL, '$2y$10$NTJLZRMc3zAkavV6JBrPcOxZz982ZlWtZEh5E73nGFMTmyHeRI3.S', NULL, '595b7487ba77c83930f9307e6e521226f72f5f57', 'owner', '2021-07-27 12:40:39', '2021-07-27 12:40:39', NULL, NULL, NULL, '081398394075', NULL, NULL, NULL, NULL),
(148, 'Arofah.makeup', 'auraamakeup@gmail.com', NULL, NULL, '$2y$10$wd43Y0mW0k0cvgE6lRUMW.Sq47qTGVzZGaSa1sU.lhig.dIiOuaHa', NULL, '595b7487ba77c83930f9307e6e521226f72f5f57', 'pegawai', '2021-07-27 12:44:42', '2021-07-27 12:44:42', NULL, NULL, NULL, '085693864440', NULL, NULL, NULL, NULL),
(149, 'Feriawan', 'diancuk0@gmail.com', NULL, NULL, '$2y$10$g/z7SftDLYCoQkFNJOyJr.8uXATVYBf/BDZN/tMqLClCU84eZexh6', NULL, '28fe9a0ded1b59be79903f917998473495ca66f2', 'owner', '2021-07-28 01:08:09', '2021-07-28 01:08:09', NULL, NULL, NULL, '087834933465', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `version`
--

CREATE TABLE `version` (
  `id` int(11) NOT NULL,
  `max_ver` int(11) NOT NULL,
  `min_ver` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `version`
--

INSERT INTO `version` (`id`, `max_ver`, `min_ver`) VALUES
(1, 10, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gaji_cuti`
--
ALTER TABLE `gaji_cuti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gaji_lembur`
--
ALTER TABLE `gaji_lembur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jam_kerja`
--
ALTER TABLE `jam_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kerja`
--
ALTER TABLE `kerja`
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
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `potongan`
--
ALTER TABLE `potongan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_pay`
--
ALTER TABLE `role_pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_payment`
--
ALTER TABLE `role_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_upah`
--
ALTER TABLE `role_upah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_cuti`
--
ALTER TABLE `setting_cuti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `version`
--
ALTER TABLE `version`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1947;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `gaji_cuti`
--
ALTER TABLE `gaji_cuti`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `gaji_lembur`
--
ALTER TABLE `gaji_lembur`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `jam_kerja`
--
ALTER TABLE `jam_kerja`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `kerja`
--
ALTER TABLE `kerja`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=570;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `potongan`
--
ALTER TABLE `potongan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `role_pay`
--
ALTER TABLE `role_pay`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `role_payment`
--
ALTER TABLE `role_payment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `role_upah`
--
ALTER TABLE `role_upah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `setting_cuti`
--
ALTER TABLE `setting_cuti`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `version`
--
ALTER TABLE `version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
