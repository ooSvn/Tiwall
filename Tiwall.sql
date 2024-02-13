-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: tiwall
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `cast`
--

DROP TABLE IF EXISTS `cast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cast` (
  `Cast_ID` int NOT NULL AUTO_INCREMENT,
  `First_name` varchar(30) DEFAULT NULL,
  `Last_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Cast_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cast`
--

LOCK TABLES `cast` WRITE;
/*!40000 ALTER TABLE `cast` DISABLE KEYS */;
/*!40000 ALTER TABLE `cast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cast_occupation`
--

DROP TABLE IF EXISTS `cast_occupation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cast_occupation` (
  `Cast_Occupation_no` int NOT NULL AUTO_INCREMENT,
  `Cast_ID` int DEFAULT NULL,
  `Event_ID` int DEFAULT NULL,
  `Occupation` varchar(30) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`Cast_Occupation_no`),
  KEY `Event_ID` (`Event_ID`),
  KEY `Cast_ID` (`Cast_ID`),
  CONSTRAINT `cast_occupation_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`),
  CONSTRAINT `cast_occupation_ibfk_2` FOREIGN KEY (`Cast_ID`) REFERENCES `cast` (`Cast_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cast_occupation`
--

LOCK TABLES `cast_occupation` WRITE;
/*!40000 ALTER TABLE `cast_occupation` DISABLE KEYS */;
/*!40000 ALTER TABLE `cast_occupation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `Comment_no` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(30) DEFAULT NULL,
  `Event_ID` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `Context` text,
  `Point` int DEFAULT NULL,
  PRIMARY KEY (`Comment_no`),
  KEY `Username` (`Username`),
  KEY `Event_ID` (`Event_ID`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `user_account` (`Username`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concert`
--

DROP TABLE IF EXISTS `concert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concert` (
  `Concert_ID` int NOT NULL AUTO_INCREMENT,
  `Event_ID` int DEFAULT NULL,
  PRIMARY KEY (`Concert_ID`),
  KEY `fk_Concert` (`Event_ID`),
  CONSTRAINT `fk_Concert` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concert`
--

LOCK TABLES `concert` WRITE;
/*!40000 ALTER TABLE `concert` DISABLE KEYS */;
/*!40000 ALTER TABLE `concert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `Education_ID` int NOT NULL AUTO_INCREMENT,
  `Event_ID` int DEFAULT NULL,
  PRIMARY KEY (`Education_ID`),
  KEY `fk_Education` (`Event_ID`),
  CONSTRAINT `fk_Education` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entertainment`
--

DROP TABLE IF EXISTS `entertainment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entertainment` (
  `Entertainment_ID` int NOT NULL AUTO_INCREMENT,
  `Event_ID` int DEFAULT NULL,
  PRIMARY KEY (`Entertainment_ID`),
  KEY `fk_Entertainment` (`Event_ID`),
  CONSTRAINT `fk_Entertainment` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entertainment`
--

LOCK TABLES `entertainment` WRITE;
/*!40000 ALTER TABLE `entertainment` DISABLE KEYS */;
/*!40000 ALTER TABLE `entertainment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `Event_ID` int NOT NULL AUTO_INCREMENT,
  `Event_type` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Duration` FLOAT(4,2) NOT NULL,
  `Price` int NOT NULL,
  `Discount` int DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  `Instructor` varchar(30) DEFAULT NULL,
  `Presenter` varchar(30) DEFAULT NULL,
  `Presenter_phone` varchar(20) DEFAULT NULL,
  `Catergory` varchar(30) DEFAULT NULL,
  `Genre` varchar(30) DEFAULT NULL,
  `Explanation` varchar(200) DEFAULT NULL,
  `Summary` varchar(200) DEFAULT NULL,
  `Regulation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exhibit`
--

DROP TABLE IF EXISTS `exhibit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exhibit` (
  `Exhibit_ID` int NOT NULL AUTO_INCREMENT,
  `Event_ID` int DEFAULT NULL,
  PRIMARY KEY (`Exhibit_ID`),
  KEY `fk_Exhibit` (`Event_ID`),
  CONSTRAINT `fk_Exhibit` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exhibit`
--

LOCK TABLES `exhibit` WRITE;
/*!40000 ALTER TABLE `exhibit` DISABLE KEYS */;
/*!40000 ALTER TABLE `exhibit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hall`
--

DROP TABLE IF EXISTS `hall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hall` (
  `Hall_no` int NOT NULL AUTO_INCREMENT,
  `Site_no` int DEFAULT NULL,
  `Hall_number` int DEFAULT NULL,
  PRIMARY KEY (`Hall_no`),
  KEY `Site_no` (`Site_no`),
  CONSTRAINT `hall_ibfk_1` FOREIGN KEY (`Site_no`) REFERENCES `site` (`Site_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hall`
--

LOCK TABLES `hall` WRITE;
/*!40000 ALTER TABLE `hall` DISABLE KEYS */;
/*!40000 ALTER TABLE `hall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photo` (
  `Photo_ID` int NOT NULL AUTO_INCREMENT,
  `Event_ID` int DEFAULT NULL,
  `Link` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Photo_ID`),
  KEY `Event_ID` (`Event_ID`),
  CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `Track_no` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(30) DEFAULT NULL,
  `Event_ID` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Ticket_count` int DEFAULT NULL,
  `Expense` int DEFAULT NULL,
  PRIMARY KEY (`Track_no`),
  KEY `Username` (`Username`),
  KEY `Event_ID` (`Event_ID`),
  CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `user_account` (`Username`),
  CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `Seat_no` int NOT NULL AUTO_INCREMENT,
  `Hall_no` int DEFAULT NULL,
  `Floor` int DEFAULT NULL,
  `Row_no` int DEFAULT NULL,
  `Seat_number` int DEFAULT NULL,
  PRIMARY KEY (`Seat_no`),
  KEY `Hall_no` (`Hall_no`),
  CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`Hall_no`) REFERENCES `hall` (`Hall_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat_status`
--

DROP TABLE IF EXISTS `seat_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat_status` (
  `Seat_Status_no` int NOT NULL AUTO_INCREMENT,
  `Seat_no` int DEFAULT NULL,
  `Session_no` int DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `Price` int DEFAULT NULL,
  PRIMARY KEY (`Seat_Status_no`),
  KEY `Seat_no` (`Seat_no`),
  KEY `Session_no` (`Session_no`),
  CONSTRAINT `seat_status_ibfk_1` FOREIGN KEY (`Seat_no`) REFERENCES `seat` (`Seat_no`),
  CONSTRAINT `seat_status_ibfk_2` FOREIGN KEY (`Session_no`) REFERENCES `session` (`Session_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat_status`
--

LOCK TABLES `seat_status` WRITE;
/*!40000 ALTER TABLE `seat_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `seat_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series_movies`
--

DROP TABLE IF EXISTS `series_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series_movies` (
  `Movies_Series_ID` int NOT NULL AUTO_INCREMENT,
  `Event_ID` int DEFAULT NULL,
  PRIMARY KEY (`Movies_Series_ID`),
  KEY `fk_Movies_Series` (`Event_ID`),
  CONSTRAINT `fk_Movies_Series` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series_movies`
--

LOCK TABLES `series_movies` WRITE;
/*!40000 ALTER TABLE `series_movies` DISABLE KEYS */;
/*!40000 ALTER TABLE `series_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `Session_no` int NOT NULL AUTO_INCREMENT,
  `Event_ID` int DEFAULT NULL,
  `Start_time` time DEFAULT NULL,
  `End_time` time DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`Session_no`),
  KEY `Event_ID` (`Event_ID`),
  CONSTRAINT `session_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site` (
  `Site_no` int NOT NULL AUTO_INCREMENT,
  `Province` varchar(30) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Location` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Site_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site`
--

LOCK TABLES `site` WRITE;
/*!40000 ALTER TABLE `site` DISABLE KEYS */;
/*!40000 ALTER TABLE `site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatre`
--

DROP TABLE IF EXISTS `theatre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theatre` (
  `Theatre_ID` int NOT NULL AUTO_INCREMENT,
  `Event_ID` int DEFAULT NULL,
  PRIMARY KEY (`Theatre_ID`),
  KEY `fk_Event_ID` (`Event_ID`),
  CONSTRAINT `fk_Event_ID` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatre`
--

LOCK TABLES `theatre` WRITE;
/*!40000 ALTER TABLE `theatre` DISABLE KEYS */;
/*!40000 ALTER TABLE `theatre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatre_film`
--

DROP TABLE IF EXISTS `theatre_film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theatre_film` (
  `Theatre_Film_ID` int NOT NULL AUTO_INCREMENT,
  `Event_ID` int DEFAULT NULL,
  PRIMARY KEY (`Theatre_Film_ID`),
  KEY `fk_Theatre_Film` (`Event_ID`),
  CONSTRAINT `fk_Theatre_Film` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatre_film`
--

LOCK TABLES `theatre_film` WRITE;
/*!40000 ALTER TABLE `theatre_film` DISABLE KEYS */;
/*!40000 ALTER TABLE `theatre_film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `Ticket_no` int NOT NULL AUTO_INCREMENT,
  `Seat_no` int DEFAULT NULL,
  `Session_no` int DEFAULT NULL,
  `Track_no` int DEFAULT NULL,
  PRIMARY KEY (`Ticket_no`),
  KEY `Seat_no` (`Seat_no`),
  KEY `Session_no` (`Session_no`),
  KEY `Track_no` (`Track_no`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`Seat_no`) REFERENCES `seat` (`Seat_no`),
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`Session_no`) REFERENCES `session` (`Session_no`),
  CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`Track_no`) REFERENCES `purchase` (`Track_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_account` (
  `Username` varchar(30) NOT NULL,
  `First_name` varchar(30) NOT NULL,
  `Last_name` varchar(30) NOT NULL,
  `Visible_name` varchar(30) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Wallet_balance` int DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Educational_degree` varchar(20) DEFAULT NULL,
  `Major` varchar(20) DEFAULT NULL,
  `Profile` varchar(50) DEFAULT NULL,
  `Occupation` varchar(30) DEFAULT NULL,
  `Joining_date` date DEFAULT NULL,
  `Bio` varchar(200) DEFAULT NULL,
  `Province` varchar(30) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Postal_code` bigint DEFAULT NULL,
  `Plus` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `Video_ID` int NOT NULL AUTO_INCREMENT,
  `Event_ID` int DEFAULT NULL,
  `Link` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Video_ID`),
  KEY `Event_ID` (`Event_ID`),
  CONSTRAINT `video_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-12  8:45:40