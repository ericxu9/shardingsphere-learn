-- MySQL dump 10.13  Distrib 5.7.36, for Linux (x86_64)
--
-- Host: localhost    Database: db_order
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Current Database: `db_order`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_order` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_order`;

--
-- Table structure for table `t_order`
--

DROP TABLE IF EXISTS `t_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order`
--

LOCK TABLES `t_order` WRITE;
/*!40000 ALTER TABLE `t_order` DISABLE KEYS */;
INSERT INTO `t_order` VALUES (1,'SN4676876434',1,100.00);
/*!40000 ALTER TABLE `t_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `db_order0`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_order0` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_order0`;

--
-- Table structure for table `t_dict`
--

DROP TABLE IF EXISTS `t_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dict` (
  `id` bigint(20) NOT NULL,
  `dict_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dict`
--

LOCK TABLES `t_dict` WRITE;
/*!40000 ALTER TABLE `t_dict` DISABLE KEYS */;
INSERT INTO `t_dict` VALUES (1595998629116514306,'type1');
/*!40000 ALTER TABLE `t_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order0`
--

DROP TABLE IF EXISTS `t_order0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order0` (
  `id` bigint(20) NOT NULL,
  `order_no` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order0`
--

LOCK TABLES `t_order0` WRITE;
/*!40000 ALTER TABLE `t_order0` DISABLE KEYS */;
INSERT INTO `t_order0` VALUES (802846107741716480,'ShardingSphere5',2,NULL);
/*!40000 ALTER TABLE `t_order0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order1`
--

DROP TABLE IF EXISTS `t_order1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order1` (
  `id` bigint(20) NOT NULL,
  `order_no` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order1`
--

LOCK TABLES `t_order1` WRITE;
/*!40000 ALTER TABLE `t_order1` DISABLE KEYS */;
INSERT INTO `t_order1` VALUES (802846107850768385,'ShardingSphere6',2,NULL);
/*!40000 ALTER TABLE `t_order1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order_item0`
--

DROP TABLE IF EXISTS `t_order_item0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order_item0` (
  `id` bigint(20) NOT NULL,
  `order_no` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order_item0`
--

LOCK TABLES `t_order_item0` WRITE;
/*!40000 ALTER TABLE `t_order_item0` DISABLE KEYS */;
INSERT INTO `t_order_item0` VALUES (802846107787853825,'ShardingSphere5',2,1.00,3),(802846107825602560,'ShardingSphere5',2,1.00,3);
/*!40000 ALTER TABLE `t_order_item0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order_item1`
--

DROP TABLE IF EXISTS `t_order_item1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order_item1` (
  `id` bigint(20) NOT NULL,
  `order_no` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order_item1`
--

LOCK TABLES `t_order_item1` WRITE;
/*!40000 ALTER TABLE `t_order_item1` DISABLE KEYS */;
INSERT INTO `t_order_item1` VALUES (802846107875934208,'ShardingSphere6',2,1.00,3),(802846107909488641,'ShardingSphere6',2,1.00,3);
/*!40000 ALTER TABLE `t_order_item1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `db_order1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_order1` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_order1`;

--
-- Table structure for table `t_dict`
--

DROP TABLE IF EXISTS `t_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dict` (
  `id` bigint(20) NOT NULL,
  `dict_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dict`
--

LOCK TABLES `t_dict` WRITE;
/*!40000 ALTER TABLE `t_dict` DISABLE KEYS */;
INSERT INTO `t_dict` VALUES (1595998629116514306,'type1');
/*!40000 ALTER TABLE `t_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order0`
--

DROP TABLE IF EXISTS `t_order0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order0` (
  `id` bigint(20) NOT NULL,
  `order_no` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order0`
--

LOCK TABLES `t_order0` WRITE;
/*!40000 ALTER TABLE `t_order0` DISABLE KEYS */;
INSERT INTO `t_order0` VALUES (802846107230011392,'ShardingSphere1',1,NULL);
/*!40000 ALTER TABLE `t_order0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order1`
--

DROP TABLE IF EXISTS `t_order1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order1` (
  `id` bigint(20) NOT NULL,
  `order_no` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order1`
--

LOCK TABLES `t_order1` WRITE;
/*!40000 ALTER TABLE `t_order1` DISABLE KEYS */;
INSERT INTO `t_order1` VALUES (802846107653636097,'ShardingSphere2',1,NULL);
/*!40000 ALTER TABLE `t_order1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order_item0`
--

DROP TABLE IF EXISTS `t_order_item0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order_item0` (
  `id` bigint(20) NOT NULL,
  `order_no` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order_item0`
--

LOCK TABLES `t_order_item0` WRITE;
/*!40000 ALTER TABLE `t_order_item0` DISABLE KEYS */;
INSERT INTO `t_order_item0` VALUES (802846107594915841,'ShardingSphere1',1,10.00,2),(802846107636858880,'ShardingSphere1',1,10.00,2);
/*!40000 ALTER TABLE `t_order_item0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order_item1`
--

DROP TABLE IF EXISTS `t_order_item1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order_item1` (
  `id` bigint(20) NOT NULL,
  `order_no` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order_item1`
--

LOCK TABLES `t_order_item1` WRITE;
/*!40000 ALTER TABLE `t_order_item1` DISABLE KEYS */;
INSERT INTO `t_order_item1` VALUES (802846107682996224,'ShardingSphere2',1,10.00,2),(802846107712356353,'ShardingSphere2',1,10.00,2);
/*!40000 ALTER TABLE `t_order_item1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-28  6:45:20
