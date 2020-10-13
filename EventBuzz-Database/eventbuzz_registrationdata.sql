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
-- Table structure for table `registrationdata`
--

DROP TABLE IF EXISTS `registrationdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `registrationdata` (
  `RegistrationID` int(10) NOT NULL AUTO_INCREMENT,
  `EventID` int(8) NOT NULL,
  `student_id` varchar(12) NOT NULL,
  `PaymentSS` varchar(100) DEFAULT NULL,
  `teamMates` int(3) DEFAULT NULL,
  `memberID` int(10) DEFAULT NULL,
  `coordinatorID` varchar(25) DEFAULT NULL,
  `is_active` int(1) DEFAULT '1',
  PRIMARY KEY (`RegistrationID`,`EventID`,`student_id`),
  UNIQUE KEY `PaymentSS` (`PaymentSS`),
  UNIQUE KEY `PaymentSS_2` (`PaymentSS`),
  UNIQUE KEY `PaymentSS_3` (`PaymentSS`),
  UNIQUE KEY `PaymentSS_4` (`PaymentSS`),
  UNIQUE KEY `PaymentSS_5` (`PaymentSS`),
  KEY `EventID` (`EventID`),
  KEY `student_id` (`student_id`),
  KEY `coordinatorID` (`coordinatorID`),
  KEY `memberID` (`memberID`),
  CONSTRAINT `registrationdata_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `event_data` (`EventID`),
  CONSTRAINT `registrationdata_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  CONSTRAINT `registrationdata_ibfk_3` FOREIGN KEY (`coordinatorID`) REFERENCES `fest_coordinator` (`CoordinatorID`),
  CONSTRAINT `registrationdata_ibfk_4` FOREIGN KEY (`memberID`) REFERENCES `registrationdata` (`RegistrationID`)
) ENGINE=InnoDB AUTO_INCREMENT=12030 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrationdata`
--

LOCK TABLES `registrationdata` WRITE;
/*!40000 ALTER TABLE `registrationdata` DISABLE KEYS */;
INSERT INTO `registrationdata` VALUES (12001,10020,'18075270033',NULL,1,NULL,'BVP-NSC2015',1),(12008,10020,'18075270033','IMG-20190724-WA0019.jpg',2,NULL,'BVP-NSC2015',1),(12014,10020,'17009570009',NULL,2,12008,'BVP-NSC2015',1),(12027,10022,'03835304418','codeathon.jpg',1,NULL,'BVP-NSC2015',1),(12028,10024,'03835304418',NULL,1,NULL,'dducdwarka75',1),(12029,10026,'00535304418',NULL,1,NULL,'dducdwarka75',0);
/*!40000 ALTER TABLE `registrationdata` ENABLE KEYS */;
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
