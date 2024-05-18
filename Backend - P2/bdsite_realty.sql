CREATE DATABASE  IF NOT EXISTS `bdsite` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bdsite`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bdsite
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `realty`
--

DROP TABLE IF EXISTS `realty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(100) DEFAULT NULL,
  `offer_type` varchar(100) DEFAULT NULL,
  `rooms_gt` int(11) NOT NULL,
  `toilet_gt` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `parkingspace_gt` int(11) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `valor` float NOT NULL,
  `stateid` int(11) NOT NULL,
  `cityid` int(11) NOT NULL,
  `neighborhoodid` int(11) NOT NULL,
  `realtytypeid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_state` (`stateid`),
  KEY `fk_city` (`cityid`),
  KEY `fk_neighborhood` (`neighborhoodid`),
  KEY `fk_realtytype` (`realtytypeid`),
  CONSTRAINT `fk_city` FOREIGN KEY (`cityid`) REFERENCES `city` (`id`),
  CONSTRAINT `fk_neighborhood` FOREIGN KEY (`neighborhoodid`) REFERENCES `neighborhood` (`id`),
  CONSTRAINT `fk_realtytype` FOREIGN KEY (`realtytypeid`) REFERENCES `realtytype` (`id`),
  CONSTRAINT `fk_state` FOREIGN KEY (`stateid`) REFERENCES `state` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realty`
--

LOCK TABLES `realty` WRITE;
/*!40000 ALTER TABLE `realty` DISABLE KEYS */;
/*!40000 ALTER TABLE `realty` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-17 21:55:04
