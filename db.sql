-- MySQL dump 10.13  Distrib 8.0.30, for macos12.4 (arm64)
--
-- Host: localhost    Database: nike
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'ACG'),(2,'나이키 스포츠웨어'),(3,'조던');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_option_id` int NOT NULL,
  `user_id` int NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_option_id` (`product_option_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`product_option_id`) REFERENCES `product_options` (`id`),
  CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,2,1,1,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(2,96,2,2,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(3,101,3,1,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(4,107,4,2,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(5,111,5,1,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(6,206,6,2,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(7,225,7,1,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(8,225,1,2,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(9,294,2,1,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(10,348,3,2,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(11,390,4,1,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(12,395,5,2,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(13,413,6,1,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(14,413,7,2,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(15,348,1,1,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(16,293,2,2,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(17,456,3,1,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(18,447,4,2,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(19,6,5,1,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(20,69,6,2,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(21,93,7,1,'2022-09-22 11:54:59','2022-09-22 11:54:59');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `color` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'beige'),(2,'black'),(3,'blue'),(4,'brown'),(5,'white'),(6,'gray'),(7,'red'),(8,'yellow'),(9,'navy'),(10,'orange'),(11,'pink'),(12,'purple');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_url` varchar(1000) NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/921826-101_1.jpg',1),(2,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/921826-101_2.jpg',1),(3,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/921826-101_3.jpg',1),(4,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/921826-101_4.jpg',1),(5,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/921826-101_5.jpg',1),(6,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/921826-101_6.jpg',1),(7,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/921826-001_1.jpg',2),(8,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/921826-001_2.jpg',2),(9,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/921826-001_3.jpg',2),(10,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/921826-001_4.jpg',2),(11,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/921826-001_5.jpg',2),(12,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/921826-001_6.jpg',2),(13,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-180_1.jpg',3),(14,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-180_2.jpg',3),(15,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-180_3.jpg',3),(16,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-180_4.jpg',3),(17,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-180_5.jpg',3),(18,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-180_6.jpg',3),(19,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-037_1.jpg',4),(20,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-037_2.jpg',4),(21,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-037_3.jpg',4),(22,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-037_4.jpg',4),(23,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-037_5.jpg',4),(24,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-037_6.jpg',4),(25,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-161_1.jpg',5),(26,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-161_2.jpg',5),(27,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-161_3.jpg',5),(28,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-161_4.jpg',5),(29,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-161_5.jpg',5),(30,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-161_6.jpg',5),(31,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-202_1.jpg',6),(32,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-202_2.jpg',6),(33,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-202_3.jpg',6),(34,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-202_4.jpg',6),(35,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-202_5.jpg',6),(36,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-202_6.jpg',6),(37,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-404_1.jpg',7),(38,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-404_2.jpg',7),(39,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-404_3.jpg',7),(40,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-404_4.jpg',7),(41,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-404_5.jpg',7),(42,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-404_6.jpg',7),(43,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-603_1.jpg',8),(44,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-603_2.jpg',8),(45,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-603_3.jpg',8),(46,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-603_4.jpg',8),(47,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-603_5.jpg',8),(48,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-603_6.jpg',8),(49,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-702_1.jpg',9),(50,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-702_2.jpg',9),(51,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-702_3.jpg',9),(52,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-702_4.jpg',9),(53,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-702_5.jpg',9),(54,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-702_6.jpg',9),(55,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-706_1.jpg',10),(56,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-706_2.jpg',10),(57,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-706_3.jpg',10),(58,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-706_4.jpg',10),(59,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-706_5.jpg',10),(60,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-706_6.jpg',10),(61,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-711_1.jpg',11),(62,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-711_2.jpg',11),(63,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-711_3.jpg',11),(64,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-711_4.jpg',11),(65,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-711_5.jpg',11),(66,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-711_6.jpg',11),(67,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-100_1.jpg',12),(68,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-100_2.jpg',12),(69,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-100_3.jpg',12),(70,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-100_4.jpg',12),(71,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-100_5.jpg',12),(72,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-100_6.jpg',12),(73,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-102_1.jpg',13),(74,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-102_2.jpg',13),(75,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-102_3.jpg',13),(76,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-102_4.jpg',13),(77,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-102_5.jpg',13),(78,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-102_6.jpg',13),(79,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-200_1.jpg',14),(80,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-200_2.jpg',14),(81,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-200_3.jpg',14),(82,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-200_4.jpg',14),(83,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-200_5.jpg',14),(84,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-200_6.jpg',14),(85,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM6443-001_1.jpg',15),(86,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM6443-001_2.jpg',15),(87,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM6443-001_3.jpg',15),(88,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM6443-001_4.jpg',15),(89,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM6443-001_5.jpg',15),(90,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM6443-001_6.jpg',15),(91,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/848386-001_1.jpg',16),(92,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/848386-001_2.jpg',16),(93,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/848386-001_3.jpg',16),(94,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/848386-001_4.jpg',16),(95,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/848386-001_5.jpg',16),(96,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/848386-001_6.jpg',16),(97,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM0028-400_1.jpg',17),(98,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM0028-400_2.jpg',17),(99,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM0028-400_3.jpg',17),(100,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM0028-400_4.jpg',17),(101,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM0028-400_5.jpg',17),(102,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM0028-400_6.jpg',17),(103,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM0028-001_1.jpg',18),(104,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM0028-001_2.jpg',18),(105,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM0028-001_3.jpg',18),(106,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM0028-001_4.jpg',18),(107,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM0028-001_5.jpg',18),(108,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM0028-001_6.jpg',18),(109,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DR1020-400_1.jpg',19),(110,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DR1020-400_2.jpg',19),(111,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DR1020-400_3.jpg',19),(112,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DR1020-400_4.jpg',19),(113,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DR1020-400_5.jpg',19),(114,'https://raw.githubusercontent.com/whrod/1stprojectImages/main/DR1020-400_6.jpg',19);
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_options`
--

DROP TABLE IF EXISTS `product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `size_id` int NOT NULL,
  `color_id` int NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `size_id` (`size_id`),
  KEY `color_id` (`color_id`),
  CONSTRAINT `product_options_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_options_ibfk_2` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`),
  CONSTRAINT `product_options_ibfk_3` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=457 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_options`
--

LOCK TABLES `product_options` WRITE;
/*!40000 ALTER TABLE `product_options` DISABLE KEYS */;
INSERT INTO `product_options` VALUES (1,1,1,5,0),(2,1,2,5,5),(3,1,3,5,20),(4,1,4,5,0),(5,1,5,5,5),(6,1,6,5,20),(7,1,7,5,0),(8,1,8,5,5),(9,1,9,5,20),(10,1,10,5,0),(11,1,11,5,5),(12,1,12,5,20),(13,1,13,5,0),(14,1,14,5,5),(15,1,15,5,20),(16,1,16,5,0),(17,1,17,5,5),(18,1,18,5,20),(19,1,19,5,0),(20,1,20,5,5),(21,1,21,5,20),(22,1,22,5,0),(23,1,23,5,5),(24,1,24,5,20),(25,2,1,2,0),(26,2,2,2,5),(27,2,3,2,20),(28,2,4,2,0),(29,2,5,2,5),(30,2,6,2,20),(31,2,7,2,0),(32,2,8,2,5),(33,2,9,2,20),(34,2,10,2,0),(35,2,11,2,5),(36,2,12,2,20),(37,2,13,2,0),(38,2,14,2,5),(39,2,15,2,20),(40,2,16,2,0),(41,2,17,2,5),(42,2,18,2,20),(43,2,19,2,0),(44,2,20,2,5),(45,2,21,2,20),(46,2,22,2,0),(47,2,23,2,5),(48,2,24,2,20),(49,3,1,10,0),(50,3,2,10,5),(51,3,3,10,20),(52,3,4,10,0),(53,3,5,10,5),(54,3,6,10,20),(55,3,7,10,0),(56,3,8,10,5),(57,3,9,10,20),(58,3,10,10,0),(59,3,11,10,5),(60,3,12,10,20),(61,3,13,10,0),(62,3,14,10,5),(63,3,15,10,20),(64,3,16,10,0),(65,3,17,10,5),(66,3,18,10,20),(67,3,19,10,0),(68,3,20,10,5),(69,3,21,10,20),(70,3,22,10,0),(71,3,23,10,5),(72,3,24,10,20),(73,4,1,6,0),(74,4,2,6,5),(75,4,3,6,20),(76,4,4,6,0),(77,4,5,6,5),(78,4,6,6,20),(79,4,7,6,0),(80,4,8,6,5),(81,4,9,6,20),(82,4,10,6,0),(83,4,11,6,5),(84,4,12,6,20),(85,4,13,6,0),(86,4,14,6,5),(87,4,15,6,20),(88,4,16,6,0),(89,4,17,6,5),(90,4,18,6,20),(91,4,19,6,0),(92,4,20,6,5),(93,4,21,6,20),(94,4,22,6,0),(95,4,23,6,5),(96,4,24,6,20),(97,5,1,7,0),(98,5,2,7,5),(99,5,3,7,20),(100,5,4,7,0),(101,5,5,7,5),(102,5,6,7,20),(103,5,7,7,0),(104,5,8,7,5),(105,5,9,7,20),(106,5,10,7,0),(107,5,11,7,5),(108,5,12,7,20),(109,5,13,7,0),(110,5,14,7,5),(111,5,15,7,20),(112,5,16,7,0),(113,5,17,7,5),(114,5,18,7,20),(115,5,19,7,0),(116,5,20,7,5),(117,5,21,7,20),(118,5,22,7,0),(119,5,23,7,5),(120,5,24,7,20),(121,6,1,1,0),(122,6,2,1,5),(123,6,3,1,20),(124,6,4,1,0),(125,6,5,1,5),(126,6,6,1,20),(127,6,7,1,0),(128,6,8,1,5),(129,6,9,1,20),(130,6,10,1,0),(131,6,11,1,5),(132,6,12,1,20),(133,6,13,1,0),(134,6,14,1,5),(135,6,15,1,20),(136,6,16,1,0),(137,6,17,1,5),(138,6,18,1,20),(139,6,19,1,0),(140,6,20,1,5),(141,6,21,1,20),(142,6,22,1,0),(143,6,23,1,5),(144,6,24,1,20),(145,7,1,3,3),(146,7,2,3,5),(147,7,3,3,20),(148,7,4,3,0),(149,7,5,3,5),(150,7,6,3,20),(151,7,7,3,0),(152,7,8,3,5),(153,7,9,3,20),(154,7,10,3,0),(155,7,11,3,5),(156,7,12,3,20),(157,7,13,3,0),(158,7,14,3,5),(159,7,15,3,20),(160,7,16,3,0),(161,7,17,3,5),(162,7,18,3,20),(163,7,19,3,0),(164,7,20,3,5),(165,7,21,3,20),(166,7,22,3,0),(167,7,23,3,5),(168,7,24,3,20),(169,8,1,11,0),(170,8,2,11,5),(171,8,3,11,20),(172,8,4,11,0),(173,8,5,11,5),(174,8,6,11,20),(175,8,7,11,0),(176,8,8,11,5),(177,8,9,11,20),(178,8,10,11,0),(179,8,11,11,5),(180,8,12,11,20),(181,8,13,11,0),(182,8,14,11,5),(183,8,15,11,20),(184,8,16,11,0),(185,8,17,11,5),(186,8,18,11,20),(187,8,19,11,0),(188,8,20,11,5),(189,8,21,11,20),(190,8,22,11,0),(191,8,23,11,5),(192,8,24,11,20),(193,9,1,8,0),(194,9,2,8,5),(195,9,3,8,20),(196,9,4,8,0),(197,9,5,8,5),(198,9,6,8,20),(199,9,7,8,0),(200,9,8,8,5),(201,9,9,8,20),(202,9,10,8,0),(203,9,11,8,5),(204,9,12,8,20),(205,9,13,8,0),(206,9,14,8,5),(207,9,15,8,20),(208,9,16,8,0),(209,9,17,8,5),(210,9,18,8,20),(211,9,19,8,0),(212,9,20,8,5),(213,9,21,8,20),(214,9,22,8,0),(215,9,23,8,5),(216,9,24,8,20),(217,10,1,12,0),(218,10,2,12,5),(219,10,3,12,20),(220,10,4,12,0),(221,10,5,12,5),(222,10,6,12,20),(223,10,7,12,0),(224,10,8,12,5),(225,10,9,12,20),(226,10,10,12,0),(227,10,11,12,5),(228,10,12,12,20),(229,10,13,12,0),(230,10,14,12,5),(231,10,15,12,20),(232,10,16,12,0),(233,10,17,12,5),(234,10,18,12,20),(235,10,19,12,0),(236,10,20,12,5),(237,10,21,12,20),(238,10,22,12,0),(239,10,23,12,5),(240,10,24,12,20),(241,11,1,8,0),(242,11,2,8,5),(243,11,3,8,20),(244,11,4,8,0),(245,11,5,8,5),(246,11,6,8,20),(247,11,7,8,0),(248,11,8,8,5),(249,11,9,8,20),(250,11,10,8,0),(251,11,11,8,5),(252,11,12,8,20),(253,11,13,8,0),(254,11,14,8,5),(255,11,15,8,20),(256,11,16,8,0),(257,11,17,8,5),(258,11,18,8,20),(259,11,19,8,0),(260,11,20,8,5),(261,11,21,8,20),(262,11,22,8,0),(263,11,23,8,5),(264,11,24,8,20),(265,12,1,5,0),(266,12,2,5,5),(267,12,3,5,20),(268,12,4,5,0),(269,12,5,5,5),(270,12,6,5,20),(271,12,7,5,0),(272,12,8,5,5),(273,12,9,5,20),(274,12,10,5,0),(275,12,11,5,5),(276,12,12,5,20),(277,12,13,5,0),(278,12,14,5,5),(279,12,15,5,20),(280,12,16,5,0),(281,12,17,5,5),(282,12,18,5,20),(283,12,19,5,0),(284,12,20,5,5),(285,12,21,5,20),(286,12,22,5,0),(287,12,23,5,5),(288,12,24,5,20),(289,13,1,1,0),(290,13,2,1,5),(291,13,3,1,20),(292,13,4,1,0),(293,13,5,1,5),(294,13,6,1,20),(295,13,7,1,0),(296,13,8,1,5),(297,13,9,1,20),(298,13,10,1,0),(299,13,11,1,5),(300,13,12,1,20),(301,13,13,1,0),(302,13,14,1,5),(303,13,15,1,20),(304,13,16,1,0),(305,13,17,1,5),(306,13,18,1,20),(307,13,19,1,0),(308,13,20,1,5),(309,13,21,1,20),(310,13,22,1,0),(311,13,23,1,5),(312,13,24,1,20),(313,14,1,4,0),(314,14,2,4,5),(315,14,3,4,20),(316,14,4,4,0),(317,14,5,4,5),(318,14,6,4,20),(319,14,7,4,0),(320,14,8,4,5),(321,14,9,4,20),(322,14,10,4,0),(323,14,11,4,5),(324,14,12,4,20),(325,14,13,4,0),(326,14,14,4,5),(327,14,15,4,20),(328,14,16,4,0),(329,14,17,4,5),(330,14,18,4,20),(331,14,19,4,0),(332,14,20,4,5),(333,14,21,4,20),(334,14,22,4,0),(335,14,23,4,5),(336,14,24,4,20),(337,15,1,2,0),(338,15,2,2,5),(339,15,3,2,20),(340,15,4,2,0),(341,15,5,2,5),(342,15,6,2,20),(343,15,7,2,0),(344,15,8,2,5),(345,15,9,2,20),(346,15,10,2,0),(347,15,11,2,5),(348,15,12,2,20),(349,15,13,2,0),(350,15,14,2,5),(351,15,15,2,20),(352,15,16,2,0),(353,15,17,2,5),(354,15,18,2,20),(355,15,19,2,0),(356,15,20,2,5),(357,15,21,2,20),(358,15,22,2,0),(359,15,23,2,5),(360,15,24,2,20),(361,16,1,2,0),(362,16,2,2,5),(363,16,3,2,20),(364,16,4,2,0),(365,16,5,2,5),(366,16,6,2,20),(367,16,7,2,0),(368,16,8,2,5),(369,16,9,2,20),(370,16,10,2,0),(371,16,11,2,5),(372,16,12,2,20),(373,16,13,2,0),(374,16,14,2,5),(375,16,15,2,20),(376,16,16,2,0),(377,16,17,2,5),(378,16,18,2,20),(379,16,19,2,0),(380,16,20,2,5),(381,16,21,2,20),(382,16,22,2,0),(383,16,23,2,5),(384,16,24,2,20),(385,17,1,3,0),(386,17,2,3,5),(387,17,3,3,20),(388,17,4,3,0),(389,17,5,3,5),(390,17,6,3,20),(391,17,7,3,0),(392,17,8,3,5),(393,17,9,3,20),(394,17,10,3,0),(395,17,11,3,5),(396,17,12,3,20),(397,17,13,3,0),(398,17,14,3,5),(399,17,15,3,20),(400,17,16,3,0),(401,17,17,3,5),(402,17,18,3,20),(403,17,19,3,0),(404,17,20,3,5),(405,17,21,3,20),(406,17,22,3,0),(407,17,23,3,5),(408,17,24,3,20),(409,18,1,3,0),(410,18,2,3,5),(411,18,3,3,20),(412,18,4,3,0),(413,18,5,3,5),(414,18,6,3,20),(415,18,7,3,0),(416,18,8,3,5),(417,18,9,3,20),(418,18,10,3,0),(419,18,11,3,5),(420,18,12,3,20),(421,18,13,3,0),(422,18,14,3,5),(423,18,15,3,20),(424,18,16,3,0),(425,18,17,3,5),(426,18,18,3,20),(427,18,19,3,0),(428,18,20,3,5),(429,18,21,3,20),(430,18,22,3,0),(431,18,23,3,5),(432,18,24,3,20),(433,19,1,9,0),(434,19,2,9,5),(435,19,3,9,20),(436,19,4,9,0),(437,19,5,9,5),(438,19,6,9,20),(439,19,7,9,0),(440,19,8,9,5),(441,19,9,9,20),(442,19,10,9,0),(443,19,11,9,5),(444,19,12,9,20),(445,19,13,9,0),(446,19,14,9,5),(447,19,15,9,20),(448,19,16,9,0),(449,19,17,9,5),(450,19,18,9,20),(451,19,19,9,0),(452,19,20,9,5),(453,19,21,9,20),(454,19,22,9,0),(455,19,23,9,5),(456,19,24,9,20);
/*!40000 ALTER TABLE `product_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `style_code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `thumbnail` varchar(1000) NOT NULL,
  `retail_price` decimal(10,0) NOT NULL,
  `discount_price` decimal(10,0) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `release_date` date NOT NULL,
  `brand_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `style_code` (`style_code`),
  KEY `brand_id` (`brand_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'921826-101','나이키 에어맥스 97','https://raw.githubusercontent.com/whrod/1stprojectImages/main/921826-101_1.jpg',199000,179100,'나이키 에어맥스 97 남성용 신발은 에어맥스 97을 유명하게 만든 특유의 물결 라인과 반사체 파이핑, 그리고 발 전체에 적용된 맥스 에어 쿠셔닝과 같은 디테일을 그대로 간직한 디자인으로, 스니커즈 애호가들의 한결같은 사랑을 받고 있습니다.','2022-09-01',2),(2,'921826-001','나이키 에어맥스 97','https://raw.githubusercontent.com/whrod/1stprojectImages/main/921826-001_1.jpg',199000,179100,'나이키 에어맥스 97 남성용 신발은 에어맥스 97을 유명하게 만든 특유의 물결 라인과 반사체 파이핑, 그리고 발 전체에 적용된 맥스 에어 쿠셔닝과 같은 디테일을 그대로 간직한 디자인으로, 스니커즈 애호가들의 한결같은 사랑을 받고 있습니다.','2022-09-02',2),(3,'555088-180','에어 조던 1 레트로 하이 OG','https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-180_1.jpg',199000,NULL,'친숙하지만 늘 새로운 아이콘인 에어 조던 1이 오늘날의 스니커즈 수집 마니아들을 위해 재탄생했습니다. 레트로 하이 OG 버전은 풀그레인 가죽과 편안한 쿠셔닝, 클래식한 디테일이 조화롭게 어우러진 디자인을 완성합니다.','2022-09-03',3),(4,'555088-037','에어 조던 1 레트로 하이 OG','https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-037_1.jpg',209000,NULL,'친숙하지만 늘 새로운 아이콘인 에어 조던 1이 오늘날의 스니커즈 수집 마니아들을 위해 재탄생했습니다. 레트로 하이 OG 버전은 풀그레인 가죽과 편안한 쿠셔닝, 클래식한 디테일이 조화롭게 어우러진 디자인을 완성합니다.','2022-09-04',3),(5,'555088-161','에어 조던 1 레트로 하이 OG','https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-161_1.jpg',209000,167200,'친숙하지만 늘 새로운 아이콘인 에어 조던 1이 오늘날의 스니커즈 수집 마니아들을 위해 재탄생했습니다. 레트로 하이 OG 버전은 풀그레인 가죽과 편안한 쿠셔닝, 클래식한 디테일이 조화롭게 어우러진 디자인을 완성합니다.','2022-09-05',3),(6,'555088-202','에어 조던 1 레트로 하이 OG','https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-202_1.jpg',209000,NULL,'친숙하지만 늘 새로운 아이콘인 에어 조던 1이 오늘날의 스니커즈 수집 마니아들을 위해 재탄생했습니다. 레트로 하이 OG 버전은 풀그레인 가죽과 편안한 쿠셔닝, 클래식한 디테일이 조화롭게 어우러진 디자인을 완성합니다.','2022-09-06',3),(7,'555088-404','에어 조던 1 레트로 하이 OG','https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-404_1.jpg',209000,146300,'친숙하지만 늘 새로운 아이콘인 에어 조던 1이 오늘날의 스니커즈 수집 마니아들을 위해 재탄생했습니다. 레트로 하이 OG 버전은 풀그레인 가죽과 편안한 쿠셔닝, 클래식한 디테일이 조화롭게 어우러진 디자인을 완성합니다.','2022-09-07',3),(8,'555088-603','에어 조던 1 레트로 하이 OG','https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-603_1.jpg',199000,139300,'친숙하지만 늘 새로운 아이콘인 에어 조던 1이 오늘날의 스니커즈 수집 마니아들을 위해 재탄생했습니다. 레트로 하이 OG 버전은 풀그레인 가죽과 편안한 쿠셔닝, 클래식한 디테일이 조화롭게 어우러진 디자인을 완성합니다.','2022-09-08',3),(9,'555088-702','에어 조던 1 레트로 하이 OG','https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-702_1.jpg',209000,NULL,'친숙하지만 늘 새로운 아이콘인 에어 조던 1이 오늘날의 스니커즈 수집 마니아들을 위해 재탄생했습니다. 레트로 하이 OG 버전은 풀그레인 가죽과 편안한 쿠셔닝, 클래식한 디테일이 조화롭게 어우러진 디자인을 완성합니다.','2022-09-09',3),(10,'555088-706','에어 조던 1 레트로 하이 OG','https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-706_1.jpg',209000,135900,'친숙하지만 늘 새로운 아이콘인 에어 조던 1이 오늘날의 스니커즈 수집 마니아들을 위해 재탄생했습니다. 레트로 하이 OG 버전은 풀그레인 가죽과 편안한 쿠셔닝, 클래식한 디테일이 조화롭게 어우러진 디자인을 완성합니다.','2022-09-10',3),(11,'555088-711','에어 조던 1 레트로 하이 OG','https://raw.githubusercontent.com/whrod/1stprojectImages/main/555088-711_1.jpg',209000,NULL,'친숙하지만 늘 새로운 아이콘인 에어 조던 1이 오늘날의 스니커즈 수집 마니아들을 위해 재탄생했습니다. 레트로 하이 OG 버전은 풀그레인 가죽과 편안한 쿠셔닝, 클래식한 디테일이 조화롭게 어우러진 디자인을 완성합니다.','2022-09-11',3),(12,'DA7995-100','나이키 와플 원','https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-100_1.jpg',119000,NULL,'아이코닉한 와플 라인에 새로운 룩을 더하는 나이키 와플 원은 헤리티지 나이키 러닝의 모든 인기 요소와 새로운 혁신이 균형을 이룬 제품입니다. 내구성이 뛰어난 새로운 플라스틱 힐 클립이 에너지를 더하고, 투명한 메쉬와 고급스러운 스웨이드가 조화를 이루며 여름 시즌을 준비합니다. 탄력 있는 새로운 중창에는 클래식한 웨지 실루엣을 그대로 적용했으며, 업데이트된 와플 밑창이 직접 신어보기 전까진 믿기 어려운 수준의 지지력과 접지력을 제공합니다.','2022-09-12',2),(13,'DA7995-102','나이키 와플 원','https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-102_1.jpg',119000,77400,'아이코닉한 와플 라인에 새로운 룩을 더하는 나이키 와플 원은 헤리티지 나이키 러닝의 모든 인기 요소와 새로운 혁신이 균형을 이룬 제품입니다. 내구성이 뛰어난 새로운 플라스틱 힐 클립이 에너지를 더하고, 투명한 메쉬와 고급스러운 스웨이드가 조화를 이루며 여름 시즌을 준비합니다. 탄력 있는 새로운 중창에는 클래식한 웨지 실루엣을 그대로 적용했으며, 업데이트된 와플 밑창이 직접 신어보기 전까진 믿기 어려운 수준의 지지력과 접지력을 제공합니다.','2022-09-13',2),(14,'DA7995-200','나이키 와플 원','https://raw.githubusercontent.com/whrod/1stprojectImages/main/DA7995-200_1.jpg',119000,95200,'아이코닉한 와플 라인에 새로운 룩을 더하는 나이키 와플 원은 헤리티지 나이키 러닝의 모든 인기 요소와 새로운 혁신이 균형을 이룬 제품입니다. 내구성이 뛰어난 새로운 플라스틱 힐 클립이 에너지를 더하고, 투명한 메쉬와 고급스러운 스웨이드가 조화를 이루며 여름 시즌을 준비합니다. 탄력 있는 새로운 중창에는 클래식한 웨지 실루엣을 그대로 적용했으며, 업데이트된 와플 밑창이 직접 신어보기 전까진 믿기 어려운 수준의 지지력과 접지력을 제공합니다.','2022-09-14',2),(15,'DM6443-001','나이키 블레이저 로우 x sacai','https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM6443-001_1.jpg',139000,90400,NULL,'2022-09-15',3),(16,'848386-001','나이키 에어 리프트 브리드','https://raw.githubusercontent.com/whrod/1stprojectImages/main/848386-001_1.jpg',129000,83900,'나이키 에어 리프트 브리드 여성 신발은 스니커·샌들 하이브리드 출시 20주년을 기념하여 나이키 테크 울트라메쉬를 활용해 오리지널을 더 가볍고 시원한 느낌으로 업그레이드하였습니다.','2022-09-16',2),(17,'DM0028-400','나이키 에어맥스 97 OG','https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM0028-400_1.jpg',219000,175200,'나이키 에어맥스 97 OG로 여러분의 스타일을 초스피드로 올려보세요. 물방울과 일본의 고속 열차에서 영감을 받은 아이코닉한 디자인이 돋보입니다. 전체적으로 적용된 나이키 에어 쿠셔닝이 최상의 착화감을 선사합니다.','2022-09-17',2),(18,'DM0028-001','나이키 에어맥스 97 OG','https://raw.githubusercontent.com/whrod/1stprojectImages/main/DM0028-001_1.jpg',219000,NULL,'나이키 에어맥스 97 OG로 여러분의 스타일을 초스피드로 올려보세요. 물방울과 일본의 고속 열차에서 영감을 받은 아이코닉한 디자인이 돋보입니다. 전체적으로 적용된 나이키 에어 쿠셔닝이 최상의 착화감을 선사합니다.','2022-09-18',1),(19,'DR1020-400','나이키 ACG 에어 데슈츠+ SE','https://raw.githubusercontent.com/whrod/1stprojectImages/main/DR1020-400_1.jpg',99000,NULL,NULL,'2022-09-19',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `discount_rate` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (1,'welcomecoupon',20),(2,'birthday',10),(3,'wecode',10),(4,'yunah',35),(5,'kyoungchan',50),(6,'kyunam',80);
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions_users`
--

DROP TABLE IF EXISTS `promotions_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotions_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `promotion_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `promotion_id` (`promotion_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `promotions_users_ibfk_1` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`),
  CONSTRAINT `promotions_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions_users`
--

LOCK TABLES `promotions_users` WRITE;
/*!40000 ALTER TABLE `promotions_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotions_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) NOT NULL,
  `star_score` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'돈이 너무 아까워요.',0,18,7,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(2,'환불하고 싶어요.',1,16,3,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(3,'나이키 퀄리티 시..',2,14,2,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(4,'그냥 그래요.',3,2,8,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(5,'별로에요...',2,5,9,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(6,'너무 마음에 들어요.',5,8,4,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(7,'저한테 꼭 맞아요',5,3,5,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(8,'버렸어요.',0,4,7,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(9,'신발이 좀 작게 나와요',1,11,1,'2022-09-22 11:54:59','2022-09-22 11:54:59'),(10,'키높이 효과가 있어요',2,12,6,'2022-09-22 11:54:59','2022-09-22 11:54:59');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE latin1_bin NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20220920085829'),('20220920090328'),('20220920091019'),('20220920091323'),('20220920091425'),('20220920091851'),('20220920092410'),('20220920092922'),('20220920093344'),('20220920093631'),('20220920094414'),('20220920094642');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `foot_size` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'220'),(2,'225'),(3,'230'),(4,'235'),(5,'240'),(6,'245'),(7,'250'),(8,'255'),(9,'260'),(10,'265'),(11,'270'),(12,'275'),(13,'280'),(14,'285'),(15,'290'),(16,'295'),(17,'300'),(18,'305'),(19,'310'),(20,'320'),(21,'330'),(22,'340'),(23,'350'),(24,'360');
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birth` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'kyoungchan1','조경찬','$2b$10$OW3C6pNJhTxcFHrUZc.4gORGHsNd013FnfkudywNuzvxsNPUK10N2','01011111111','서울시 강남구',1,'2000-01-09','2022-09-22 11:54:59','2022-09-22 11:54:59'),(2,'kyoungchan2','경조찬','$2b$10$OW3C6pNJhTxcFHrUZc.4gORGHsNd013FnfkudywNuzvxsNPUK10N2','01011111112','서울시 강남구',1,'2000-01-15','2022-09-22 11:54:59','2022-09-22 11:54:59'),(3,'kyoungchan3','찬조경','$2b$10$OW3C6pNJhTxcFHrUZc.4gORGHsNd013FnfkudywNuzvxsNPUK10N2','01011111113','서울시 강남구',1,'2000-01-27','2022-09-22 11:54:59','2022-09-22 11:54:59'),(4,'kyunam1','배규남','$2b$10$OW3C6pNJhTxcFHrUZc.4gORGHsNd013FnfkudywNuzvxsNPUK10N2','01011111114','서울시 송파구',1,'2002-08-09','2022-09-22 11:54:59','2022-09-22 11:54:59'),(5,'kyunam2','남규배','$2b$10$OW3C6pNJhTxcFHrUZc.4gORGHsNd013FnfkudywNuzvxsNPUK10N2','01011111115','서울시 송파구',1,'2002-08-15','2022-09-22 11:54:59','2022-09-22 11:54:59'),(6,'kyunam3','규남배','$2b$10$OW3C6pNJhTxcFHrUZc.4gORGHsNd013FnfkudywNuzvxsNPUK10N2','01011111116','서울시 송파구',1,'2002-08-21','2022-09-22 11:54:59','2022-09-22 11:54:59'),(7,'yunah1','정윤아','$2b$10$OW3C6pNJhTxcFHrUZc.4gORGHsNd013FnfkudywNuzvxsNPUK10N2','01011111117','서울시 성북구',0,'2006-08-09','2022-09-22 11:54:59','2022-09-22 11:54:59'),(8,'yunah2','윤정아','$2b$10$OW3C6pNJhTxcFHrUZc.4gORGHsNd013FnfkudywNuzvxsNPUK10N2','01011111118','서울시 성북구',0,'2006-08-15','2022-09-22 11:54:59','2022-09-22 11:54:59'),(9,'yunah3','아윤정','$2b$10$OW3C6pNJhTxcFHrUZc.4gORGHsNd013FnfkudywNuzvxsNPUK10N2','01011111119','서울시 성북구',0,'2006-08-17','2022-09-22 11:54:59','2022-09-22 11:54:59'),(10,'yunah10','정윤아','qwe123qwe###','01000000000','대한민국 ',1,'1999-01-01','2022-09-23 04:58:20','2022-09-23 04:58:20'),(11,'123123yun','정윤아','qwe123qwe###','01000000000','대한민국 ',1,'1990-01-01','2022-09-23 07:25:18','2022-09-23 07:25:18'),(12,'1qazwsx3edc','qweqweqwe','!QAZ2wsx!QAZ','0100000000','qweqweqwe',0,'1990-01-01','2022-09-23 07:25:23','2022-09-23 07:25:23'),(13,'1qazwsx3edcas','qweqweqwe','!QAZ2wsx!QAZ','0100000000','qweqweqwe',0,'1990-01-01','2022-09-23 07:25:52','2022-09-23 07:25:52'),(14,'1qazwsx3ed','qweqweqwe','!QAZ2wsx!QAZ','0100000000','qweqweqwe',0,'1990-01-01','2022-09-23 07:29:14','2022-09-23 07:29:14'),(15,'1qazwsx3ed1','qweqweqwe','!QAZ2wsx!QAZ','0100000000','qweqweqwe',0,'1990-01-01','2022-09-23 07:31:44','2022-09-23 07:31:44'),(16,'asdfasdfasdf11','qweqweqwe','!QAZ2wsx!QAZ','0100000000','qweqweqwe',0,'1900-01-01','2022-09-23 07:39:28','2022-09-23 07:39:28'),(17,'123123y22un','정윤아','qwe123qwe###','01012341212','대한민국 ',1,'1990-01-01','2022-09-23 08:14:54','2022-09-23 08:14:54'),(18,'1233y22un','정윤아','qwe123qwe###','01012341212','대한민국 ',1,'1990-01-01','2022-09-23 08:18:32','2022-09-23 08:18:32'),(19,'12fg33y22un','정윤아','qwe123qwe###','01012341212','대한민국 ',1,'1995-01-01','2022-09-23 11:06:32','2022-09-23 11:06:32'),(20,'12fg33y21232un','정윤아','qwe123qwe###','01012341212','대한민국 ',1,'1995-01-01','2022-09-23 11:10:16','2022-09-23 11:10:16'),(21,'12fg33y212334342un','정윤아','$2b$10$Fx1ifUfa8GLbQTWV4i/squsmbV7Fa1Fd.4RqDdDErgRNmsZg4amUa','01012341212','대한민국 ',1,'1900-01-01','2022-09-25 05:54:34','2022-09-25 05:54:34'),(22,'34342un','정윤아','qwe123qwe###','01012341212','대한민국 ',1,'1990-01-01','2022-09-27 01:22:48','2022-09-27 01:22:48'),(23,'3ff4342un','정윤아','$2b$10$u3ecdPT78GW8dFNUNDCNJOVCZiAuEML8PCI3I3sXIpLhm0MHTtJae','01012344321','대한민국 ',1,'1990-01-01','2022-09-27 01:27:06','2022-09-27 01:27:06'),(24,'yunyun','정윤아','$2b$10$cWrOESzYiyDZIE8wwYYWQOyh361l.pTvrVhKVkHYvOzFdv/4m0i9W','01012344321','대한민국 ',1,'1990-01-01','2022-09-27 05:51:28','2022-09-27 05:51:28'),(25,'yunyun1','정윤아','$2b$10$ih.l9OagCFQQjJ7NYJj7IOzmA.Lw8TvDiL00ei.cJrh/OuKkAnZK2','01012344321','대한민국 ',1,'1990-01-01','2022-09-28 01:38:03','2022-09-28 01:38:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,18,1),(15,4,24),(50,18,25);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-29 14:42:24
