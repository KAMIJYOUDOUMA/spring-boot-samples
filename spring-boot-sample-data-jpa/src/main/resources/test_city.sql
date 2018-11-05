-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `country` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `map` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Australia','Brisbane','Queensland','-27.470933, 153.023502'),(2,'Australia','Melbourne','Victoria','-37.813187, 144.96298'),(3,'Australia','Sydney','New South Wales','-33.868901, 151.207091'),(4,'Canada','Montreal','Quebec','45.508889, -73.554167'),(5,'Israel','Tel Aviv','','32.066157, 34.777821'),(6,'Japan','Tokyo','','35.689488, 139.691706'),(7,'Spain','Barcelona','Catalunya','41.387917, 2.169919'),(8,'Switzerland','Neuchatel','','46.992979, 6.931933'),(9,'UK','Bath','Somerset','51.381428, -2.357454'),(10,'UK','London','','51.500152, -0.126236'),(11,'UK','Southampton','Hampshire','50.902571, -1.397238'),(12,'USA','Atlanta','GA','33.748995, -84.387982'),(13,'USA','Chicago','IL','41.878114, -87.629798'),(14,'USA','Eau Claire','WI','44.811349, -91.498494'),(15,'USA','Hollywood','FL','26.011201, -80.14949'),(16,'USA','Miami','FL','25.788969, -80.226439'),(17,'USA','Melbourne','FL','28.083627, -80.608109'),(18,'USA','New York','NY','40.714353, -74.005973'),(19,'USA','Palm Bay','FL','28.034462, -80.588665'),(20,'USA','San Francisco','CA','37.77493, -122.419415'),(21,'USA','Washington','DC','38.895112, -77.036366');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-30 22:41:24
