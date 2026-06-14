-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2026 pada 16.35
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teras_mobil_99`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `method` varchar(10) NOT NULL,
  `route` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `user_name`, `method`, `route`, `action`, `url`, `ip_address`, `user_agent`, `description`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-05 07:47:14', '2026-06-05 07:47:14'),
(2, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-05 07:48:13', '2026-06-05 07:48:13'),
(3, NULL, NULL, 'GET', 'register', 'App\\Http\\Controllers\\Auth\\RegisteredUserController@create', 'http://127.0.0.1:8000/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/register', '2026-06-05 07:48:30', '2026-06-05 07:48:30'),
(4, 1, 'admin@gmail.com', 'POST', 'register', 'App\\Http\\Controllers\\Auth\\RegisteredUserController@store', 'http://127.0.0.1:8000/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/register', '2026-06-05 07:49:08', '2026-06-05 07:49:08'),
(5, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-05 07:49:09', '2026-06-05 07:49:09'),
(6, 1, 'admin@gmail.com', 'GET', 'profile.edit', 'App\\Http\\Controllers\\ProfileController@edit', 'http://127.0.0.1:8000/profile', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/profile', '2026-06-05 07:50:08', '2026-06-05 07:50:08'),
(7, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-05 07:50:09', '2026-06-05 07:50:09'),
(8, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-05 07:50:09', '2026-06-05 07:50:09'),
(9, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-05 07:50:12', '2026-06-05 07:50:12'),
(10, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-05 07:50:22', '2026-06-05 07:50:22'),
(11, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-05 07:50:23', '2026-06-05 07:50:23'),
(12, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-05 07:50:27', '2026-06-05 07:50:27'),
(13, 1, 'admin@gmail.com', 'GET', 'dashboard.admin', 'App\\Http\\Controllers\\DashboardController@index', 'http://127.0.0.1:8000/dashboard-admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/dashboard-admin', '2026-06-05 07:50:30', '2026-06-05 07:50:30'),
(14, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-05 07:50:54', '2026-06-05 07:50:54'),
(15, 1, 'admin@gmail.com', 'GET', 'dashboard.admin', 'App\\Http\\Controllers\\DashboardController@index', 'http://127.0.0.1:8000/dashboard-admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/dashboard-admin', '2026-06-05 07:50:57', '2026-06-05 07:50:57'),
(16, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-05 07:51:10', '2026-06-05 07:51:10'),
(17, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-05 08:03:44', '2026-06-05 08:03:44'),
(18, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-05 08:03:54', '2026-06-05 08:03:54'),
(19, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-05 08:04:01', '2026-06-05 08:04:01'),
(20, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-05 08:10:33', '2026-06-05 08:10:33'),
(21, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-05 08:18:50', '2026-06-05 08:18:50'),
(22, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-05 08:23:50', '2026-06-05 08:23:50'),
(23, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-05 08:25:34', '2026-06-05 08:25:34'),
(24, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-05 08:29:39', '2026-06-05 08:29:39'),
(25, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 20:39:57', '2026-06-12 20:39:57'),
(26, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-12 20:40:04', '2026-06-12 20:40:04'),
(27, NULL, NULL, 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-12 20:40:40', '2026-06-12 20:40:40'),
(28, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-12 20:40:41', '2026-06-12 20:40:41'),
(29, NULL, NULL, 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-12 20:40:51', '2026-06-12 20:40:51'),
(30, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-12 20:40:52', '2026-06-12 20:40:52'),
(31, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-12 20:41:35', '2026-06-12 20:41:35'),
(32, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 20:41:36', '2026-06-12 20:41:36'),
(33, 1, 'admin@gmail.com', 'GET', 'dashboard.admin', 'App\\Http\\Controllers\\DashboardController@index', 'http://127.0.0.1:8000/dashboard-admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/dashboard-admin', '2026-06-12 20:41:46', '2026-06-12 20:41:46'),
(34, 1, 'admin@gmail.com', 'GET', 'dashboard.admin', 'App\\Http\\Controllers\\DashboardController@index', 'http://127.0.0.1:8000/dashboard-admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/dashboard-admin', '2026-06-12 20:41:47', '2026-06-12 20:41:47'),
(35, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-12 20:42:22', '2026-06-12 20:42:22'),
(36, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 20:47:32', '2026-06-12 20:47:32'),
(37, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-12 20:47:48', '2026-06-12 20:47:48'),
(38, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 20:47:52', '2026-06-12 20:47:52'),
(39, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-12 20:47:54', '2026-06-12 20:47:54'),
(40, 1, 'admin@gmail.com', 'GET', 'mobil.index', 'App\\Http\\Controllers\\MobilController@index', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil', '2026-06-12 20:48:02', '2026-06-12 20:48:02'),
(41, 1, 'admin@gmail.com', 'GET', 'mobil.create', 'App\\Http\\Controllers\\MobilController@create', 'http://127.0.0.1:8000/mobil/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil/create', '2026-06-12 20:48:48', '2026-06-12 20:48:48'),
(42, 1, 'admin@gmail.com', 'GET', 'mobil.index', 'App\\Http\\Controllers\\MobilController@index', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil', '2026-06-12 20:49:03', '2026-06-12 20:49:03'),
(43, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 20:49:10', '2026-06-12 20:49:10'),
(44, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 22:26:44', '2026-06-12 22:26:44'),
(45, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 22:26:52', '2026-06-12 22:26:52'),
(46, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 22:26:58', '2026-06-12 22:26:58'),
(47, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-12 22:27:03', '2026-06-12 22:27:03'),
(48, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 22:27:04', '2026-06-12 22:27:04'),
(49, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 22:27:07', '2026-06-12 22:27:07'),
(50, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 22:27:53', '2026-06-12 22:27:53'),
(51, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 22:27:57', '2026-06-12 22:27:57'),
(52, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 22:30:48', '2026-06-12 22:30:48'),
(53, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 22:36:13', '2026-06-12 22:36:13'),
(54, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 22:44:41', '2026-06-12 22:44:41'),
(55, NULL, NULL, 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-12 22:44:51', '2026-06-12 22:44:51'),
(56, NULL, NULL, 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-12 22:45:00', '2026-06-12 22:45:00'),
(57, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 22:47:59', '2026-06-12 22:47:59'),
(58, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 22:48:00', '2026-06-12 22:48:00'),
(59, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 22:48:03', '2026-06-12 22:48:03'),
(60, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 22:48:27', '2026-06-12 22:48:27'),
(61, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 23:12:26', '2026-06-12 23:12:26'),
(62, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:13:03', '2026-06-12 23:13:03'),
(63, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:13:04', '2026-06-12 23:13:04'),
(64, NULL, NULL, 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-12 23:13:06', '2026-06-12 23:13:06'),
(65, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 23:13:07', '2026-06-12 23:13:07'),
(66, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-12 23:13:25', '2026-06-12 23:13:25'),
(67, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-12 23:13:41', '2026-06-12 23:13:41'),
(68, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 23:13:41', '2026-06-12 23:13:41'),
(69, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-12 23:13:54', '2026-06-12 23:13:54'),
(70, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:13:54', '2026-06-12 23:13:54'),
(71, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-12 23:14:06', '2026-06-12 23:14:06'),
(72, NULL, NULL, 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-12 23:14:15', '2026-06-12 23:14:15'),
(73, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-12 23:14:16', '2026-06-12 23:14:16'),
(74, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-12 23:14:22', '2026-06-12 23:14:22'),
(75, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 23:14:23', '2026-06-12 23:14:23'),
(76, 1, 'admin@gmail.com', 'GET', 'dashboard.admin', 'App\\Http\\Controllers\\DashboardController@index', 'http://127.0.0.1:8000/dashboard-admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/dashboard-admin', '2026-06-12 23:14:40', '2026-06-12 23:14:40'),
(77, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-12 23:15:07', '2026-06-12 23:15:07'),
(78, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:15:07', '2026-06-12 23:15:07'),
(79, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:20:20', '2026-06-12 23:20:20'),
(80, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:20:35', '2026-06-12 23:20:35'),
(81, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:20:35', '2026-06-12 23:20:35'),
(82, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:20:47', '2026-06-12 23:20:47'),
(83, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:21:26', '2026-06-12 23:21:26'),
(84, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:21:45', '2026-06-12 23:21:45'),
(85, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:21:47', '2026-06-12 23:21:47'),
(86, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:21:49', '2026-06-12 23:21:49'),
(87, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:22:12', '2026-06-12 23:22:12'),
(88, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:22:14', '2026-06-12 23:22:14'),
(89, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 23:22:25', '2026-06-12 23:22:25'),
(90, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 23:24:57', '2026-06-12 23:24:57'),
(91, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 23:25:09', '2026-06-12 23:25:09'),
(92, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:25:21', '2026-06-12 23:25:21'),
(93, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:26:03', '2026-06-12 23:26:03'),
(94, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:26:53', '2026-06-12 23:26:53'),
(95, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:26:55', '2026-06-12 23:26:55'),
(96, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:26:57', '2026-06-12 23:26:57'),
(97, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:27:58', '2026-06-12 23:27:58'),
(98, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:28:00', '2026-06-12 23:28:00'),
(99, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:28:00', '2026-06-12 23:28:00'),
(100, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:38:35', '2026-06-12 23:38:35'),
(101, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:38:36', '2026-06-12 23:38:36'),
(102, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:38:47', '2026-06-12 23:38:47'),
(103, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:38:55', '2026-06-12 23:38:55'),
(104, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:39:10', '2026-06-12 23:39:10'),
(105, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:39:27', '2026-06-12 23:39:27'),
(106, NULL, NULL, 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-12 23:39:30', '2026-06-12 23:39:30'),
(107, NULL, NULL, 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-12 23:46:16', '2026-06-12 23:46:16'),
(108, NULL, NULL, 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-12 23:47:21', '2026-06-12 23:47:21'),
(109, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 23:59:18', '2026-06-12 23:59:18'),
(110, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 23:59:21', '2026-06-12 23:59:21'),
(111, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 23:59:24', '2026-06-12 23:59:24'),
(112, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 23:59:26', '2026-06-12 23:59:26'),
(113, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 23:59:26', '2026-06-12 23:59:26'),
(114, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 23:59:27', '2026-06-12 23:59:27'),
(115, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 23:59:27', '2026-06-12 23:59:27'),
(116, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-12 23:59:28', '2026-06-12 23:59:28'),
(117, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-12 23:59:28', '2026-06-12 23:59:28'),
(118, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 00:17:13', '2026-06-13 00:17:13'),
(119, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 00:17:37', '2026-06-13 00:17:37'),
(120, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 00:18:28', '2026-06-13 00:18:28'),
(121, 1, 'admin@gmail.com', 'GET', 'dashboard.admin', 'App\\Http\\Controllers\\DashboardController@index', 'http://127.0.0.1:8000/dashboard-admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/dashboard-admin', '2026-06-13 00:18:29', '2026-06-13 00:18:29'),
(122, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 00:18:50', '2026-06-13 00:18:50'),
(123, 1, 'admin@gmail.com', 'GET', 'mobil.create', 'App\\Http\\Controllers\\MobilController@create', 'http://127.0.0.1:8000/mobil/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil/create', '2026-06-13 00:19:00', '2026-06-13 00:19:00'),
(124, 1, 'admin@gmail.com', 'POST', 'mobil.store', 'App\\Http\\Controllers\\MobilController@store', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/mobil', '2026-06-13 00:24:13', '2026-06-13 00:24:13'),
(125, 1, 'admin@gmail.com', 'GET', 'mobil.index', 'App\\Http\\Controllers\\MobilController@index', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil', '2026-06-13 00:24:14', '2026-06-13 00:24:14'),
(126, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 00:24:22', '2026-06-13 00:24:22'),
(127, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:24:30', '2026-06-13 00:24:30'),
(128, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:24:49', '2026-06-13 00:24:49'),
(129, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:24:55', '2026-06-13 00:24:55'),
(130, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:26:08', '2026-06-13 00:26:08'),
(131, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 00:26:25', '2026-06-13 00:26:25'),
(132, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 00:26:25', '2026-06-13 00:26:25'),
(133, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 00:26:28', '2026-06-13 00:26:28'),
(134, NULL, NULL, 'GET', 'register', 'App\\Http\\Controllers\\Auth\\RegisteredUserController@create', 'http://127.0.0.1:8000/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/register', '2026-06-13 00:26:30', '2026-06-13 00:26:30'),
(135, 2, 'rosa', 'POST', 'register', 'App\\Http\\Controllers\\Auth\\RegisteredUserController@store', 'http://127.0.0.1:8000/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/register', '2026-06-13 00:26:58', '2026-06-13 00:26:58'),
(136, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:26:59', '2026-06-13 00:26:59'),
(137, 2, 'rosa', 'GET', 'pesanan.create', 'App\\Http\\Controllers\\PesananController@create', 'http://127.0.0.1:8000/pesanan/create/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/pesanan/create/1', '2026-06-13 00:27:08', '2026-06-13 00:27:08'),
(138, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:27:19', '2026-06-13 00:27:19'),
(139, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:27:24', '2026-06-13 00:27:24'),
(140, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:34:30', '2026-06-13 00:34:30'),
(141, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:34:32', '2026-06-13 00:34:32'),
(142, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:39:36', '2026-06-13 00:39:36'),
(143, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:39:40', '2026-06-13 00:39:40'),
(144, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:39:45', '2026-06-13 00:39:45'),
(145, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:39:49', '2026-06-13 00:39:49'),
(146, 2, 'rosa', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 00:50:25', '2026-06-13 00:50:25'),
(147, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:50:34', '2026-06-13 00:50:34'),
(148, 2, 'rosa', 'GET', 'pesanan.create', 'App\\Http\\Controllers\\PesananController@create', 'http://127.0.0.1:8000/pesanan/create/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/pesanan/create/1', '2026-06-13 00:54:43', '2026-06-13 00:54:43'),
(149, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:54:46', '2026-06-13 00:54:46'),
(150, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:56:56', '2026-06-13 00:56:56'),
(151, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:57:40', '2026-06-13 00:57:40');
INSERT INTO `activity_logs` (`id`, `user_id`, `user_name`, `method`, `route`, `action`, `url`, `ip_address`, `user_agent`, `description`, `created_at`, `updated_at`) VALUES
(152, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:57:45', '2026-06-13 00:57:45'),
(153, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:57:51', '2026-06-13 00:57:51'),
(154, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 00:58:29', '2026-06-13 00:58:29'),
(155, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 01:01:48', '2026-06-13 01:01:48'),
(156, 2, 'rosa', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 01:02:22', '2026-06-13 01:02:22'),
(157, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 01:02:27', '2026-06-13 01:02:27'),
(158, 2, 'rosa', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-13 01:02:31', '2026-06-13 01:02:31'),
(159, 2, 'rosa', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 01:02:34', '2026-06-13 01:02:34'),
(160, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 01:02:38', '2026-06-13 01:02:38'),
(161, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 01:07:31', '2026-06-13 01:07:31'),
(162, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 01:11:04', '2026-06-13 01:11:04'),
(163, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 01:12:39', '2026-06-13 01:12:39'),
(164, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 01:12:40', '2026-06-13 01:12:40'),
(165, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 01:13:07', '2026-06-13 01:13:07'),
(166, 2, 'rosa', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-13 01:13:15', '2026-06-13 01:13:15'),
(167, 2, 'rosa', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 01:13:19', '2026-06-13 01:13:19'),
(168, 2, 'rosa', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri?search=&tahun=2024', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri?search=&tahun=2024', '2026-06-13 01:13:28', '2026-06-13 01:13:28'),
(169, 2, 'rosa', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri?search=&tahun=2024', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri?search=&tahun=2024', '2026-06-13 01:13:33', '2026-06-13 01:13:33'),
(170, 2, 'rosa', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri?search=&tahun=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri?search=&tahun=', '2026-06-13 01:13:36', '2026-06-13 01:13:36'),
(171, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 01:13:40', '2026-06-13 01:13:40'),
(172, 2, 'rosa', 'GET', 'pesanan.create', 'App\\Http\\Controllers\\PesananController@create', 'http://127.0.0.1:8000/pesanan/create/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/pesanan/create/1', '2026-06-13 01:13:42', '2026-06-13 01:13:42'),
(173, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 01:22:23', '2026-06-13 01:22:23'),
(174, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 01:28:42', '2026-06-13 01:28:42'),
(175, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 01:29:44', '2026-06-13 01:29:44'),
(176, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 01:29:51', '2026-06-13 01:29:51'),
(177, 2, 'rosa', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 01:30:07', '2026-06-13 01:30:07'),
(178, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 01:30:12', '2026-06-13 01:30:12'),
(179, 2, 'rosa', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 01:30:22', '2026-06-13 01:30:22'),
(180, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 01:30:29', '2026-06-13 01:30:29'),
(181, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 01:30:29', '2026-06-13 01:30:29'),
(182, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 01:30:33', '2026-06-13 01:30:33'),
(183, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 01:30:42', '2026-06-13 01:30:42'),
(184, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 01:30:43', '2026-06-13 01:30:43'),
(185, 1, 'admin@gmail.com', 'GET', 'mobil.create', 'App\\Http\\Controllers\\MobilController@create', 'http://127.0.0.1:8000/mobil/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil/create', '2026-06-13 01:30:46', '2026-06-13 01:30:46'),
(186, 1, 'admin@gmail.com', 'POST', 'mobil.store', 'App\\Http\\Controllers\\MobilController@store', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/mobil', '2026-06-13 01:31:44', '2026-06-13 01:31:44'),
(187, 1, 'admin@gmail.com', 'GET', 'mobil.index', 'App\\Http\\Controllers\\MobilController@index', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil', '2026-06-13 01:31:45', '2026-06-13 01:31:45'),
(188, 1, 'admin@gmail.com', 'GET', 'dashboard.admin', 'App\\Http\\Controllers\\DashboardController@index', 'http://127.0.0.1:8000/dashboard-admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/dashboard-admin', '2026-06-13 01:31:50', '2026-06-13 01:31:50'),
(189, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 01:31:53', '2026-06-13 01:31:53'),
(190, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/2', '2026-06-13 01:31:57', '2026-06-13 01:31:57'),
(191, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/2', '2026-06-13 01:33:57', '2026-06-13 01:33:57'),
(192, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/2', '2026-06-13 01:34:10', '2026-06-13 01:34:10'),
(193, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 01:34:19', '2026-06-13 01:34:19'),
(194, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 01:34:22', '2026-06-13 01:34:22'),
(195, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 01:35:37', '2026-06-13 01:35:37'),
(196, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 01:35:40', '2026-06-13 01:35:40'),
(197, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 01:37:42', '2026-06-13 01:37:42'),
(198, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 01:38:15', '2026-06-13 01:38:15'),
(199, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 01:40:09', '2026-06-13 01:40:09'),
(200, 1, 'admin@gmail.com', 'GET', 'mobil.edit', 'App\\Http\\Controllers\\MobilController@edit', 'http://127.0.0.1:8000/mobil/2/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil/2/edit', '2026-06-13 01:40:22', '2026-06-13 01:40:22'),
(201, 1, 'admin@gmail.com', 'PATCH', 'mobil.update', 'App\\Http\\Controllers\\MobilController@update', 'http://127.0.0.1:8000/mobil/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'PATCH http://127.0.0.1:8000/mobil/2', '2026-06-13 01:40:27', '2026-06-13 01:40:27'),
(202, 1, 'admin@gmail.com', 'GET', 'mobil.index', 'App\\Http\\Controllers\\MobilController@index', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil', '2026-06-13 01:40:27', '2026-06-13 01:40:27'),
(203, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 01:40:33', '2026-06-13 01:40:33'),
(204, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/2', '2026-06-13 01:42:54', '2026-06-13 01:42:54'),
(205, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 01:43:06', '2026-06-13 01:43:06'),
(206, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 01:43:09', '2026-06-13 01:43:09'),
(207, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 01:43:12', '2026-06-13 01:43:12'),
(208, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/2', '2026-06-13 01:43:15', '2026-06-13 01:43:15'),
(209, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/2', '2026-06-13 01:45:55', '2026-06-13 01:45:55'),
(210, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/2', '2026-06-13 01:46:02', '2026-06-13 01:46:02'),
(211, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/2', '2026-06-13 01:46:25', '2026-06-13 01:46:25'),
(212, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/2', '2026-06-13 01:47:59', '2026-06-13 01:47:59'),
(213, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/2', '2026-06-13 01:51:17', '2026-06-13 01:51:17'),
(214, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/2', '2026-06-13 01:51:58', '2026-06-13 01:51:58'),
(215, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 01:52:20', '2026-06-13 01:52:20'),
(216, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 01:52:23', '2026-06-13 01:52:23'),
(217, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 01:52:50', '2026-06-13 01:52:50'),
(218, 1, 'admin@gmail.com', 'GET', 'mobil.index', 'App\\Http\\Controllers\\MobilController@index', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil', '2026-06-13 01:52:54', '2026-06-13 01:52:54'),
(219, 1, 'admin@gmail.com', 'GET', 'mobil.create', 'App\\Http\\Controllers\\MobilController@create', 'http://127.0.0.1:8000/mobil/create', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil/create', '2026-06-13 01:52:59', '2026-06-13 01:52:59'),
(220, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 01:55:54', '2026-06-13 01:55:54'),
(221, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 01:55:58', '2026-06-13 01:55:58'),
(222, 1, 'admin@gmail.com', 'GET', 'mobil.index', 'App\\Http\\Controllers\\MobilController@index', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil', '2026-06-13 01:56:04', '2026-06-13 01:56:04'),
(223, 1, 'admin@gmail.com', 'GET', 'mobil.index', 'App\\Http\\Controllers\\MobilController@index', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil', '2026-06-13 02:00:14', '2026-06-13 02:00:14'),
(224, 1, 'admin@gmail.com', 'GET', 'profile.edit', 'App\\Http\\Controllers\\ProfileController@edit', 'http://127.0.0.1:8000/profile', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/profile', '2026-06-13 02:01:24', '2026-06-13 02:01:24'),
(225, 1, 'admin@gmail.com', 'GET', 'mobil.edit', 'App\\Http\\Controllers\\MobilController@edit', 'http://127.0.0.1:8000/mobil/2/edit', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil/2/edit', '2026-06-13 02:02:44', '2026-06-13 02:02:44'),
(226, 1, 'admin@gmail.com', 'GET', 'mobil.index', 'App\\Http\\Controllers\\MobilController@index', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil', '2026-06-13 02:02:55', '2026-06-13 02:02:55'),
(227, 1, 'admin@gmail.com', 'GET', 'mobil.index', 'App\\Http\\Controllers\\MobilController@index', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil', '2026-06-13 02:03:01', '2026-06-13 02:03:01'),
(228, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 02:03:47', '2026-06-13 02:03:47'),
(229, 1, 'admin@gmail.com', 'GET', 'mobil.index', 'App\\Http\\Controllers\\MobilController@index', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil', '2026-06-13 02:03:50', '2026-06-13 02:03:50'),
(230, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 02:03:52', '2026-06-13 02:03:52'),
(231, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 02:03:59', '2026-06-13 02:03:59'),
(232, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-13 02:06:38', '2026-06-13 02:06:38'),
(233, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-13 02:08:34', '2026-06-13 02:08:34'),
(234, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-13 02:08:35', '2026-06-13 02:08:35'),
(235, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 02:08:47', '2026-06-13 02:08:47'),
(236, 1, 'admin@gmail.com', 'GET', 'dashboard.admin', 'App\\Http\\Controllers\\DashboardController@index', 'http://127.0.0.1:8000/dashboard-admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/dashboard-admin', '2026-06-13 02:08:52', '2026-06-13 02:08:52'),
(237, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 02:11:28', '2026-06-13 02:11:28'),
(238, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 02:46:07', '2026-06-13 02:46:07'),
(239, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 02:46:40', '2026-06-13 02:46:40'),
(240, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 02:48:52', '2026-06-13 02:48:52'),
(241, 1, 'admin@gmail.com', 'GET', 'dashboard.admin', 'App\\Http\\Controllers\\DashboardController@index', 'http://127.0.0.1:8000/dashboard-admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/dashboard-admin', '2026-06-13 02:48:58', '2026-06-13 02:48:58'),
(242, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-13 02:49:08', '2026-06-13 02:49:08'),
(243, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 02:49:12', '2026-06-13 02:49:12'),
(244, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 02:49:17', '2026-06-13 02:49:17'),
(245, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 02:49:36', '2026-06-13 02:49:36'),
(246, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 02:49:36', '2026-06-13 02:49:36'),
(247, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 02:49:41', '2026-06-13 02:49:41'),
(248, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 02:50:00', '2026-06-13 02:50:00'),
(249, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 02:50:01', '2026-06-13 02:50:01'),
(250, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 02:50:13', '2026-06-13 02:50:13'),
(251, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 02:50:13', '2026-06-13 02:50:13'),
(252, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 02:50:16', '2026-06-13 02:50:16'),
(253, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 02:50:36', '2026-06-13 02:50:36'),
(254, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 02:50:36', '2026-06-13 02:50:36'),
(255, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 02:50:46', '2026-06-13 02:50:46'),
(256, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 02:50:46', '2026-06-13 02:50:46'),
(257, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 02:50:48', '2026-06-13 02:50:48'),
(258, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 02:51:02', '2026-06-13 02:51:02'),
(259, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 02:51:03', '2026-06-13 02:51:03'),
(260, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 02:51:07', '2026-06-13 02:51:07'),
(261, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 02:51:08', '2026-06-13 02:51:08'),
(262, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 02:51:11', '2026-06-13 02:51:11'),
(263, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 02:53:07', '2026-06-13 02:53:07'),
(264, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 02:53:35', '2026-06-13 02:53:35'),
(265, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 02:53:42', '2026-06-13 02:53:42'),
(266, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 02:53:46', '2026-06-13 02:53:46'),
(267, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 02:55:00', '2026-06-13 02:55:00'),
(268, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 02:55:09', '2026-06-13 02:55:09'),
(269, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 02:55:09', '2026-06-13 02:55:09'),
(270, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 02:56:16', '2026-06-13 02:56:16'),
(271, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 02:56:17', '2026-06-13 02:56:17'),
(272, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 02:59:12', '2026-06-13 02:59:12'),
(273, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:00:22', '2026-06-13 03:00:22'),
(274, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 03:00:35', '2026-06-13 03:00:35'),
(275, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:00:36', '2026-06-13 03:00:36'),
(276, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 03:00:41', '2026-06-13 03:00:41'),
(277, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:00:42', '2026-06-13 03:00:42'),
(278, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:00:44', '2026-06-13 03:00:44'),
(279, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 03:01:24', '2026-06-13 03:01:24'),
(280, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:01:24', '2026-06-13 03:01:24'),
(281, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:01:35', '2026-06-13 03:01:35'),
(282, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 03:01:39', '2026-06-13 03:01:39'),
(283, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:01:40', '2026-06-13 03:01:40'),
(284, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:01:42', '2026-06-13 03:01:42'),
(285, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:02:05', '2026-06-13 03:02:05'),
(286, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 03:02:14', '2026-06-13 03:02:14'),
(287, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:02:15', '2026-06-13 03:02:15'),
(288, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 03:02:24', '2026-06-13 03:02:24'),
(289, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:02:25', '2026-06-13 03:02:25'),
(290, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:02:27', '2026-06-13 03:02:27'),
(291, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:11:39', '2026-06-13 03:11:39'),
(292, NULL, NULL, 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 03:11:51', '2026-06-13 03:11:51'),
(293, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:11:51', '2026-06-13 03:11:51'),
(294, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 03:12:00', '2026-06-13 03:12:00'),
(295, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:12:01', '2026-06-13 03:12:01'),
(296, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 03:12:05', '2026-06-13 03:12:05'),
(297, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:12:05', '2026-06-13 03:12:05'),
(298, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:12:06', '2026-06-13 03:12:06'),
(299, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 03:12:25', '2026-06-13 03:12:25');
INSERT INTO `activity_logs` (`id`, `user_id`, `user_name`, `method`, `route`, `action`, `url`, `ip_address`, `user_agent`, `description`, `created_at`, `updated_at`) VALUES
(300, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:12:25', '2026-06-13 03:12:25'),
(301, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:12:36', '2026-06-13 03:12:36'),
(302, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 03:12:39', '2026-06-13 03:12:39'),
(303, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:12:39', '2026-06-13 03:12:39'),
(304, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:13:28', '2026-06-13 03:13:28'),
(305, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:15:02', '2026-06-13 03:15:02'),
(306, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:16:41', '2026-06-13 03:16:41'),
(307, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:16:47', '2026-06-13 03:16:47'),
(308, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:16:52', '2026-06-13 03:16:52'),
(309, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 03:17:02', '2026-06-13 03:17:02'),
(310, 1, 'admin@gmail.com', 'GET', 'beranda', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000/beranda', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/beranda', '2026-06-13 03:17:03', '2026-06-13 03:17:03'),
(311, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 03:17:07', '2026-06-13 03:17:07'),
(312, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:17:07', '2026-06-13 03:17:07'),
(313, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:17:09', '2026-06-13 03:17:09'),
(314, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 03:17:26', '2026-06-13 03:17:26'),
(315, 1, 'admin@gmail.com', 'GET', 'beranda', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000/beranda', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/beranda', '2026-06-13 03:17:26', '2026-06-13 03:17:26'),
(316, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:17:58', '2026-06-13 03:17:58'),
(317, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:19:18', '2026-06-13 03:19:18'),
(318, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:19:34', '2026-06-13 03:19:34'),
(319, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:19:37', '2026-06-13 03:19:37'),
(320, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:21:31', '2026-06-13 03:21:31'),
(321, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:21:40', '2026-06-13 03:21:40'),
(322, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:21:51', '2026-06-13 03:21:51'),
(323, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:22:21', '2026-06-13 03:22:21'),
(324, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:22:34', '2026-06-13 03:22:34'),
(325, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:22:49', '2026-06-13 03:22:49'),
(326, 2, 'rosa', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 03:23:17', '2026-06-13 03:23:17'),
(327, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:23:18', '2026-06-13 03:23:18'),
(328, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:23:39', '2026-06-13 03:23:39'),
(329, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:23:49', '2026-06-13 03:23:49'),
(330, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 03:23:53', '2026-06-13 03:23:53'),
(331, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:23:54', '2026-06-13 03:23:54'),
(332, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 03:36:30', '2026-06-13 03:36:30'),
(333, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:36:30', '2026-06-13 03:36:30'),
(334, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:36:32', '2026-06-13 03:36:32'),
(335, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 03:36:41', '2026-06-13 03:36:41'),
(336, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:36:42', '2026-06-13 03:36:42'),
(337, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 03:36:48', '2026-06-13 03:36:48'),
(338, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:36:48', '2026-06-13 03:36:48'),
(339, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:36:49', '2026-06-13 03:36:49'),
(340, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:37:02', '2026-06-13 03:37:02'),
(341, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:43:37', '2026-06-13 03:43:37'),
(342, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:43:44', '2026-06-13 03:43:44'),
(343, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:44:13', '2026-06-13 03:44:13'),
(344, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:44:21', '2026-06-13 03:44:21'),
(345, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:44:25', '2026-06-13 03:44:25'),
(346, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 03:44:34', '2026-06-13 03:44:34'),
(347, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:44:34', '2026-06-13 03:44:34'),
(348, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 03:44:39', '2026-06-13 03:44:39'),
(349, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:44:39', '2026-06-13 03:44:39'),
(350, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:44:40', '2026-06-13 03:44:40'),
(351, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 03:44:50', '2026-06-13 03:44:50'),
(352, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:44:50', '2026-06-13 03:44:50'),
(353, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 03:44:55', '2026-06-13 03:44:55'),
(354, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:44:55', '2026-06-13 03:44:55'),
(355, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:44:57', '2026-06-13 03:44:57'),
(356, 2, 'rosa', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 03:47:10', '2026-06-13 03:47:10'),
(357, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:47:10', '2026-06-13 03:47:10'),
(358, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 03:47:13', '2026-06-13 03:47:13'),
(359, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:47:14', '2026-06-13 03:47:14'),
(360, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 03:47:15', '2026-06-13 03:47:15'),
(361, 2, 'rosa', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 03:47:25', '2026-06-13 03:47:25'),
(362, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 03:47:25', '2026-06-13 03:47:25'),
(363, 2, 'rosa', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 03:47:27', '2026-06-13 03:47:27'),
(364, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 03:47:30', '2026-06-13 03:47:30'),
(365, 2, 'rosa', 'GET', 'pesanan.create', 'App\\Http\\Controllers\\PesananController@create', 'http://127.0.0.1:8000/pesanan/create/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/pesanan/create/1', '2026-06-13 03:47:37', '2026-06-13 03:47:37'),
(366, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 03:51:25', '2026-06-13 03:51:25'),
(367, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 03:51:41', '2026-06-13 03:51:41'),
(368, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 03:51:49', '2026-06-13 03:51:49'),
(369, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 06:30:54', '2026-06-13 06:30:54'),
(370, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 06:31:12', '2026-06-13 06:31:12'),
(371, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 06:31:15', '2026-06-13 06:31:15'),
(372, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 06:36:04', '2026-06-13 06:36:04'),
(373, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 06:36:11', '2026-06-13 06:36:11'),
(374, NULL, NULL, 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 06:36:26', '2026-06-13 06:36:26'),
(375, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 06:36:27', '2026-06-13 06:36:27'),
(376, 2, 'rosa', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 06:36:35', '2026-06-13 06:36:35'),
(377, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 06:36:35', '2026-06-13 06:36:35'),
(378, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 06:36:55', '2026-06-13 06:36:55'),
(379, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 06:37:26', '2026-06-13 06:37:26'),
(380, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 06:37:31', '2026-06-13 06:37:31'),
(381, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 06:37:32', '2026-06-13 06:37:32'),
(382, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 06:37:34', '2026-06-13 06:37:34'),
(383, 2, 'rosa', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 06:37:42', '2026-06-13 06:37:42'),
(384, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 06:37:42', '2026-06-13 06:37:42'),
(385, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 06:37:48', '2026-06-13 06:37:48'),
(386, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 06:37:53', '2026-06-13 06:37:53'),
(387, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 06:37:57', '2026-06-13 06:37:57'),
(388, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 06:50:32', '2026-06-13 06:50:32'),
(389, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 06:50:44', '2026-06-13 06:50:44'),
(390, 2, 'rosa', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 06:51:03', '2026-06-13 06:51:03'),
(391, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 06:51:04', '2026-06-13 06:51:04'),
(392, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 06:52:31', '2026-06-13 06:52:31'),
(393, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 06:52:35', '2026-06-13 06:52:35'),
(394, 2, 'rosa', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 06:52:56', '2026-06-13 06:52:56'),
(395, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 06:53:02', '2026-06-13 06:53:02'),
(396, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 06:53:15', '2026-06-13 06:53:15'),
(397, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 06:53:21', '2026-06-13 06:53:21'),
(398, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 06:53:23', '2026-06-13 06:53:23'),
(399, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 06:53:27', '2026-06-13 06:53:27'),
(400, 2, 'rosa', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 06:53:43', '2026-06-13 06:53:43'),
(401, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 06:53:46', '2026-06-13 06:53:46'),
(402, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 06:54:18', '2026-06-13 06:54:18'),
(403, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 21:33:09', '2026-06-13 21:33:09'),
(404, NULL, NULL, 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 21:33:57', '2026-06-13 21:33:57'),
(405, NULL, NULL, 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-13 21:34:10', '2026-06-13 21:34:10'),
(406, NULL, NULL, 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 21:34:18', '2026-06-13 21:34:18'),
(407, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 21:34:27', '2026-06-13 21:34:27'),
(408, NULL, NULL, 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 21:34:41', '2026-06-13 21:34:41'),
(409, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 21:34:42', '2026-06-13 21:34:42'),
(410, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 21:34:53', '2026-06-13 21:34:53'),
(411, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 21:34:54', '2026-06-13 21:34:54'),
(412, 1, 'admin@gmail.com', 'GET', 'dashboard.admin', 'App\\Http\\Controllers\\DashboardController@index', 'http://127.0.0.1:8000/dashboard-admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/dashboard-admin', '2026-06-13 21:35:00', '2026-06-13 21:35:00'),
(413, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-13 21:35:09', '2026-06-13 21:35:09'),
(414, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 21:35:11', '2026-06-13 21:35:11'),
(415, 1, 'admin@gmail.com', 'GET', 'mobil.index', 'App\\Http\\Controllers\\MobilController@index', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil', '2026-06-13 21:35:31', '2026-06-13 21:35:31'),
(416, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 21:35:44', '2026-06-13 21:35:44'),
(417, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 21:35:52', '2026-06-13 21:35:52'),
(418, 1, 'admin@gmail.com', 'GET', 'pesanan.create', 'App\\Http\\Controllers\\PesananController@create', 'http://127.0.0.1:8000/pesanan/create/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/pesanan/create/1', '2026-06-13 21:36:05', '2026-06-13 21:36:05'),
(419, 1, 'admin@gmail.com', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 21:36:09', '2026-06-13 21:36:09'),
(420, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 21:36:35', '2026-06-13 21:36:35'),
(421, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 21:36:52', '2026-06-13 21:36:52'),
(422, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-13 21:36:57', '2026-06-13 21:36:57'),
(423, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 21:37:04', '2026-06-13 21:37:04'),
(424, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 21:37:05', '2026-06-13 21:37:05'),
(425, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 21:39:14', '2026-06-13 21:39:14'),
(426, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 21:39:24', '2026-06-13 21:39:24'),
(427, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-13 21:39:25', '2026-06-13 21:39:25'),
(428, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 21:39:30', '2026-06-13 21:39:30'),
(429, 1, 'admin@gmail.com', 'GET', 'mobil.index', 'App\\Http\\Controllers\\MobilController@index', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil', '2026-06-13 21:39:32', '2026-06-13 21:39:32'),
(430, 1, 'admin@gmail.com', 'GET', 'dashboard.admin', 'App\\Http\\Controllers\\DashboardController@index', 'http://127.0.0.1:8000/dashboard-admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/dashboard-admin', '2026-06-13 21:39:40', '2026-06-13 21:39:40'),
(431, 1, 'admin@gmail.com', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-13 21:40:14', '2026-06-13 21:40:14'),
(432, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 21:40:16', '2026-06-13 21:40:16'),
(433, 1, 'admin@gmail.com', 'GET', 'mobil.index', 'App\\Http\\Controllers\\MobilController@index', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil', '2026-06-13 21:40:18', '2026-06-13 21:40:18'),
(434, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 21:40:47', '2026-06-13 21:40:47'),
(435, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 21:40:49', '2026-06-13 21:40:49'),
(436, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 21:40:52', '2026-06-13 21:40:52'),
(437, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 21:41:22', '2026-06-13 21:41:22'),
(438, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 21:41:38', '2026-06-13 21:41:38'),
(439, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 21:42:00', '2026-06-13 21:42:00'),
(440, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 21:42:40', '2026-06-13 21:42:40'),
(441, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 21:42:55', '2026-06-13 21:42:55'),
(442, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 21:43:25', '2026-06-13 21:43:25'),
(443, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 21:43:54', '2026-06-13 21:43:54'),
(444, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 21:46:47', '2026-06-13 21:46:47'),
(445, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 21:46:48', '2026-06-13 21:46:48'),
(446, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 21:46:51', '2026-06-13 21:46:51'),
(447, NULL, NULL, 'GET', 'register', 'App\\Http\\Controllers\\Auth\\RegisteredUserController@create', 'http://127.0.0.1:8000/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/register', '2026-06-13 21:46:57', '2026-06-13 21:46:57'),
(448, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 21:47:02', '2026-06-13 21:47:02'),
(449, 2, 'rosa', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 21:47:15', '2026-06-13 21:47:15'),
(450, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 21:47:16', '2026-06-13 21:47:16');
INSERT INTO `activity_logs` (`id`, `user_id`, `user_name`, `method`, `route`, `action`, `url`, `ip_address`, `user_agent`, `description`, `created_at`, `updated_at`) VALUES
(451, 2, 'rosa', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 21:47:25', '2026-06-13 21:47:25'),
(452, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 21:47:48', '2026-06-13 21:47:48'),
(453, 2, 'rosa', 'GET', 'pesanan.create', 'App\\Http\\Controllers\\PesananController@create', 'http://127.0.0.1:8000/pesanan/create/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/pesanan/create/1', '2026-06-13 21:47:51', '2026-06-13 21:47:51'),
(454, 2, 'rosa', 'POST', 'pesanan.store', 'App\\Http\\Controllers\\PesananController@store', 'http://127.0.0.1:8000/pesanan/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/pesanan/store', '2026-06-13 21:48:37', '2026-06-13 21:48:37'),
(455, 2, 'rosa', 'GET', 'mobil.index', 'App\\Http\\Controllers\\MobilController@index', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil', '2026-06-13 21:48:38', '2026-06-13 21:48:38'),
(456, 2, 'rosa', 'GET', 'mobil.index', 'App\\Http\\Controllers\\MobilController@index', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil', '2026-06-13 21:48:48', '2026-06-13 21:48:48'),
(457, 2, 'rosa', 'POST', 'pesanan.store', 'App\\Http\\Controllers\\PesananController@store', 'http://127.0.0.1:8000/pesanan/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/pesanan/store', '2026-06-13 21:48:53', '2026-06-13 21:48:53'),
(458, 2, 'rosa', 'GET', 'mobil.index', 'App\\Http\\Controllers\\MobilController@index', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil', '2026-06-13 21:48:54', '2026-06-13 21:48:54'),
(459, 2, 'rosa', 'POST', 'pesanan.store', 'App\\Http\\Controllers\\PesananController@store', 'http://127.0.0.1:8000/pesanan/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/pesanan/store', '2026-06-13 21:49:23', '2026-06-13 21:49:23'),
(460, 2, 'rosa', 'GET', 'mobil.index', 'App\\Http\\Controllers\\MobilController@index', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil', '2026-06-13 21:49:23', '2026-06-13 21:49:23'),
(461, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 21:55:14', '2026-06-13 21:55:14'),
(462, 2, 'rosa', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 22:01:11', '2026-06-13 22:01:11'),
(463, 2, 'rosa', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 22:22:40', '2026-06-13 22:22:40'),
(464, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 22:34:00', '2026-06-13 22:34:00'),
(465, 2, 'rosa', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 22:34:15', '2026-06-13 22:34:15'),
(466, 2, 'rosa', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-13 22:34:19', '2026-06-13 22:34:19'),
(467, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 22:34:22', '2026-06-13 22:34:22'),
(468, 2, 'rosa', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 22:34:25', '2026-06-13 22:34:25'),
(469, 2, 'rosa', 'GET', 'tentang', 'App\\Http\\Controllers\\HomeController@tentang', 'http://127.0.0.1:8000/tentang', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/tentang', '2026-06-13 22:34:28', '2026-06-13 22:34:28'),
(470, 2, 'rosa', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 22:34:46', '2026-06-13 22:34:46'),
(471, 2, 'rosa', 'GET', 'detail', 'App\\Http\\Controllers\\HomeController@detail', 'http://127.0.0.1:8000/detail/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/detail/1', '2026-06-13 22:34:49', '2026-06-13 22:34:49'),
(472, 2, 'rosa', 'GET', 'pesanan.create', 'App\\Http\\Controllers\\PesananController@create', 'http://127.0.0.1:8000/pesanan/create/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/pesanan/create/1', '2026-06-13 22:34:52', '2026-06-13 22:34:52'),
(473, 2, 'rosa', 'POST', 'pesanan.store', 'App\\Http\\Controllers\\PesananController@store', 'http://127.0.0.1:8000/pesanan/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/pesanan/store', '2026-06-13 22:35:07', '2026-06-13 22:35:07'),
(474, 2, 'rosa', 'GET', 'pesanan.create', 'App\\Http\\Controllers\\PesananController@create', 'http://127.0.0.1:8000/pesanan/create/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/pesanan/create/1', '2026-06-13 22:35:07', '2026-06-13 22:35:07'),
(475, 2, 'rosa', 'POST', 'pesanan.store', 'App\\Http\\Controllers\\PesananController@store', 'http://127.0.0.1:8000/pesanan/store', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/pesanan/store', '2026-06-13 22:35:33', '2026-06-13 22:35:33'),
(476, 2, 'rosa', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 22:35:37', '2026-06-13 22:35:37'),
(477, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 22:35:41', '2026-06-13 22:35:41'),
(478, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 22:35:42', '2026-06-13 22:35:42'),
(479, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 22:35:45', '2026-06-13 22:35:45'),
(480, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 22:35:57', '2026-06-13 22:35:57'),
(481, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 22:35:58', '2026-06-13 22:35:58'),
(482, 1, 'admin@gmail.com', 'GET', 'dashboard.admin', 'App\\Http\\Controllers\\DashboardController@index', 'http://127.0.0.1:8000/dashboard-admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/dashboard-admin', '2026-06-13 22:36:02', '2026-06-13 22:36:02'),
(483, 1, 'admin@gmail.com', 'PATCH', 'pesanan.status', 'App\\Http\\Controllers\\PesananController@updateStatus', 'http://127.0.0.1:8000/admin/pesanan/4/status', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'PATCH http://127.0.0.1:8000/admin/pesanan/4/status', '2026-06-13 22:36:55', '2026-06-13 22:36:55'),
(484, 1, 'admin@gmail.com', 'GET', 'dashboard.admin', 'App\\Http\\Controllers\\DashboardController@index', 'http://127.0.0.1:8000/dashboard-admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/dashboard-admin', '2026-06-13 22:36:56', '2026-06-13 22:36:56'),
(485, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-13 22:37:02', '2026-06-13 22:37:02'),
(486, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 22:37:04', '2026-06-13 22:37:04'),
(487, 1, 'admin@gmail.com', 'GET', 'dashboard.admin', 'App\\Http\\Controllers\\DashboardController@index', 'http://127.0.0.1:8000/dashboard-admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/dashboard-admin', '2026-06-13 22:37:08', '2026-06-13 22:37:08'),
(488, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 22:38:25', '2026-06-13 22:38:25'),
(489, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 22:38:27', '2026-06-13 22:38:27'),
(490, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 23:12:02', '2026-06-13 23:12:02'),
(491, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 23:12:10', '2026-06-13 23:12:10'),
(492, NULL, NULL, 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 23:12:23', '2026-06-13 23:12:23'),
(493, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 23:12:24', '2026-06-13 23:12:24'),
(494, 2, 'rosa', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 23:12:30', '2026-06-13 23:12:30'),
(495, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 23:12:31', '2026-06-13 23:12:31'),
(496, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 23:12:42', '2026-06-13 23:12:42'),
(497, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 23:12:51', '2026-06-13 23:12:51'),
(498, 2, 'rosa', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 23:13:17', '2026-06-13 23:13:17'),
(499, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 23:13:18', '2026-06-13 23:13:18'),
(500, 2, 'rosa', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 23:13:32', '2026-06-13 23:13:32'),
(501, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-13 23:13:37', '2026-06-13 23:13:37'),
(502, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 23:13:37', '2026-06-13 23:13:37'),
(503, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 23:21:50', '2026-06-13 23:21:50'),
(504, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-13 23:22:03', '2026-06-13 23:22:03'),
(505, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 23:22:04', '2026-06-13 23:22:04'),
(506, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-13 23:22:19', '2026-06-13 23:22:19'),
(507, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-13 23:22:24', '2026-06-13 23:22:24'),
(508, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-14 07:32:37', '2026-06-14 07:32:37'),
(509, NULL, NULL, 'GET', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@create', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/login', '2026-06-14 07:33:41', '2026-06-14 07:33:41'),
(510, 1, 'admin@gmail.com', 'POST', 'login', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@store', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/login', '2026-06-14 07:34:01', '2026-06-14 07:34:01'),
(511, 1, 'admin@gmail.com', 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-14 07:34:02', '2026-06-14 07:34:02'),
(512, 1, 'admin@gmail.com', 'GET', 'galeri', 'App\\Http\\Controllers\\HomeController@galeri', 'http://127.0.0.1:8000/galeri', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/galeri', '2026-06-14 07:34:06', '2026-06-14 07:34:06'),
(513, 1, 'admin@gmail.com', 'DELETE', 'mobil.destroy', 'App\\Http\\Controllers\\MobilController@destroy', 'http://127.0.0.1:8000/mobil/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'DELETE http://127.0.0.1:8000/mobil/2', '2026-06-14 07:34:17', '2026-06-14 07:34:17'),
(514, 1, 'admin@gmail.com', 'GET', 'mobil.index', 'App\\Http\\Controllers\\MobilController@index', 'http://127.0.0.1:8000/mobil', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000/mobil', '2026-06-14 07:34:17', '2026-06-14 07:34:17'),
(515, NULL, NULL, 'POST', 'logout', 'App\\Http\\Controllers\\Auth\\AuthenticatedSessionController@destroy', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'POST http://127.0.0.1:8000/logout', '2026-06-14 07:34:22', '2026-06-14 07:34:22'),
(516, NULL, NULL, 'GET', '/', 'App\\Http\\Controllers\\HomeController@index', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'GET http://127.0.0.1:8000', '2026-06-14 07:34:22', '2026-06-14 07:34:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_05_27_073822_create_mobil_table', 2),
(5, '2026_05_27_081226_create_pesanan_table', 2),
(6, '2026_06_02_000001_add_jenis_to_pesanan_table', 2),
(7, '2026_06_05_000000_create_activity_logs_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `tahun` year(4) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `gambar1` varchar(255) DEFAULT NULL,
  `gambar2` varchar(255) DEFAULT NULL,
  `gambar3` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id`, `nama`, `merk`, `tipe`, `tahun`, `harga`, `gambar1`, `gambar2`, `gambar3`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Avanza', 'Toyota', 'Manual', '2019', 200000000, 'mobil/9Znb2vc69tArp9uJBLnI4ESqc0J0albsKvQkKI38.jpg', 'mobil/R3g74LQLi3ehNIcHVMirtM8p01K7lsKDfEc4YCha.jpg', 'mobil/56lyK7GVhe7LxDLh3GYcolFY8vY4HUsIQ3Db9uOo.jpg', NULL, '2026-06-13 00:24:13', '2026-06-13 00:24:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobil_id` bigint(20) UNSIGNED NOT NULL,
  `nama_pembeli` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `jenis` enum('cash','kredit') NOT NULL DEFAULT 'cash',
  `status` enum('Pending','Diproses','Selesai','Dibatalkan') NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `mobil_id`, `nama_pembeli`, `email`, `telepon`, `alamat`, `jenis`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Avanzaku Nika', 'user1@gmail.com', '08123456789', 'Jl. Gedongan 2', 'cash', 'Pending', '2026-06-13 21:48:37', '2026-06-13 21:48:37'),
(2, 1, 'Avanzaku Nika', 'user1@gmail.com', '08123456789', 'Jl. Gedongan 2', 'cash', 'Pending', '2026-06-13 21:48:53', '2026-06-13 21:48:53'),
(3, 1, 'Avanzaku Nika', 'user1@gmail.com', '08123456789', 'Jl. Gedongan 2', 'cash', 'Pending', '2026-06-13 21:49:23', '2026-06-13 21:49:23'),
(4, 1, 'Avanzaku Nika', 'user1@gmail.com', '08123456789', 'JL. HIU', 'cash', 'Selesai', '2026-06-13 22:35:33', '2026-06-13 22:36:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('VHaCRyeMf81e6uZrFPg7Jt049S7vMkYRMH5rLDQo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidnhPc1czajNhV3o5ZnhKNXk2OWxKWGo5R21aZ2tIcXV6UnBTNWd0dCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL21vYmlsIjt9czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9fQ==', 1781447662);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'admin@gmail.com', NULL, '$2y$12$Ax1vueQeM/JzLjdstgUtuOU6l9cI0h5WV3/H6ZCNayBo2ruOMhH.S', 'admin', 'ZAjCk6DLAm90l7QMvSB9fKrNPdNKK2UzhtdEfURhLOGI8o4ronhaManoZENC', '2026-06-05 07:49:08', '2026-06-05 07:49:08'),
(2, 'rosa', 'user1@gmail.com', NULL, '$2y$12$sGIdLZz0a2gTd/r9juCbDu2Qzr/iBdlgd9U11t9n6QpQYaarjHAs6', 'user', '1kfNfouGxba9dI8UV13RfHMHfmwTatp7avTVvbplAZw1bsSXFvT9xDM3esBu', '2026-06-13 00:26:58', '2026-06-13 00:26:58');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pesanan_mobil_id_foreign` (`mobil_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=517;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_mobil_id_foreign` FOREIGN KEY (`mobil_id`) REFERENCES `mobil` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
