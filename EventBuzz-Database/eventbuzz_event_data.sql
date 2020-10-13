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
-- Table structure for table `event_data`
--

DROP TABLE IF EXISTS `event_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event_data` (
  `EventID` int(8) NOT NULL AUTO_INCREMENT,
  `EventName` varchar(15) NOT NULL,
  `EventDate` date DEFAULT NULL,
  `EventTime` time DEFAULT NULL,
  `Venue` varchar(20) DEFAULT NULL,
  `part_fee` decimal(5,2) DEFAULT NULL,
  `pay_link` varchar(50) DEFAULT NULL,
  `teamSize` int(4) DEFAULT NULL,
  `EPoster` varchar(100) DEFAULT NULL,
  `CoordinatorID` varchar(25) DEFAULT NULL,
  `is_active` int(1) DEFAULT '1',
  PRIMARY KEY (`EventID`),
  UNIQUE KEY `EPoster` (`EPoster`),
  KEY `CoordinatorID` (`CoordinatorID`),
  CONSTRAINT `event_data_ibfk_1` FOREIGN KEY (`CoordinatorID`) REFERENCES `fest_coordinator` (`CoordinatorID`)
) ENGINE=InnoDB AUTO_INCREMENT=10028 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_data`
--

LOCK TABLES `event_data` WRITE;
/*!40000 ALTER TABLE `event_data` DISABLE KEYS */;
INSERT INTO `event_data` VALUES (10020,'Pictionary','2019-10-12','12:00:00','E-Block',50.00,'www.paytm.in/9876543012',1,'lbsim3.jpg','BVP-NSC2015',0),(10022,'FanDango','2019-10-12','10:30:00','Auditorium',50.00,'www.paytm.in/9630258741',25,'nsc_FanDango.jpg','BVP-NSC2015',0),(10024,'Cod-a-thon','2018-03-11','11:30:00','Computer Lab',0.00,NULL,1,NULL,'dducdwarka75',0),(10025,'Lan-Gaming','2020-03-14','13:30:00','Hall-1',50.00,'paytm.in/64925648',1,'pubg.jpg','dducdwarka75',1),(10026,'AD-MAD','2020-02-13','10:30:00','AV Room',20.00,'www.paypal.in/68653',2,'ad-mad.jpg','dducdwarka75',1),(10027,'Tic-Tac-Code','2020-03-21','09:30:00','Lab-3',0.00,'',1,'lbsim1.jpg','SPM-SRIJAN94',1);
/*!40000 ALTER TABLE `event_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-13 23:10:02
