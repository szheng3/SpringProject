-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `idtable1` int(11) NOT NULL AUTO_INCREMENT,
  `result` blob NOT NULL,
  `username` varchar(45) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idtable1`),
  KEY `fk_table1_users1_idx` (`username`),
  CONSTRAINT `fk_table1_users1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (2,'\nExamples labeled as 0 classified by model as 0: 34 times\nExamples labeled as 1 classified by model as 1: 17 times\nExamples labeled as 1 classified by model as 2: 2 times\n\nWarning: class 2 has never appeared as a true label. This class was excluded from the average recall\n\n==========================Scores========================================\n Accuracy:  0.9623\n Precision: 0.6667\n Recall:    0.9474\n F1 Score:  0.7826\n========================================================================','shuaizhenG1','2017-04-25 02:14:35'),(3,'\nExamples labeled as 0 classified by model as 0: 35 times\nExamples labeled as 1 classified by model as 1: 16 times\nExamples labeled as 1 classified by model as 2: 2 times\n\nWarning: class 2 has never appeared as a true label. This class was excluded from the average recall\n\n==========================Scores========================================\n Accuracy:  0.9623\n Precision: 0.6667\n Recall:    0.9444\n F1 Score:  0.7816\n========================================================================','Testuser111','2017-04-25 04:24:02'),(4,'\nExamples labeled as 0 classified by model as 0: 37 times\nExamples labeled as 1 classified by model as 1: 14 times\nExamples labeled as 1 classified by model as 2: 2 times\n\nWarning: class 2 has never appeared as a true label. This class was excluded from the average recall\n\n==========================Scores========================================\n Accuracy:  0.9623\n Precision: 0.6667\n Recall:    0.9375\n F1 Score:  0.7792\n========================================================================','Testuser111','2017-04-25 04:24:22'),(5,'\nExamples labeled as 0 classified by model as 0: 34 times\nExamples labeled as 1 classified by model as 1: 19 times\n\nWarning: class 2 was never predicted by the model. This class was excluded from the average precision\nWarning: class 2 has never appeared as a true label. This class was excluded from the average recall\n\n==========================Scores========================================\n Accuracy:  1\n Precision: 1\n Recall:    1\n F1 Score:  1\n========================================================================','Testuser111','2017-04-25 04:28:08'),(6,'\nExamples labeled as 0 classified by model as 0: 35 times\nExamples labeled as 0 classified by model as 1: 1 times\nExamples labeled as 1 classified by model as 1: 16 times\nExamples labeled as 1 classified by model as 2: 1 times\n\nWarning: class 2 has never appeared as a true label. This class was excluded from the average recall\n\n==========================Scores========================================\n Accuracy:  0.9623\n Precision: 0.6471\n Recall:    0.9567\n F1 Score:  0.772\n========================================================================','Testuser111','2017-05-10 00:59:12'),(7,'\nExamples labeled as 0 classified by model as 0: 35 times\nExamples labeled as 1 classified by model as 1: 17 times\nExamples labeled as 1 classified by model as 2: 1 times\n\nWarning: class 2 has never appeared as a true label. This class was excluded from the average recall\n\n==========================Scores========================================\n Accuracy:  0.9811\n Precision: 0.6667\n Recall:    0.9722\n F1 Score:  0.791\n========================================================================','Testuser111','2017-05-13 23:16:21');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`user_role_id`),
  UNIQUE KEY `uni_username_role` (`role`,`username`),
  KEY `fk_username_idx` (`username`),
  CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (11,'shuaizhenG1','ROLE_USER'),(12,'Testuser111','ROLE_USER');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `email` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('shuaizhenG1','1993916a',1,'szheng3@uci.edu'),('Testuser111','Testuser111',1,'szheng3@uci.edu');
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

-- Dump completed on 2017-05-13 16:53:49
