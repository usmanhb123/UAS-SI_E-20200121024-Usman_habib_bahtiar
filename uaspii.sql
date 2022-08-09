-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Agu 2022 pada 20.19
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen`
--

CREATE TABLE `absen` (
  `id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `matakuliah_id` int(11) NOT NULL,
  `waktu_absen` varchar(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `absen`
--

INSERT INTO `absen` (`id`, `semester_id`, `matakuliah_id`, `waktu_absen`, `created_at`, `updated_at`) VALUES
(6, 1, 2, '07-Aug-2022', '2022-08-07 15:22:06', '2022-08-07 15:22:06'),
(7, 1, 2, '08-Aug-2022', '2022-08-08 04:51:06', '2022-08-08 04:51:06'),
(8, 1, 3, '08-Aug-2022', '2022-08-08 04:51:15', '2022-08-08 04:51:15'),
(9, 1, 3, '08-Aug-2022', '2022-08-08 04:51:18', '2022-08-08 04:51:18'),
(10, 1, 3, '08-Aug-2022', '2022-08-08 04:51:21', '2022-08-08 04:51:21'),
(11, 1, 2, '08-Aug-2022', '2022-08-08 05:02:35', '2022-08-08 05:02:35'),
(12, 1, 2, '08-Aug-2022', '2022-08-08 05:02:38', '2022-08-08 05:02:38'),
(13, 1, 2, '08-Aug-2022', '2022-08-08 05:02:41', '2022-08-08 05:02:41'),
(14, 1, 2, '08-Aug-2022', '2022-08-08 05:02:44', '2022-08-08 05:02:44'),
(15, 1, 2, '08-Aug-2022', '2022-08-08 05:03:50', '2022-08-08 05:03:50'),
(16, 1, 2, '08-Aug-2022', '2022-08-08 05:03:54', '2022-08-08 05:03:54'),
(17, 1, 2, '08-Aug-2022', '2022-08-08 05:03:58', '2022-08-08 05:03:58'),
(18, 1, 2, '08-Aug-2022', '2022-08-08 05:04:02', '2022-08-08 05:04:02'),
(19, 1, 2, '08-Aug-2022', '2022-08-08 05:04:06', '2022-08-08 05:04:06'),
(20, 1, 2, '08-Aug-2022', '2022-08-08 05:04:09', '2022-08-08 05:04:09'),
(27, 5, 2, '08-Aug-2022', '2022-08-08 11:19:19', '2022-08-08 11:19:19'),
(28, 5, 2, '08-Aug-2022', '2022-08-08 11:19:22', '2022-08-08 11:19:22'),
(29, 5, 2, '08-Aug-2022', '2022-08-08 11:19:24', '2022-08-08 11:19:24'),
(30, 5, 2, '08-Aug-2022', '2022-08-08 11:19:27', '2022-08-08 11:19:27'),
(31, 5, 2, '08-Aug-2022', '2022-08-08 11:19:28', '2022-08-08 11:19:28'),
(32, 5, 2, '08-Aug-2022', '2022-08-08 11:19:30', '2022-08-08 11:19:30'),
(33, 5, 2, '08-Aug-2022', '2022-08-08 11:19:34', '2022-08-08 11:19:34'),
(34, 5, 2, '08-Aug-2022', '2022-08-08 11:19:37', '2022-08-08 11:19:37'),
(35, 5, 2, '08-Aug-2022', '2022-08-08 11:19:40', '2022-08-08 11:19:40'),
(36, 5, 2, '08-Aug-2022', '2022-08-08 11:19:42', '2022-08-08 11:19:42'),
(37, 5, 2, '08-Aug-2022', '2022-08-08 11:19:44', '2022-08-08 11:19:44'),
(38, 5, 2, '08-Aug-2022', '2022-08-08 11:19:47', '2022-08-08 11:19:47'),
(39, 5, 2, '08-Aug-2022', '2022-08-08 11:19:49', '2022-08-08 11:19:49'),
(40, 5, 2, '08-Aug-2022', '2022-08-08 11:19:52', '2022-08-08 11:19:52'),
(41, 5, 3, '08-Aug-2022', '2022-08-08 11:20:42', '2022-08-08 11:20:42'),
(42, 5, 3, '08-Aug-2022', '2022-08-08 11:20:44', '2022-08-08 11:20:44'),
(43, 5, 3, '08-Aug-2022', '2022-08-08 11:20:44', '2022-08-08 11:20:44'),
(44, 5, 3, '08-Aug-2022', '2022-08-08 11:20:47', '2022-08-08 11:20:47'),
(45, 5, 3, '08-Aug-2022', '2022-08-08 11:20:49', '2022-08-08 11:20:49'),
(46, 5, 3, '08-Aug-2022', '2022-08-08 11:20:51', '2022-08-08 11:20:51'),
(47, 5, 3, '08-Aug-2022', '2022-08-08 11:20:55', '2022-08-08 11:20:55'),
(48, 5, 3, '08-Aug-2022', '2022-08-08 11:20:58', '2022-08-08 11:20:58'),
(49, 5, 3, '08-Aug-2022', '2022-08-08 11:21:00', '2022-08-08 11:21:00'),
(50, 5, 3, '08-Aug-2022', '2022-08-08 11:21:03', '2022-08-08 11:21:03'),
(51, 5, 3, '08-Aug-2022', '2022-08-08 11:21:05', '2022-08-08 11:21:05'),
(52, 5, 3, '08-Aug-2022', '2022-08-08 11:21:08', '2022-08-08 11:21:08'),
(53, 5, 3, '08-Aug-2022', '2022-08-08 11:21:10', '2022-08-08 11:21:10'),
(54, 5, 3, '08-Aug-2022', '2022-08-08 11:21:14', '2022-08-08 11:21:14'),
(55, 5, 4, '08-Aug-2022', '2022-08-08 13:48:17', '2022-08-08 13:48:17'),
(56, 5, 4, '08-Aug-2022', '2022-08-08 13:48:20', '2022-08-08 13:48:20'),
(57, 5, 4, '08-Aug-2022', '2022-08-08 13:48:37', '2022-08-08 13:48:37'),
(58, 5, 4, '09-Aug-2022', '2022-08-09 02:55:54', '2022-08-09 02:55:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen_mahasiswa`
--

CREATE TABLE `absen_mahasiswa` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `absen_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `absen_mahasiswa`
--

INSERT INTO `absen_mahasiswa` (`id`, `users_id`, `absen_id`, `created_at`, `updated_at`) VALUES
(3, 1, 6, '2022-08-08 04:51:11', '2022-08-08 04:51:11'),
(5, 1, 10, '2022-08-08 04:59:03', '2022-08-08 04:59:03'),
(6, 1, 12, '2022-08-08 10:18:47', '2022-08-08 10:18:47'),
(7, 1, 18, '2022-08-08 10:18:50', '2022-08-08 10:18:50'),
(8, 2016102019, 17, '2022-08-08 10:18:54', '2022-08-08 10:18:54'),
(9, 2016102019, 6, '2022-08-08 10:18:56', '2022-08-08 10:18:56'),
(10, 1, 15, '2022-08-08 10:19:00', '2022-08-08 10:19:00'),
(11, 2016102019, 19, '2022-08-08 10:19:03', '2022-08-08 10:19:03'),
(12, 2016102019, 12, '2022-08-08 10:19:06', '2022-08-08 10:19:06'),
(13, 2016102019, 14, '2022-08-08 10:19:11', '2022-08-08 10:19:11'),
(14, 1, 14, '2022-08-08 10:19:16', '2022-08-08 10:19:16'),
(16, 2016102019, 7, '2022-08-08 10:21:24', '2022-08-08 10:21:24'),
(17, 1, 8, '2022-08-08 10:34:47', '2022-08-08 10:34:47'),
(18, 1, 27, '2022-08-08 11:19:54', '2022-08-08 11:19:54'),
(20, 2016102019, 28, '2022-08-08 11:19:58', '2022-08-08 11:19:58'),
(21, 1, 28, '2022-08-08 11:19:59', '2022-08-08 11:19:59'),
(22, 1, 29, '2022-08-08 11:20:01', '2022-08-08 11:20:01'),
(23, 2016102019, 29, '2022-08-08 11:20:03', '2022-08-08 11:20:03'),
(24, 2016102019, 30, '2022-08-08 11:20:04', '2022-08-08 11:20:04'),
(25, 1, 31, '2022-08-08 11:20:07', '2022-08-08 11:20:07'),
(26, 2016102019, 31, '2022-08-08 11:20:08', '2022-08-08 11:20:08'),
(27, 2016102019, 27, '2022-08-08 11:20:09', '2022-08-08 11:20:09'),
(28, 1, 32, '2022-08-08 11:20:13', '2022-08-08 11:20:13'),
(29, 2016102019, 32, '2022-08-08 11:20:14', '2022-08-08 11:20:14'),
(30, 1, 34, '2022-08-08 11:20:17', '2022-08-08 11:20:17'),
(31, 1, 37, '2022-08-08 11:20:22', '2022-08-08 11:20:22'),
(32, 2016102019, 38, '2022-08-08 11:20:25', '2022-08-08 11:20:25'),
(33, 1, 39, '2022-08-08 11:20:28', '2022-08-08 11:20:28'),
(34, 1, 40, '2022-08-08 11:20:31', '2022-08-08 11:20:31'),
(35, 2016102019, 36, '2022-08-08 11:20:34', '2022-08-08 11:20:34'),
(36, 2016102019, 35, '2022-08-08 11:20:38', '2022-08-08 11:20:38'),
(37, 1, 41, '2022-08-08 11:23:12', '2022-08-08 11:23:12'),
(38, 2016102019, 42, '2022-08-08 11:23:14', '2022-08-08 11:23:14'),
(39, 2016102019, 44, '2022-08-08 11:23:16', '2022-08-08 11:23:16'),
(40, 1, 44, '2022-08-08 11:23:18', '2022-08-08 11:23:18'),
(41, 1, 45, '2022-08-08 11:23:20', '2022-08-08 11:23:20'),
(42, 1, 46, '2022-08-08 11:23:22', '2022-08-08 11:23:22'),
(43, 2016102019, 46, '2022-08-08 11:23:24', '2022-08-08 11:23:24'),
(44, 1, 53, '2022-08-08 11:23:27', '2022-08-08 11:23:27'),
(45, 2016102019, 50, '2022-08-08 11:23:33', '2022-08-08 11:23:33'),
(46, 2016102020, 28, '2022-08-08 13:43:20', '2022-08-08 13:43:20'),
(47, 2016102020, 30, '2022-08-08 13:43:24', '2022-08-08 13:43:24'),
(48, 2016102021, 29, '2022-08-08 13:43:27', '2022-08-08 13:43:27'),
(49, 2016102021, 28, '2022-08-08 13:43:29', '2022-08-08 13:43:29'),
(50, 2016102020, 29, '2022-08-08 13:43:31', '2022-08-08 13:43:31'),
(51, 2016102021, 41, '2022-08-09 02:51:29', '2022-08-09 02:51:29'),
(52, 2016102021, 42, '2022-08-09 02:51:31', '2022-08-09 02:51:31'),
(53, 2016102021, 43, '2022-08-09 02:51:33', '2022-08-09 02:51:33'),
(54, 1, 55, '2022-08-09 04:09:20', '2022-08-09 04:09:20'),
(55, 2016102019, 55, '2022-08-09 04:09:22', '2022-08-09 04:09:22'),
(56, 2016102020, 55, '2022-08-09 04:09:25', '2022-08-09 04:09:25'),
(57, 2016102021, 55, '2022-08-09 04:09:27', '2022-08-09 04:09:27'),
(58, 2016102019, 57, '2022-08-09 04:09:29', '2022-08-09 04:09:29'),
(59, 2016102021, 56, '2022-08-09 04:09:32', '2022-08-09 04:09:32'),
(60, 1, 56, '2022-08-09 04:09:34', '2022-08-09 04:09:34'),
(61, 2016102019, 56, '2022-08-09 04:09:36', '2022-08-09 04:09:36'),
(62, 2016102020, 57, '2022-08-09 04:09:38', '2022-08-09 04:09:38'),
(63, 2016102019, 58, '2022-08-09 04:09:39', '2022-08-09 04:09:39'),
(64, 2016102020, 58, '2022-08-09 04:09:41', '2022-08-09 04:09:41'),
(65, 1, 58, '2022-08-09 04:09:44', '2022-08-09 04:09:44'),
(66, 2016102022, 27, '2022-08-09 08:25:15', '2022-08-09 08:25:15'),
(67, 2016102022, 30, '2022-08-09 08:25:18', '2022-08-09 08:25:18'),
(68, 2016102022, 29, '2022-08-09 08:25:20', '2022-08-09 08:25:20'),
(69, 2016102021, 31, '2022-08-09 08:25:22', '2022-08-09 08:25:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `hari` varchar(11) NOT NULL,
  `waktu` varchar(255) NOT NULL,
  `matakuliah_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `hari`, `waktu`, `matakuliah_id`, `created_at`, `updated_at`) VALUES
(2, 'Senin', '06:00', 2, '2022-08-09 04:56:23', '2022-08-09 04:56:23'),
(3, 'Selasa', '09:00', 3, '2022-08-09 04:59:02', '2022-08-09 04:59:02'),
(4, 'Rabu', '13:00', 4, '2022-08-09 04:59:18', '2022-08-09 04:59:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontrak_matakuliah`
--

CREATE TABLE `kontrak_matakuliah` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `matakuliah_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontrak_matakuliah`
--

INSERT INTO `kontrak_matakuliah` (`id`, `users_id`, `matakuliah_id`, `semester_id`, `created_at`, `updated_at`) VALUES
(4, 1, 2, 1, '2022-08-07 13:07:38', '2022-08-07 13:07:38'),
(5, 2016102019, 2, 1, '2022-08-07 13:07:38', '2022-08-07 13:07:38'),
(7, 1, 3, 1, '2022-08-08 11:01:08', '2022-08-08 11:01:08'),
(8, 2016102019, 3, 1, '2022-08-08 11:01:08', '2022-08-08 11:01:08'),
(18, 1, 3, 5, '2022-08-08 13:42:58', '2022-08-08 13:42:58'),
(19, 2016102019, 3, 5, '2022-08-08 13:42:58', '2022-08-08 13:42:58'),
(20, 2016102021, 3, 5, '2022-08-08 13:42:58', '2022-08-08 13:42:58'),
(25, 1, 2, 5, '2022-08-09 06:26:55', '2022-08-09 06:26:55'),
(26, 2016102019, 2, 5, '2022-08-09 06:26:55', '2022-08-09 06:26:55'),
(27, 2016102020, 2, 5, '2022-08-09 06:26:55', '2022-08-09 06:26:55'),
(28, 2016102021, 2, 5, '2022-08-09 06:26:55', '2022-08-09 06:26:55'),
(29, 2016102022, 2, 5, '2022-08-09 06:26:55', '2022-08-09 06:26:55'),
(30, 1, 4, 5, '2022-08-09 06:27:00', '2022-08-09 06:27:00'),
(31, 2016102019, 4, 5, '2022-08-09 06:27:00', '2022-08-09 06:27:00'),
(32, 2016102020, 4, 5, '2022-08-09 06:27:00', '2022-08-09 06:27:00'),
(33, 2016102021, 4, 5, '2022-08-09 06:27:00', '2022-08-09 06:27:00'),
(34, 2016102022, 4, 5, '2022-08-09 06:27:00', '2022-08-09 06:27:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id` int(11) NOT NULL,
  `nama_matakuliah` varchar(255) NOT NULL,
  `sks` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`id`, `nama_matakuliah`, `sks`, `created_at`, `updated_at`) VALUES
(2, 'Pemrograman Internet Intermediate', 4, '2022-08-07 11:58:25', '2022-08-08 11:14:38'),
(3, 'UI & UX Design', 3, '2022-08-07 12:18:56', '2022-08-08 11:14:52'),
(4, 'Analisa Berorientasi Objek', 2, '2022-08-08 13:44:29', '2022-08-08 13:44:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 2,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `semester`
--

INSERT INTO `semester` (`id`, `semester`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1 - Ganjil', 2, '2022-08-07 11:25:48', '2022-08-08 11:14:03'),
(3, '2 - Genap', 2, '2022-08-08 11:06:04', '2022-08-08 11:14:03'),
(4, '3 - Ganjil', 2, '2022-08-08 11:06:42', '2022-08-08 11:14:03'),
(5, '4 - Genap', 1, '2022-08-08 11:06:47', '2022-08-08 11:14:03'),
(6, '5 - Ganjil', 2, '2022-08-08 11:06:51', '2022-08-08 11:14:03'),
(7, '6 - Genap', 2, '2022-08-08 11:06:56', '2022-08-08 11:14:03'),
(8, '7 - Ganjil', 2, '2022-08-08 11:07:01', '2022-08-08 11:14:03'),
(10, '8 - Genap', 2, '2022-08-09 05:29:22', '2022-08-09 05:29:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `no_induk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_telepon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Mahasiswa',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `no_induk`, `name`, `alamat`, `nomor_telepon`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '20161020110', 'Usman Habib', 'cirebon', '083838471114', 'usman@gmail.com', NULL, '$2y$10$vlS/F/G8gCRo9HLhcAmJRedtDZ1SUBlkHAvMPUvHqhJHlTLT5w9d2', 'Mahasiswa', NULL, '2022-07-05 09:40:02', '2022-08-08 13:37:37'),
(2, '78394868', 'Reza Ilyaa', 'Cirebon', '08998278988', 'Rezailyasa1@gmail.com', NULL, '$2y$10$vlS/F/G8gCRo9HLhcAmJRedtDZ1SUBlkHAvMPUvHqhJHlTLT5w9d2', 'Dosen', NULL, '2022-07-22 16:39:54', '2022-08-09 03:14:37'),
(2016102019, '20200121024', 'Aji', 'Bekasi', '08999898989', 'man@gmail.com', NULL, '$2y$10$cyOmJ.BCRoJYuTMVlYdAgu.WyEwqrO0TjEiNwemfb3rt5EfWLMNEO', 'Mahasiswa', NULL, '2022-07-25 07:34:17', '2022-08-08 13:42:15'),
(2016102020, '20200121028', 'Yanto', 'Cimahi', '08997866787', 'yanto@gmail.com', NULL, '$2y$10$XyJTkIzxJ.wPWxr2NZ6.2.thqTpcpXRkOkyTIMmb8UoWmiuu83zVm', 'Mahasiswa', NULL, '2022-08-08 13:40:48', '2022-08-08 13:42:08'),
(2016102021, '2016102019', 'Kodar', 'Bogor', '08899878777', 'kodar@gmail.com', NULL, '$2y$10$GHmz.vyakyURI64uSGSg6Ots9S5Zpd6OsGz9nInWxxWIQYzQBNdRW', 'Mahasiswa', NULL, '2022-08-08 13:41:57', '2022-08-08 13:41:57'),
(2016102022, '20161020120', 'Joko', 'Bandung', '083838471114', 'joko@gmail.com', NULL, '$2y$10$Au.0QH/SuVbyR9c0fDC/A.IyJpDB6Hi3QwA9NCza9l3JvxJRlqBnm', 'Mahasiswa', NULL, '2022-08-09 06:26:41', '2022-08-09 06:26:41'),
(2016102023, '20200121024', 'Usman Habib', 'cirebon\r\ncirebon', '083838471114', 'bangkarteamwork73@gmail.com', NULL, '$2y$10$dKiE7ppDa1/cTByKWSE36ulQHKKEita8EGeiRHfEO5l.KSHVCGjS.', 'Dosen', NULL, '2022-08-09 07:19:43', '2022-08-09 07:19:43');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matakuliah_id` (`matakuliah_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indeks untuk tabel `absen_mahasiswa`
--
ALTER TABLE `absen_mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `absen_id` (`absen_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matakuliah_id` (`matakuliah_id`);

--
-- Indeks untuk tabel `kontrak_matakuliah`
--
ALTER TABLE `kontrak_matakuliah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `matakuliah_id` (`matakuliah_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absen`
--
ALTER TABLE `absen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `absen_mahasiswa`
--
ALTER TABLE `absen_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kontrak_matakuliah`
--
ALTER TABLE `kontrak_matakuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2016102024;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `absen`
--
ALTER TABLE `absen`
  ADD CONSTRAINT `absen_ibfk_1` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `absen_ibfk_2` FOREIGN KEY (`matakuliah_id`) REFERENCES `matakuliah` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `absen_mahasiswa`
--
ALTER TABLE `absen_mahasiswa`
  ADD CONSTRAINT `absen_mahasiswa_ibfk_1` FOREIGN KEY (`absen_id`) REFERENCES `absen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `absen_mahasiswa_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`matakuliah_id`) REFERENCES `matakuliah` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kontrak_matakuliah`
--
ALTER TABLE `kontrak_matakuliah`
  ADD CONSTRAINT `kontrak_matakuliah_ibfk_1` FOREIGN KEY (`matakuliah_id`) REFERENCES `matakuliah` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kontrak_matakuliah_ibfk_2` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kontrak_matakuliah_ibfk_3` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
