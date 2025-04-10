-- XAMPP-Lite
-- version 8.4.4
-- https://xampplite.sf.net/
--
-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2025 at 01:09 PM
-- Server version: 11.4.5-MariaDB-log
-- PHP Version: 8.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abd25247361`
--

-- --------------------------------------------------------

--
-- Table structure for table `abonne`
--

CREATE TABLE `abonne` (
  `cin` varchar(8) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `dn` date NOT NULL,
  `etat` varchar(1) NOT NULL,
  `sexe` varchar(1) NOT NULL
) ;

--
-- Dumping data for table `abonne`
--

INSERT INTO `abonne` (`cin`, `nom`, `prenom`, `dn`, `etat`, `sexe`) VALUES
('22222222', 'Mohamed', 'Ben Hamed', '1980-01-20', 'C', 'H'),
('33333333', 'Amira', 'Ben Aissa', '1974-05-02', 'M', 'F'),
('44444444', 'Amir', 'Girate', '1980-01-01', 'M', 'H');

-- --------------------------------------------------------

--
-- Table structure for table `abonnement`
--

CREATE TABLE `abonnement` (
  `idabo` int(11) NOT NULL,
  `cin` varchar(8) NOT NULL,
  `date_ins` date NOT NULL,
  `date_val` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abonnement`
--

INSERT INTO `abonnement` (`idabo`, `cin`, `date_ins`, `date_val`) VALUES
(1, '22222222', '2015-05-12', '2016-05-12'),
(2, '22222222', '2015-05-12', '2015-11-12'),
(4, '33333333', '2016-01-01', '2016-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `type_abo`
--

CREATE TABLE `type_abo` (
  `idabo` int(11) NOT NULL,
  `libelle` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_abo`
--

INSERT INTO `type_abo` (`idabo`, `libelle`) VALUES
(1, 'Pret de liseuses'),
(2, 'Mediatheque'),
(3, 'Culturetheque'),
(4, 'Bibliotheque');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abonne`
--
ALTER TABLE `abonne`
  ADD PRIMARY KEY (`cin`);

--
-- Indexes for table `abonnement`
--
ALTER TABLE `abonnement`
  ADD PRIMARY KEY (`idabo`),
  ADD KEY `idabo` (`idabo`,`cin`);

--
-- Indexes for table `type_abo`
--
ALTER TABLE `type_abo`
  ADD PRIMARY KEY (`idabo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `type_abo`
--
ALTER TABLE `type_abo`
  MODIFY `idabo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
