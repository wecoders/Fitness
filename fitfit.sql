-- MySQL dump 10.13  Distrib 5.6.21, for osx10.10 (x86_64)
--
-- Host: localhost    Database: fitness
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `fitness`
--

DROP TABLE IF EXISTS `fitness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fitness` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fixness_idx` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fitness`
--

LOCK TABLES `fitness` WRITE;
/*!40000 ALTER TABLE `fitness` DISABLE KEYS */;
INSERT INTO `fitness` VALUES (1,'俯卧撑',NULL),(2,'深蹲',NULL),(3,'引体向上',NULL),(4,'举腿',NULL),(5,'桥',NULL);
/*!40000 ALTER TABLE `fitness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fitness_record`
--

DROP TABLE IF EXISTS `fitness_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fitness_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `people_id` varchar(200) DEFAULT NULL,
  `people_name` varchar(200) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `note` text,
  `train_id` bigint(20) DEFAULT NULL,
  `fitness_id` bigint(20) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fitness_record_idx` (`people_id`,`train_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fitness_record`
--

LOCK TABLES `fitness_record` WRITE;
/*!40000 ALTER TABLE `fitness_record` DISABLE KEYS */;
INSERT INTO `fitness_record` VALUES (1,NULL,'1','testman',NULL,NULL,1,1,10,'2015-09-14 12:33:41'),(2,'上斜俯卧撑2x15','1','testman',NULL,NULL,1,1,10,'2015-09-14 12:34:22'),(3,'上斜俯卧撑2x15','1','testman',NULL,NULL,1,1,10,'2015-09-14 22:00:01'),(4,'上斜俯卧撑2x15','1','testman',NULL,NULL,1,1,10,'2015-09-14 14:00:01'),(5,'上斜俯卧撑2x15','1','testman',NULL,NULL,1,1,10,'2015-09-14 14:00:01'),(6,'上斜俯卧撑2x15','1','testman',NULL,NULL,1,1,10,'2015-09-14 14:00:01'),(7,'上斜俯卧撑2x15','1','testman',NULL,NULL,1,1,10,'2015-09-14 06:00:01'),(8,'上斜俯卧撑2x15','1','testman',NULL,NULL,1,1,10,'2015-09-14 15:00:01'),(9,NULL,'2',NULL,NULL,NULL,0,0,0,NULL),(10,NULL,'2','test people',NULL,NULL,0,0,0,NULL),(11,'训练记录1','2','test people',NULL,NULL,2,1,3000,NULL),(12,'训练记录1','2','test people',NULL,'',2,1,3000,NULL),(13,'训练记录1','2','test people',NULL,'',2,1,3000,NULL),(14,'训练记录12','2','test people',NULL,'',2,1,3000,NULL),(15,'训练记录12','2','test people',NULL,'',2,1,3000,'2015-09-18 18:00:56'),(16,'训练记录123','2','test people',NULL,'',2,1,3000,'2015-09-18 18:19:30'),(17,'训练记录123','2','test people',NULL,'',2,1,3000,'2015-09-18 18:19:38'),(18,'训练记录123','2','test people',NULL,'',2,1,3000,'1970-01-01 08:00:00'),(19,'训练记录123','2','test people',NULL,'',2,1,3000,'1970-01-02 11:46:40'),(20,'训练记录123','2','test people',NULL,'',2,1,3000,'1970-01-01 08:00:00'),(21,'训练记录123','2','test people',NULL,'',2,1,3000,'1970-01-01 08:00:01'),(22,'训练记录1234','2','test people','','',2,1,3000,'1970-01-01 08:00:01'),(23,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-22 16:51:21'),(24,'墙壁俯卧撑2x2','1',NULL,NULL,NULL,1,1,20,'2015-09-22 17:05:46'),(25,'墙壁俯卧撑2x2','1',NULL,NULL,NULL,1,1,20,'2015-09-23 10:13:17'),(26,'墙壁俯卧撑2x2','1',NULL,NULL,NULL,1,1,20,'2015-09-23 10:14:25'),(27,'墙壁俯卧撑2x2','1',NULL,NULL,NULL,1,1,20,'2015-09-23 10:22:59'),(28,'墙壁俯卧撑2x2','1',NULL,NULL,NULL,1,1,20,'2015-09-23 10:24:13'),(29,'墙壁俯卧撑2x2','1',NULL,NULL,NULL,1,1,20,'2015-09-23 10:25:07'),(30,'墙壁俯卧撑2x2','1',NULL,NULL,NULL,1,1,20,'2015-09-23 10:26:41'),(31,'墙壁俯卧撑2x2','1',NULL,NULL,NULL,1,1,20,'2015-09-23 10:27:17'),(32,'墙壁俯卧撑2x2','1',NULL,NULL,NULL,1,1,20,'2015-09-23 10:28:54'),(33,'墙壁俯卧撑2x2','1',NULL,NULL,NULL,1,1,20,'2015-09-23 10:30:21'),(34,'上斜俯卧撑2x20','1',NULL,NULL,NULL,2,2,200,'2015-09-23 10:34:30'),(35,'墙壁俯卧撑2x2','1',NULL,NULL,NULL,1,1,20,'2015-09-23 10:36:06'),(36,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 10:38:11'),(37,'墙壁俯卧撑2x2','1',NULL,NULL,NULL,1,1,20,'2015-09-23 10:38:58'),(38,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 10:40:13'),(39,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 10:41:27'),(40,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 10:47:31'),(41,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 10:54:14'),(42,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 10:54:30'),(43,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 10:56:17'),(44,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 11:00:59'),(45,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 11:02:40'),(46,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 11:03:17'),(47,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 11:03:46'),(48,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 11:04:51'),(49,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 11:07:06'),(50,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 11:07:19'),(51,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 11:08:39'),(52,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 11:09:06'),(53,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 11:09:38'),(54,'墙壁俯卧撑2x2','1',NULL,NULL,NULL,1,1,20,'2015-09-23 11:11:16'),(55,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 11:11:43'),(56,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 11:12:14'),(57,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 11:12:34'),(58,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 11:13:15'),(59,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 11:13:31'),(60,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 11:13:45'),(61,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 11:14:04'),(62,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 11:14:48'),(63,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 11:15:09'),(64,'墙壁俯卧撑2x2','1',NULL,NULL,NULL,1,1,20,'2015-09-23 11:16:24'),(65,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 18:06:29'),(66,'墙壁俯卧撑2x2','1',NULL,NULL,NULL,1,1,20,'2015-09-23 18:07:07'),(67,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 18:35:43'),(68,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 18:37:06'),(69,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 18:46:29'),(70,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 18:48:56'),(71,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 18:49:37'),(72,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 18:50:17'),(73,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 18:51:07'),(74,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 18:57:09'),(75,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 18:57:58'),(76,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 18:59:44'),(77,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-23 19:01:10'),(78,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-24 14:57:28'),(79,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-24 17:44:11'),(80,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-24 18:10:32'),(81,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-24 18:11:18'),(82,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-24 18:21:35'),(83,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-24 18:22:15'),(84,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-24 18:22:41'),(85,'上斜俯卧撑1x10','1',NULL,NULL,NULL,2,1,50,'2015-09-25 18:43:00'),(86,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-28 22:37:29'),(87,'墙壁俯卧撑1x1','1',NULL,NULL,NULL,1,1,5,'2015-09-28 22:43:07'),(88,'墙壁俯卧撑1x1','1008','fld',NULL,NULL,1,1,5,'2015-09-29 11:06:33'),(89,'墙壁俯卧撑2x2','1008','fld',NULL,NULL,1,1,20,'2015-09-29 11:08:37'),(90,'垂直引体向上2x20','1008','fld',NULL,NULL,21,3,200,'2015-09-29 11:22:29');
/*!40000 ALTER TABLE `fitness_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fitness_train`
--

DROP TABLE IF EXISTS `fitness_train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fitness_train` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `fitness_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fixness_train_idx` (`fitness_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fitness_train`
--

LOCK TABLES `fitness_train` WRITE;
/*!40000 ALTER TABLE `fitness_train` DISABLE KEYS */;
INSERT INTO `fitness_train` VALUES (1,'墙壁俯卧撑',1),(2,'上斜俯卧撑',1),(3,'膝盖俯卧撑',1),(4,'半俯卧撑',1),(5,'标准俯卧撑',1),(6,'窄距俯卧撑',1),(7,'偏重俯卧撑',1),(8,'单臂半俯卧撑',1),(9,'杠杆俯卧撑',1),(10,'单臂俯卧撑',1),(11,'肩倒立深蹲',2),(12,'折刀深蹲',2),(13,'支撑深蹲',2),(14,'半深蹲',2),(15,'标准深蹲',2),(16,'窄距深蹲',2),(17,'偏重深蹲',2),(18,'单腿半深蹲',2),(19,'单腿辅助深蹲',2),(20,'单腿深蹲',2),(21,'垂直引体向上',3),(22,'水平引体向上',3),(23,'折刀引体向上',3),(24,'半引体向上',3),(25,'标准引体向上',3),(26,'窄距引体向上',3),(27,'偏重引体向上',3),(28,'单臂半引体向上',3),(29,'单臂辅助引体向上',3),(30,'单臂引体向上',3),(31,'坐姿屈膝',4),(32,'平卧抬膝',4),(33,'平卧屈举腿',4),(34,'平卧蛙举腿',4),(35,'平卧直举腿',4),(36,'悬垂屈膝',4),(37,'悬垂屈举腿',4),(38,'悬垂蛙举腿',4),(39,'悬垂半举腿',4),(40,'悬垂直举腿',4),(41,'短桥',5),(42,'直桥',5),(43,'高低桥',5),(44,'顶桥',5),(45,'半桥',5),(46,'标准桥',5),(47,'下行桥',5),(48,'上行桥',5),(49,'合桥',5),(50,'铁板桥',5);
/*!40000 ALTER TABLE `fitness_train` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fitness_train_level`
--

DROP TABLE IF EXISTS `fitness_train_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fitness_train_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fitness_id` bigint(20) DEFAULT NULL,
  `train_id` bigint(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `groups` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `sleep` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fixness_train_level_idx` (`train_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fitness_train_level`
--

LOCK TABLES `fitness_train_level` WRITE;
/*!40000 ALTER TABLE `fitness_train_level` DISABLE KEYS */;
INSERT INTO `fitness_train_level` VALUES (1,1,1,1,'初级标准',1,1,3),(2,1,1,2,'中级标准',2,2,45),(3,1,1,3,'升级标准',3,50,45),(4,1,2,1,'初级标准',1,10,45),(5,1,2,2,'中级标准',2,20,45),(6,1,2,3,'升级标准',3,40,45),(7,1,3,1,'初级标准',1,10,45),(8,1,3,2,'中级标准',2,15,45),(9,1,3,3,'升级标准',3,30,45),(10,1,4,1,'初级标准',1,8,45),(11,1,4,2,'中级标准',2,12,45),(12,1,4,3,'升级标准',2,25,45),(13,1,5,1,'初级标准',1,5,45),(14,1,5,2,'中级标准',2,10,45),(15,1,5,3,'升级标准',2,20,45),(16,1,6,1,'初级标准',1,5,45),(17,1,6,2,'中级标准',2,10,45),(18,1,6,3,'升级标准',2,20,45),(19,1,7,1,'初级标准',2,5,45),(20,1,7,2,'中级标准',4,10,45),(21,1,7,3,'升级标准',4,20,45),(22,1,8,1,'初级标准',2,5,45),(23,1,8,2,'中级标准',4,10,45),(24,1,8,3,'升级标准',4,20,45),(25,1,9,1,'初级标准',2,5,45),(26,1,9,2,'中级标准',4,10,45),(27,1,9,3,'升级标准',4,20,45),(28,1,10,1,'初级标准',2,5,45),(29,1,10,2,'中级标准',6,10,45),(30,1,10,3,'升级标准',2,100,45),(31,2,11,1,'初级标准',1,10,45),(32,2,11,2,'中级标准',2,25,45),(33,2,11,3,'升级标准',3,50,45),(34,2,12,1,'初级标准',1,10,45),(35,2,12,2,'中级标准',2,20,45),(36,2,12,3,'升级标准',3,40,45),(37,2,13,1,'初级标准',1,10,45),(38,2,13,2,'中级标准',2,15,45),(39,2,13,3,'升级标准',3,30,45),(40,2,14,1,'初级标准',1,8,45),(41,2,14,2,'中级标准',2,35,45),(42,2,14,3,'升级标准',2,50,45),(43,2,15,1,'初级标准',1,5,45),(44,2,15,2,'中级标准',2,10,45),(45,2,15,3,'升级标准',2,30,45),(46,2,16,1,'初级标准',1,5,45),(47,2,16,2,'中级标准',2,10,45),(48,2,16,3,'升级标准',2,20,45),(49,2,17,1,'初级标准',1,5,45),(50,2,17,2,'中级标准',2,10,45),(51,2,17,3,'升级标准',2,20,45),(52,2,18,1,'初级标准',2,5,45),(53,2,18,2,'中级标准',4,10,45),(54,2,18,3,'升级标准',4,20,45),(55,2,19,1,'初级标准',2,5,45),(56,2,19,2,'中级标准',4,10,45),(57,2,19,3,'升级标准',4,20,45),(58,2,20,1,'初级标准',2,5,45),(59,2,20,2,'中级标准',4,10,45),(60,2,20,3,'升级标准',4,50,45),(61,3,21,1,'初级标准',1,10,45),(62,3,21,2,'中级标准',2,20,45),(63,3,21,3,'升级标准',3,40,45),(64,3,22,1,'初级标准',1,10,45),(65,3,22,2,'中级标准',2,20,45),(66,3,22,3,'升级标准',3,30,45),(67,3,23,1,'初级标准',1,10,45),(68,3,23,2,'中级标准',2,15,45),(69,3,23,3,'升级标准',3,20,45),(70,3,24,1,'初级标准',1,8,45),(71,3,24,2,'中级标准',2,11,45),(72,3,24,3,'升级标准',2,15,45),(73,3,25,1,'初级标准',1,5,45),(74,3,25,2,'中级标准',2,8,45),(75,3,25,3,'升级标准',2,10,45),(76,3,26,1,'初级标准',1,5,45),(77,3,26,2,'中级标准',2,8,45),(78,3,26,3,'升级标准',2,10,45),(79,3,27,1,'初级标准',2,5,45),(80,3,27,2,'中级标准',4,7,45),(81,3,27,3,'升级标准',4,8,45),(82,3,28,1,'初级标准',2,4,45),(83,3,28,2,'中级标准',4,8,45),(84,3,28,3,'升级标准',4,1,45),(85,3,29,1,'初级标准',2,3,45),(86,3,29,2,'中级标准',4,10,45),(87,3,29,3,'升级标准',4,7,45),(88,3,30,1,'初级标准',2,1,45),(89,3,30,2,'中级标准',4,3,45),(90,3,30,3,'升级标准',4,6,45),(91,4,31,1,'初级标准',1,10,45),(92,4,31,2,'中级标准',2,25,45),(93,4,31,3,'升级标准',3,40,45),(94,4,32,1,'初级标准',1,10,45),(95,4,32,2,'中级标准',2,20,45),(96,4,32,3,'升级标准',3,35,45),(97,4,33,1,'初级标准',1,10,45),(98,4,33,2,'中级标准',2,15,45),(99,4,33,3,'升级标准',3,30,45),(100,4,34,1,'初级标准',1,8,45),(101,4,34,2,'中级标准',2,15,45),(102,4,34,3,'升级标准',2,25,45),(103,4,35,1,'初级标准',1,5,45),(104,4,35,2,'中级标准',2,10,45),(105,4,35,3,'升级标准',2,20,45),(106,4,36,1,'初级标准',1,5,45),(107,4,36,2,'中级标准',2,10,45),(108,4,36,3,'升级标准',2,15,45),(109,4,37,1,'初级标准',1,5,45),(110,4,37,2,'中级标准',2,10,45),(111,4,37,3,'升级标准',2,15,45),(112,4,38,1,'初级标准',1,5,45),(113,4,38,2,'中级标准',2,10,45),(114,4,38,3,'升级标准',2,15,45),(115,4,39,1,'初级标准',1,5,45),(116,4,39,2,'中级标准',2,10,45),(117,4,39,3,'升级标准',2,15,45),(118,4,40,1,'初级标准',1,5,45),(119,4,40,2,'中级标准',2,10,45),(120,4,40,3,'升级标准',2,30,45),(121,5,41,1,'初级标准',1,10,45),(122,5,41,2,'中级标准',2,25,45),(123,5,41,3,'升级标准',3,50,45),(124,5,42,1,'初级标准',1,10,45),(125,5,42,2,'中级标准',2,20,45),(126,5,42,3,'升级标准',3,40,45),(127,5,43,1,'初级标准',1,8,45),(128,5,43,2,'中级标准',2,15,45),(129,5,43,3,'升级标准',3,30,45),(130,5,44,1,'初级标准',1,8,45),(131,5,44,2,'中级标准',2,15,45),(132,5,44,3,'升级标准',2,25,45),(133,5,45,1,'初级标准',1,8,45),(134,5,45,2,'中级标准',2,15,45),(135,5,45,3,'升级标准',2,20,45),(136,5,46,1,'初级标准',1,6,45),(137,5,46,2,'中级标准',2,10,45),(138,5,46,3,'升级标准',2,15,45),(139,5,47,1,'初级标准',1,3,45),(140,5,47,2,'中级标准',2,6,45),(141,5,47,3,'升级标准',2,10,45),(142,5,48,1,'初级标准',1,2,45),(143,5,48,2,'中级标准',2,4,45),(144,5,48,3,'升级标准',2,8,45),(145,5,49,1,'初级标准',1,1,45),(146,5,49,2,'中级标准',2,3,45),(147,5,49,3,'升级标准',2,6,45),(148,5,50,1,'初级标准',1,1,45),(149,5,50,2,'中级标准',2,3,45),(150,5,50,3,'精英标准',2,30,45);
/*!40000 ALTER TABLE `fitness_train_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `token` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `people_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1009 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1002,'testok','$2a$12$K8KFbv15Tp3epKUi6xIYxe5223X6GJx7753B7pi5IHyXJ4RQhdqzu','bd14a8cb94833113d2ff46d152f3211'),(1003,'testok2','$2a$12$LQX0yl2jDjEP1hs8I7/HguLWyLizyZ.H1THiByVTlRlqaJnIxUquC','f517e3ba5dfac0bd9d8da24d79a1a87'),(1004,'testok3','$2a$12$KiiXhFAxWbdcxemjsxlS8.8gsARFCi9uaK3JGC9XpEWWjOBdYbXwS','a4ced2a54c7f3c128325df8124bd206c'),(1005,'testok4','$2a$12$iBUDEfU9WppT39Hc/Xc1R.ReUmri63BM8aSAYHF9lMEU5KvvCZfxm','5e1b38e5b2e8e5dcfedbaa2afcc27d7d'),(1006,'testok5','222333333333333333','badf69241b55b61769abe0e2c6ef8c'),(1007,'NO1007','$2a$12$j3EgzqI3qzVnDe6iwlivU.C/EW2332RSnuYVVbKgGb5y8u7DeY1/W',NULL),(1008,'fld','$2a$12$Gie9ZRrEh8AFzddyIx31y.t0jwNYePBeysWi.0YP.qTntfqA1h8IK','f9cc6cba8cd74111a6cb4ab60127356');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-08 21:25:39
