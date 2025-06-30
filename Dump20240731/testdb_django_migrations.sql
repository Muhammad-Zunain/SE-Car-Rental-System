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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-06-25 20:34:10.245649'),(2,'contenttypes','0002_remove_content_type_name','2024-06-25 20:34:10.348932'),(3,'auth','0001_initial','2024-06-25 20:34:10.770367'),(4,'auth','0002_alter_permission_name_max_length','2024-06-25 20:34:10.883812'),(5,'auth','0003_alter_user_email_max_length','2024-06-25 20:34:10.892270'),(6,'auth','0004_alter_user_username_opts','2024-06-25 20:34:10.899130'),(7,'auth','0005_alter_user_last_login_null','2024-06-25 20:34:10.904181'),(8,'auth','0006_require_contenttypes_0002','2024-06-25 20:34:10.907415'),(9,'auth','0007_alter_validators_add_error_messages','2024-06-25 20:34:10.913417'),(10,'auth','0008_alter_user_username_max_length','2024-06-25 20:34:10.918416'),(11,'auth','0009_alter_user_last_name_max_length','2024-06-25 20:34:10.924923'),(12,'auth','0010_alter_group_name_max_length','2024-06-25 20:34:10.940043'),(13,'auth','0011_update_proxy_permissions','2024-06-25 20:34:10.946452'),(14,'auth','0012_alter_user_first_name_max_length','2024-06-25 20:34:10.951699'),(15,'car_rental_app','0001_initial','2024-06-25 20:34:12.513026'),(16,'admin','0001_initial','2024-06-25 20:34:12.744703'),(17,'admin','0002_logentry_remove_auto_add','2024-06-25 20:34:12.755271'),(18,'admin','0003_logentry_add_action_flag_choices','2024-06-25 20:34:12.765775'),(19,'sessions','0001_initial','2024-06-25 20:34:12.818514'),(20,'car_rental_app','0002_alter_user_address_alter_user_phone','2024-06-26 05:18:03.642008'),(21,'car_rental_app','0003_alter_transmission_description','2024-06-28 13:20:21.416427'),(22,'car_rental_app','0004_alter_category_options_alter_rentalstatus_options_and_more','2024-06-28 19:10:46.650734'),(23,'car_rental_app','0005_fueltype_remove_car_category_remove_car_model_and_more','2024-06-29 05:49:41.746089'),(24,'car_rental_app','0006_alter_carmodel_category_alter_carvariant_model_and_more','2024-06-29 07:29:31.494250'),(25,'car_rental_app','0007_remove_carvariant_year_carmodel_year','2024-06-29 07:42:39.179005'),(26,'car_rental_app','0008_remove_car_mileage_carvariant_mileage_and_more','2024-06-29 10:45:24.009267'),(27,'car_rental_app','0009_alter_car_color','2024-06-29 21:00:08.902101'),(28,'car_rental_app','0010_alter_car_price_per_day','2024-06-30 07:04:51.114067'),(29,'car_rental_app','0011_alter_carvariant_engine','2024-06-30 07:07:07.444583'),(30,'car_rental_app','0012_remove_carimage_is_main_car_main_image','2024-06-30 07:35:25.271959'),(31,'car_rental_app','0013_remove_user_firstname_remove_user_lastname_and_more','2024-06-30 11:23:08.103680'),(32,'car_rental_app','0002_alter_category_options_alter_rentalstatus_options_and_more','2024-07-04 19:33:30.736224'),(33,'car_rental_app','0002_alter_review_rental','2024-07-09 20:45:33.139108'),(34,'car_rental_app','0003_remove_category_description_and_more','2024-07-09 22:05:13.630922'),(35,'car_rental_app','0004_alter_car_main_image','2024-07-09 22:16:04.097532'),(36,'car_rental_app','0005_remove_car_availability','2024-07-10 05:25:42.305911');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
