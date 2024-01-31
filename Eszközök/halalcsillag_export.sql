-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Feb 03. 22:38
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `starwars`
--
CREATE DATABASE IF NOT EXISTS `starwars` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `starwars`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `helyszin`
--

CREATE TABLE `helyszin` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL,
  `kezdo_X` int(11) NOT NULL,
  `kezdo_Y` int(11) NOT NULL,
  `veg_X` int(11) NOT NULL,
  `veg_Y` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `helyszin`
--

INSERT INTO `helyszin` (`id`, `nev`, `kezdo_X`, `kezdo_Y`, `veg_X`, `veg_Y`) VALUES
(1, 'Laktanya', 820, 43, 1565, 335),
(2, 'Raktár', 820, 343, 1098, 610),
(3, 'Szemétzúzó', 380, 836, 938, 1036),
(4, 'Folyosók', 947, 836, 1175, 1036),
(5, 'Cella', 1584, 776, 1719, 887),
(6, 'Börtön', 1396, 928, 1541, 1044),
(7, 'Hangár', 1505, 1464, 2020, 2024),
(8, 'Vezérlőközpont', 982, 1744, 1334, 2128);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `karakter`
--

CREATE TABLE `karakter` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL,
  `koordinata_X` int(11) NOT NULL,
  `koordinata_Y` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `karakter`
--

INSERT INTO `karakter` (`id`, `nev`, `koordinata_X`, `koordinata_Y`) VALUES
(1, 'Leila', 1630, 830),
(2, 'Darth Vader', 1200, 200),
(3, 'Ben Kenobi', 1060, 950),
(4, 'R2-D2', 1200, 1820),
(5, 'C-3PO', 1210, 1850),
(6, 'Luke', 1500, 970),
(7, 'Chewbacca', 1498, 968),
(8, 'Han', 1458, 992);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `helyszin`
--
ALTER TABLE `helyszin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nev` (`nev`),
  ADD UNIQUE KEY `koordinata` (`kezdo_X`,`kezdo_Y`,`veg_X`,`veg_Y`) USING BTREE;

--
-- A tábla indexei `karakter`
--
ALTER TABLE `karakter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nev` (`nev`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `helyszin`
--
ALTER TABLE `helyszin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `karakter`
--
ALTER TABLE `karakter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
