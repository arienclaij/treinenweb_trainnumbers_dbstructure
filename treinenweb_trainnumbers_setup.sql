-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server versie:                10.1.38-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Versie:              11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Databasestructuur van treinenweb_trains wordt geschreven
CREATE DATABASE IF NOT EXISTS `treinenweb_trains` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `treinenweb_trains`;

-- Structuur van  tabel treinenweb_trains.trains_columns wordt geschreven
CREATE TABLE IF NOT EXISTS `trains_columns` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL DEFAULT '0',
  `TrainID` tinyint(4) NOT NULL,
  `Protected` tinyint(4) DEFAULT NULL,
  `Sequence` tinyint(4) DEFAULT NULL,
  `Description` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel treinenweb_trains.trains_dates wordt geschreven
CREATE TABLE IF NOT EXISTS `trains_dates` (
  `NumberID` int(11) DEFAULT NULL,
  `ColumnID` int(4) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporteren was gedeselecteerd

-- Structuur van  tabel treinenweb_trains.trains_numbers wordt geschreven
CREATE TABLE IF NOT EXISTS `trains_numbers` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `Number` int(4) DEFAULT NULL,
  `Type` enum('Trainset','Carriage') DEFAULT NULL,
  `TrainID` int(11) DEFAULT NULL,
  `NumberParentID` int(4) DEFAULT NULL COMMENT 'Coupled to newest number when number is deprecated',
  `TrainsetID` int(4) DEFAULT NULL COMMENT 'If it is a carriage that is coupled to a trainset (treinstam)',
  `IsDeprecated` enum('0','1') DEFAULT '0' COMMENT 'If the trainnumber is deprecated',
  `SubcategoryID` int(4) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporteren was gedeselecteerd

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
