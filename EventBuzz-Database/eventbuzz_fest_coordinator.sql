-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: eventbuzz
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `fest_coordinator`
--

DROP TABLE IF EXISTS `fest_coordinator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fest_coordinator` (
  `CoordinatorID` varchar(25) NOT NULL,
  `CollegeName` varchar(50) DEFAULT NULL,
  `University` varchar(50) DEFAULT NULL,
  `streetAddr` varchar(50) DEFAULT NULL,
  `locality` varchar(50) DEFAULT NULL,
  `city` varchar(20) DEFAULT 'New Delhi',
  `State` varchar(20) DEFAULT 'Delhi',
  `NearestMetro` varchar(50) DEFAULT NULL,
  `PinCode` int(6) DEFAULT NULL,
  `clg_Email` varchar(50) DEFAULT NULL,
  `clg_website` varchar(20) DEFAULT NULL,
  `clg_phnNo` varchar(15) DEFAULT NULL,
  `is_active` int(1) DEFAULT '1',
  `pswd` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`CoordinatorID`),
  UNIQUE KEY `clg_Email` (`clg_Email`),
  UNIQUE KEY `clg_website` (`clg_website`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fest_coordinator`
--

LOCK TABLES `fest_coordinator` WRITE;
/*!40000 ALTER TABLE `fest_coordinator` DISABLE KEYS */;
INSERT INTO `fest_coordinator` VALUES ('BCAS-SRIJAN2014','BCAS','University Of Delhi','Dwarka','Sector-2, Phase-1','New Delhi','Delhi','Dwarka Mod',110063,'bcas@du.in','bcas.du.ac.in','8520417799',1,'100719'),('BVP-NSC2015','BVICAM','GGSIPU','Rohtak Road','A-4, Paschim Vihar','New Delhi','Delhi','Paschim Vihar (East) Metro Station',110063,'nsc@bvicam.in','bvicam.in','9876543210',1,'070719'),('dducdwarka75','Deen Dayal Upadhyay College','University of Delhi','azad hind fauz marg','Phase-I, Dwarka Sec-3','New Delhi','Delhi','Dwarka Mor',110078,'dducdu@gmail.com','dduc.du.ac.in','92235390254',0,'123456'),('SPM-SRIJAN94','Shyama Prasad Mukherjee College','Delhi University','Road No.-57','West Avenue Road','Punjabi Bagh West','New Delhi','Shivaji Park',110026,'spmcollegedu@gmail.com','spmc.du.ac.in','14088926578',1,'01092019');
/*!40000 ALTER TABLE `fest_coordinator` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-13 23:10:01
