-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jan 2019 pada 15.20
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_24_160330_create_quiz_table', 1),
(4, '2019_01_24_160453_create_quizscore_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `quiz`
--

CREATE TABLE `quiz` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `quiz`
--

INSERT INTO `quiz` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(2, 'BINUS kepanjangan dari?', 'Bina Nusantara', '2019-01-24 10:17:36', '2019-01-24 10:17:36'),
(3, 'Hari ke lima?', 'Jumat', '2019-01-24 10:29:39', '2019-01-24 10:29:39'),
(4, 'Group Band yang menyanyikan lagu \'Dan\'?', 'Sheila on 7', '2019-01-24 10:30:28', '2019-01-24 10:30:28'),
(5, 'Abdel?', 'Temon', '2019-01-24 10:30:47', '2019-01-24 10:30:47'),
(6, 'Penemu telepon?', 'Alexander Graham Bell', '2019-01-24 10:31:33', '2019-01-24 10:31:33'),
(7, 'Ambon terletak di pulau?', 'Maluku', '2019-01-24 10:31:50', '2019-01-24 12:07:38'),
(8, 'Pempek berasal dari provinsi?', 'Palembang', '2019-01-24 10:32:05', '2019-01-24 10:32:05'),
(9, 'Penyanyi lagu \'Alamat Palsu\'?', 'Ayu ting-ting', '2019-01-24 10:32:38', '2019-01-24 10:32:38'),
(10, 'Vokalis pertama Kerispatih?', 'Sammy Simorangkir', '2019-01-24 10:33:05', '2019-01-24 10:33:05'),
(11, 'Host Hitam Putih?', 'Deddy Corbuzier', '2019-01-24 10:34:03', '2019-01-24 10:34:03'),
(12, 'Alat pembayaran selain cash di aplikasi Gojek?', 'Go-Pay', '2019-01-24 10:34:45', '2019-01-24 10:34:45'),
(13, 'Shio pada tahun 1996?', 'Tikus', '2019-01-24 10:35:05', '2019-01-24 10:35:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quizscore`
--

CREATE TABLE `quizscore` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `totalanswer` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `quizscore`
--

INSERT INTO `quizscore` (`id`, `userid`, `totalanswer`, `created_at`, `updated_at`) VALUES
(1, 2, 0, '2019-01-25 00:47:37', '2019-01-25 00:47:37'),
(2, 2, 0, '2019-01-25 00:47:43', '2019-01-25 00:47:43'),
(3, 2, 0, '2019-01-25 00:51:31', '2019-01-25 00:51:31'),
(4, 2, 0, '2019-01-25 02:53:23', '2019-01-25 02:53:23'),
(5, 2, 0, '2019-01-25 02:54:03', '2019-01-25 02:54:03'),
(6, 2, 12, '2019-01-25 03:03:21', '2019-01-25 03:03:21'),
(7, 2, 0, '2019-01-25 03:06:07', '2019-01-25 03:06:07'),
(8, 2, 0, '2019-01-25 03:06:20', '2019-01-25 03:06:20'),
(9, 2, 0, '2019-01-25 03:14:35', '2019-01-25 03:14:35'),
(10, 2, 0, '2019-01-25 03:15:03', '2019-01-25 03:15:03'),
(11, 2, 0, '2019-01-25 03:15:53', '2019-01-25 03:15:53'),
(12, 2, 0, '2019-01-25 03:16:08', '2019-01-25 03:16:08'),
(13, 2, 0, '2019-01-25 03:17:19', '2019-01-25 03:17:19'),
(14, 2, 0, '2019-01-25 03:17:31', '2019-01-25 03:17:31'),
(15, 2, 1, '2019-01-25 03:18:32', '2019-01-25 03:18:32'),
(16, 2, 0, '2019-01-25 06:19:17', '2019-01-25 06:19:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$TKSlPnC5KYtpMQ60D4vRzO9VcXSbJJAd6ChE41Mvx.n86AcdNbxza', 'admin', 'WgJVdxCH9uk25fp8KxIp5uUm6cKNelrqB3YY4VXxoeADX57YZKCTvLbnIo0U', '2019-01-24 09:11:55', '2019-01-24 09:11:55'),
(2, 'user', 'user@user.com', NULL, '$2y$10$ngzd0g9nXDe3PhKLWc5/IuMdUIpeO2zqmCTsjtKjDra3ufpHPAPxm', 'user', 'RVdrARWkPN14BE19yiDiUrjQzQO585Iu2hZuqri9vju3V9Za1lnxNAWnnkkz', '2019-01-24 09:13:06', '2019-01-24 09:13:06');

--
-- Indexes for dumped tables
--

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
-- Indeks untuk tabel `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `quizscore`
--
ALTER TABLE `quizscore`
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
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `quizscore`
--
ALTER TABLE `quizscore`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
