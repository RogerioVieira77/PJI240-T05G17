CREATE DATABASE  IF NOT EXISTS `descarte_medicamentos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `descarte_medicamentos`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: descarte_medicamentos
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `users_adm`
--

DROP TABLE IF EXISTS `users_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_adm` (
  `n_useradmid` int NOT NULL AUTO_INCREMENT,
  `c_useradmnome` char(255) DEFAULT NULL,
  `c_useradmemail` char(255) DEFAULT NULL,
  `p_useradmpass` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`n_useradmid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_adm`
--

LOCK TABLES `users_adm` WRITE;
/*!40000 ALTER TABLE `users_adm` DISABLE KEYS */;
INSERT INTO `users_adm` VALUES (1,'Rogerio Vieira','2223134@aluno.univesp.br','11b0c4a72212f48ca531dba9e35fafcf'),(2,'Clayton Campos','2202020@aluno.univesp.br','55df88b5fc898e4b6b9b7934096eafee'),(3,'Ingrid Oliveira','2220035@aluno.univesp.br','17b683ceecdb14bbf135331758fca39f'),(4,'Lenderson Araujo','2203841@aluno.univesp.br','ba3a36fcda407d2e449c0b9449cfd7c8'),(5,'Viviane Goncalves','1705320@aluno.univesp.br','6ea46c063d919e86b5bb94845776f8de'),(6,'Pedro Oliveira','2213945@aluno.univesp.br','ea7ef9153b13e6398dc5714ac91b19d2');
/*!40000 ALTER TABLE `users_adm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-21 13:06:48
