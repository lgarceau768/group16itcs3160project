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
-- Table structure for table `vendor_ratings`
--

DROP TABLE IF EXISTS `vendor_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_ratings` (
  `resturant_id` int DEFAULT NULL,
  `person_id` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `resturant_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table for storing rating information for all vendors by all users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_ratings`
--

LOCK TABLES `vendor_ratings` WRITE;
/*!40000 ALTER TABLE `vendor_ratings` DISABLE KEYS */;
INSERT INTO `vendor_ratings` VALUES (52,30,2,'Streamlined leading edge data-warehouse','2021-01-03 10:07:18','Hilpert, Von and Frami'),(80,74,1,'Distributed composite hub','2020-09-14 01:01:33','Predovic Group'),(28,35,4,'Down-sized intangible info-mediaries','2020-12-04 15:05:53','Stanton-D\'Amore'),(88,89,4,'Ameliorated mobile customer loyalty','2020-10-27 22:48:44','Barrows Group'),(68,2,3,'Re-contextualized directional framework','2020-06-22 21:47:31','Bahringer, Herman and Lebsack'),(86,13,4,'Multi-tiered dynamic hierarchy','2021-04-02 16:44:37','Corwin Inc'),(21,92,5,'Sharable neutral secured line','2020-09-10 14:05:51','Cruickshank-Reilly'),(35,64,4,'Visionary responsive standardization','2021-01-02 15:52:40','Rolfson LLC'),(73,54,4,'Versatile eco-centric interface','2021-03-15 04:34:16','Davis-Gottlieb'),(22,13,2,'Devolved global open system','2020-07-14 06:22:08','Eichmann-Casper'),(64,35,2,'Profound non-volatile instruction set','2020-10-16 21:36:28','Greenfelder-Strosin'),(13,8,4,'Cloned multi-tasking artificial intelligence','2020-04-13 14:52:55','Ankunding Group'),(48,15,5,'Object-based 3rd generation attitude','2020-08-18 09:57:57','McGlynn PLC'),(14,63,4,'Reverse-engineered eco-centric core','2021-02-15 21:42:27','Weber, Lehner and Mueller'),(12,61,1,'Vision-oriented asymmetric flexibility','2020-08-30 15:38:27','Abbott-Schmitt'),(28,31,3,'Multi-layered incremental definition','2020-08-14 20:25:57','Stanton-D\'Amore'),(74,62,1,'Quality-focused 5th generation policy','2020-11-20 18:37:04','Kuhic, DuBuque and Rutherford'),(8,89,4,'Reduced zero tolerance approach','2020-07-15 18:35:25','Kub, Borer and Ward'),(89,59,4,'Phased full-range projection','2020-11-27 07:36:29','Kub, Hoeger and Swaniawski'),(20,87,3,'Switchable heuristic customer loyalty','2020-04-16 20:52:52','Smitham-Haley');
/*!40000 ALTER TABLE `vendor_ratings` ENABLE KEYS */;
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
