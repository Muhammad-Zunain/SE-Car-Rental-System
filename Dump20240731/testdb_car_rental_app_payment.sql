-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: testdb
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
-- Table structure for table `car_rental_app_payment`
--

DROP TABLE IF EXISTS `car_rental_app_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_rental_app_payment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(50) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `payment_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `rental_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `car_rental_app_payme_rental_id_421d182f_fk_car_renta` (`rental_id`),
  CONSTRAINT `car_rental_app_payme_rental_id_421d182f_fk_car_renta` FOREIGN KEY (`rental_id`) REFERENCES `car_rental_app_rental` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_rental_app_payment`
--

LOCK TABLES `car_rental_app_payment` WRITE;
/*!40000 ALTER TABLE `car_rental_app_payment` DISABLE KEYS */;
INSERT INTO `car_rental_app_payment` VALUES (7,'Advance','Online','2024-07-09',0.00,14),(8,'Advance','Online','2024-07-09',0.00,15),(9,'Advance','Online','2024-07-09',0.00,16),(10,'Advance','Online','2024-07-09',0.00,17),(11,'Advance','Online','2024-07-10',0.00,18),(12,'Advance','Online','2024-07-10',0.00,19),(13,'Advance','Online','2024-07-10',0.00,23),(14,'Advance','Online','2024-07-10',0.00,24),(15,'Advance','Online','2024-07-10',0.00,25),(16,'Advance','Online','2024-07-10',36000.00,30),(17,'Advance','Online','2024-07-10',16000.00,33),(18,'Advance','Online','2024-07-10',32200.00,34);
/*!40000 ALTER TABLE `car_rental_app_payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-31  1:19:47
