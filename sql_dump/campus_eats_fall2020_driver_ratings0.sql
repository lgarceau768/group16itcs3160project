-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: campus_eats_fall2020
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `driver_ratings`
--

DROP TABLE IF EXISTS `driver_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver_ratings` (
  `driver_id` int DEFAULT NULL,
  `person_id` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `driver_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table for storing the ratings submitted on all drivers.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_ratings`
--

LOCK TABLES `driver_ratings` WRITE;
/*!40000 ALTER TABLE `driver_ratings` DISABLE KEYS */;
INSERT INTO `driver_ratings` VALUES (1,10,2,'Lorem ipsum dolor sit amet,','2075-01-13 08:36:41','Keith Turner'),(1,86,2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed','2165-08-26 05:04:24','Keith Turner'),(1,160,5,'Lorem ipsum dolor sit amet,','1950-12-10 20:53:43','Keith Turner'),(2,1,3,'Lorem ipsum','1906-10-11 19:54:12','Ms. Antonette Keeling'),(2,9,3,'Lorem ipsum dolor sit amet,','1902-02-06 14:14:14','Ms. Antonette Keeling'),(2,122,4,'Lorem ipsum dolor sit amet, consectetuer','2017-09-30 21:41:29','Ms. Antonette Keeling'),(2,123,3,'Lorem ipsum dolor sit','1970-10-31 04:40:26','Ms. Antonette Keeling'),(3,154,4,'Lorem ipsum dolor sit amet,','2084-07-28 05:32:57','Miss Rosanna Connelly'),(4,1,1,'Lorem ipsum','1934-11-24 14:46:59','Noel Emard'),(4,32,4,'Lorem ipsum dolor sit amet, consectetuer adipiscing','2080-05-18 10:15:02','Noel Emard'),(4,90,3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','2014-07-31 09:20:00','Noel Emard'),(4,101,3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','1903-05-15 05:10:35','Noel Emard'),(5,1,4,'Lorem ipsum dolor','2068-07-17 08:00:35','Trudie McClure Jr.'),(6,54,5,'Lorem ipsum dolor','2095-04-05 20:29:20','Dr. Velva Howe'),(7,100,5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed','2178-09-16 13:51:30','Colby Stokes'),(2,1,3,'Lorem ipsum','1906-10-11 19:54:12','Ms. Antonette Keeling'),(4,32,4,'Lorem ipsum dolor sit amet, consectetuer adipiscing','2080-05-18 10:15:02','Noel Emard'),(6,54,5,'Lorem ipsum dolor','2095-04-05 20:29:20','Dr. Velva Howe'),(1,86,2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed','2165-08-26 05:04:24','Keith Turner'),(4,1,1,'Lorem ipsum','1934-11-24 14:46:59','Noel Emard'),(2,123,3,'Lorem ipsum dolor sit','1970-10-31 04:40:26','Ms. Antonette Keeling'),(3,154,4,'Lorem ipsum dolor sit amet,','2084-07-28 05:32:57','Miss Rosanna Connelly'),(2,9,3,'Lorem ipsum dolor sit amet,','1902-02-06 14:14:14','Ms. Antonette Keeling'),(1,10,2,'Lorem ipsum dolor sit amet,','2075-01-13 08:36:41','Keith Turner'),(5,1,4,'Lorem ipsum dolor','2068-07-17 08:00:35','Trudie McClure Jr.'),(7,100,5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed','2178-09-16 13:51:30','Colby Stokes'),(4,101,3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','1903-05-15 05:10:35','Noel Emard'),(2,122,4,'Lorem ipsum dolor sit amet, consectetuer','2017-09-30 21:41:29','Ms. Antonette Keeling'),(1,160,5,'Lorem ipsum dolor sit amet,','1950-12-10 20:53:43','Keith Turner'),(4,90,3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur','2014-07-31 09:20:00','Noel Emard'),(2,1,4,'Lorem','1923-07-05 21:48:41','Ms. Antonette Keeling'),(8,15,3,'Lorem ipsum dolor','2196-05-08 07:00:12','Rosie Shields V'),(4,49,2,'Lorem ipsum','2107-12-03 19:24:53','Noel Emard'),(2,60,4,'Lorem ipsum','1914-12-28 21:02:17','Ms. Antonette Keeling'),(1,103,2,'Lorem ipsum dolor','2098-06-19 00:15:56','Keith Turner');
/*!40000 ALTER TABLE `driver_ratings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-11  9:44:46
