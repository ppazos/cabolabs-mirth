# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.18)
# Database: mirth_tests
# Generation Time: 2017-10-26 15:19:28 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table estudios_lis
# ------------------------------------------------------------

DROP TABLE IF EXISTS `estudios_lis`;

CREATE TABLE `estudios_lis` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_estudio_his` varchar(255) DEFAULT NULL,
  `tipo_estudio` varchar(255) DEFAULT NULL,
  `nombre_estudio` varchar(255) DEFAULT NULL,
  `codificacion_estudio` varchar(255) DEFAULT NULL,
  `id_paciente` varchar(255) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pacientes_lis
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pacientes_lis`;

CREATE TABLE `pacientes_lis` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '''''',
  `apellido` varchar(50) DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `procesado` tinyint(4) NOT NULL DEFAULT '0',
  `id_paciente` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
