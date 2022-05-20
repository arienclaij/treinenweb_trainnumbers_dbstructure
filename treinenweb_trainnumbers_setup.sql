
CREATE DATABASE IF NOT EXISTS `trainsdatabase`;
USE `trainsdatabase`;

CREATE TABLE IF NOT EXISTS `trains_columns` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL DEFAULT '0',
  `TrainID` int(4) NOT NULL,
  `Protected` int(4) DEFAULT NULL,
  `Sequence` int(4) DEFAULT NULL,
  `Description` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `trains_dates` (
  `NumberID` int(4) DEFAULT NULL,
  `ColumnID` int(4) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
