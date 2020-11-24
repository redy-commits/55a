# SQL-Front 5.1  (Build 4.16)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost:3308    Database: grupo09
# ------------------------------------------------------
# Server version 5.5.5-10.1.13-MariaDB

#
# Source for table editorial
#

DROP TABLE IF EXISTS `editorial`;
CREATE TABLE `editorial` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) CHARACTER SET latin1 NOT NULL DEFAULT 'Panini',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Dumping data for table editorial
#

LOCK TABLES `editorial` WRITE;
/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT INTO `editorial` VALUES (1,'Santillana');
INSERT INTO `editorial` VALUES (2,'Panini');
INSERT INTO `editorial` VALUES (3,'El volcán');
INSERT INTO `editorial` VALUES (4,'Caja negra');
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Dumping data for table libro
#

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1,'0000000001','Crepúsculo','Edward Cullen','Santillana','2010-12-01');
INSERT INTO `libro` VALUES (2,'9283019230','Especies útiles de la flora salvadoreña','David Joaquín Guzmán','Panini','1926-06-25');
INSERT INTO `libro` VALUES (3,'2973811023','Edipo rey','Sófocles','El volcán','0430-09-30');
INSERT INTO `libro` VALUES (4,'0000000000','Psicología del éxito','Mario Luna','Caja negra','2015-06-01');
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table usuarios
#

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(15) NOT NULL DEFAULT 'Anonimo',
  `clave` varchar(255) NOT NULL DEFAULT '1',
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL DEFAULT 'Anonimo Anonimo',
  `nivel` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Dumping data for table usuarios
#

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Digitador','1','Pedro Perez',1);
INSERT INTO `usuarios` VALUES (2,'Mantenimiento','2','Juan Ramirez',2);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
