-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: dms
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `order_deliveryaddress`
--

DROP TABLE IF EXISTS `order_deliveryaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_deliveryaddress` (
  `orderID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `streetAddress` varchar(45) DEFAULT NULL,
  `Landmark` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `Pincode` int(6) DEFAULT NULL,
  `PhoneNo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`orderID`,`itemID`),
  KEY `fk_orderdetails_deliveryAddress_idx` (`orderID`,`itemID`),
  CONSTRAINT `fk_orderdetails_deliveryAddress` FOREIGN KEY (`orderID`, `itemID`) REFERENCES `orderdetails` (`orderID`, `itemID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_deliveryaddress`
--

LOCK TABLES `order_deliveryaddress` WRITE;
/*!40000 ALTER TABLE `order_deliveryaddress` DISABLE KEYS */;
INSERT INTO `order_deliveryaddress` VALUES (1001,1,'13,Tansi Nagar','RailRoad','Bangalore','Karnataka',560056,'985478569'),(1001,2,'13,Tansi Nagar','RailRoad','Bangalore','Karnataka',560056,'965874589'),(1002,1,'Ram Nagar','Syndicate Bank','Bangalore','Karnataka',560048,'8524136254'),(1008,10,'316','Dr.AIT','Bangalore','Karnataka',560056,'987456321'),(1009,12,'234','Syndicate Bank','Bangalore','Karnataka',560056,'9844266782'),(1009,123,'bla	','hbgt','bangalore','Kar',560056,'8521478523'),(1009,124,'bla	','hbgt','bangalore','Kar',560056,'8521478523'),(1009,125,'bla	','hbgt','bangalore','Kar',560056,'8521478523'),(1010,1,'321','Bank','Bnagalore','Kar',568899,'5214587462'),(1010,2,'321','Bank','Bnagalore','Kar',568899,'5214587462'),(1011,1,'321','Bank','Bnagalore','Kar',568899,'5214587462'),(1012,58,'316	','IT Park','Mumbai','MH',244568,'2447856325'),(1013,56,'546	','Tower','Mumbai','MH',425865,'9652365841'),(1014,563,'435','Lake','Bangalore','Kar',560056,'8523698541'),(1015,54,'456	','lake','Bangalore','Kar',560056,'8562356412'),(1016,21,'421','bus stand','Bangalore','Kar',560056,'5214587452');
/*!40000 ALTER TABLE `order_deliveryaddress` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-09 15:41:04
