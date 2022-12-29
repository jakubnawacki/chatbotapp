-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Gru 2022, 11:48
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `bot`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `gueries` varchar(300) NOT NULL,
  `replies` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `chatbot`
--

INSERT INTO `chatbot` (`id`, `gueries`, `replies`) VALUES
(1, 'hi|hello|hey', 'Hey, nice to meet you! How are you? :)'),
(2, 'fine| I\'m fine|I am fine|thanks|thank you|ok|it\'s ok|it is ok|okey', 'Great to hear that!'),
(3, 'not good|terrible|bad|the worst|badly|sadly|sad', 'Well, let me tell you a joke:\r\nThere are only 10 kinds of people in this world: those who know binary and those who don’t.\r\n \r\n\r\n\r\n '),
(4, 'what is your name?|what is your name|what\'s your name?|what\'s your name', 'I\'m chatbot :)'),
(5, 'what is your age|what is your age?|what\'s your age|what\'s your age?', 'I\'m very young, I born in 20.12.2022'),
(6, 'how are you|how are you?|how you doing|how you doing?', 'I have a perfect mood! :)');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
