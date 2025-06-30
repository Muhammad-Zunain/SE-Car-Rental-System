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
-- Table structure for table `car_rental_app_user`
--

DROP TABLE IF EXISTS `car_rental_app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_rental_app_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `user_type_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `car_rental_app_user_user_type_id_e2a7f575_fk_car_renta` (`user_type_id`),
  CONSTRAINT `car_rental_app_user_user_type_id_e2a7f575_fk_car_renta` FOREIGN KEY (`user_type_id`) REFERENCES `car_rental_app_usertype` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_rental_app_user`
--

LOCK TABLES `car_rental_app_user` WRITE;
/*!40000 ALTER TABLE `car_rental_app_user` DISABLE KEYS */;
INSERT INTO `car_rental_app_user` VALUES (1,'pbkdf2_sha256$720000$G4wWPFlHbXjnfWeJx2naK8$RIoBg6QRKy8SjfJWHqAXvRKMO4/YU7Y7SJ+vbeWYqec=','2024-07-12 06:02:07.712144',1,'Usman','Faizyab Khan',1,1,'2024-06-25 20:34:48.000000','usmanfaizyab@gmail.com','Flat # L-1112, Sohni Golf View Apartments, Gulshan-e-Roomi','2312312312',2),(43,'pbkdf2_sha256$720000$0gegAowh15LiN9RxWZteCK$MYclK9X8JN5f0UOgBBp7TxkfHlXdikg/VK/mK2MUSVo=','2024-07-12 07:39:38.248367',0,'Muhammad','Zunain',0,1,'2024-07-09 07:35:52.000000','zunain@gmail.com','Flat # L-1112, Sohni Golf View Apartments, Gulshan-e-Roomi','3311111111',1),(45,'pbkdf2_sha256$720000$UEEFjCyqNqQnTQTOIluFVA$ArVfEQM29bWCwhhdo3cT/TMq34scaSurOvDttIok2Iw=','2024-07-12 06:00:50.390194',0,'Abdul','Basit',0,1,'2024-07-09 12:01:57.000000','abdulbasit@gmail.com','Flat # L-1112, Sohni Golf View Apartment','3368522620',1),(46,'pbkdf2_sha256$720000$903EOuVkLiLyiYIxdjVha7$CbJnP26uBAumI7eTZ8tVQ6tWgnWMEC6SeONEmQF0cus=','2024-07-10 07:27:10.484006',0,'Ayan','Khan',0,1,'2024-07-10 07:27:09.267351','ayankhan@gmail.com','','',1),(47,'pbkdf2_sha256$720000$K84Lvls6jgrJSAoMhJXGhg$iRyL4MPAAjeuTbzfFRQZ4KYuh35c5fF+1ySHuwEICdM=','2024-07-12 05:38:09.295339',0,'Ayan','khan',0,1,'2024-07-10 07:50:48.863558','ayan@gmail.com','B-55 Shah Faisal Town','3412073063',1),(48,'pbkdf2_sha256$720000$QO4gv2xSNANbNC6O1bvhsw$sY4I1l3PRGpH6xzemcFQvCGtrXeQzCOVr7aay3LPzQ4=','2024-07-12 05:31:58.399412',0,'z','m',0,1,'2024-07-12 05:31:36.703905','zm@gmail.com','','',1);
/*!40000 ALTER TABLE `car_rental_app_user` ENABLE KEYS */;
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
