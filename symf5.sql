-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Cze 2022, 09:52
-- Wersja serwera: 10.4.20-MariaDB
-- Wersja PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `symf5`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`) VALUES
(1, NULL, 'Electronics'),
(2, NULL, 'Toys'),
(3, NULL, 'Books'),
(4, NULL, 'Movies'),
(5, 1, 'Cameras'),
(6, 1, 'Computers'),
(7, 1, 'Cell Phones'),
(8, 6, 'Laptops'),
(9, 6, 'Desktops'),
(10, 8, 'Apple'),
(11, 8, 'Asus'),
(12, 8, 'Dell'),
(13, 8, 'Lenovo'),
(14, 8, 'HP'),
(15, 3, 'Children\'s Books'),
(16, 3, 'Kindle eBooks'),
(17, 4, 'Family'),
(18, 4, 'Romance'),
(19, 18, 'Romantic Comedy'),
(20, 18, 'Romantic Drama');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `video_id`, `content`, `created_at`) VALUES
(1, 1, 10, 'Comment 1 Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.', '2018-10-08 12:34:45'),
(2, 2, 10, 'Comment 2 Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.', '2018-09-08 10:34:45'),
(3, 3, 10, 'Comment 3 Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.', '2018-08-08 23:34:45'),
(4, 1, 11, 'Comment 1 Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.', '2018-10-08 11:23:34'),
(5, 2, 11, 'Comment 2 Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.', '2018-09-08 15:17:06'),
(6, 3, 11, 'Comment 3 Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.', '2018-08-08 21:34:45'),
(7, 3, 11, 'Comment 4 Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.', '2018-08-08 22:34:45'),
(8, 3, 11, 'Comment 5 Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.', '2018-08-08 23:34:45');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dislikes`
--

CREATE TABLE `dislikes` (
  `video_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `dislikes`
--

INSERT INTO `dislikes` (`video_id`, `user_id`) VALUES
(10, 1),
(10, 2),
(10, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220527094841', '2022-05-27 11:48:42', 6522);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `likes`
--

CREATE TABLE `likes` (
  `video_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `likes`
--

INSERT INTO `likes` (`video_id`, `user_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(12, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid_to` datetime NOT NULL,
  `payment_status` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_plan_used` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `plan`, `valid_to`, `payment_status`, `free_plan_used`) VALUES
(1, 'enterprise', '2122-05-27 11:48:53', 'paid', 0),
(2, 'free', '2022-06-27 11:48:53', 'paid', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `subscription_id` int(11) DEFAULT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vimeo_api_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `subscription_id`, `email`, `roles`, `password`, `name`, `last_name`, `vimeo_api_key`) VALUES
(1, 1, 'jw@symf5.loc', '[\"ROLE_ADMIN\"]', '$2y$13$fne2ciqGpXdgx0K47UjLRemDh4kTFOc8IYjjEuXYvdwOe3HCfAbwi', 'John', 'Wayne', 'hjd8dehdh'),
(2, NULL, 'jw2@symf5.loc', '[\"ROLE_ADMIN\"]', '$2y$13$gD2u2wIiJQApQm1At35ASuNX972XXrQu23lHjHwEs8z8QdqltlhnC', 'John', 'Wayne2', NULL),
(3, 2, 'jd@symf5.loc', '[\"ROLE_USER\"]', '$2y$13$e0YiAsnuXtFzwyxXIqm9.e28NHHZVeG8ODhndb8j3wKtQ3IBb7Aam', 'John', 'Doe', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `videos`
--

INSERT INTO `videos` (`id`, `category_id`, `title`, `path`, `duration`) VALUES
(1, 4, 'Movies 1', 'https://player.vimeo.com/video/289729765', 198),
(2, 4, 'Movies 2', 'https://player.vimeo.com/video/238902809', 125),
(3, 4, 'Movies 3', 'https://player.vimeo.com/video/150870038', 213),
(4, 4, 'Movies 4', 'https://player.vimeo.com/video/219727723', 254),
(5, 4, 'Movies 5', 'https://player.vimeo.com/video/289879647', 134),
(6, 4, 'Movies 6', 'https://player.vimeo.com/video/261379936', 61),
(7, 4, 'Movies 7', 'https://player.vimeo.com/video/289029793', 178),
(8, 4, 'Movies 8', 'https://player.vimeo.com/video/60594348', 299),
(9, 4, 'Movies 9', 'https://player.vimeo.com/video/290253648', 213),
(10, 17, 'Family 1', 'https://player.vimeo.com/video/289729765', 116),
(11, 17, 'Family 2', 'https://player.vimeo.com/video/289729765', 165),
(12, 17, 'Family 3', 'https://player.vimeo.com/video/289729765', 23),
(13, 19, 'Romantic comedy 1', 'https://player.vimeo.com/video/289729765', 186),
(14, 19, 'Romantic comedy 2', 'https://player.vimeo.com/video/289729765', 259),
(15, 20, 'Romantic drama 1', 'https://player.vimeo.com/video/289729765', 150),
(16, 2, 'Toys  1', 'https://player.vimeo.com/video/289729765', 61),
(17, 2, 'Toys  2', 'https://player.vimeo.com/video/289729765', 201),
(18, 2, 'Toys  3', 'https://player.vimeo.com/video/289729765', 247),
(19, 2, 'Toys  4', 'https://player.vimeo.com/video/289729765', 68),
(20, 2, 'Toys  5', 'https://player.vimeo.com/video/289729765', 175),
(21, 2, 'Toys  6', 'https://player.vimeo.com/video/289729765', 83),
(22, NULL, 'to do', '/uploads/videos/to do', NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_3AF346685E237E06` (`name`),
  ADD KEY `IDX_3AF34668727ACA70` (`parent_id`);

--
-- Indeksy dla tabeli `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5F9E962AA76ED395` (`user_id`),
  ADD KEY `IDX_5F9E962A29C1004E` (`video_id`);

--
-- Indeksy dla tabeli `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`video_id`,`user_id`),
  ADD KEY `IDX_2DF3BE1129C1004E` (`video_id`),
  ADD KEY `IDX_2DF3BE11A76ED395` (`user_id`);

--
-- Indeksy dla tabeli `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indeksy dla tabeli `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`video_id`,`user_id`),
  ADD KEY `IDX_49CA4E7D29C1004E` (`video_id`),
  ADD KEY `IDX_49CA4E7DA76ED395` (`user_id`);

--
-- Indeksy dla tabeli `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`),
  ADD UNIQUE KEY `UNIQ_1483A5E99A1887DC` (`subscription_id`);

--
-- Indeksy dla tabeli `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_29AA643212469DE2` (`category_id`),
  ADD KEY `title_idx` (`title`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT dla tabeli `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `FK_3AF34668727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK_5F9E962A29C1004E` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5F9E962AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `dislikes`
--
ALTER TABLE `dislikes`
  ADD CONSTRAINT `FK_2DF3BE1129C1004E` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2DF3BE11A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `FK_49CA4E7D29C1004E` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_49CA4E7DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_1483A5E99A1887DC` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`);

--
-- Ograniczenia dla tabeli `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `FK_29AA643212469DE2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
