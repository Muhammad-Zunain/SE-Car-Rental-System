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
-- Table structure for table `car_rental_app_carvariant`
--

DROP TABLE IF EXISTS `car_rental_app_carvariant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_rental_app_carvariant` (
  `variant_id` int NOT NULL AUTO_INCREMENT,
  `engine` int NOT NULL,
  `horsepower` int NOT NULL,
  `model_id` int DEFAULT NULL,
  `transmission_id` int DEFAULT NULL,
  `fuel_type_id` int DEFAULT NULL,
  `mileage` double DEFAULT NULL,
  `variant_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`variant_id`),
  KEY `car_rental_app_carva_model_id_9c79db7c_fk_car_renta` (`model_id`),
  KEY `car_rental_app_carva_transmission_id_860ecaff_fk_car_renta` (`transmission_id`),
  KEY `car_rental_app_carva_fuel_type_id_6ce1b452_fk_car_renta` (`fuel_type_id`),
  CONSTRAINT `car_rental_app_carva_fuel_type_id_6ce1b452_fk_car_renta` FOREIGN KEY (`fuel_type_id`) REFERENCES `car_rental_app_fueltype` (`fuel_id`),
  CONSTRAINT `car_rental_app_carva_model_id_9c79db7c_fk_car_renta` FOREIGN KEY (`model_id`) REFERENCES `car_rental_app_carmodel` (`model_id`),
  CONSTRAINT `car_rental_app_carva_transmission_id_860ecaff_fk_car_renta` FOREIGN KEY (`transmission_id`) REFERENCES `car_rental_app_transmission` (`transmission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_rental_app_carvariant`
--

LOCK TABLES `car_rental_app_carvariant` WRITE;
/*!40000 ALTER TABLE `car_rental_app_carvariant` DISABLE KEYS */;
INSERT INTO `car_rental_app_carvariant` VALUES (4,1498,127,1,2,1,11,'Standard'),(5,998,67,4,1,1,16,'VXL'),(6,998,67,4,2,1,16,'AGS'),(7,1200,90,5,1,1,14,'GL Manual'),(8,1200,90,5,2,1,14,'GL CVT'),(9,1373,91,6,1,1,14,'Manual'),(10,1373,91,6,2,1,14,'Automatic'),(11,658,39,7,1,1,18,'VXR'),(12,658,39,7,2,1,18,'VXL AGS'),(13,658,51,16,1,1,18,'G'),(14,658,62,16,1,1,17,'G Turbo'),(15,1586,115,8,2,1,13,'GL+ 1.6'),(16,1586,118,8,2,1,13,'GLX 1.6'),(17,1199,88,2,2,1,13,'1.2L CVT'),(18,1497,118,2,1,1,13,'1.5L Aspire MT'),(19,1498,180,3,2,1,12,'1.5 VTEC Turbo'),(20,1497,120,13,2,1,11,'CVT S'),(21,1598,120,10,1,1,12,'Altis X Manual 1.6'),(22,1798,138,9,2,1,12,'Altis X CVT-i 1.8');
/*!40000 ALTER TABLE `car_rental_app_carvariant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-31  1:19:46
