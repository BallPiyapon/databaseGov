-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: govbudgetsys
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `strategic`
--

DROP TABLE IF EXISTS `strategic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strategic` (
  `id` int NOT NULL AUTO_INCREMENT,
  `strategics` varchar(200) DEFAULT NULL,
  `year_s` int DEFAULT NULL,
  `year_l` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ys_idx` (`year_s`),
  KEY `year_s_idx` (`year_s`),
  KEY `year_ls_idx` (`year_l`),
  CONSTRAINT `yl` FOREIGN KEY (`year_l`) REFERENCES `year` (`id`),
  CONSTRAINT `ys` FOREIGN KEY (`year_s`) REFERENCES `year` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strategic`
--

LOCK TABLES `strategic` WRITE;
/*!40000 ALTER TABLE `strategic` DISABLE KEYS */;
INSERT INTO `strategic` VALUES (11,'1. การสร้างมูลค่าเพิ่มด้านการท่องเที่ยวเชิงสร้างสรรค์โดยดำรงฐานวัฒนธรรมล้านนา',1,10),(12,'2. การส่งเสริมการผลิตและพัฒนานวัฒกรรมเพื่อยกระดับสินค้าเกษตรเชิงสร้างสรรค์ภายใต้แนวทางการพัฒนาที่ยั่งยืน(Sustainable Development Goals  : SDGs)',1,10),(13,'3. การพัฒนาเศรษฐกิจสร้างสรรค์ด้านการค้า การลงทุน การบริการ และโลจิสติกส์',1,10),(14,'4. การจัดการทรัพยากรธรรมชาติและสิ่งแวดล้อมให้ดำรงความสมบูรณ์และยั่งยืน',1,10),(15,'5. การพัฒนาคุณภาพชีวิตและความมั่นคงเพื่อส่งเสริมสังคมสร้างสรรค์และธรรมาภิบาล',1,10);
/*!40000 ALTER TABLE `strategic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-18 14:33:32
