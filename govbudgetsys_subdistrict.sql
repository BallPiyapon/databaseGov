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
-- Table structure for table `subdistrict`
--

DROP TABLE IF EXISTS `subdistrict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subdistrict` (
  `id` int NOT NULL AUTO_INCREMENT,
  `SDname` varchar(45) DEFAULT NULL,
  `district_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `district_id_idx` (`district_id`),
  CONSTRAINT `district_id` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subdistrict`
--

LOCK TABLES `subdistrict` WRITE;
/*!40000 ALTER TABLE `subdistrict` DISABLE KEYS */;
INSERT INTO `subdistrict` VALUES (2,'เวียง',1),(3,'รอบเวียง',1),(4,'บ้านดู่',1),(5,'นางแล',1),(6,'แม่ข้าวต้ม',1),(7,'แม่ยาว',1),(8,'สันทราย',1),(9,'แม่กรณ์',1),(10,'ห้วยชมภู',1),(11,'ห้วยสัก',1),(12,'ริมกก',1),(13,'ดอยลาน',1),(14,'ป่าอ้อดอนชัย',1),(15,'ท่าสาย',1),(16,'ดอยฮาง',1),(17,'ท่าสุด',1),(18,'เวียงชัย',5),(19,'ผางาม',5),(20,'เวียงเหนือ',5),(21,'ดอนศิลา',5),(22,'เมืองชุม',5),(23,'ดงมะดะ',6),(24,'จอมหมอกแก้ว',6),(25,'บัวสลี',6),(26,'ป่าก่อดำ',6),(27,'โป่งแพร่',6),(28,'แม่จัน',7),(29,'จันจว้า',7),(30,'แม่คำ',7),(31,'ป่าซาง',7),(32,'สันทราย',7),(33,'ท่าข้าวเปลือก',7),(34,'ป่าตึง',7),(35,'แม่ไร่',7),(36,'ศรีค้ำ',7),(37,'จันจว้าใต้',7),(38,'จอมสวรรค์',7),(39,'ปงน้อย',8),(40,'โชคชัย',8),(41,'หนองป่าก่อ',8),(42,'สันมะเค็ด',9),(43,'แม่อ้อ',9),(44,'ธารทอง',9),(45,'สันติสุข',9),(46,'ดอยงาม',9),(47,'หัวง้ม',9),(48,'เจริญเมือง',9),(49,'ป่าหุ่ง',9),(50,'ม่วงคำ',9),(51,'ทรายขาว',9),(52,'สันกลาง',9),(53,'แม่เย็น',9),(54,'เมืองพาน',9),(55,'ทานตะวัน',9),(56,'เวียงห้าว',9),(57,'แม่เปา',10),(58,'แม่ต๋ำ',10),(59,'ไม้ยา',10),(60,'	เม็งราย',10),(61,'ตาดควัน',10),(62,'ทุ่งก่อ',11),(63,'ดงมหาวัน',11),(64,'ป่าซาง',11),(65,'ป่าแดด',12),(66,'ป่าแงะ',12),(67,'สันมะค่า',12),(68,'โรงช้าง',12),(69,'ศรีโพธิ์เงิน',12),(70,'แม่สรวย',13),(71,'ป่าแดด',13),(72,'แม่พริก',13),(73,'ศรีถ้อย',13),(74,'ท่าก๊อ',13),(75,'วาวี',13),(76,'เจดีย์หลวง',13),(77,'เวียง',14),(78,'ป่าสัก',14),(79,'บ้านแซว',14),(80,'ศรีดอนมูล',14),(81,'แม่เงิน',14),(82,'โยนก',14),(83,'ต้า',15),(84,'ป่าตาล',15),(85,'ยางฮอม',15),(86,'แม่สาย',16),(87,'ห้วยไคร้',16),(88,'เกาะช้าง',16),(89,'โป่งผา',16),(90,'ศรีเมืองชุม',16),(91,'เวียงพางคำ',16),(92,'บ้านด้าย',16),(93,'โป่งงาม',16),(94,'เวียง',17),(95,'งิ้ว',17),(96,'ปล้อง',17),(97,'แม่ลอย',17),(98,'เชียงเคี่ยน',17),(99,'ตับเต่า',17),(100,'หงาว',17),(101,'สันทรายงาม',17),(102,'ศรีดอนไชย',17),(103,'หนองแรด',17),(104,'เทอดไทย',18),(105,'แม่สลองใน',18),(106,'แม่สลองนอก',18),(107,'แม่ฟ้าหลวง',18),(108,'สันสลี',19),(109,'เวียง',19),(110,'บ้านโป่ง',19),(111,'ป่างิ้ว',19),(112,'เวียงกาหลง',19),(113,'แม่เจดีย์',19),(114,'แม่เจดีย์ใหม่',19),(115,'ม่วงยาย',20),(116,'ปอ',20),(117,'หล่ายงาว',20),(118,'ท่าข้าม',20),(119,'เวียง',21),(120,'สถาน',21),(121,'ครึ่ง',21),(122,'บุญเรือง',21),(123,'ห้วยซ้อ',21),(124,'ศรีดอนชัย',21),(125,'ริมโขง',21);
/*!40000 ALTER TABLE `subdistrict` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-24 10:06:47
