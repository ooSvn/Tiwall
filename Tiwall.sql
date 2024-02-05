-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: Tiwall
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

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
-- Table structure for table `Concert`
--

DROP TABLE IF EXISTS `Concert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Concert` (
  `Concert_ID` int NOT NULL AUTO_INCREMENT,
  `Event_ID` int DEFAULT NULL,
  PRIMARY KEY (`Concert_ID`),
  KEY `fk_Concert` (`Event_ID`),
  CONSTRAINT `fk_Concert` FOREIGN KEY (`Event_ID`) REFERENCES `Event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Concert`
--

LOCK TABLES `Concert` WRITE;
/*!40000 ALTER TABLE `Concert` DISABLE KEYS */;
/*!40000 ALTER TABLE `Concert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Education`
--

DROP TABLE IF EXISTS `Education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Education` (
  `Education_ID` int NOT NULL AUTO_INCREMENT,
  `Event_ID` int DEFAULT NULL,
  PRIMARY KEY (`Education_ID`),
  KEY `fk_Education` (`Event_ID`),
  CONSTRAINT `fk_Education` FOREIGN KEY (`Event_ID`) REFERENCES `Event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Education`
--

LOCK TABLES `Education` WRITE;
/*!40000 ALTER TABLE `Education` DISABLE KEYS */;
/*!40000 ALTER TABLE `Education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Entertainment`
--

DROP TABLE IF EXISTS `Entertainment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Entertainment` (
  `Entertainment_ID` int NOT NULL AUTO_INCREMENT,
  `Event_ID` int DEFAULT NULL,
  PRIMARY KEY (`Entertainment_ID`),
  KEY `fk_Entertainment` (`Event_ID`),
  CONSTRAINT `fk_Entertainment` FOREIGN KEY (`Event_ID`) REFERENCES `Event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Entertainment`
--

LOCK TABLES `Entertainment` WRITE;
/*!40000 ALTER TABLE `Entertainment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Entertainment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event`
--

DROP TABLE IF EXISTS `Event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Event` (
  `Event_ID` int NOT NULL,
  `Event_type` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Duration` int NOT NULL,
  `Price` int NOT NULL,
  `Discount` int NOT NULL,
  `Salary` int NOT NULL,
  `Instructor` varchar(30) DEFAULT NULL,
  `Presenter` varchar(30) DEFAULT NULL,
  `Presenter_phone` int DEFAULT NULL,
  `Catergory` varchar(20) NOT NULL,
  `Genre` varchar(20) NOT NULL,
  `Explanation` varchar(100) DEFAULT NULL,
  `Summary` varchar(50) DEFAULT NULL,
  `Regulation` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event`
--

LOCK TABLES `Event` WRITE;
/*!40000 ALTER TABLE `Event` DISABLE KEYS */;
/*!40000 ALTER TABLE `Event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Exhibit`
--

DROP TABLE IF EXISTS `Exhibit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Exhibit` (
  `Exhibit_ID` int NOT NULL AUTO_INCREMENT,
  `Event_ID` int DEFAULT NULL,
  PRIMARY KEY (`Exhibit_ID`),
  KEY `fk_Exhibit` (`Event_ID`),
  CONSTRAINT `fk_Exhibit` FOREIGN KEY (`Event_ID`) REFERENCES `Event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Exhibit`
--

LOCK TABLES `Exhibit` WRITE;
/*!40000 ALTER TABLE `Exhibit` DISABLE KEYS */;
/*!40000 ALTER TABLE `Exhibit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Series_Movies`
--

DROP TABLE IF EXISTS `Series_Movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Series_Movies` (
  `Movies_Series_ID` int NOT NULL AUTO_INCREMENT,
  `Event_ID` int DEFAULT NULL,
  PRIMARY KEY (`Movies_Series_ID`),
  KEY `fk_Movies_Series` (`Event_ID`),
  CONSTRAINT `fk_Movies_Series` FOREIGN KEY (`Event_ID`) REFERENCES `Event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Series_Movies`
--

LOCK TABLES `Series_Movies` WRITE;
/*!40000 ALTER TABLE `Series_Movies` DISABLE KEYS */;
/*!40000 ALTER TABLE `Series_Movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Theatre`
--

DROP TABLE IF EXISTS `Theatre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Theatre` (
  `Theatre_ID` int NOT NULL AUTO_INCREMENT,
  `Event_ID` int DEFAULT NULL,
  PRIMARY KEY (`Theatre_ID`),
  KEY `fk_Event_ID` (`Event_ID`),
  CONSTRAINT `fk_Event_ID` FOREIGN KEY (`Event_ID`) REFERENCES `Event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Theatre`
--

LOCK TABLES `Theatre` WRITE;
/*!40000 ALTER TABLE `Theatre` DISABLE KEYS */;
/*!40000 ALTER TABLE `Theatre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Theatre_Film`
--

DROP TABLE IF EXISTS `Theatre_Film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Theatre_Film` (
  `Theatre_Film_ID` int NOT NULL AUTO_INCREMENT,
  `Event_ID` int DEFAULT NULL,
  PRIMARY KEY (`Theatre_Film_ID`),
  KEY `fk_Theatre_Film` (`Event_ID`),
  CONSTRAINT `fk_Theatre_Film` FOREIGN KEY (`Event_ID`) REFERENCES `Event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Theatre_Film`
--

LOCK TABLES `Theatre_Film` WRITE;
/*!40000 ALTER TABLE `Theatre_Film` DISABLE KEYS */;
/*!40000 ALTER TABLE `Theatre_Film` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-05 20:33:08
