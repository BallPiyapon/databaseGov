-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: govbudgetsys
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(200) DEFAULT NULL,
  `objective` varchar(45) DEFAULT NULL,
  `target` varchar(45) DEFAULT NULL,
  `target_group` varchar(45) DEFAULT NULL,
  `operationalPlan` date DEFAULT NULL,
  `operationalPlanBe` date DEFAULT NULL,
  `Implementation` date DEFAULT NULL,
  `ImplementationBe` date DEFAULT NULL,
  `coordinates` varchar(45) DEFAULT NULL,
  `subdistrict_id` int DEFAULT NULL,
  `responsible` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `respon_idx` (`responsible`),
  KEY `sd_idx` (`subdistrict_id`),
  CONSTRAINT `respon` FOREIGN KEY (`responsible`) REFERENCES `loginuser` (`id`),
  CONSTRAINT `sd` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistrict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (7,'test','test','test','test','2025-09-01','2025-09-25','2025-09-01','2025-10-11','test',17,2),(11,'test2','test2','test2','test2','2025-09-01','2025-09-18','2025-09-01','2025-10-02','test2',11,2),(13,'test3','test3','test3','test3','2025-09-08','2025-10-10',NULL,NULL,'test3',5,2);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-08 18:25:36
