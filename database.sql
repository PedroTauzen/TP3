-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Czas generowania: 17 Lut 2018, 18:04
-- Wersja serwera: 5.6.37
-- Wersja PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `shareboard`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shares`
--

CREATE TABLE IF NOT EXISTS `shares`
(
    `id`          int(11)      NOT NULL,
    `user_id`     int(11)      NOT NULL,
    `title`       varchar(255) NOT NULL,
    `body`        text         NOT NULL,
    `link`        varchar(255) NOT NULL,
    `create_date` datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB
  AUTO_INCREMENT = 7
  DEFAULT CHARSET = latin1;

--
-- Zrzut danych tabeli `shares`
--

INSERT INTO `shares` (`id`, `user_id`, `title`, `body`, `link`, `create_date`)
VALUES (6, 1, 'Testing title',
        'Testing body Testing body Testing body Testing body Testing body Testing body Testing body Testing body Testing body Testing body Testing body Testing body Testing body Testing body Testing body Testing body Testing body Testing body Testing body Testing body Testing body ',
        'google.com', '2018-02-17 19:00:44');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE IF NOT EXISTS `users`
(
    `id`            int(11)      NOT NULL,
    `name`          varchar(255) NOT NULL,
    `email`         varchar(255) NOT NULL,
    `password`      varchar(255) NOT NULL,
    `register_date` datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB
  AUTO_INCREMENT = 6
  DEFAULT CHARSET = latin1;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `register_date`)
VALUES (5, 'Testing', 'test@test.com', '1fb0e331c05a52d5eb847d6fc018320d', '2018-02-17 18:59:42');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
    ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `shares`
--
ALTER TABLE `shares`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 7;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 6;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
