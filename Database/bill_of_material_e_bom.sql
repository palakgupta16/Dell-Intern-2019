-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: bill_of_material
-- ------------------------------------------------------
-- Server version	5.7.24-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `e_bom`
--

DROP TABLE IF EXISTS `e_bom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `e_bom` (
  `part_no` int(10) NOT NULL,
  `part_type` varchar(30) DEFAULT NULL,
  `part_description` varchar(50) DEFAULT NULL,
  `unit_of_measure` int(5) DEFAULT NULL,
  `price_per_unit` int(10) DEFAULT NULL,
  PRIMARY KEY (`part_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_bom`
--
-- ORDER BY:  `part_no`

LOCK TABLES `e_bom` WRITE;
/*!40000 ALTER TABLE `e_bom` DISABLE KEYS */;
INSERT INTO `e_bom` VALUES (1,'laptop charger','dell 45-watt 3-prong ac adapter',1,3600),(2,'ram','dell memory-8gb 2rx8 ddr3l sodimm 1600mhz',1,8670),(3,'internal storage','dell serial ata solid state hard drive - 256gb',1,6500),(4,'graphic card','nvidi quadro p2000, 5gb, 4dp',1,29000),(5,'processor','intel core i5 7400 7th generation core',1,19700);
/*!40000 ALTER TABLE `e_bom` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-14 20:08:16
