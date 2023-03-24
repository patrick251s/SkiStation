-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Mar 2023, 10:15
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `stacja`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `account`
--

CREATE TABLE `account` (
  `idAccount` int(11) NOT NULL,
  `login` varchar(45) NOT NULL,
  `password` varchar(80) NOT NULL,
  `role` enum('Admin','Użytkownik','Instruktor','Serwisant','Techniczny') NOT NULL,
  `creationDate` date NOT NULL,
  `deletedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `account`
--

INSERT INTO `account` (`idAccount`, `login`, `password`, `role`, `creationDate`, `deletedDate`) VALUES
(1, 'admin', '$2y$10$EUug4ayV/lYxvwdOOciuZuZgmQnY.q/BERCwrUN5DRV3aEaVerI3C', 'Admin', '2021-09-01', NULL),
(12, 'Marcel87', '$2y$10$DCh1.yCsI3/3Sdw8Nbw0X.IboVJVXcfnIuMSUlaZRo2NooCkyaeGy', 'Użytkownik', '2021-09-09', NULL),
(13, 'janusz321', '$2y$10$hodPiqjfhkcJG3uY54XsW.t861Bq/tDoPG/B8fxpGtp8KzBIHdYYW', 'Serwisant', '2021-09-16', NULL),
(29, 'mikaela95', '$2y$10$mQlh6676WU8ocvr40Rpp4uHdbSB4UQCt5VP8rBirmQjSAukBTGESa', 'Użytkownik', '2021-09-16', NULL),
(30, 'marcin87', '$2y$10$qPuFaHvHJAVOZPCxj9rxoOixKv1RstffEeaTPkpsjJrVZ0WqvQ1Pa', 'Użytkownik', '2021-09-16', '2021-09-20'),
(33, 'stefan', '$2y$10$e4Ti1sl1mhsTnE98tngd6O32mcbkIA0LlutWX0A6GrlABFxbMRWu6', 'Techniczny', '2021-09-16', '2021-09-16'),
(34, 'paulo12', '$2y$10$JBEykrlCbuikCCKbYv9jSOi/YAus26bdRRT.2gJvANQvCdAnSeQ6q', 'Serwisant', '2021-09-16', '2021-09-16'),
(35, 'Ted', '$2y$10$CPp/5Rr5vF2qh5z6zsj./.NHI9s5icm9Glujx8arWtTm9JwBMbrcS', 'Instruktor', '2021-09-16', NULL),
(36, 'Victor92', '$2y$10$.tTnYIxTfKaV1v9eGXnYTesZmDnBoaazi3hlUmMaV/vXewI.7ATdq', 'Techniczny', '2021-09-16', NULL),
(38, 'sergi111', '$2y$10$iDgcMPb.puebHYPlgm5WDO1NKMH1NM5F71.hU66iNh/ItrRrIF.XS', 'Serwisant', '2021-09-20', '2021-09-20'),
(40, 'Mika', '$2y$10$4tpDCcrdjRz9eA9sxK.ji.XCP6eBvfAkfAKfa8j.VOcKOdoktHUy2', 'Instruktor', '2021-09-21', NULL),
(41, 'Hannu55', '$2y$10$cXFQhuQv26c/rVb3TQs8uOVHMr6IeoaLAhG3CP1lKvl9Xtr013TJm', 'Instruktor', '2021-09-21', NULL),
(42, 'zbigniew11', '$2y$10$APmKjyZIsvjbi.qorga4iubrZMw111rF5ow1GVbS7RgI.9Rwm35OG', 'Serwisant', '2021-09-21', NULL),
(44, 'Schlierie', '$2y$10$6kq7q5kFDXNA4NiOeipoi.xK8lf4x.xffWP9o9PB6cngI3rlQvJge', 'Użytkownik', '2021-09-28', NULL),
(45, 'john73', '$2y$10$JiKZN9nTZL9rOd8KXakLl.PICjNdR8pI3sgjlUl5BH7G4B8wd7UK.', 'Serwisant', '2021-09-28', NULL),
(46, 'janek89', '$2y$10$KcvUC8Ba3KGci0GtRw3wOOSYMKjM/kL0xeIG/ilkV/2CX4dlCo13K', 'Techniczny', '2021-10-06', NULL),
(47, 'StefanH', '$2y$10$Amacm6zBsoUKc8VfHdCDg.HlxNmTQ2ohbUAuvwlowsGnIuNjyVqIi', 'Instruktor', '2021-10-11', NULL),
(52, 'Thomas', '$2y$10$jKFGZdpuJ8Ip9Kg3y7Ab4e9Fue3nHNSJYUyV0RatlRtwUyZS9TTUS', 'Użytkownik', '2021-11-09', NULL),
(54, 'Noriaki', '$2y$10$b3TNGEW.FRJBPVljJykPzeJ8BSGd8kuI5dJlBuMMh2YlSEy6PUADO', 'Użytkownik', '2021-11-09', NULL),
(55, 'wojtech', '$2y$10$OIQXdVmLMexaMQzwi9uyguV4r0ih4tt3yXvfdidwGd99chOA0THkm', 'Serwisant', '2021-12-01', NULL),
(56, 'piotr99', '$2y$10$YJEwe5HOJXgEAsHuovyfFe8Yxhx5rh0FvUd6eednW0FxLHDkOh5hG', 'Serwisant', '2021-12-01', NULL),
(57, 'arek71', '$2y$10$kMqxeUzqZUl8P9RINTm0z.gmyh/p4ltnz6lLVO7CY8jScjgIajVSy', 'Techniczny', '2021-12-01', NULL),
(58, 'witek55', '$2y$10$w8JTm1SuXZ/zkCnR6DHwPujktCmz8RPX9eleh/Mofh7XHBHBk9ot.', 'Techniczny', '2021-12-01', NULL),
(59, 'janusz83', '$2y$10$qFJ6nHn/B/TI6qGb98oM0uOmcXrlhSStEnZuABPnVDo5koj1oUkNS', 'Techniczny', '2021-12-01', NULL),
(60, 'Aleksandra20', '$2y$10$h3DkEom.1zMvrvLSprzzVuhkTOl7h.6w5BYKv9YETHgJIRWK2tX0e', 'Instruktor', '2021-12-01', NULL),
(61, 'Kofi84', '$2y$10$iv17EASLdeH43QdY8uTcjuYhs2ZB9Ph.k88nVZdL5pwbHjYDH2voW', 'Użytkownik', '2021-12-04', NULL),
(62, 'janek333', '$2y$10$PVBfTmxJQHfazHP27jUcAueJkR1LmB.Qc4u3jnsmAxAqLfSAkJUuC', 'Użytkownik', '2021-12-14', NULL),
(63, 'OlekG', '$2y$10$wlvj0fV2LiXyqIJPL0oIEe0KJU7XPJ9Vv689z1I7Fl6dR1btpuXxq', 'Użytkownik', '2021-12-20', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `commentary`
--

CREATE TABLE `commentary` (
  `idCommentary` int(11) NOT NULL,
  `content` varchar(300) NOT NULL,
  `idUser` int(11) NOT NULL,
  `parentCommentary` int(11) DEFAULT NULL,
  `idTopic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `conditions`
--

CREATE TABLE `conditions` (
  `idConditions` int(11) NOT NULL,
  `minSnowCover` int(11) NOT NULL,
  `maxSnowCover` int(11) NOT NULL,
  `conditions` varchar(45) NOT NULL,
  `snowType` varchar(45) NOT NULL,
  `description` text DEFAULT NULL,
  `updateDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `conditions`
--

INSERT INTO `conditions` (`idConditions`, `minSnowCover`, `maxSnowCover`, `conditions`, `snowType`, `description`, `updateDate`) VALUES
(3, 20, 40, 'Dostateczne', 'Sztuczny', 'Próba śnieżenia', '2021-09-21 00:00:00'),
(4, 20, 40, 'Dostateczne', 'Sztuczny', 'Próba śnieżenia', '2021-09-21 00:00:00'),
(5, 20, 40, 'Dostateczne', 'Sztuczny', 'Trzecia próba śnieżenia', '2021-09-21 16:02:00'),
(6, 15, 40, 'Dostateczne', 'Sztuczny', NULL, '2021-09-28 18:30:00'),
(7, 15, 30, 'Dostateczne', 'Sztuczny', 'Zapraszamy, warunki jak na październik są wyśmienite!', '2021-10-05 14:51:00'),
(8, 15, 30, 'Dostateczne', 'Sztuczny', 'Zapraszamy, warunki jak na październik są fatalne!', '2021-11-16 15:05:00'),
(9, 15, 30, 'Dostateczne', 'Sztuczny', 'Witamy w nowym sezonie!!! Warunki są coraz lepsze!', '2021-11-22 13:47:00'),
(10, 20, 40, 'Dobre', 'Sztuczny', 'Witamy w nowym sezonie!!! Warunki są coraz lepsze!', '2021-11-23 10:32:00'),
(11, 30, 50, 'Bardzo dobre', 'Sztuczny', 'Witamy w nowym sezonie!!! Stok naśnieżony i świetnie przygotowany!', '2021-12-01 10:15:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `equipment`
--

CREATE TABLE `equipment` (
  `idEquipment` varchar(11) NOT NULL,
  `type` enum('Narty','Snowboard','Buty narciarskie','Buty snowboardowe','Kask') NOT NULL,
  `name` varchar(100) NOT NULL,
  `size` int(11) NOT NULL,
  `photoURL` varchar(200) DEFAULT NULL,
  `isDeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `equipment`
--

INSERT INTO `equipment` (`idEquipment`, `type`, `name`, `size`, `photoURL`, `isDeleted`) VALUES
('BN1', 'Buty narciarskie', 'Salomon Race', 44, 'https://drive.google.com/uc?export=view&id=1lJ2aAxUztxwp2BXUlbxGCOpy3vUz_kP2', 0),
('BN10', 'Buty narciarskie', 'Salomon Ghost', 45, 'https://drive.google.com/uc?export=view&id=1KIvy6GoYpfgsW1z92x9azJ3hY82CaLfJ', 0),
('BN11', 'Buty narciarskie', 'Salomon X Access Flex', 42, 'https://drive.google.com/uc?export=view&id=1hAc8A7LuZLNKq8-ZV5B57ICFR2X67wsO', 0),
('BN12', 'Buty narciarskie', 'Salomon X Access Flex', 33, 'https://drive.google.com/uc?export=view&id=1hAc8A7LuZLNKq8-ZV5B57ICFR2X67wsO', 0),
('BN13', 'Buty narciarskie', 'Salomon X Access Flex', 31, 'https://drive.google.com/uc?export=view&id=1hAc8A7LuZLNKq8-ZV5B57ICFR2X67wsO', 0),
('BN2', 'Buty narciarskie', 'Rossignol Track', 39, 'https://drive.google.com/uc?export=view&id=1oib-FXiwggP6Jvhsiq82Zz-YvfLq3GW7', 0),
('BN3', 'Buty narciarskie', 'Rossignol Track', 41, 'https://drive.google.com/uc?export=view&id=1oib-FXiwggP6Jvhsiq82Zz-YvfLq3GW7', 0),
('BN4', 'Buty narciarskie', 'Rossignol Track', 44, 'https://drive.google.com/uc?export=view&id=1oib-FXiwggP6Jvhsiq82Zz-YvfLq3GW7', 0),
('BN5', 'Buty narciarskie', 'Lange RSJ', 43, 'https://drive.google.com/uc?export=view&id=1-FU64z43XJ3SXUXhUB32D7mGaF8yly2v', 0),
('BN6', 'Buty narciarskie', 'Lange RSJ', 42, 'https://drive.google.com/uc?export=view&id=1-FU64z43XJ3SXUXhUB32D7mGaF8yly2v', 0),
('BN7', 'Buty narciarskie', 'Salomon Ghost', 37, 'https://drive.google.com/uc?export=view&id=1KIvy6GoYpfgsW1z92x9azJ3hY82CaLfJ', 0),
('BN8', 'Buty narciarskie', 'Salomon Ghost', 38, 'https://drive.google.com/uc?export=view&id=1KIvy6GoYpfgsW1z92x9azJ3hY82CaLfJ', 0),
('BN9', 'Buty narciarskie', 'Salomon Ghost', 41, 'https://drive.google.com/uc?export=view&id=1KIvy6GoYpfgsW1z92x9azJ3hY82CaLfJ', 0),
('BS1', 'Buty snowboardowe', 'Burton', 40, 'https://drive.google.com/uc?export=view&id=1AiiVQc6OT1NrSaDTHSFbuxslTCCWTNxM', 0),
('BS10', 'Buty snowboardowe', 'DC Incense', 40, 'https://drive.google.com/uc?export=view&id=1gmtI0U3nDOJd4hE9smJp4kEA8_xd3z57', 0),
('BS2', 'Buty snowboardowe', 'Burton', 41, 'https://drive.google.com/uc?export=view&id=1AiiVQc6OT1NrSaDTHSFbuxslTCCWTNxM', 0),
('BS3', 'Buty snowboardowe', 'Burton', 43, 'https://drive.google.com/uc?export=view&id=1AiiVQc6OT1NrSaDTHSFbuxslTCCWTNxM', 0),
('BS4', 'Buty snowboardowe', 'Head Galore', 44, 'https://drive.google.com/uc?export=view&id=1Kr7X5PxVCED9kKGZgwcKSdAr2UZEseTL', 0),
('BS5', 'Buty snowboardowe', 'Head Galore', 42, 'https://drive.google.com/uc?export=view&id=1Kr7X5PxVCED9kKGZgwcKSdAr2UZEseTL', 0),
('BS6', 'Buty snowboardowe', 'Head Galore', 38, 'https://drive.google.com/uc?export=view&id=1Kr7X5PxVCED9kKGZgwcKSdAr2UZEseTL', 0),
('BS7', 'Buty snowboardowe', 'Head Galore', 35, 'https://drive.google.com/uc?export=view&id=1Kr7X5PxVCED9kKGZgwcKSdAr2UZEseTL', 0),
('BS8', 'Buty snowboardowe', 'DC Incense', 34, 'https://drive.google.com/uc?export=view&id=1gmtI0U3nDOJd4hE9smJp4kEA8_xd3z57', 0),
('BS9', 'Buty snowboardowe', 'DC Incense', 37, 'https://drive.google.com/uc?export=view&id=1gmtI0U3nDOJd4hE9smJp4kEA8_xd3z57', 0),
('K1', 'Kask', 'Weidze', 58, 'https://drive.google.com/uc?export=view&id=15AC-pb13Z0SdgzFDsL1Cx3Diz5brTwBZ', 0),
('K2', 'Kask', 'KSM', 60, 'https://drive.google.com/uc?export=view&id=1uu4hrezGf_j9MAFc2OuHl9eOdfvDvSvt', 0),
('K3', 'Kask', 'Alpina Blom', 54, 'https://drive.google.com/uc?export=view&id=1-CI7-gSXg-alCi8fVm1UhApi-6psktof', 0),
('K4', 'Kask', 'Uvex', 52, 'https://drive.google.com/uc?export=view&id=1GybNo83oHYZMhM6Dayp3WhEWg9frAqcJ', 0),
('K5', 'Kask', '4F HardShel', 62, 'https://drive.google.com/uc?export=view&id=1_dR1wXhcAo3xMVf3UNcua3QZyor-nvd3', 0),
('N1', 'Narty', 'Elan GSX Plate 2020', 182, 'https://drive.google.com/uc?export=view&id=1RBnOFPZUFRpb1RjSmAU9Tl0JwvEeoGBk', 0),
('N2', 'Narty', 'Elan Element', 155, 'https://drive.google.com/uc?export=view&id=1SuZhsvXjUlSNIpYTfCDWIZENBJtukoal', 0),
('N3', 'Narty', 'Head Rebels', 165, 'https://drive.google.com/uc?export=view&id=1qpIn0AGHX3btIwYHGmQ1d0Ntt_jGHPBs', 0),
('N4', 'Narty', 'Elan Explore 4', 160, 'https://drive.google.com/uc?export=view&id=1R3WOVcgiPWpv034TnQKBj410uYK7R6mE', 0),
('N5', 'Narty', 'Atomic Redstar', 156, 'https://drive.google.com/uc?export=view&id=1JS4glFDkslE-pbKRqNhg3kaAgpR8JmFw', 0),
('N6', 'Narty', 'Atomic Jr Pro', 130, 'https://drive.google.com/uc?export=view&id=1vXhWUjbIGch2NDzvT3vtXNatSZ_AaCJ1', 0),
('N7', 'Narty', 'Fischer Curv', 160, 'https://drive.google.com/uc?export=view&id=1vv3yJblcuTvOYVnMwl5u7GSACAT--zey', 0),
('N8', 'Narty', 'Rossignol P200', 150, 'https://drive.google.com/uc?export=view&id=1v0qdqeq2jPF6zgJejDKrwTonxs1p47ZS', 0),
('S1', 'Snowboard', 'Ride', 120, 'https://drive.google.com/uc?export=view&id=1dh2fehxFLEMyT9vqIDecAZ1pd7Fno8zi', 0),
('S2', 'Snowboard', 'Capitan', 130, 'https://drive.google.com/uc?export=view&id=1zEf0ppFVsOxcXDvy3p4STxfZ1gJm-8U5', 0),
('S3', 'Snowboard', 'Direction Ride', 125, 'https://drive.google.com/uc?export=view&id=1xTs02syN9p-QUlEWFK48jrOoMloUdT6m', 0),
('S4', 'Snowboard', 'Arbor', 140, 'https://drive.google.com/uc?export=view&id=1M7kzLyu1eBgZt4nq3s-gY0iIfvKFrrZm', 0),
('S5', 'Snowboard', 'Salomon Pulse', 135, 'https://drive.google.com/uc?export=view&id=1NKYTu6b74-_t2RagYh-8ZqqsiATGtuye', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `hire`
--

CREATE TABLE `hire` (
  `idHire` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `startTime` datetime NOT NULL,
  `finishTime` datetime DEFAULT NULL,
  `status` enum('Trwa','Zakończono') NOT NULL,
  `cost` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `hire`
--

INSERT INTO `hire` (`idHire`, `idUser`, `startTime`, `finishTime`, `status`, `cost`) VALUES
(9, 44, '2021-10-18 10:52:00', '2021-10-18 13:06:00', 'Zakończono', '40.00'),
(10, 29, '2021-10-18 10:54:00', '2021-10-18 19:08:00', 'Zakończono', '25.00'),
(11, 12, '2021-10-18 11:36:00', '2021-10-18 13:07:00', 'Zakończono', '15.00'),
(21, 52, '2021-12-01 13:09:00', '2021-12-01 13:27:00', 'Zakończono', '20.00'),
(22, 54, '2021-12-01 13:10:00', '2021-12-01 13:27:00', 'Zakończono', '20.00'),
(23, 44, '2021-12-01 13:10:00', '2021-12-01 13:27:00', 'Zakończono', '20.00'),
(24, 29, '2021-12-01 13:11:00', '2021-12-01 13:26:00', 'Zakończono', '20.00'),
(25, 12, '2021-12-01 13:13:00', '2021-12-01 13:14:00', 'Zakończono', '15.00'),
(26, 12, '2021-12-01 13:14:00', '2021-12-01 13:19:00', 'Zakończono', '15.00'),
(27, 12, '2021-12-01 13:19:00', NULL, 'Trwa', NULL),
(34, 54, '2021-12-01 13:27:00', '2021-12-01 13:28:00', 'Zakończono', '20.00'),
(35, 52, '2021-12-01 13:28:00', '2021-12-01 13:32:00', 'Zakończono', '20.00'),
(36, 29, '2021-12-01 13:30:00', '2021-12-01 13:31:00', 'Zakończono', '15.00'),
(37, 44, '2021-12-01 13:31:00', '2021-12-01 13:32:00', 'Zakończono', '15.00'),
(38, 29, '2021-12-01 13:32:00', '2021-12-01 13:32:00', 'Zakończono', '15.00'),
(39, 12, '2021-12-03 10:59:00', '2021-12-03 10:59:00', 'Zakończono', '20.00'),
(40, 44, '2021-12-16 16:11:00', NULL, 'Trwa', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `hire_has_equipment`
--

CREATE TABLE `hire_has_equipment` (
  `idHire` int(11) NOT NULL,
  `idEquipment` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `hire_has_equipment`
--

INSERT INTO `hire_has_equipment` (`idHire`, `idEquipment`) VALUES
(9, 'BN1'),
(9, 'N1'),
(10, 'N3'),
(11, 'N2'),
(21, 'BN1'),
(21, 'N1'),
(22, 'K1'),
(22, 'S1'),
(23, 'BN2'),
(23, 'K2'),
(23, 'N2'),
(24, 'K3'),
(24, 'S2'),
(25, 'S5'),
(26, 'S5'),
(34, 'BS1'),
(34, 'K1'),
(34, 'S1'),
(35, 'BN6'),
(35, 'N7'),
(36, 'S3'),
(37, 'K3'),
(38, 'K4'),
(39, 'BN3'),
(39, 'N2'),
(40, 'BN11'),
(40, 'N1');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `instructortype`
--

CREATE TABLE `instructortype` (
  `idInstructor` int(11) NOT NULL,
  `isSkiing` tinyint(1) NOT NULL,
  `isSnowboard` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `instructortype`
--

INSERT INTO `instructortype` (`idInstructor`, `isSkiing`, `isSnowboard`) VALUES
(35, 1, 0),
(40, 1, 1),
(41, 1, 0),
(47, 0, 1),
(60, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lesson`
--

CREATE TABLE `lesson` (
  `idLesson` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idInstructor` int(11) NOT NULL,
  `startDate` datetime NOT NULL,
  `finishDate` datetime NOT NULL,
  `numberOfParticipants` int(11) NOT NULL,
  `isCancelled` tinyint(1) NOT NULL,
  `type` enum('Narciarstwo','Snowboard') NOT NULL,
  `cost` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `lesson`
--

INSERT INTO `lesson` (`idLesson`, `idUser`, `idInstructor`, `startDate`, `finishDate`, `numberOfParticipants`, `isCancelled`, `type`, `cost`) VALUES
(1, 29, 47, '2021-10-20 14:30:00', '2021-10-20 16:30:00', 1, 1, 'Narciarstwo', '0.00'),
(2, 44, 47, '2021-10-20 17:00:00', '2021-10-20 18:00:00', 1, 1, 'Narciarstwo', '0.00'),
(3, 29, 40, '2021-11-03 09:00:00', '2021-11-03 11:00:00', 2, 0, 'Narciarstwo', '95.00'),
(5, 29, 40, '2021-11-09 14:30:00', '2021-11-09 16:30:00', 1, 0, 'Snowboard', '40.00'),
(6, 29, 41, '2021-11-25 14:30:00', '2021-11-25 16:30:00', 1, 0, 'Narciarstwo', '50.00'),
(7, 44, 40, '2021-11-26 16:00:00', '2021-11-26 19:00:00', 1, 0, 'Narciarstwo', '60.00'),
(8, 52, 47, '2021-12-01 14:00:00', '2021-12-01 16:00:00', 1, 0, 'Snowboard', '50.00'),
(9, 52, 40, '2021-12-02 13:30:00', '2021-12-02 15:30:00', 1, 0, 'Narciarstwo', '50.00'),
(10, 52, 60, '2021-12-05 13:00:00', '2021-12-05 15:00:00', 2, 0, 'Narciarstwo', '95.00'),
(11, 54, 60, '2021-12-05 15:00:00', '2021-12-05 18:00:00', 3, 0, 'Narciarstwo', '165.00'),
(12, 54, 35, '2021-12-03 09:00:00', '2021-12-03 12:00:00', 1, 0, 'Narciarstwo', '60.00'),
(13, 54, 40, '2021-12-02 16:00:00', '2021-12-02 18:00:00', 2, 0, 'Narciarstwo', '95.00'),
(14, 12, 60, '2021-12-05 18:00:00', '2021-12-05 21:00:00', 2, 0, 'Narciarstwo', '115.00'),
(15, 12, 35, '2021-12-03 12:00:00', '2021-12-03 14:00:00', 3, 0, 'Narciarstwo', '135.00'),
(16, 29, 41, '2021-12-05 11:00:00', '2021-12-05 14:00:00', 1, 0, 'Narciarstwo', '60.00'),
(17, 29, 41, '2021-12-02 09:00:00', '2021-12-02 12:00:00', 2, 0, 'Narciarstwo', '115.00'),
(18, 29, 40, '2021-12-03 19:00:00', '2021-12-03 21:00:00', 2, 0, 'Snowboard', '95.00'),
(19, 44, 41, '2021-12-02 13:00:00', '2021-12-02 16:00:00', 3, 0, 'Narciarstwo', '165.00'),
(20, 44, 47, '2021-12-01 18:00:00', '2021-12-01 21:00:00', 1, 0, 'Snowboard', '60.00'),
(21, 44, 60, '2021-12-03 09:00:00', '2021-12-03 11:00:00', 1, 0, 'Narciarstwo', '50.00'),
(22, 52, 47, '2021-12-17 12:00:00', '2021-12-17 14:00:00', 1, 1, 'Snowboard', '0.00'),
(23, 52, 60, '2021-12-17 10:00:00', '2021-12-17 12:00:00', 1, 1, 'Narciarstwo', '0.00'),
(24, 52, 60, '2021-12-17 16:00:00', '2021-12-17 18:00:00', 1, 0, 'Narciarstwo', '50.00'),
(25, 12, 35, '2021-12-25 11:00:00', '2021-12-25 13:00:00', 2, 0, 'Narciarstwo', '95.00'),
(26, 12, 35, '2021-12-25 15:00:00', '2021-12-25 17:00:00', 1, 0, 'Narciarstwo', '50.00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `message`
--

CREATE TABLE `message` (
  `idMessage` int(11) NOT NULL,
  `idUserSender` int(11) NOT NULL,
  `idUserReceiver` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `content` varchar(400) NOT NULL,
  `isRead` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `message`
--

INSERT INTO `message` (`idMessage`, `idUserSender`, `idUserReceiver`, `date`, `content`, `isRead`) VALUES
(1, 1, 29, '2021-11-15 11:13:23', 'Hej Mikaela :)', 1),
(2, 29, 1, '2021-11-15 11:17:47', 'Hej, dzisiaj były wymarzone warunki, nie mogę się doczekać, kiedy znowu przyjadę do Was!', 1),
(3, 29, 1, '2021-11-15 11:18:50', 'Idzie piękna zima', 1),
(6, 1, 29, '2021-11-15 14:54:21', 'Co tam?', 1),
(7, 1, 29, '2021-11-15 20:11:39', 'Wiadomość testowa', 1),
(8, 29, 1, '2021-11-15 20:11:39', 'Ok DNSJBDSGF DUbdhsfvb d fds fgdyfb dfdfd', 1),
(9, 1, 29, '2021-11-15 20:11:39', 'Wiadomość testowa', 1),
(10, 29, 1, '2021-11-15 20:11:39', 'Ok DNSJBDSGF DUbdhsfvb d fds fgdyfb dfdfd', 1),
(11, 29, 1, '2021-11-15 20:13:21', 'dsds  sdsdushduhsaudhushdushdusdhushdushdushdushdushdsu', 1),
(12, 29, 1, '2021-11-15 20:13:21', 'dsds  sdsdushduhsaudhushdushdusdhushdushdushdushdushdsu', 1),
(13, 1, 29, '2021-11-15 20:13:21', 'dsds  sdsdushduhsaudhushdushdusdhushdushdushdushdushdsu', 1),
(14, 1, 29, '2021-11-15 20:13:21', 'dsd6dsdushdudsu', 1),
(15, 1, 41, '2021-11-15 20:25:29', 'Dzień dobry, trenerze', 1),
(16, 1, 41, '2021-11-15 20:25:29', 'Miłej pracy!', 1),
(17, 1, 41, '2021-11-15 20:49:11', 'fdfdfds', 1),
(18, 1, 29, '2021-11-15 20:59:40', 'asasasasasas', 1),
(19, 1, 29, '2021-11-15 21:00:58', 'Kolejna próba, tym razem udana!!!!', 1),
(20, 1, 41, '2021-11-15 21:01:23', 'Witam Państwa!!!', 1),
(21, 1, 29, '2021-11-16 10:53:35', 'Buenos dias', 1),
(22, 29, 1, '2021-11-16 15:03:49', 'Hasta Manana', 1),
(23, 1, 29, '2021-11-16 15:04:12', 'ksndsknds', 1),
(24, 29, 1, '2021-11-16 21:14:02', 'Buenos tardes', 1),
(25, 1, 41, '2021-11-16 21:59:28', 'BHSBFSBbhadbau ssyufdyufd\n222', 1),
(26, 1, 12, '2021-11-17 21:22:25', 'Hello\n', 1),
(27, 1, 12, '2021-11-17 21:22:33', 'Witam ciepło', 1),
(28, 1, 40, '2021-11-17 21:24:52', 'Dzień dobry, instruktorze', 1),
(29, 1, 40, '2021-11-17 21:26:49', 'Jak tam się dzisiaj jeździło?', 0),
(30, 1, 12, '2021-11-17 21:27:53', 'Świetne warunki Marcel', 1),
(31, 29, 1, '2021-11-18 11:24:45', 'Test 251\n', 1),
(32, 29, 1, '2021-11-18 11:26:36', 'Test 251', 1),
(33, 29, 1, '2021-11-18 11:36:32', 'Test 252', 1),
(34, 29, 1, '2021-11-18 11:40:01', 'Test 253', 1),
(35, 29, 1, '2021-11-18 11:45:28', 'Test 254', 1),
(36, 29, 1, '2021-11-18 11:48:32', 'Test 255', 1),
(37, 1, 29, '2021-11-18 11:49:38', 'Testy udane', 1),
(38, 29, 1, '2021-11-18 11:55:14', 'A teraz???', 1),
(39, 1, 29, '2021-11-18 11:55:30', 'Działa!!!!!!!!', 1),
(40, 29, 1, '2021-11-18 11:56:00', 'Buhhh', 1),
(41, 1, 29, '2021-11-18 11:56:02', 'hghg', 1),
(42, 1, 12, '2021-11-18 11:56:30', 'Siemankoooo', 1),
(43, 1, 29, '2021-11-18 11:56:57', 'No jest dobrze', 1),
(44, 29, 1, '2021-11-18 12:24:53', 'Kolejna nieodczytana', 1),
(45, 1, 12, '2021-11-18 12:32:32', 'cOŚ tam', 1),
(46, 29, 1, '2021-11-18 12:33:36', 'Hejjjjjj', 1),
(47, 29, 1, '2021-11-18 12:34:23', 'Cześć jak się masz?', 1),
(48, 1, 29, '2021-11-18 12:34:47', 'W porządku', 1),
(49, 29, 1, '2021-11-18 12:35:09', 'To dobrze', 1),
(50, 1, 12, '2021-11-18 12:36:28', 'Także tego', 1),
(51, 29, 1, '2021-11-18 12:36:40', 'To znowu Ja', 1),
(52, 1, 40, '2021-11-18 12:50:43', 'Siemano', 0),
(53, 29, 1, '2021-11-18 12:51:30', 'Hheehe', 1),
(54, 29, 1, '2021-11-18 12:51:50', 'Hehehe', 1),
(55, 29, 1, '2021-11-18 12:54:53', 'Witam i o zdrowie pytam', 1),
(56, 1, 12, '2021-11-18 12:55:52', 'A zatem', 1),
(57, 1, 29, '2021-11-18 12:57:35', 'Buon giorno, ragazza', 1),
(58, 29, 35, '2021-11-18 12:58:05', 'Witam, chciałbym zapyaac się o lekcję', 0),
(59, 1, 44, '2021-11-18 13:00:54', 'Witaj Gregor!', 1),
(60, 1, 54, '2021-11-18 13:02:40', 'Sapporo', 1),
(61, 29, 1, '2021-11-18 13:12:55', 'Test 300', 1),
(62, 1, 44, '2021-11-18 13:17:57', 'fdfd', 1),
(63, 29, 1, '2021-11-18 13:18:08', 'TEST 301', 1),
(64, 1, 44, '2021-11-18 13:21:32', 'dsdsads', 1),
(65, 29, 1, '2021-11-18 13:21:40', 'TEST 302', 1),
(66, 1, 44, '2021-11-18 13:24:54', 'fdfdf', 1),
(67, 29, 1, '2021-11-18 13:28:07', 'TEST 303', 1),
(68, 1, 44, '2021-11-18 13:40:08', 'dsadsadsa', 1),
(69, 29, 1, '2021-11-18 13:40:17', 'TEST 304', 1),
(70, 1, 44, '2021-11-18 13:40:27', 'DSADSADAS', 1),
(71, 1, 44, '2021-11-18 21:24:55', 'fsdfsd', 1),
(72, 1, 41, '2021-11-18 21:34:15', 'Kuopio\n', 0),
(73, 1, 29, '2021-11-19 10:25:31', 'hsghdgsh', 0),
(74, 29, 12, '2021-11-19 10:46:44', 'Cześć', 1),
(75, 12, 29, '2021-11-19 10:46:57', 'Hej', 1),
(76, 12, 29, '2021-11-19 10:47:19', 'Hej 2', 1),
(77, 29, 12, '2021-11-19 10:48:15', 'Cześć 2', 1),
(78, 12, 52, '2021-11-19 11:07:23', 'Hej', 1),
(79, 52, 12, '2021-11-19 11:08:48', '\nHej2', 1),
(80, 52, 29, '2021-11-19 11:09:11', 'qwerty', 1),
(81, 12, 52, '2021-11-19 11:09:28', 'Hello', 1),
(82, 52, 12, '2021-11-19 11:09:53', 'Hello2', 1),
(83, 12, 52, '2021-11-19 11:38:43', 'Cześć', 1),
(84, 12, 52, '2021-11-19 11:39:16', 'Cześć2', 1),
(85, 1, 52, '2021-11-19 11:43:08', 'To ja', 1),
(86, 1, 52, '2021-11-19 11:43:15', 'I ja', 1),
(87, 44, 29, '2021-11-19 14:52:48', 'Hej!!!', 1),
(88, 29, 44, '2021-11-19 14:53:34', 'Hej ;)', 1),
(89, 44, 29, '2021-11-19 14:54:06', 'Hej 2', 1),
(90, 44, 29, '2021-11-19 14:57:42', 'Hej 3', 1),
(91, 29, 44, '2021-11-19 14:59:07', 'Hej 3', 1),
(92, 29, 44, '2021-11-19 14:59:18', 'Hej 4', 1),
(93, 29, 44, '2021-11-19 14:59:31', 'Hej 5', 1),
(94, 44, 29, '2021-11-19 15:00:02', 'Hej 5', 1),
(95, 29, 12, '2021-11-19 15:03:02', 'Tgi', 1),
(96, 29, 13, '2021-11-19 15:03:25', 'Czy mogę przynieść narty do serwisu?', 0),
(97, 44, 1, '2021-11-19 16:23:28', 'Hehehehe', 1),
(98, 54, 1, '2021-11-22 11:24:18', 'Witaj ', 1),
(99, 1, 44, '2021-11-22 11:24:34', 'dasdsa', 1),
(100, 54, 1, '2021-11-22 11:24:46', 'dfdsfsd', 1),
(101, 54, 1, '2021-11-22 11:24:53', 'dsadsad', 1),
(102, 1, 54, '2021-11-22 11:27:45', 'DFEFSA', 1),
(103, 1, 54, '2021-11-22 11:27:55', 'efrefrefrf', 1),
(104, 1, 54, '2021-11-22 11:28:31', 'dasdsad', 1),
(105, 1, 54, '2021-11-22 11:28:52', 'dsadsds', 1),
(106, 54, 1, '2021-11-22 11:30:11', 'dasdsadsa', 1),
(107, 1, 54, '2021-11-22 11:30:16', 'dasdsadsa', 1),
(108, 54, 1, '2021-11-22 11:32:08', 'sadsadas', 1),
(109, 40, 29, '2021-11-22 15:22:00', 'Dzień Dobry Pani', 0),
(110, 40, 29, '2021-11-22 15:26:03', 'Dzień dobry, w czym mogę pomóc?', 0),
(111, 12, 29, '2021-11-26 14:48:51', 'Hello I am writing to you to inform you about start of ski season 2021/22', 0),
(112, 45, 44, '2021-11-26 14:54:39', 'Hi Gregor!', 1),
(113, 52, 42, '2021-12-01 09:52:37', 'Dzień dobry Panie Zbigniewie', 0),
(114, 52, 47, '2021-12-01 09:53:15', 'Dzień dobry Panie Stefanie', 0),
(115, 52, 54, '2021-12-01 09:53:28', 'Witaj Noriaki!', 0),
(116, 12, 1, '2021-12-03 10:28:02', 'Siema ziom', 1),
(117, 1, 12, '2021-12-03 10:28:22', 'No siemano', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `openingschedule`
--

CREATE TABLE `openingschedule` (
  `date` date NOT NULL,
  `isOpen` tinyint(1) NOT NULL,
  `startTime` varchar(10) DEFAULT NULL,
  `finishTime` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `openingschedule`
--

INSERT INTO `openingschedule` (`date`, `isOpen`, `startTime`, `finishTime`) VALUES
('2021-10-01', 1, '09:00', '21:00'),
('2021-10-02', 1, '09:00', '21:00'),
('2021-10-03', 1, '09:00', '21:00'),
('2021-10-04', 1, '09:00', '22:00'),
('2021-10-05', 1, '11:00', '21:00'),
('2021-10-06', 1, '10:00', '22:00'),
('2021-10-07', 1, '09:00', '21:00'),
('2021-10-08', 1, '09:00', '22:00'),
('2021-10-09', 1, '09:00', '22:00'),
('2021-10-10', 1, '10:00', '21:00'),
('2021-10-11', 1, '10:00', '20:00'),
('2021-10-12', 1, '09:00', '21:00'),
('2021-10-16', 1, '10:00', '22:00'),
('2021-10-20', 1, '09:00', '15:00'),
('2021-11-04', 1, '09:00', '21:00'),
('2021-11-05', 1, '09:00', '20:00'),
('2021-11-06', 1, '09:00', '21:00'),
('2021-11-07', 1, '09:00', '21:00'),
('2021-11-17', 1, '09:00', '21:00'),
('2021-11-23', 1, '09:00', '21:00'),
('2021-11-24', 1, '09:00', '21:00'),
('2021-11-25', 1, '09:00', '21:00'),
('2021-11-26', 1, '09:00', '22:00'),
('2021-11-27', 1, '09:00', '22:00'),
('2021-11-28', 1, '09:00', '21:00'),
('2021-11-29', 1, '14:00', '21:00'),
('2021-11-30', 1, '10:00', '20:00'),
('2021-12-01', 1, '09:00', '21:00'),
('2021-12-02', 1, '09:00', '21:00'),
('2021-12-03', 1, '09:00', '21:00'),
('2021-12-04', 1, '09:00', '22:00'),
('2021-12-05', 1, '09:00', '21:00'),
('2021-12-06', 1, '09:00', '21:00'),
('2021-12-07', 1, '09:00', '21:00'),
('2021-12-08', 1, '10:00', '22:00'),
('2021-12-15', 1, '09:00', '20:00'),
('2021-12-16', 1, '09:00', '20:00'),
('2021-12-17', 1, '09:00', '21:00'),
('2021-12-20', 1, '09:00', '21:00'),
('2021-12-21', 1, '09:00', '21:00'),
('2021-12-22', 1, '09:00', '22:00'),
('2021-12-23', 1, '09:00', '21:00'),
('2021-12-25', 1, '11:00', '21:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personaldata`
--

CREATE TABLE `personaldata` (
  `idAccount` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `birthdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `personaldata`
--

INSERT INTO `personaldata` (`idAccount`, `firstname`, `surname`, `email`, `birthdate`) VALUES
(1, 'Adam', 'Małysz', 'adam2@malysz.pl', '1977-12-03'),
(12, 'Marcel', 'Hirscher', 'marcel@redbull.au', '1987-05-15'),
(13, 'Janusz', 'Pomidor', 'janusz@wp.pl', '1976-03-12'),
(29, 'Mikaela', 'Shiffrin', 'mikaela@usa.te', '1995-03-13'),
(30, 'Marcin', 'Bachleda', 'marcin@bacn.pl', '1987-04-13'),
(33, 'Stefan', 'Horngacher', 'stefan@de.de', '1980-01-22'),
(34, 'Paweł', 'Skupień', 'paulo@sk.pl', '1977-12-19'),
(35, 'Ted', 'Ligety', 'ted@ligety.us', '1991-10-20'),
(36, 'Victor', 'Muffat-Jeadet', 'muffa@ski.fr', '1992-07-11'),
(38, 'Sergiusz', 'Wolczykiewicz', 'segi@sew.pl', '1980-11-11'),
(40, 'Mika', 'Kojonkoski', 'mika@kojo.fi', '1968-12-20'),
(41, 'Hannu', 'Lepistoe', 'hannu@lep.fi', '1955-01-14'),
(42, 'Zbigniew', 'Bogdański', 'zbyszek@zb.pl', '1997-11-11'),
(44, 'Gregor', 'Schlierenzauer', 'gregor@redbull.au', '1990-01-07'),
(45, 'John', 'Walker', 'johny@wp.pl', '1973-11-15'),
(46, 'Jan', 'Wasilewski', 'janek@wp.pl', '1989-04-15'),
(47, 'Stefan', 'Horngacher', 'stefanh@spr.de', '1975-08-18'),
(52, 'Thomas', 'Morgenstern', 'thomas@morgi.au', '1987-02-12'),
(54, 'Noriaki', 'Kasai', 'noriaki@kasai.jpn', '1972-03-17'),
(55, 'Wojciech', 'Górski', 'wojtek321@wp.pl', '1988-05-14'),
(56, 'Piotr', 'Kowalewski', 'piotr@kowal.pl', '1999-01-19'),
(57, 'Arkadiusz', 'Kozioł', 'arek@koziol.pl', '1971-08-11'),
(58, 'Wincenty', 'Niżański', 'witek@wp.pl', '1955-11-11'),
(59, 'Janusz', 'Krakowski', 'janusz@krk.pl', '1983-09-13'),
(60, 'Aleksandra', 'Zalewska', 'ola@gmail.com', '2000-05-17'),
(61, 'Andreas', 'Kofler', 'andi@kofi.au', '1984-12-13'),
(62, 'Jan', 'Wójcik', 'jan@woj.pl', '1988-02-14'),
(63, 'Aleksander', 'Granulski', 'alek@wp.pl', '1999-01-19');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `service`
--

CREATE TABLE `service` (
  `idService` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `type` enum('Podstawowy','Kompleksowy','Zaawansowany') NOT NULL,
  `status` enum('W realizacji','Gotowe do odebrania','Zakończone') NOT NULL,
  `startTime` datetime NOT NULL,
  `finishTime` datetime DEFAULT NULL,
  `cost` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `service`
--

INSERT INTO `service` (`idService`, `idUser`, `name`, `type`, `status`, `startTime`, `finishTime`, `cost`) VALUES
(1, 44, 'Narty Fischer Green 192', 'Kompleksowy', 'Zakończone', '2021-10-11 13:48:00', '2021-12-01 12:44:00', '60.00'),
(2, 12, 'Narty Atomic Mix 160 ', 'Podstawowy', 'Zakończone', '2021-10-11 14:16:00', '2021-12-01 12:55:00', '40.00'),
(4, 29, 'Narty Elan Ski Go 158', 'Podstawowy', 'Zakończone', '2021-10-11 17:59:00', '2021-10-11 17:59:00', '40.00'),
(5, 12, 'Snowboard Red Bull S400', 'Kompleksowy', 'Zakończone', '2021-10-11 18:26:00', '2021-10-11 18:27:00', '60.00'),
(6, 54, 'Fischer Alpine Ski 178', 'Zaawansowany', 'Zakończone', '2021-12-01 12:43:00', '2021-12-01 12:55:00', '80.00'),
(7, 52, 'Fischer Nordic Jump', 'Kompleksowy', 'Gotowe do odebrania', '2021-12-01 12:54:00', NULL, '60.00'),
(8, 44, 'Snowboard RedBull Skate', 'Zaawansowany', 'Zakończone', '2021-12-01 12:55:00', '2021-12-03 10:58:00', '80.00'),
(9, 29, 'Narty Atomic Slalom 155', 'Zaawansowany', 'W realizacji', '2021-12-16 17:34:00', NULL, '80.00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `skipass`
--

CREATE TABLE `skipass` (
  `idSkipass` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `startTime` datetime NOT NULL,
  `finishTime` datetime NOT NULL,
  `cost` decimal(8,2) DEFAULT NULL,
  `isCancelled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `skipass`
--

INSERT INTO `skipass` (`idSkipass`, `idUser`, `startTime`, `finishTime`, `cost`, `isCancelled`) VALUES
(1, 29, '2021-10-11 09:00:00', '2021-10-11 13:00:00', '0.00', 1),
(2, 29, '2021-10-07 18:00:00', '2021-10-07 19:00:00', '0.00', 1),
(3, 29, '2021-10-07 15:39:00', '2021-10-07 16:39:00', '0.00', 1),
(4, 29, '2021-10-11 09:00:00', '2021-10-11 12:00:00', '0.00', 1),
(5, 29, '2021-10-11 15:00:00', '2021-10-11 17:00:00', '0.00', 1),
(6, 29, '2021-10-12 09:00:00', '2021-10-12 12:00:00', '40.00', 0),
(8, 44, '2021-11-26 16:00:00', '2021-11-26 19:00:00', '40.00', 0),
(9, 44, '2021-11-29 14:00:00', '2021-11-29 16:00:00', '30.00', 0),
(10, 44, '2021-11-30 15:00:00', '2021-11-30 20:00:00', '50.00', 0),
(11, 52, '2021-12-01 12:50:00', '2021-12-01 17:50:00', '50.00', 0),
(12, 52, '2021-12-02 10:00:00', '2021-12-02 13:00:00', '40.00', 0),
(13, 52, '2021-12-03 15:00:00', '2021-12-03 19:00:00', '50.00', 0),
(14, 52, '2021-12-04 09:00:00', '2021-12-04 15:00:00', '50.00', 0),
(15, 52, '2021-12-05 13:00:00', '2021-12-05 15:00:00', '30.00', 0),
(16, 54, '2021-12-01 12:20:00', '2021-12-01 15:20:00', '40.00', 0),
(17, 54, '2021-12-02 09:00:00', '2021-12-02 12:00:00', '40.00', 0),
(18, 54, '2021-12-03 12:00:00', '2021-12-03 16:00:00', '50.00', 0),
(19, 54, '2021-12-04 15:00:00', '2021-12-04 16:00:00', '20.00', 0),
(20, 54, '2021-12-05 10:08:00', '2021-12-05 13:08:00', '40.00', 0),
(21, 12, '2021-12-01 12:30:00', '2021-12-01 18:30:00', '50.00', 0),
(22, 12, '2021-12-02 14:00:00', '2021-12-02 17:00:00', '40.00', 0),
(23, 12, '2021-12-03 09:00:00', '2021-12-03 12:00:00', '40.00', 0),
(24, 12, '2021-12-04 10:00:00', '2021-12-04 14:00:00', '50.00', 0),
(25, 12, '2021-12-05 13:44:00', '2021-12-05 15:44:00', '30.00', 0),
(26, 29, '2021-12-01 13:00:00', '2021-12-01 19:00:00', '50.00', 0),
(27, 29, '2021-12-01 19:00:00', '2021-12-01 21:00:00', '30.00', 0),
(28, 29, '2021-12-02 14:00:00', '2021-12-02 18:00:00', '50.00', 0),
(29, 29, '2021-12-03 12:34:00', '2021-12-03 17:34:00', '50.00', 0),
(30, 29, '2021-12-05 12:31:00', '2021-12-05 15:31:00', '40.00', 0),
(31, 44, '2021-12-01 13:00:00', '2021-12-01 15:00:00', '30.00', 0),
(32, 44, '2021-12-01 19:00:00', '2021-12-01 21:00:00', '30.00', 0),
(33, 44, '2021-12-02 09:00:00', '2021-12-02 13:00:00', '50.00', 0),
(34, 44, '2021-12-03 12:00:00', '2021-12-03 14:00:00', '30.00', 0),
(35, 44, '2021-12-04 09:00:00', '2021-12-04 14:00:00', '50.00', 0),
(36, 44, '2021-12-02 18:00:00', '2021-12-02 21:00:00', '40.00', 0),
(37, 44, '2021-12-05 09:00:00', '2021-12-05 12:00:00', '40.00', 0),
(38, 12, '2021-12-06 09:00:00', '2021-12-06 12:00:00', '40.00', 0),
(39, 61, '2021-12-06 09:15:00', '2021-12-06 11:15:00', '30.00', 0),
(40, 52, '2021-12-17 10:15:00', '2021-12-17 13:15:00', '40.00', 0),
(41, 12, '2021-12-25 12:00:00', '2021-12-25 16:00:00', '50.00', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tariff`
--

CREATE TABLE `tariff` (
  `idTariff` int(11) NOT NULL,
  `skipass_1h` int(11) DEFAULT NULL,
  `skipass_2h` int(11) DEFAULT NULL,
  `skipass_3h` int(11) DEFAULT NULL,
  `skipass_allDay` int(11) DEFAULT NULL,
  `setRental_1h` int(11) DEFAULT NULL,
  `setRental_2h` int(11) DEFAULT NULL,
  `setRental_3h` int(11) DEFAULT NULL,
  `setRental_allDay` int(11) DEFAULT NULL,
  `oneItemRental_1h` int(11) DEFAULT NULL,
  `oneItemRental_2h` int(11) DEFAULT NULL,
  `oneItemRental_3h` int(11) DEFAULT NULL,
  `oneItemRental_allDay` int(11) DEFAULT NULL,
  `lesson_1h` int(11) DEFAULT NULL,
  `lesson_2h` int(11) DEFAULT NULL,
  `lesson_3h` int(11) DEFAULT NULL,
  `smallService` int(11) DEFAULT NULL,
  `mediumService` int(11) DEFAULT NULL,
  `bigService` int(11) DEFAULT NULL,
  `updateDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `tariff`
--

INSERT INTO `tariff` (`idTariff`, `skipass_1h`, `skipass_2h`, `skipass_3h`, `skipass_allDay`, `setRental_1h`, `setRental_2h`, `setRental_3h`, `setRental_allDay`, `oneItemRental_1h`, `oneItemRental_2h`, `oneItemRental_3h`, `oneItemRental_allDay`, `lesson_1h`, `lesson_2h`, `lesson_3h`, `smallService`, `mediumService`, `bigService`, `updateDate`) VALUES
(3, 20, 30, 40, 50, 15, 20, 25, 30, 10, 15, 20, 25, 15, 30, 50, 35, 50, 60, '2021-09-21'),
(4, 20, 30, 40, 50, 15, 20, 25, 30, 10, 15, 20, 25, 35, 50, 60, 20, 30, 50, '2021-09-23'),
(5, 20, 30, 40, 50, 15, 20, 25, 30, 10, 15, 20, 25, 20, 30, 50, 30, 50, 60, '2021-09-23'),
(6, 20, 30, 40, 50, 15, 20, 25, 30, 10, 15, 20, 25, 30, 50, 60, 40, 60, 80, '2021-09-23'),
(7, 20, 30, 40, 50, 20, 30, 40, 50, 10, 15, 20, 25, 30, 50, 60, 40, 60, 80, '2021-09-28'),
(8, 20, 30, 40, 50, 20, 30, 40, 50, 10, 15, 20, 25, 30, 55, 60, 40, 60, 80, '2021-09-28'),
(9, 20, 30, 40, 50, 20, 30, 40, 50, 10, 15, 20, 25, 30, 50, 60, 40, 60, 80, '2021-09-28'),
(10, 20, 30, 40, 50, 20, 30, 40, 50, 15, 20, 25, 30, 30, 50, 60, 40, 60, 80, '2021-11-05');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `topic`
--

CREATE TABLE `topic` (
  `idTopic` int(11) NOT NULL,
  `headingName` varchar(80) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `workschedule`
--

CREATE TABLE `workschedule` (
  `idWorkSchedule` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `startTime` datetime NOT NULL,
  `finishTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `workschedule`
--

INSERT INTO `workschedule` (`idWorkSchedule`, `idUser`, `startTime`, `finishTime`) VALUES
(6, 35, '2021-10-06 10:00:00', '2021-10-06 16:00:00'),
(11, 41, '2021-10-07 09:00:00', '2021-10-07 14:00:00'),
(12, 45, '2021-10-06 14:00:00', '2021-10-06 21:00:00'),
(19, 45, '2021-10-08 09:00:00', '2021-10-08 15:00:00'),
(20, 42, '2021-10-08 15:00:00', '2021-10-08 22:00:00'),
(21, 13, '2021-10-09 09:00:00', '2021-10-09 17:00:00'),
(22, 42, '2021-10-09 16:00:00', '2021-10-09 22:00:00'),
(23, 46, '2021-10-09 09:00:00', '2021-10-09 22:00:00'),
(24, 40, '2021-10-09 12:00:00', '2021-10-09 18:00:00'),
(25, 45, '2021-10-20 09:00:00', '2021-10-20 15:00:00'),
(26, 35, '2021-10-20 09:00:00', '2021-10-20 16:00:00'),
(27, 47, '2021-10-20 10:00:00', '2021-10-20 20:00:00'),
(28, 40, '2021-11-04 09:00:00', '2021-11-04 15:00:00'),
(29, 41, '2021-11-04 12:00:00', '2021-11-04 21:00:00'),
(30, 35, '2021-11-05 09:00:00', '2021-11-05 17:00:00'),
(31, 47, '2021-11-05 15:00:00', '2021-11-05 21:00:00'),
(32, 13, '2021-11-23 09:00:00', '2021-11-23 16:00:00'),
(33, 42, '2021-11-23 15:00:00', '2021-11-23 21:00:00'),
(34, 36, '2021-11-23 08:30:00', '2021-11-23 15:30:00'),
(35, 46, '2021-11-23 14:00:00', '2021-11-23 22:00:00'),
(37, 35, '2021-11-23 12:00:00', '2021-11-23 21:00:00'),
(38, 45, '2021-11-24 09:00:00', '2021-11-24 15:00:00'),
(39, 13, '2021-11-24 13:00:00', '2021-11-24 21:00:00'),
(40, 46, '2021-11-24 07:00:00', '2021-11-24 15:00:00'),
(41, 36, '2021-11-24 14:00:00', '2021-11-24 22:00:00'),
(42, 40, '2021-11-24 15:00:00', '2021-11-24 21:00:00'),
(43, 13, '2021-11-25 09:00:00', '2021-11-25 16:00:00'),
(44, 45, '2021-11-25 16:00:00', '2021-11-25 21:00:00'),
(45, 36, '2021-11-25 08:00:00', '2021-11-25 17:00:00'),
(46, 46, '2021-11-25 14:00:00', '2021-11-25 22:00:00'),
(47, 41, '2021-11-25 12:00:00', '2021-11-25 21:00:00'),
(48, 45, '2021-11-26 08:00:00', '2021-11-26 18:00:00'),
(49, 13, '2021-11-26 15:00:00', '2021-11-26 22:00:00'),
(50, 36, '2021-11-26 08:00:00', '2021-11-26 16:00:00'),
(51, 46, '2021-11-26 14:00:00', '2021-11-26 23:00:00'),
(52, 47, '2021-11-26 09:00:00', '2021-11-26 16:00:00'),
(53, 41, '2021-11-26 09:00:00', '2021-11-26 17:00:00'),
(54, 40, '2021-11-26 14:00:00', '2021-11-26 22:00:00'),
(55, 42, '2021-11-27 09:00:00', '2021-11-27 15:00:00'),
(56, 45, '2021-11-27 14:00:00', '2021-11-27 22:00:00'),
(57, 46, '2021-11-27 07:00:00', '2021-11-27 14:00:00'),
(58, 36, '2021-11-27 14:00:00', '2021-11-27 22:30:00'),
(59, 35, '2021-11-27 09:00:00', '2021-11-27 17:00:00'),
(60, 47, '2021-11-27 09:00:00', '2021-11-27 17:00:00'),
(61, 40, '2021-11-27 14:00:00', '2021-11-27 20:00:00'),
(62, 13, '2021-11-28 09:00:00', '2021-11-28 16:00:00'),
(63, 42, '2021-11-28 12:00:00', '2021-11-28 21:00:00'),
(64, 36, '2021-11-28 09:00:00', '2021-11-28 15:00:00'),
(65, 46, '2021-11-28 14:00:00', '2021-11-28 21:00:00'),
(66, 41, '2021-11-28 09:00:00', '2021-11-28 16:00:00'),
(67, 35, '2021-11-28 13:00:00', '2021-11-28 21:00:00'),
(68, 13, '2021-11-29 14:00:00', '2021-11-29 21:00:00'),
(69, 36, '2021-11-29 14:00:00', '2021-11-29 22:00:00'),
(70, 35, '2021-11-30 10:00:00', '2021-11-30 18:00:00'),
(71, 47, '2021-11-30 13:00:00', '2021-11-30 21:00:00'),
(72, 46, '2021-11-30 07:00:00', '2021-11-30 14:00:00'),
(73, 36, '2021-11-30 14:00:00', '2021-11-30 23:00:00'),
(74, 42, '2021-11-30 12:00:00', '2021-11-30 21:00:00'),
(75, 45, '2021-11-30 08:00:00', '2021-11-30 13:00:00'),
(76, 56, '2021-12-01 08:00:00', '2021-12-01 16:00:00'),
(77, 55, '2021-12-01 15:00:00', '2021-12-01 21:00:00'),
(78, 59, '2021-12-01 08:00:00', '2021-12-01 14:00:00'),
(79, 58, '2021-12-01 08:00:00', '2021-12-01 14:00:00'),
(80, 57, '2021-12-01 13:00:00', '2021-12-01 22:00:00'),
(81, 60, '2021-12-01 09:00:00', '2021-12-01 14:00:00'),
(82, 47, '2021-12-01 14:00:00', '2021-12-01 21:00:00'),
(84, 45, '2021-12-02 09:00:00', '2021-12-02 15:00:00'),
(85, 42, '2021-12-02 14:00:00', '2021-12-02 21:00:00'),
(86, 46, '2021-12-02 06:00:00', '2021-12-02 16:00:00'),
(87, 36, '2021-12-02 06:00:00', '2021-12-02 16:00:00'),
(88, 59, '2021-12-02 15:00:00', '2021-12-02 23:00:00'),
(89, 58, '2021-12-02 15:00:00', '2021-12-02 23:00:00'),
(90, 41, '2021-12-02 09:00:00', '2021-12-02 17:00:00'),
(91, 40, '2021-12-02 13:00:00', '2021-12-02 21:00:00'),
(92, 13, '2021-12-03 09:00:00', '2021-12-03 15:00:00'),
(93, 56, '2021-12-03 15:00:00', '2021-12-03 21:00:00'),
(94, 57, '2021-12-03 05:00:00', '2021-12-03 14:00:00'),
(95, 46, '2021-12-03 09:00:00', '2021-12-03 16:00:00'),
(96, 36, '2021-12-03 14:00:00', '2021-12-03 22:00:00'),
(97, 60, '2021-12-03 09:00:00', '2021-12-03 17:00:00'),
(98, 35, '2021-12-03 09:00:00', '2021-12-03 14:00:00'),
(99, 40, '2021-12-03 15:00:00', '2021-12-03 21:00:00'),
(100, 42, '2021-12-04 09:00:00', '2021-12-04 16:00:00'),
(101, 13, '2021-12-04 14:00:00', '2021-12-04 21:00:00'),
(102, 59, '2021-12-04 07:00:00', '2021-12-04 17:00:00'),
(103, 58, '2021-12-04 07:00:00', '2021-12-04 17:00:00'),
(104, 57, '2021-12-04 11:00:00', '2021-12-04 23:00:00'),
(105, 55, '2021-12-05 09:00:00', '2021-12-05 15:00:00'),
(106, 45, '2021-12-05 12:00:00', '2021-12-05 17:00:00'),
(107, 42, '2021-12-05 14:00:00', '2021-12-05 21:00:00'),
(108, 36, '2021-12-05 08:30:00', '2021-12-05 14:00:00'),
(109, 46, '2021-12-05 08:30:00', '2021-12-05 14:00:00'),
(110, 57, '2021-12-05 13:30:00', '2021-12-05 21:30:00'),
(111, 58, '2021-12-05 13:30:00', '2021-12-05 21:30:00'),
(112, 35, '2021-12-05 09:00:00', '2021-12-05 15:00:00'),
(113, 40, '2021-12-05 09:00:00', '2021-12-05 16:00:00'),
(114, 41, '2021-12-05 11:00:00', '2021-12-05 21:00:00'),
(115, 60, '2021-12-05 13:00:00', '2021-12-05 21:00:00'),
(116, 56, '2021-12-17 09:00:00', '2021-12-17 17:00:00'),
(117, 60, '2021-12-17 09:00:00', '2021-12-17 18:00:00'),
(118, 47, '2021-12-17 12:00:00', '2021-12-17 21:00:00'),
(119, 35, '2021-12-20 09:00:00', '2021-12-20 17:00:00'),
(120, 40, '2021-12-20 14:00:00', '2021-12-20 21:00:00'),
(121, 41, '2021-12-21 09:00:00', '2021-12-21 18:00:00'),
(122, 47, '2021-12-21 13:00:00', '2021-12-21 21:00:00'),
(123, 60, '2021-12-22 09:00:00', '2021-12-22 18:00:00'),
(124, 60, '2021-12-23 16:00:00', '2021-12-23 21:00:00'),
(125, 35, '2021-12-25 11:00:00', '2021-12-25 21:00:00'),
(126, 40, '2021-12-25 13:00:00', '2021-12-25 21:00:00');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`idAccount`),
  ADD UNIQUE KEY `login_UNIQUE` (`login`);

--
-- Indeksy dla tabeli `commentary`
--
ALTER TABLE `commentary`
  ADD PRIMARY KEY (`idCommentary`),
  ADD KEY `fk_Commentary_Account1_idx` (`idUser`),
  ADD KEY `fk_Commentary_Commentary1_idx` (`parentCommentary`),
  ADD KEY `fk_Commentary_Topic1_idx` (`idTopic`);

--
-- Indeksy dla tabeli `conditions`
--
ALTER TABLE `conditions`
  ADD PRIMARY KEY (`idConditions`);

--
-- Indeksy dla tabeli `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`idEquipment`);

--
-- Indeksy dla tabeli `hire`
--
ALTER TABLE `hire`
  ADD PRIMARY KEY (`idHire`),
  ADD KEY `idUser` (`idUser`);

--
-- Indeksy dla tabeli `hire_has_equipment`
--
ALTER TABLE `hire_has_equipment`
  ADD PRIMARY KEY (`idHire`,`idEquipment`) USING BTREE,
  ADD KEY `hire_has_equipment_ibfk_2` (`idHire`),
  ADD KEY `hire_has_equipment_ibfk_3` (`idEquipment`);

--
-- Indeksy dla tabeli `instructortype`
--
ALTER TABLE `instructortype`
  ADD PRIMARY KEY (`idInstructor`);

--
-- Indeksy dla tabeli `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`idLesson`),
  ADD KEY `fk_Lesson_Account2_idx` (`idUser`),
  ADD KEY `fk_Lesson_Account1_idx` (`idInstructor`);

--
-- Indeksy dla tabeli `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`idMessage`),
  ADD KEY `fk_Message_Account1_idx` (`idUserSender`),
  ADD KEY `fk_Message_Account2_idx` (`idUserReceiver`);

--
-- Indeksy dla tabeli `openingschedule`
--
ALTER TABLE `openingschedule`
  ADD PRIMARY KEY (`date`);

--
-- Indeksy dla tabeli `personaldata`
--
ALTER TABLE `personaldata`
  ADD PRIMARY KEY (`idAccount`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `fk_PersonalData_Account_idx` (`idAccount`);

--
-- Indeksy dla tabeli `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`idService`),
  ADD KEY `idUser` (`idUser`);

--
-- Indeksy dla tabeli `skipass`
--
ALTER TABLE `skipass`
  ADD PRIMARY KEY (`idSkipass`),
  ADD KEY `fk_Skipass_Account1_idx` (`idUser`);

--
-- Indeksy dla tabeli `tariff`
--
ALTER TABLE `tariff`
  ADD PRIMARY KEY (`idTariff`);

--
-- Indeksy dla tabeli `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`idTopic`),
  ADD KEY `fk_Topic_Account1_idx` (`idUser`);

--
-- Indeksy dla tabeli `workschedule`
--
ALTER TABLE `workschedule`
  ADD PRIMARY KEY (`idWorkSchedule`),
  ADD KEY `fk_WorkSchedule_Account1_idx` (`idUser`),
  ADD KEY `startTime` (`startTime`),
  ADD KEY `finishTime` (`finishTime`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `account`
--
ALTER TABLE `account`
  MODIFY `idAccount` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT dla tabeli `commentary`
--
ALTER TABLE `commentary`
  MODIFY `idCommentary` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `conditions`
--
ALTER TABLE `conditions`
  MODIFY `idConditions` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `hire`
--
ALTER TABLE `hire`
  MODIFY `idHire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT dla tabeli `lesson`
--
ALTER TABLE `lesson`
  MODIFY `idLesson` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT dla tabeli `message`
--
ALTER TABLE `message`
  MODIFY `idMessage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT dla tabeli `personaldata`
--
ALTER TABLE `personaldata`
  MODIFY `idAccount` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT dla tabeli `service`
--
ALTER TABLE `service`
  MODIFY `idService` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `skipass`
--
ALTER TABLE `skipass`
  MODIFY `idSkipass` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT dla tabeli `tariff`
--
ALTER TABLE `tariff`
  MODIFY `idTariff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `topic`
--
ALTER TABLE `topic`
  MODIFY `idTopic` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `workschedule`
--
ALTER TABLE `workschedule`
  MODIFY `idWorkSchedule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `commentary`
--
ALTER TABLE `commentary`
  ADD CONSTRAINT `fk_Commentary_Account1` FOREIGN KEY (`idUser`) REFERENCES `account` (`idAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Commentary_Commentary1` FOREIGN KEY (`parentCommentary`) REFERENCES `commentary` (`idCommentary`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Commentary_Topic1` FOREIGN KEY (`idTopic`) REFERENCES `topic` (`idTopic`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `hire`
--
ALTER TABLE `hire`
  ADD CONSTRAINT `hire_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `account` (`idAccount`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `hire_has_equipment`
--
ALTER TABLE `hire_has_equipment`
  ADD CONSTRAINT `hire_has_equipment_ibfk_2` FOREIGN KEY (`idHire`) REFERENCES `hire` (`idHire`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hire_has_equipment_ibfk_3` FOREIGN KEY (`idEquipment`) REFERENCES `equipment` (`idEquipment`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `instructortype`
--
ALTER TABLE `instructortype`
  ADD CONSTRAINT `instructortype_ibfk_1` FOREIGN KEY (`idInstructor`) REFERENCES `account` (`idAccount`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `fk_Lesson_Account1` FOREIGN KEY (`idInstructor`) REFERENCES `account` (`idAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Lesson_Account2` FOREIGN KEY (`idUser`) REFERENCES `account` (`idAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `fk_Message_Account1` FOREIGN KEY (`idUserSender`) REFERENCES `account` (`idAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Message_Account2` FOREIGN KEY (`idUserReceiver`) REFERENCES `account` (`idAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `personaldata`
--
ALTER TABLE `personaldata`
  ADD CONSTRAINT `fk_PersonalData_Account` FOREIGN KEY (`idAccount`) REFERENCES `account` (`idAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `account` (`idAccount`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `skipass`
--
ALTER TABLE `skipass`
  ADD CONSTRAINT `fk_Skipass_Account1` FOREIGN KEY (`idUser`) REFERENCES `account` (`idAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `fk_Topic_Account1` FOREIGN KEY (`idUser`) REFERENCES `account` (`idAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `workschedule`
--
ALTER TABLE `workschedule`
  ADD CONSTRAINT `fk_WorkSchedule_Account1` FOREIGN KEY (`idUser`) REFERENCES `account` (`idAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
