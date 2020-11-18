﻿# SQL-Front 5.1  (Build 4.16)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost:3308    Database: biblioteca
# ------------------------------------------------------
# Server version 5.5.5-10.1.13-MariaDB

DROP DATABASE IF EXISTS `biblioteca`;
CREATE DATABASE `biblioteca` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `biblioteca`;

#
# Source for table libro
#

DROP TABLE IF EXISTS `libro`;
CREATE TABLE `libro` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `titulo` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `autor` varchar(199) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `editorial` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `fecha` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Dumping data for table libro
#

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1,'0123829121','Las nubes','Aristófanes','Santillana','0424-11-05');
INSERT INTO `libro` VALUES (2,'9283019230','Especies útiles de la flora salvadoreña','David Joaquín Guzmán','Panini','1926-06-25');
INSERT INTO `libro` VALUES (3,'2973811023','Edipo rey','Sófocles','El volcán','0430-09-30');
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
