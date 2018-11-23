-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2018 a las 07:27:07
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tokendb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calls`
--

CREATE TABLE `calls` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `counter_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `called_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `calls`
--

INSERT INTO `calls` (`id`, `queue_id`, `department_id`, `counter_id`, `user_id`, `number`, `called_date`, `created_at`, `updated_at`) VALUES
(87, 2, 1, 3, 1, 1001, '2018-11-22', '2018-11-23 04:23:15', '2018-11-23 04:23:15'),
(97, 1, 1, 2, 2, 1000, '2018-11-22', '2018-11-23 04:25:57', '2018-11-23 04:25:57'),
(101, 3, 1, 4, 2, 1002, '2018-11-22', '2018-11-23 04:27:24', '2018-11-23 04:27:24'),
(123, 6, 1, 2, 2, 1005, '2018-11-22', '2018-11-23 05:56:37', '2018-11-23 05:56:37'),
(124, 9, 1, 5, 2, 1008, '2018-11-22', '2018-11-23 05:58:34', '2018-11-23 05:58:34'),
(129, 4, 1, 4, 2, 1003, '2018-11-22', '2018-11-23 06:02:53', '2018-11-23 06:02:53'),
(130, 7, 1, 2, 2, 1006, '2018-11-22', '2018-11-23 06:03:48', '2018-11-23 06:03:48'),
(131, 12, 1, 1, 2, 1011, '2018-11-22', '2018-11-23 06:04:09', '2018-11-23 06:04:09'),
(132, 11, 1, 3, 2, 1010, '2018-11-22', '2018-11-23 06:04:38', '2018-11-23 06:04:38'),
(133, 13, 1, 1, 2, 1012, '2018-11-22', '2018-11-23 06:04:57', '2018-11-23 06:04:57'),
(134, 10, 1, 5, 2, 1009, '2018-11-22', '2018-11-23 06:05:18', '2018-11-23 06:05:18'),
(135, 8, 1, 5, 2, 1007, '2018-11-22', '2018-11-23 06:05:45', '2018-11-23 06:05:45'),
(137, 5, 1, 1, 2, 1004, '2018-11-22', '2018-11-23 06:18:56', '2018-11-23 06:18:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `counters`
--

CREATE TABLE `counters` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `counters`
--

INSERT INTO `counters` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'VENTANILLA 1', '2018-11-23 02:11:12', '2018-11-23 02:11:37'),
(2, 'VENTANILLA 2', '2018-11-23 02:11:23', '2018-11-23 02:11:23'),
(3, 'VENTANILLA 3', '2018-11-23 02:11:29', '2018-11-23 02:11:29'),
(4, 'VENTANILLA 4', '2018-11-23 02:11:42', '2018-11-23 02:11:42'),
(5, 'VENTANILLA 5', '2018-11-23 02:11:49', '2018-11-23 02:11:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `letter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`id`, `name`, `letter`, `start`, `created_at`, `updated_at`) VALUES
(1, 'FARMACIA', 'F', 1000, '2018-11-23 02:11:00', '2018-11-23 02:11:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `display`, `image`, `created_at`, `updated_at`) VALUES
(1, 'gb', 'English', 'UK English Female', 'United-Kingdom.png', '2018-11-23 02:06:28', '2018-11-23 02:06:28'),
(2, 'tr', 'Turkish', 'Turkish Female', 'Turkey.png', '2018-11-23 02:06:28', '2018-11-23 02:06:28'),
(3, 'de', 'German', 'Deutsch Female', 'Germany.png', '2018-11-23 02:06:28', '2018-11-23 02:06:28'),
(4, 'es', 'Spanish', 'Spanish Female', 'Spain.png', '2018-11-23 02:06:28', '2018-11-23 02:06:28'),
(5, 'fr', 'French', 'French Female', 'France.png', '2018-11-23 02:06:28', '2018-11-23 02:06:28'),
(6, 'in', 'Hindi', 'Hindi Female', 'India.png', '2018-11-23 02:06:28', '2018-11-23 02:06:28'),
(7, 'it', 'Italian', 'Italian Female', 'Italy.png', '2018-11-23 02:06:28', '2018-11-23 02:06:28'),
(8, 'pt', 'Portuguese', 'Portuguese Female', 'Portugal.png', '2018-11-23 02:06:28', '2018-11-23 02:06:28'),
(9, 'ru', 'Russian', 'Russian Female', 'Russia.png', '2018-11-23 02:06:28', '2018-11-23 02:06:28'),
(10, 'sa', 'Arabic', 'Arabic Male', 'Saudi-Arabia.png', '2018-11-23 02:06:28', '2018-11-23 02:06:28'),
(11, 'sk', 'Slovak', 'Slovak Female', 'Slovakia.png', '2018-11-23 02:06:28', '2018-11-23 02:06:28'),
(12, 'th', 'Thai', 'Thai Female', 'Thailand.png', '2018-11-23 02:06:28', '2018-11-23 02:06:28'),
(13, 'id', 'Indonesian', 'Indonesian Female', 'Indonesia.png', '2018-11-23 02:06:28', '2018-11-23 02:06:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_07_16_161740_create_departments_table', 1),
(4, '2016_07_16_180929_create_counters_table', 1),
(5, '2016_07_16_190715_create_queues_table', 1),
(6, '2016_07_19_170334_create_calls_table', 1),
(7, '2016_08_24_231859_create_languages_table', 1),
(8, '2016_09_28_123908_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `queues`
--

CREATE TABLE `queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `called` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `queues`
--

INSERT INTO `queues` (`id`, `department_id`, `number`, `called`, `created_at`, `updated_at`) VALUES
(1, 1, 1000, 1, '2018-11-23 02:12:26', '2018-11-23 02:12:45'),
(2, 1, 1001, 1, '2018-11-23 02:13:22', '2018-11-23 02:13:57'),
(3, 1, 1002, 1, '2018-11-23 02:19:46', '2018-11-23 02:20:08'),
(4, 1, 1003, 1, '2018-11-23 02:34:07', '2018-11-23 02:34:15'),
(5, 1, 1004, 1, '2018-11-23 03:32:32', '2018-11-23 03:32:44'),
(6, 1, 1005, 1, '2018-11-23 03:33:39', '2018-11-23 03:34:15'),
(7, 1, 1006, 1, '2018-11-23 03:34:43', '2018-11-23 03:35:01'),
(8, 1, 1007, 1, '2018-11-23 03:47:36', '2018-11-23 03:48:21'),
(9, 1, 1008, 1, '2018-11-23 03:47:40', '2018-11-23 03:49:09'),
(10, 1, 1009, 1, '2018-11-23 03:47:42', '2018-11-23 03:50:07'),
(11, 1, 1010, 1, '2018-11-23 04:27:34', '2018-11-23 04:27:43'),
(12, 1, 1011, 1, '2018-11-23 04:41:03', '2018-11-23 04:41:09'),
(13, 1, 1012, 1, '2018-11-23 04:41:19', '2018-11-23 04:41:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bus_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notification` text COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `over_time` int(11) NOT NULL,
  `missed_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `language_id`, `name`, `bus_no`, `address`, `email`, `phone`, `location`, `notification`, `size`, `color`, `logo`, `over_time`, `missed_time`, `created_at`, `updated_at`) VALUES
(1, 4, 'ISSSTE', '', '', 'company_email@example.com', '', '', '', 35, '#f7184e', '', 20, 20, '2018-11-23 02:06:28', '2018-11-23 03:42:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'your_email@rxample.com', 'A', '$2y$10$JKwinGSEjFbXE/IBtaISH.MTh1GZs.0I.myIeO.9OmAWBx7Q36/mi', 'hzWSznRgrD33Z33D16yI2wjro9l9YtK5zACUiW2mEFfBSPRMymPeWbPaARfv', '2018-11-23 02:06:28', '2018-11-23 02:09:09'),
(2, 'hector fuentes', 'rishar', 'ricarmenta@gmail.com', 'S', '$2y$10$.wPszZ7k9ziZxhBIUyfUO./Giefjx.YDO.ae71/0mdvVbdPfzvv7m', NULL, '2018-11-23 02:10:41', '2018-11-23 02:10:41');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calls_queue_id_foreign` (`queue_id`),
  ADD KEY `calls_department_id_foreign` (`department_id`),
  ADD KEY `calls_counter_id_foreign` (`counter_id`),
  ADD KEY `calls_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_code_unique` (`code`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `queues`
--
ALTER TABLE `queues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queues_department_id_foreign` (`department_id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_language_id_foreign` (`language_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calls`
--
ALTER TABLE `calls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de la tabla `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `queues`
--
ALTER TABLE `queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calls`
--
ALTER TABLE `calls`
  ADD CONSTRAINT `calls_counter_id_foreign` FOREIGN KEY (`counter_id`) REFERENCES `counters` (`id`),
  ADD CONSTRAINT `calls_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `calls_queue_id_foreign` FOREIGN KEY (`queue_id`) REFERENCES `queues` (`id`),
  ADD CONSTRAINT `calls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `queues`
--
ALTER TABLE `queues`
  ADD CONSTRAINT `queues_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

--
-- Filtros para la tabla `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
