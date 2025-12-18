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
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(1000) DEFAULT NULL,
  `objective` varchar(500) DEFAULT NULL,
  `target` varchar(500) DEFAULT NULL,
  `target_group` varchar(500) DEFAULT NULL,
  `operationalPlan` varchar(45) DEFAULT NULL,
  `operationalPlanBe` varchar(45) DEFAULT NULL,
  `Implementation` varchar(45) DEFAULT NULL,
  `ImplementationBe` varchar(45) DEFAULT NULL,
  `coordinates` varchar(1000) DEFAULT NULL,
  `subdistrict_id` int DEFAULT NULL,
  `responsible` int DEFAULT NULL,
  `latitude` varchar(45) DEFAULT NULL,
  `longitude` varchar(45) DEFAULT NULL,
  `document` varchar(45) DEFAULT NULL,
  `statusproject_id` int DEFAULT NULL,
  `approve_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `respon_idx` (`responsible`),
  KEY `sd_idx` (`subdistrict_id`),
  KEY `status_idx` (`statusproject_id`),
  KEY `app_idx` (`approve_id`),
  CONSTRAINT `app` FOREIGN KEY (`approve_id`) REFERENCES `approve` (`idapprove`),
  CONSTRAINT `respon` FOREIGN KEY (`responsible`) REFERENCES `loginuser` (`id`),
  CONSTRAINT `sd` FOREIGN KEY (`subdistrict_id`) REFERENCES `subdistrict` (`id`),
  CONSTRAINT `status` FOREIGN KEY (`statusproject_id`) REFERENCES `statusproject` (`idstatusproject`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (53,'ก่อสร้างถนนคอนกรีตเสริมเหล็ก \r\nสายทาง ชร.ถ.1-0098 บ้านเจียงจาใส - \r\nบ้านสามสูง เชื่อมระหว่าง ม.11 \r\nต.แม่สลองนอก - ม.28 ต.แม่สลองใน \r\nอ.แม่ฟ้าหลวง จ.เชียงราย','ตัวอย่าง','ขนาดกว้าง 5.00 ม. ยาวรวม 230.00 ม. หรือพื้นที่ไม่น้อยกว่า 1,150.00 ตร.ม. หนา 0.15 ม.','จำนวนประชากร 1,935 คน\r\nจำนวนครัวเรือน 384 ครัวเรือน','01/01/2568','30/09/2568','','','สายทาง ชร.ถ.1-0098 บ้านเจียงจาใส - \r\nบ้านสามสูง เชื่อมระหว่าง ม.11 \r\nต.แม่สลองนอก - ม.28 ต.แม่สลองใน \r\nอ.แม่ฟ้าหลวง จ.เชียงราย',106,31,'19.930387','99.859586',NULL,NULL,NULL),(54,'ก่อสร้างท่อลอดเหลี่ยมคอนกรีต\r\nเสริมเหล็ก สายทาง ชร.ถ.1-0066 \r\nบ้านแม่มอญ - บ้านฝั่งหมิ่น เชื่อมระหว่าง\r\nม.1 ต.บัวสลี อ.แม่ลาว - ม.7 ต.แม่กรณ์ \r\nอ.เมือง จ.เชียงราย','ตัวอย่าง','ขนาดหนึ่งช่อง (ขนาด 1.80x1.80 ม.) \r\nยาว 15.00 ม.','สันทราย','27/05/2568','25/12/2568','','','สายทาง ชร.ถ.1-0066 \r\nบ้านแม่มอญ - บ้านฝั่งหมิ่น เชื่อมระหว่าง\r\nม.1 ต.บัวสลี อ.แม่ลาว - ม.7 ต.แม่กรณ์ \r\nอ.เมือง จ.เชียงราย',25,31,'19.928572','99.860959',NULL,NULL,NULL);
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

-- Dump completed on 2025-12-18 14:33:32
