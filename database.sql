-- MariaDB dump 10.19  Distrib 10.5.19-MariaDB, for Linux (x86_64)
--
-- Host: mysql    Database: as1csy2028
-- ------------------------------------------------------
-- Server version	11.3.2-MariaDB-1:11.3.2+maria~ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--
-- Current Database: `credit_card`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `credit_card` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `credit_card`;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `address_line1` varchar(250) DEFAULT NULL,
  `address_line2` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `postcode` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,NULL,'2a Baker Street','','Northampton','NN2 6DJ','Northamptonshire'),(2,NULL,'2a Baker Street','','Northampton','NN2 6DJ','Northamptonshire'),(3,NULL,'4 Baker Street','','Northampton','NN2 6DJ','Northamptonshire'),(4,NULL,'2a Baker Street','','Northampton','NN2 6DJ','Northamptonshire'),(5,9,'30 Baker Street','','Northampton','NN2 6DJ','Northamptonshire'),(6,9,'30 Baker Street','','Northampton','NN2 6DJ','Northamptonshire');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'lagga@gmail.com','lagga','stragga','2017-05-04','$2y$10$j5bdUs80S8mLNOp.FBD1TOxBSAnVVSHI7LitahUwgF25VKAKqYsNS'),(2,'lagga@gmail.com','Kolade','Dara','2019-07-05','$2y$10$CYNZAl45jN1Nomq0kRtA5ul2brETq5Yyawf61zCABb7p7lfbT98D2'),(3,'lagga@gmail.com','Lagga','Stragga','2020-04-05','$2y$10$gZfwwYvQMK9gOSlqlODTxOAkVAczAJBy/aQvvKZOiGZNXMSrkAe/6'),(4,'lagga@gmail.com','Lagga','Stragga','2020-07-04','$2y$10$YevJWX6zWMwMuwXTY.TJ0u0PoyZ9BsUF.iHW.DBhisAB9i9BOTpt2'),(5,'lol@gmail.com','lol','lal','2022-07-03','$2y$10$eb5YLH/nVpsLIL9Ef4OM/OjI6L98gECiYdG5Dl7SxlhEqQKIZxgLS'),(6,'raggy@gmail.com','Raggy','Lagga','2020-06-04','$2y$10$/kFKOpVz73IBm0OvFntFuuD5PV/puBl9Br1WNfqJieo9XDxfHVdHS'),(7,'Roy@gmail.com','Roy','Loy','2019-07-05','$2y$10$Zt/Z2a6l0nwhp0iRIQEyk.B7GMnaSjHyNorvN7qg00nMyFygK6.Pe'),(8,'Rasta@gmail.com','Rasta','Fasta','2019-06-06','$2y$10$xzeLNt0X2viyokFBP.AG/umT6u0N1qRCA/MWep2ku4zEVS7NWVFgu'),(9,'yuyhi@gmail.com','Cool','Lol','2020-05-05','$2y$10$R/zBOX9Wmr2hJDgKCR6Y8.iLsy8rO41cYdNmSFuRv8CZXwKtbXvwG'),(10,'test@gmail.com','LOL','LAL','2022-03-02','$2y$10$UEYAPaG8Pgn8yBPiNC7L1OjTuJ8ZZ5BbDKJV1ei9yJ6nMvvBlFcyS');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'credit_card'
--



/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-03 16:05:52
