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
-- Table structure for table `executivepolicy`
--

DROP TABLE IF EXISTS `executivepolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `executivepolicy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `EPname` varchar(200) DEFAULT NULL,
  `year_es` int DEFAULT NULL,
  `year_el` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `yid_idx` (`year_es`),
  KEY `yL_idx` (`year_el`),
  CONSTRAINT `year_el` FOREIGN KEY (`year_el`) REFERENCES `year` (`id`),
  CONSTRAINT `yid` FOREIGN KEY (`year_es`) REFERENCES `year` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `executivepolicy`
--

LOCK TABLES `executivepolicy` WRITE;
/*!40000 ALTER TABLE `executivepolicy` DISABLE KEYS */;
INSERT INTO `executivepolicy` VALUES (8,'1. กระจายเครื่องจักกลและบุคลากรสู่ชุมชน',7,10),(9,'2. อยู่ที่ไหนก็เรียนได้เรียนที่ไหนก็สำเสร็จ',7,10),(10,'3. นักขายของออนไลน์กระจายสินค้า',7,10),(11,'4. ศูนย์บริการสาธารณภัยแบบเบ็ดเสร็จ (PDOSS)',7,10),(12,'5. เที่ยวได้ทุกสไตล์ เที่ยวเชียงรายได้ทั้งปี มีดีทุกอำเภอ',10,7),(13,'6. อยู่ที่ไหนก็ใกล้หมอ (โฮงยาใกล้บ้าน Plus)',7,10),(14,'7. ศูนย์เศษฐกิจสร้างสรรค์ (TCDC) สร้างเชียงรายแบรนด์',7,10);
/*!40000 ALTER TABLE `executivepolicy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-18 14:33:31
