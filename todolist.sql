-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Lut 2020, 18:54
-- Wersja serwera: 10.3.16-MariaDB
-- Wersja PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `todolist`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tdlist`
--

CREATE TABLE `tdlist` (
  `Id` int(11) NOT NULL,
  `List` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `tdlist`
--

INSERT INTO `tdlist` (`Id`, `List`) VALUES
(1, 'xfsd'),
(2, 'sfsdfs'),
(3, 'dasd23'),
(12, 'dsfsd'),
(13, 'dasdasdsa'),
(14, ''),
(15, 'dasdasdas'),
(16, 'asdasdasdas'),
(17, 'asdasdasdsa');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `tdlist`
--
ALTER TABLE `tdlist`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `tdlist`
--
ALTER TABLE `tdlist`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
