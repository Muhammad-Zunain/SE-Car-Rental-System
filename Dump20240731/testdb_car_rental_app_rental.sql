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
-- Table structure for table `car_rental_app_rental`
--

DROP TABLE IF EXISTS `car_rental_app_rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_rental_app_rental` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `booking_date` date NOT NULL,
  `pickup_date` date NOT NULL,
  `drop_date` date NOT NULL,
  `total_cost` decimal(10,2) NOT NULL,
  `car_id` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `car_rental_app_rental_car_id_pickup_date_0d22307e_uniq` (`car_id`,`pickup_date`),
  KEY `car_rental_app_rental_user_id_c169e1e2_fk_car_rental_app_user_id` (`user_id`),
  KEY `car_rental_app_renta_status_id_57b927ff_fk_car_renta` (`status_id`),
  CONSTRAINT `car_rental_app_renta_car_id_c7d8bbf5_fk_car_renta` FOREIGN KEY (`car_id`) REFERENCES `car_rental_app_car` (`car_id`),
  CONSTRAINT `car_rental_app_renta_status_id_57b927ff_fk_car_renta` FOREIGN KEY (`status_id`) REFERENCES `car_rental_app_rentalstatus` (`status_id`),
  CONSTRAINT `car_rental_app_rental_user_id_c169e1e2_fk_car_rental_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `car_rental_app_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_rental_app_rental`
--

LOCK TABLES `car_rental_app_rental` WRITE;
/*!40000 ALTER TABLE `car_rental_app_rental` DISABLE KEYS */;
INSERT INTO `car_rental_app_rental` VALUES (14,'2024-07-09','2024-07-10','2024-07-24',0.00,1,43,1),(15,'2024-07-09','2024-07-26','2024-07-31',0.00,1,43,4),(16,'2024-07-09','2024-07-11','2024-07-26',0.00,1,43,1),(17,'2024-07-09','2024-07-25','2024-07-26',0.00,1,43,4),(18,'2024-07-10','2024-08-21','2024-10-31',0.00,1,43,2),(19,'2024-07-10','2024-07-17','2024-07-18',0.00,1,1,1),(23,'2024-07-10','2024-07-30','2024-07-31',0.00,1,1,1),(24,'2024-07-10','2024-07-29','2024-07-31',0.00,1,43,2),(25,'2024-07-10','2024-07-28','2024-07-29',0.00,1,43,1),(30,'2024-07-10','2024-07-11','2024-07-20',36000.00,7,1,1),(31,'2024-07-01','2024-07-02','2024-07-05',15000.00,1,45,4),(32,'2024-07-04','2024-07-05','2024-07-07',8000.00,7,45,2),(33,'2024-07-10','2024-07-11','2024-07-13',16000.00,9,47,4),(34,'2024-07-10','2024-07-23','2024-07-30',32200.00,3,45,4);
/*!40000 ALTER TABLE `car_rental_app_rental` ENABLE KEYS */;
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
