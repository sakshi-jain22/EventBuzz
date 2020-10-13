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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `students` (
  `student_id` varchar(12) NOT NULL,
  `SName` varchar(30) DEFAULT NULL,
  `UserName` varchar(30) DEFAULT NULL,
  `Stud_mail` varchar(40) NOT NULL,
  `passwrd` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sphoneNo` varchar(15) DEFAULT NULL,
  `SCourse` varchar(20) DEFAULT NULL,
  `SCollege` varchar(50) DEFAULT NULL,
  `StudentYear` int(11) DEFAULT NULL,
  `is_active` int(1) DEFAULT '1',
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `Stud_mail` (`Stud_mail`),
  UNIQUE KEY `UserName` (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('00135304418','Aastha','ast459','aastha@rediffmail.com','12345','9513746888',NULL,'DBC',2,1),('00535304418','Akanksha Tyagi','fir.akanksha','fir.akankshatyagi@gmail.com','viranksha','9582166247','MCA','BVICAM',5,1),('03816604419','Shubham Jain','sjRdx','rdx@gmail.com','987654','9876543210',NULL,'DU',2,1),('03835304418','Sakshi Jain','sakshi.jain.2204','sakshi.jain.2204@gmail.com','me@4692','9958078342','MCA','BVICAM',2,1),('03862304417','Shubham Jain','shubhamjainrdx','shubhamjainrdx@gmail.com','ud1rdxsjjs','8130153426','B.TECH','BVCOE',3,1),('17009570001','Shubham Jain','sjindia','sjindia@gmail.com','abcdef','8130759485','B.Sc.','Bhaskaracharya College of Applied Sciences',3,1),('17009570009','Avika Parashar','apindia','apindia@gmail.com','123456','9212740590','BCA','Oxford College',1,1),('17009570010','Ayaan Khan','ak47india ','akindia@gmail.com','abcdef','9899101001','LLB.','mk gandhi college',5,1),('17009570090','Sudhanshu Garg','babugarg19','babugarg19@gmail.com','sidgarg','9773519477','BBA','Fairfield Institute of management studies',4,1),('18075270033','Tanishka','tani.12','tani.12@gmail.com','itsme#12','9968298212','B.Sc.','BCAS',2,1),('19009570011','Moksh Sharma','mokshthor','msthor@gmail.com','654321','9517000492','B.TECH','national engineering college',2,1),('19009570014','Naveen Kumar ','nkcapamerica','nkcaptain@gmail.com','abcdef','9650303369','MBA','International Business College',5,1);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-13 23:10:00
