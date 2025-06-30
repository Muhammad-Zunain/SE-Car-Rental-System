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
-- Table structure for table `car_rental_app_car`
--

DROP TABLE IF EXISTS `car_rental_app_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_rental_app_car` (
  `car_id` int NOT NULL AUTO_INCREMENT,
  `color` varchar(50) NOT NULL,
  `price_per_day` int NOT NULL,
  `license_number` varchar(15) NOT NULL,
  `variant_id` int DEFAULT NULL,
  `main_image_id` int DEFAULT NULL,
  PRIMARY KEY (`car_id`),
  KEY `car_rental_app_car_variant_id_87c5995d_fk_car_renta` (`variant_id`),
  KEY `car_rental_app_car_main_image_id_3511ea8d_fk_car_renta` (`main_image_id`),
  CONSTRAINT `car_rental_app_car_main_image_id_3511ea8d_fk_car_renta` FOREIGN KEY (`main_image_id`) REFERENCES `car_rental_app_carimage` (`image_id`),
  CONSTRAINT `car_rental_app_car_variant_id_87c5995d_fk_car_renta` FOREIGN KEY (`variant_id`) REFERENCES `car_rental_app_carvariant` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_rental_app_car`
--

LOCK TABLES `car_rental_app_car` WRITE;
/*!40000 ALTER TABLE `car_rental_app_car` DISABLE KEYS */;
INSERT INTO `car_rental_app_car` VALUES (1,'Rallye Red',5000,'ABC123',4,1),(3,'Cerulean Blue',4600,'EFG789',5,4),(4,'White',2000,'ABC321',21,9),(5,'Pheonix Red',6000,'PQR123',8,15),(6,'Brown',8000,'XYZ234',9,16),(7,'Orange',4000,'RST678',14,20),(8,'White',4500,'FGH678',18,24),(9,'White',8000,'BOP345',20,28);
/*!40000 ALTER TABLE `car_rental_app_car` ENABLE KEYS */;
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
