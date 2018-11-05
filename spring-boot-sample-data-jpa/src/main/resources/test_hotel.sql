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
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,1,'Conrad Treasury Place','William & George Streets','4001'),(2,2,'The Langham','1 Southgate Ave, Southbank','3006'),(3,3,'Swissotel','68 Market Street','2000'),(4,4,'Ritz Carlton','1228 Sherbrooke St','H3G1H6'),(5,5,'Hilton Tel Aviv','Independence Park','63405'),(6,6,'InterContinental Tokyo Bay','Takeshiba Pier','105'),(7,7,'Hilton Diagonal Mar','Passeig del Taulat 262-264','08019'),(8,8,'Hotel Beaulac',' Esplanade Leopold-Robert 2','2000'),(9,9,'The Bath Priory Hotel','Weston Road','BA1 2XT'),(10,9,'Bath Travelodge','Rossiter Road, Widcombe Basin','BA2 4JP'),(11,10,'Melia White House','Albany Street','NW1 3UP'),(12,11,'Chilworth Manor','The Cottage, Southampton Business Park','SO16 7JF'),(13,12,'Marriott Courtyard','Tower Place, Buckhead','30305'),(14,12,'Ritz Carlton','Peachtree Rd, Buckhead','30326'),(15,12,'Doubletree','Tower Place, Buckhead','30305'),(16,13,'Hotel Allegro','171 West Randolph Street','60601'),(17,14,'Sea Horse Inn','2106 N Clairemont Ave','54703'),(18,14,'Super 8 Eau Claire Campus Area','1151 W Macarthur Ave','54701'),(19,15,'Westin Diplomat','3555 S. Ocean Drive','33019'),(20,16,'Conrad Miami','1395 Brickell Ave','33131'),(21,17,'Radisson Suite Hotel Oceanfront','3101 North Hwy','32903'),(22,18,'W Union Hotel','Union Square, Manhattan','10011'),(23,18,'W Lexington Hotel','Lexington Ave, Manhattan','10011'),(24,18,'70 Park Avenue Hotel','70 Park Avenue','10011'),(25,19,'Jameson Inn','890 Palm Bay Rd NE','32905'),(26,20,'Marriot Downtown','55 Fourth Street','94103'),(27,21,'Hotel Rouge','1315 16th Street NW','20036');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
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
