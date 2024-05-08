-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 08, 2024 at 12:03 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `old_map`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `int_user_old_map`
--

CREATE TABLE `int_user_old_map` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `old_map_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `map_user`
--

CREATE TABLE `map_user` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `login` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `old_map`
--

CREATE TABLE `old_map` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `old_map`
--

INSERT INTO `old_map` (`id`, `url`, `name`) VALUES
(1, 'https://maps.georeferencer.com/georeferences/feea0ebe-3646-5b70-a4a5-7390366085f0/2024-02-13T21:43:04.679421Z/map.json?key=uDbZMmpUnwiILcvphRrr', 'Warsaw'),
(2, 'https://maps.georeferencer.com/georeferences/b5c93b99-2017-5dfa-baf2-8f427d1f0ef0/2023-09-05T17:41:41.652084Z/map.json?key=uDbZMmpUnwiILcvphRrr', 'Poland (Pergamon World Atlas)'),
(3, 'https://maps.georeferencer.com/georeferences/9bb7737f-0c34-574e-9acc-f8539ca89a25/2020-03-12T19:48:40.285111Z/map.json?key=uDbZMmpUnwiILcvphRrr', 'Das Russische Koenigreich Polen und der Freistaat Krakau'),
(4, 'https://maps.georeferencer.com/georeferences/561b07ff-d13a-5a97-9f30-370c80ffe652/2021-10-04T14:10:24.156823Z/map.json?key=uDbZMmpUnwiILcvphRrr', 'Ostdeutschland (44)'),
(5, 'https://maps.georeferencer.com/georeferences/55cd4039-57d1-4208-bf0f-c42d3d14b480/2021-06-24T02:29:12.770663Z/map.json?key=uDbZMmpUnwiILcvphRrr', 'Westrussland');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `int_user_old_map`
--
ALTER TABLE `int_user_old_map`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `old_map_id` (`old_map_id`);

--
-- Indeksy dla tabeli `map_user`
--
ALTER TABLE `map_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `old_map`
--
ALTER TABLE `old_map`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `int_user_old_map`
--
ALTER TABLE `int_user_old_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `map_user`
--
ALTER TABLE `map_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `old_map`
--
ALTER TABLE `old_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
