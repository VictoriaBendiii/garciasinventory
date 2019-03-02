-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: garciapremiumcoffee
-- ------------------------------------------------------
-- Server version	5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `idnumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `accountid` int(15) NOT NULL,
  `username` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(201) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` enum('Admin','Sub-admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `employeeid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `deleted` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idnumber`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,1,'admin','admin','Admin','AD01','2019-02-28 23:12:22','2019-02-28 23:12:22',NULL),(2,2,'subadmin','subadmin','Sub-admin','SA01','2019-03-01 00:33:18','2019-03-01 00:33:18',NULL),(3,2,'subadmin2','subadmin2','Sub-admin','SA02','2019-03-01 00:40:21','2019-03-01 00:40:21',NULL);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch` (
  `idnumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `branchid` int(15) NOT NULL,
  `branch_address` varchar(201) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,1,'Public Market Baguio City'),(2,2,'Porta Vaga Session Road Baguio City');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery` (
  `idnumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deliveryid` int(15) unsigned NOT NULL,
  `delivery_transaction` int(15) DEFAULT NULL,
  `productid` int(15) NOT NULL,
  `quantity` double(10,2) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (3,1,1,1,130.00,'2019-03-01 00:33:33','2019-03-01 00:33:33'),(4,2,1,2,500.00,'2019-03-01 00:34:03','2019-03-01 00:34:03');
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `idnumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employeeid` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2018-12-31 23:00:00',
  `update` timestamp NULL DEFAULT NULL,
  `deleted` timestamp NULL DEFAULT NULL,
  `branchid` int(15) NOT NULL,
  PRIMARY KEY (`idnumber`),
  UNIQUE KEY `contact_number_UNIQUE` (`contact_number`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (3,'AD01','Eli','Angel','Garcia','0123456','garcia@gmail.com','2019-03-01 05:06:08','2019-03-01 05:06:08',NULL,1),(4,'SA01','Steven','B','Mangati','01234567','steven@gmail.com','2019-03-01 06:55:33','2019-03-01 06:55:33',NULL,2),(5,'SA02','Michael','V','Pinto','0917000000','michael@gmail.com','2019-03-01 07:01:31','2019-03-01 07:01:31',NULL,2);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `idnumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` int(15) NOT NULL,
  `supplierid` int(15) NOT NULL,
  `productid` int(15) NOT NULL,
  `quantity` double(10,2) NOT NULL,
  `delivery_transaction` int(15) NOT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,3,2,300.00,1,'2019-03-01 00:03:05','2019-03-01 00:03:05'),(2,1,3,1,600.00,1,'2019-03-01 00:04:20','2019-03-01 00:04:20');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `idnumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `productid` int(15) DEFAULT NULL,
  `name` varchar(201) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` blob,
  `description` varchar(201) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` double(10,2) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT '2019-02-28 23:00:00',
  `date_deleted` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (3,1,'Benguet',NULL,NULL,130.00,'2019-04-01 01:39:57',NULL),(4,2,'Barako',NULL,NULL,160.00,'2019-04-01 01:40:01',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reconciliation`
--

DROP TABLE IF EXISTS `reconciliation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reconciliation` (
  `idnumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reconciliationid` int(15) NOT NULL,
  `employeeid` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productid` int(15) NOT NULL,
  `logical_count` double(10,2) NOT NULL,
  `physical_count` double(10,2) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(201) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(201) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reconciliation`
--

LOCK TABLES `reconciliation` WRITE;
/*!40000 ALTER TABLE `reconciliation` DISABLE KEYS */;
INSERT INTO `reconciliation` VALUES (1,1,'SA01',1,455.00,456.00,'2019-03-01','21:01:01','Not Match','Adjusted');
/*!40000 ALTER TABLE `reconciliation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solditem`
--

DROP TABLE IF EXISTS `solditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solditem` (
  `idnumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `solditemid` int(15) NOT NULL,
  `productid` int(15) NOT NULL,
  `quantity` double(10,2) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`idnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solditem`
--

LOCK TABLES `solditem` WRITE;
/*!40000 ALTER TABLE `solditem` DISABLE KEYS */;
INSERT INTO `solditem` VALUES (1,1,2,20.00,'2019-04-01','09:33:03'),(2,1,1,10.00,'2019-04-01','09:33:03'),(3,2,1,3.00,'2019-04-01','09:50:03');
/*!40000 ALTER TABLE `solditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `idnumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stockid` int(15) NOT NULL,
  `productid` int(15) NOT NULL,
  `quantity` double(10,2) NOT NULL,
  `stockin` double(10,2) NOT NULL,
  `stockout` double(10,2) NOT NULL,
  `branchid` int(15) NOT NULL,
  `created` timestamp NOT NULL,
  `updated` timestamp NOT NULL,
  `deleted` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,1,1,456.00,300.00,55.00,1,'2017-03-01 12:28:34','2017-03-01 14:33:02',NULL),(2,1,2,621.00,200.00,69.00,1,'2017-03-01 12:28:34','2017-03-01 12:28:34',NULL);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `idnumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `supplierid` int(15) NOT NULL,
  `supplier_name` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_contact_person` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(201) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(201) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `deleted` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idnumber`),
  UNIQUE KEY `supplierid_UNIQUE` (`supplierid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,1,'Garcia\'s Farm','Eli','012345','Kamog Sablan Baguio City','2019-02-28 23:33:02',NULL,NULL);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-02 15:06:36
