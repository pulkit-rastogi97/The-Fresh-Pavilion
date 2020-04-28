DROP DATABASE IF EXISTS `the_fresh_pavillion`;
/*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE DATABASE `the_fresh_pavillion`;

USE `the_fresh_pavillion`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: the_fresh_pavillion
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cid` int unsigned NOT NULL AUTO_INCREMENT,
  `cname` varchar(45) NOT NULL,
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Pulkit Rastogi','01515634889'),(2,'Tarun Sharma','01914076231'),(3,'Mridul Mahajan','01670813134'),(4,'Shivam Kumar','01715491885'),(6,'Himani Saini','01864203231'),(8,'Gaganjot Kaur Shan','01515634889'),(9,'Ajay Singh','01340908930'),(10,'Bhumi Rastogi','07647128308');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `odid` int unsigned NOT NULL AUTO_INCREMENT,
  `oid` int unsigned NOT NULL,
  `pid` int unsigned NOT NULL,
  `price` double NOT NULL,
  `qty` int unsigned NOT NULL,
  PRIMARY KEY (`odid`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,1,1,500,1),(2,0,0,0,0),(3,2,2,700,10),(4,1,4,700,2),(5,1,1,500,1),(6,1,1,500,2),(7,2,8,1600,10),(8,3,1,500,10),(9,3,1,500,10),(10,4,1,500,10),(11,5,9,300,10),(12,6,9,300,10),(13,7,9,300,10),(14,7,8,1600,10),(15,8,1,500,200),(16,9,1,500,1),(17,9,4,700,2),(18,10,1,500,1),(19,11,1,500,2),(20,12,1,500,6),(21,13,1,500,1),(22,13,1,500,11),(23,14,1,500,18800),(24,14,1,500,9),(25,16,1,500,12),(26,17,1,500,88),(27,18,1,500,0),(28,19,1,500,1),(29,20,1,500,1),(30,21,1,500,2),(31,22,1,500,2),(32,23,1,500,1),(33,24,1,500,1),(34,25,1,500,1),(35,26,10,5500,1),(36,26,9,300,1),(37,27,4,700,2),(38,27,1,500,1),(39,28,5,15000,1),(40,28,1,500,1),(41,29,7,76000,1),(42,29,1,500,4),(43,29,8,1600,1),(44,30,1,500,5),(45,31,7,76000,3),(46,32,5,15000,1),(47,33,5,15000,1),(48,34,5,30,1),(49,35,9,300,1);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `oid` int unsigned NOT NULL AUTO_INCREMENT,
  `cid` int unsigned NOT NULL,
  `total` double NOT NULL,
  `orderType` varchar(45) NOT NULL,
  `orderDate` date NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1000,'sell','2017-09-19'),(2,6,166000,'sell','2017-09-01'),(3,1,5000,'sell','2017-09-21'),(4,1,5000,'sell','2017-09-19'),(5,2,3000,'sell','2017-09-30'),(6,4,19000,'sell','2017-09-20'),(7,3,19000,'sell','2017-09-01'),(8,1,100000,'purchase','2017-09-27'),(9,1,1900,'sell','2017-09-01'),(10,1,500,'sell','2017-09-01'),(11,1,1000,'sell','2017-09-01'),(12,2,3000,'sell','2017-09-19'),(13,1,5500,'purchase','2017-09-19'),(14,1,9400000,'sell','2017-09-19'),(15,1,4500,'purchase','2017-09-19'),(16,1,6000,'purchase','2017-09-19'),(17,1,44000,'purchase','2017-09-19'),(18,0,0,'sell','2017-09-20'),(19,0,500,'sell','2017-09-20'),(20,1,500,'sell','2017-09-20'),(21,1,1000,'sell','2017-09-20'),(22,2,1000,'sell','2017-09-20'),(23,1,500,'sell','2017-09-20'),(24,1,500,'sell','2017-09-20'),(25,1,500,'sell','2017-09-20'),(26,7,5800,'sell','2017-09-15'),(27,1,1900,'sell','2017-09-22'),(28,1,15500,'sell','2017-09-24'),(29,1,79600,'sell','2017-09-30'),(30,2,6500,'sell','2017-10-11'),(31,4,228000,'purchase','2020-04-29'),(32,3,15000,'sell','2020-04-29'),(33,3,15000,'purchase','2020-04-29'),(34,3,30,'sell','2020-04-29'),(35,2,300,'sell','2020-01-29');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pid` int unsigned NOT NULL AUTO_INCREMENT,
  `pname` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `qty` int unsigned NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Amul Milk 500 ML',45,100),(4,'Onion 1 Kg',60,16),(5,'Potato 1 Kg',30,89),(6,'Amul Lassi 200 ML',20,40),(7,'Britannia Fruit Cake 70 g',30,82),(8,'Brown Bread ',40,189),(9,'Deluxe Pulse Pack',300,118),(10,'XS Energy Drink',100,119),(11,'Rice Premium 1 Kg',105,100),(12,'Banana 1 Dozen',50,20);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userId` int unsigned NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','pulkit.rastogi97@gmail.com','admin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-29  4:34:47
