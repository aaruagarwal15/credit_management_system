-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: task1users
-- ------------------------------------------------------
-- Server version	10.1.38-MariaDB

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
-- Table structure for table `transfers`
--

DROP TABLE IF EXISTS `transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfers` (
  `from_user` varchar(20) DEFAULT NULL,
  `to_user` varchar(20) DEFAULT NULL,
  `credits_tr` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfers`
--

LOCK TABLES `transfers` WRITE;
/*!40000 ALTER TABLE `transfers` DISABLE KEYS */;
INSERT INTO `transfers` VALUES ('Anjali Goyal','Daksh Sahani',200),('Manan Agarwal','Sashakt Pathak',300),('Manan Agarwal','Sashakt Pathak',200),('Anjali Goyal','Sashakt Pathak',200),('Anjali Goyal','Sashakt Pathak',200),('Anjali Goyal','Sashakt Pathak',200),('Anjali Goyal','Sashakt Pathak',200),('Anjali Goyal','Harshit Pathak',200),('Anjali Goyal','Sashakt Pathak',200),('Anjali Goyal','Sashakt Pathak',200),('Anjali Goyal','Sashakt Pathak',400),('Anjali Goyal','Sashakt Pathak',300),('Anjali Goyal','Kajal Roy',100),('Harshit Pathak','Anjali Goyal',100),('Sashakt Pathak','Anjali Goyal',100),('Anjali Goyal','Sashakt Pathak',100),('Sashakt Pathak','Anjali Goyal',100),('Manan Agarwal','Anjali Goyal',123),('Anjali Goyal','Harshit Pathak',12),('Anjali Goyal','Harshit Pathak',1),('Anjali Goyal','Prerna Negi',19),('Manan Agarwal','Anjali Goyal',10),('Anjali Goyal','Harshit Pathak',10),('Anjali Goyal','Harshit Pathak',1),('Manan Agarwal','Sashakt Pathak',1),('Manan Agarwal','Sashakt Pathak',1),('Sashakt Pathak','Harshit Pathak',1),('Sashakt Pathak','Tanya Singhal',1),('Sashakt Pathak','Daksh Sahani',10),('Anjali Goyal','Daksh Sahani',1),('Sashakt Pathak','Prerna Negi',49),('Sashakt Pathak','Tanya Singhal',49);
/*!40000 ALTER TABLE `transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `try`
--

DROP TABLE IF EXISTS `try`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `try` (
  `id` int(5) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `credits_tr` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `try`
--

LOCK TABLES `try` WRITE;
/*!40000 ALTER TABLE `try` DISABLE KEYS */;
INSERT INTO `try` VALUES (1,'pqrs',600),(2,'abcddd',500);
/*!40000 ALTER TABLE `try` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `current_credit` float DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Anjali Goyal','anjali@gmail.com','Noida',389),(2,'Daksh Sahani','daksh@gmail.com','Banglore',611),(3,'Harshit Pathak','harshit@gmail.com','Banglore',375),(4,'Kajal Roy','kajal@gmail.com','Indore',450),(5,'Manan Agarwal','manan@gmail.com','Delhi',415),(6,'Sashakt Pathak','sashakt@gmail.com','Noida',1242),(7,'Prerna Negi','prerna@gmail.com','Goa',918),(8,'Swati Paul','swati@gmail.com','Chandigarh',600),(9,'Tarush Bansal','tarush@gmail.com','Lucknow',700),(10,'Tanya Singhal','tanya@gmail.com','Chennai',650);
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

-- Dump completed on 2019-03-15 16:44:42
