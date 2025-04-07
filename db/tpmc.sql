-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           11.5.2-MariaDB - mariadb.org binary distribution
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Création de la base de données
CREATE DATABASE IF NOT EXISTS `tpmc` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `tpmc`;

-- Table lecture de donnée automate
CREATE TABLE IF NOT EXISTS `autom` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tempVar` int(11) DEFAULT NULL,              
  `autoVar` BOOLEAN DEFAULT NULL,              
  `dateAutom` DATETIME DEFAULT NULL,          
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Table modification des nouveaux seuils
CREATE TABLE IF NOT EXISTS `seuil` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `seuilTB` int(11) DEFAULT NULL,              
  `seuilB` int(11) DEFAULT NULL,               
  `seuilH` int(11) DEFAULT NULL,               
  `seuilTH` int(11) DEFAULT NULL,              
  `dateSeuil` DATETIME DEFAULT NULL,           
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Table alarme du site HTML
CREATE TABLE IF NOT EXISTS `alarme` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,        
  `typeAlarme` VARCHAR(50) DEFAULT NULL,       
  `dateAlarme` DATETIME DEFAULT NULL,         
  `penteAlarme` int(11) DEFAULT NULL,          
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
