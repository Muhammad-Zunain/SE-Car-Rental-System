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
-- Table structure for table `car_rental_app_carimage`
--

DROP TABLE IF EXISTS `car_rental_app_carimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_rental_app_carimage` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `car_id` int NOT NULL,
  PRIMARY KEY (`image_id`),
  KEY `car_rental_app_carim_car_id_75679db3_fk_car_renta` (`car_id`),
  CONSTRAINT `car_rental_app_carim_car_id_75679db3_fk_car_renta` FOREIGN KEY (`car_id`) REFERENCES `car_rental_app_car` (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_rental_app_carimage`
--

LOCK TABLES `car_rental_app_carimage` WRITE;
/*!40000 ALTER TABLE `car_rental_app_carimage` DISABLE KEYS */;
INSERT INTO `car_rental_app_carimage` VALUES (1,'car_images/Honda_Civic_Standard_Rallye_Red_1.jpg',1),(4,'car_images/suzuki_cultus_2023_blue_1.png',3),(5,'car_images/Honda_Civic_Standard_Rallye_Red_1_WWg4oM5.jpg',1),(6,'car_images/Honda_civic_interior.jpg',1),(7,'car_images/Honda_Civic_back.jpg',1),(8,'car_images/Toyota_yaris_1.jpg',4),(9,'car_images/Toyota_yaris_2.jpg',4),(10,'car_images/Toyota_yaris_3.jpg',4),(11,'car_images/Toyota_yaris_4.jpg',4),(13,'car_images/suzuki_swift_2.webp',5),(14,'car_images/suzuki_swift_3.jpg',5),(15,'car_images/swift.jpg',5),(16,'car_images/Suzuki_Ciaz_1.jpg',6),(17,'car_images/Suzuki_Ciaz_2017_2.jpg',6),(18,'car_images/suzuki_ciaz_3.jpg',6),(19,'car_images/Suzuki_Ciaz_4.jpg',6),(20,'car_images/Suzuki_Hustler_2017_1.jpg',7),(21,'car_images/Suzuki_Hustler_2.jpg',7),(22,'car_images/su.jpg',7),(23,'car_images/hustler.jpg',7),(24,'car_images/honda_city_1.jpg',8),(25,'car_images/honda_city_2.jpg',8),(26,'car_images/honda_city_3.jpg',8),(27,'car_images/honda_city_interior.jpg',8),(28,'car_images/brv_1.webp',9),(29,'car_images/brv_2.jpg',9),(30,'car_images/brv3.jpg',9),(31,'car_images/brv4.jpeg',9);
/*!40000 ALTER TABLE `car_rental_app_carimage` ENABLE KEYS */;
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
