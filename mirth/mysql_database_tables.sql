-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.22 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for mirth_tests
CREATE DATABASE IF NOT EXISTS `mirth_tests` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mirth_tests`;


-- Dumping structure for table mirth_tests.cda_logs
CREATE TABLE IF NOT EXISTS `cda_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fecha_documento` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paciente` varchar(255) NOT NULL DEFAULT '0',
  `identificador_paciente` varchar(255) NOT NULL DEFAULT '0',
  `autor` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table mirth_tests.pacientes
CREATE TABLE IF NOT EXISTS `pacientes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '0',
  `apellido` varchar(50) NOT NULL DEFAULT '0',
  `nacimiento` date NOT NULL DEFAULT '0000-00-00',
  `sexo` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
