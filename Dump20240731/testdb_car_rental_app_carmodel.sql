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
-- Table structure for table `car_rental_app_carmodel`
--

DROP TABLE IF EXISTS `car_rental_app_carmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_rental_app_carmodel` (
  `model_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `manufacturer` varchar(50) NOT NULL,
  `category_id` int DEFAULT NULL,
  `seating_capacity` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  PRIMARY KEY (`model_id`),
  KEY `car_rental_app_carmo_category_id_f2666910_fk_car_renta` (`category_id`),
  CONSTRAINT `car_rental_app_carmo_category_id_f2666910_fk_car_renta` FOREIGN KEY (`category_id`) REFERENCES `car_rental_app_category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_rental_app_carmodel`
--

LOCK TABLES `car_rental_app_carmodel` WRITE;
/*!40000 ALTER TABLE `car_rental_app_carmodel` DISABLE KEYS */;
INSERT INTO `car_rental_app_carmodel` VALUES (1,'Civic','Honda',2,5,2023),(2,'City','Honda',2,5,2024),(3,'Accord','Honda',2,5,2022),(4,'Cultus','Suzuki',1,5,2023),(5,'Swift','Suzuki',1,5,2024),(6,'Ciaz','Suzuki',2,5,2024),(7,'Alto','Suzuki',1,4,2024),(8,'Vitara','Suzuki',3,5,2024),(9,'Corolla','Toyota',2,5,2024),(10,'Yaris','Toyota',2,5,2023),(11,'Camry','Toyota',2,5,2023),(12,'Vitz','Toyota',1,5,2024),(13,'BR-V','Honda',3,7,2022),(14,'Picanto','Kia',1,5,2024),(15,'Grand Carnival','Kia',3,11,2024),(16,'Hustler','Suzuki',1,4,2024),(17,'Oshan X7','Changan',3,7,2024),(18,'Alsvin','Changan',2,5,2024),(19,'Sonata','Hyundai',2,5,2024),(20,'Elantra','Hyundai',2,5,2024),(21,'Tucson','Hyundai',3,5,2024);
/*!40000 ALTER TABLE `car_rental_app_carmodel` ENABLE KEYS */;
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
