-- MySQL dump 10.13  Distrib 8.0.40, for macos14 (arm64)
--
-- Host: localhost    Database: mobilebanking
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `add_money_bank`
--

DROP TABLE IF EXISTS `add_money_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_money_bank` (
  `trx_id` varchar(8) NOT NULL,
  `user_id` int DEFAULT NULL,
  `acc_no` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`trx_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `add_money_bank_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_money_bank`
--

LOCK TABLES `add_money_bank` WRITE;
/*!40000 ALTER TABLE `add_money_bank` DISABLE KEYS */;
INSERT INTO `add_money_bank` VALUES ('0BNNLU3E',9,'65432234',8000.00),('0EPFIXWS',1,'76543456',5000.00),('3WWHIPGP',1,'63457627',300.00),('4NBWWADV',1,'876534567',5999.00),('6Y6RCNY4',1,'98765434567',50.00),('9DLOG1SA',3,'23457653',2999.00),('HYM0AOQZ',1,'98765434567',500.00),('I71M1IDL',1,'345676543',599.00),('OND9VER6',1,'98765434567',3999.00),('PUVE46GX',1,'25365665',100.00),('Q1DFBDNE',13,'4536756765897',67.00),('SE74THPS',2,'234543',5000.00),('UN9SDYCK',7,'23457653',400.00),('XJ8QN1RN',7,'23457653',5999.00),('Z592D5LC',1,'98765434567',600.00);
/*!40000 ALTER TABLE `add_money_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `add_money_card`
--

DROP TABLE IF EXISTS `add_money_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_money_card` (
  `trx_id` varchar(8) NOT NULL,
  `user_id` int DEFAULT NULL,
  `card_no` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`trx_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `add_money_card_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_money_card`
--

LOCK TABLES `add_money_card` WRITE;
/*!40000 ALTER TABLE `add_money_card` DISABLE KEYS */;
INSERT INTO `add_money_card` VALUES ('17Z3JWU7',6,'4567 8965 3567 8667',5000.00),('4S3SWV5T',7,'4678 9087 6545 6778',5000.00),('81J6QP62',2,'2345432',500.00),('AHUWOD25',1,'4345 6543 2345 6765',2999.00),('B7AIPSYP',1,'5345 6765 4345 6787',589.00),('BZY36SHJ',1,'5437 2819 7657 7899',43.00),('F7VCK0XT',6,'4567 8907 6432 4576',100000.00),('FBOW3RKV',11,'4567 8900 6543 3455',50000.00),('KF8L11H6',10,'4567 5434 5678 6888',30000.00),('NYN02HEH',13,'5465 7657 7565 5755',90000.00),('PHDZFY7X',7,'4345 6543 2345 6543',5999.00),('RH5UEBIT',12,'5234 5654 3237 6543',2000.00),('VS7WOHYO',1,'7654345765',400.00),('YPKRRJO4',1,'4565 4323 4567 6543',499.00);
/*!40000 ALTER TABLE `add_money_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_profile`
--

DROP TABLE IF EXISTS `admin_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_profile` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `nid` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(20) DEFAULT 'unauthorized',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_profile`
--

LOCK TABLES `admin_profile` WRITE;
/*!40000 ALTER TABLE `admin_profile` DISABLE KEYS */;
INSERT INTO `admin_profile` VALUES (1,'Alif','K','2000-11-24','alif@gmail.com','01720694369','8765783653','$2b$12$jVW9o.JkQB.TIaseGnrzGOhowYXVnk410M4a/KIm4cjKvx9GniTqm','authorized'),(2,'Test','1','2025-04-08','test1@gmail.com','01234567891','1234567890','$2b$12$RUcrXD.EEVExQovijk6QeeGpybvlkzCvBWYOGSX.Xxzfccjj3753e','authorized'),(3,'Test ','2','2025-04-01','test2@gmail.com','01234567892','8765783653','$2b$12$pxMcc/gfVAPvaD5So4xpm.EO.xzy78n8FucJVp0T.Og/syNUUuMWi','authorized'),(4,'Tester','4','2025-04-03','tester4@gmail.com','01234567893','1234512345','$2b$12$1x4rEmXqTCeTfMaxI.hfLO6t/41iuZ55dv/Xl8dG7xQoZMrKzstSK','unauthorized'),(5,'Tester','Admin','2000-04-22','testeradmin@gmail.com','01234567888','4345432345','$2b$12$1zY7zYAjR2ciPM64E.CiZOFdOCQyWd.sXUpp2YjZ05AiqBSRFeZ7W','unauthorized'),(6,'Anita','Haque','2001-01-01','admin@gmail.com','01897654678','1234567891','$2b$12$.m1TOT9dYaiEB7aYC/d7t.NkrNFoW6rMtnP6436L.m29RpIhnG1kO','authorized'),(7,'Opy','Opy','2025-04-26','radone1379@gmail.com','01609769008','1234567890','$2b$12$Aw1AK1H3Z3HsUp7GX4iPgON6mZKJsFj3/WoQRL/VdI51WmC97jHju','authorized'),(8,'Fatima','Johora','2002-02-22','fatu@gmail.com','01886757297','1512345667','$2b$12$dv8Nls6YicW7YzgB7m3M2OWONdV4RFN2JV6jupeVu5wnErfPly3B2','authorized'),(9,'Opy','Ahmed','2009-06-04','redone1379@gmail.com','01766309155','5467389474','$2b$12$sj4bZD5JCYOoTdQuJ.4cBe2Wb3dvRHxj2TxrxK8CsQfnKfGqVPaja','authorized');
/*!40000 ALTER TABLE `admin_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_reports`
--

DROP TABLE IF EXISTS `admin_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_reports` (
  `report_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `trx_id` varchar(20) DEFAULT NULL,
  `report_type` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `actions` varchar(20) DEFAULT 'pending',
  `remarks` text,
  PRIMARY KEY (`report_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `admin_reports_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_reports`
--

LOCK TABLES `admin_reports` WRITE;
/*!40000 ALTER TABLE `admin_reports` DISABLE KEYS */;
INSERT INTO `admin_reports` VALUES (1,1,'44PBNVWZ','Request Cancellation',-33.00,'approve',''),(2,1,'YS8WHMDT','Request Cancellation',-599.00,'pending',NULL),(3,7,'AJVL6HM0','Request Cancellation',-200.00,'approve',''),(4,7,'46G0OX0Q','Request Cancellation',-999.00,'approve',''),(5,5,'QDF6VUT1','Request Cancellation',-68.00,'approve',''),(6,1,'ROJ4YRO9','Request Cancellation',-555.00,'approve',''),(7,5,'FHMCRHOH','Request Cancellation',-39.00,'pending',NULL),(8,9,'DTLQOZ7P','Request Cancellation',-1500.00,'pending',NULL);
/*!40000 ALTER TABLE `admin_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_cards`
--

DROP TABLE IF EXISTS `gift_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gift_cards` (
  `card_no` varchar(255) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'active',
  PRIMARY KEY (`card_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_cards`
--

LOCK TABLES `gift_cards` WRITE;
/*!40000 ALTER TABLE `gift_cards` DISABLE KEYS */;
INSERT INTO `gift_cards` VALUES ('3EBR6KK0EHWO',100.00,'active'),('A0LQ2B8H3PYD',200.00,'active'),('A7J1B4F9X3Z6',200.00,'active'),('AFAYAI39FDLU',200.00,'active'),('B2M0V3T5Y9R1',50.00,'active'),('B2N9X0TZJ3QV',100.00,'active'),('B9KGT8QF2R9S',50.00,'active'),('C8Q7P1N3F0Z4',100.00,'active'),('C8T9D1W0QGVZ',500.00,'active'),('D2JX7VCK8ZQL',200.00,'active'),('D9R0J2T8Y5V3',200.00,'active'),('D9V6A2Y3LR8W',200.00,'active'),('E1J0X4T9G3RW',50.00,'active'),('E2PQ1V5R0Z0J',500.00,'active'),('E7G6X0Q1L2Y9',500.00,'active'),('EVUJBR4F9ZT3',1000.00,'active'),('F0N7R3V9B8Q4',100.00,'active'),('F1ZKD5XY2JWL',50.00,'active'),('F3B9V0Y2P4X6',1000.00,'active'),('FGR97PEXOJZJ',50.00,'active'),('G2T5J8Q7Z0W3',200.00,'active'),('G6Y5V2J0M7P3',500.00,'active'),('G7UO6HLPD8YZ',500.00,'active'),('H0TJL1EK49PZ',200.00,'active'),('H1X9P4V0Y2B8',50.00,'active'),('H4W1Q9D8K5ZL',1000.00,'active'),('H7R5Z0Q29BNP',100.00,'active'),('I0M3R9K6Q7N5',100.00,'active'),('I2C8P9J0R7YN',200.00,'active'),('I9NF7HR3KFLD',1000.00,'active'),('J3M9B0QN8X2S',500.00,'used'),('J3Q4V0K1H5Y6',50.00,'used'),('J9N0T4Y5L1F3',200.00,'active'),('K0YVXZ8B2QFH',200.00,'active'),('K7V6Y2P8B0Q4',500.00,'active'),('K8D9T2N3L1P4',100.00,'active'),('K8V4FX6B9CN0',50.00,'active'),('L2AZJK9TP5WO',50.00,'active'),('L3F1V5X0EZ0S',500.00,'active'),('L3Q9X2F1T7R0',1000.00,'active'),('L7M9V0B3Y8FQ',200.00,'active'),('L7PX4H3ZDJ6Q',500.00,'active'),('M3P0J2VE8QX1',50.00,'active'),('M5R8D0P3Y9X2',200.00,'active'),('M5T2P8Y9D0NX',500.00,'active'),('N0F4V6E3R2W9',1000.00,'active'),('N2B6K7Q1L0Y8',50.00,'active'),('N4DWJ8Z1OGKY',200.00,'active'),('O4T3V0F9X7J2',100.00,'active'),('O8X1Z0G4B7J2',200.00,'active'),('O8Z4X5FY3BR1',1000.00,'active'),('P1Y9M6Z2L0B7',200.00,'active'),('P3JF4V9EKM3F',50.00,'active'),('P6Q9V0T3Y5R8',50.00,'active'),('PXRZ6T0JG9FB',200.00,'active'),('Q0K4V1R7J9X5',500.00,'active'),('Q2H8K7F3J0WD',100.00,'active'),('Q6H3D8Z0Y5M7',50.00,'active'),('R1F0Z5M7O9PA',200.00,'active'),('R7J5B3Y9X0F1',200.00,'active'),('R8X2F0T3W9M6',1000.00,'active'),('R9XND4M8KJ2F',1000.00,'active'),('S0Q1V8B9Y7K3',200.00,'active'),('S1NR0K7V2D5Y',100.00,'active'),('S5RZ3D0N3KQI',100.00,'active'),('S9L2T4Q3M8V0',500.00,'active'),('SJUJBZK7GF3R',500.00,'active'),('T2Y8T7R9W3FQ',1000.00,'active'),('T3L9Y5M0X7J1',50.00,'active'),('T3M2C0A5Y8VD',100.00,'active'),('T8W0P5Z3J2X6',1000.00,'active'),('U0F9AR5O3VHD',1000.00,'active'),('U1Y7X2R9B5M4',200.00,'active'),('U4F8V2K3J9W6',100.00,'active'),('U6V2Y9P3J8GD',1000.00,'active'),('V0B9T3Q1L7P2',200.00,'active'),('V3F8K1L7D0P0',50.00,'active'),('V5LK2J1P6R4F',200.00,'active'),('W5Q0Y3J2Z8N1',100.00,'active'),('W6FG7XEZP1LM',1000.00,'active'),('W9J1Y4X6F2K3',500.00,'active'),('WJ0ZX9RQG47H',100.00,'active'),('WZ9JE0HQ8O7X',200.00,'active'),('X2G5VJ0YZ7BW',200.00,'active'),('X4R9F0D2Y7G5',200.00,'active'),('X8T0M3V2Z9R5',1000.00,'active'),('Y0T8M1B3Q7W4',500.00,'active'),('Y5HR8X4LZ1JT',200.00,'active'),('Y7Q4J9B0P1L8',200.00,'active'),('YQVC3X7DK0EJ',500.00,'active'),('Z3N5V0K7R8T9',50.00,'active'),('Z6L2P8R0V5Y9',1000.00,'active'),('ZY9PQ3CFNRD0',100.00,'active');
/*!40000 ALTER TABLE `gift_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `history_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `trx_id` varchar(20) DEFAULT NULL,
  `account` varchar(100) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (2,1,'Electricity Bill Payment','N/A','34565432','2025-04-16 22:43:08',-33.00),(3,1,'WiFi Bill Payment','N/A','23456543','2025-04-16 22:44:18',-34.00),(4,1,'International Money Transfer','YS8WHMDT','234543','2025-04-16 22:44:49',-599.00),(5,1,'Send Money','0W3HCOH3','01609769008','2025-04-16 22:47:12',-68.00),(6,1,'Loan Payment','N/A','N/A','2025-04-16 22:57:26',528.94),(7,1,'Loan Payment','N/A','N/A','2025-04-16 22:57:29',420.94),(8,1,'Loan Payment','N/A','N/A','2025-04-16 22:57:39',530.00),(9,1,'Investment','76WA3TOPFGV2','Chillox','2025-04-16 22:59:29',-499.00),(10,1,'Electricity Bill Payment','N/A','34565432','2025-04-17 01:02:49',-1100.00),(11,1,'WiFi Bill Payment','N/A','345432','2025-04-17 01:04:29',-1100.00),(12,1,'Add Money from Card','AHUWOD25','4345 6543 2345 6765','2025-04-17 01:05:26',2999.00),(13,1,'International Money Transfer','P9WOQ4UJ','65432234','2025-04-17 01:05:59',-498.00),(14,1,'Investment','4JPCI9WFMQIR','StarLink','2025-04-17 02:08:48',-999.00),(15,1,'Investment','XCYV5G65MUIY','Chillox','2025-04-17 02:09:53',-1100.00),(16,3,'Add Money from Bank','9DLOG1SA','23457653','2025-04-17 23:08:06',2999.00),(17,3,'Investment','T56VQOHLK5Q1','Aarong','2025-04-17 23:08:20',-500.00),(18,1,'Electricity Bill Payment','N/A','234565432','2025-04-19 21:55:17',-555.00),(19,1,'Electricity Bill Payment in Installment','N/A','456543','2025-04-19 21:57:31',-334.00),(20,1,'Multi Source Electricity Bill Payment','N/A','35654','2025-04-19 21:59:55',-329.00),(21,1,'Add Money from Bank','4NBWWADV','876534567','2025-04-19 22:10:37',5999.00),(22,1,'Gas Bill Payment in Installment','N/A','35654','2025-04-19 23:05:57',-567.00),(23,1,'Multi Source Gas Bill Payment','N/A','35654','2025-04-19 23:07:27',-456.00),(24,1,'Electricity Bill Payment in Installment','N/A','234543','2025-04-19 23:10:37',-321.00),(25,1,'Multi Source Electricity Bill Payment','N/A','3456543','2025-04-19 23:11:06',-323.00),(26,1,'Electricity Bill Payment','N/A','345654334','2025-04-19 23:11:45',-100.00),(27,1,'WiFi Bill Payment in Installment','N/A','3654324','2025-04-19 23:12:05',-299.00),(28,1,'Multi Source WiFi Bill Payment','N/A','35654','2025-04-19 23:12:26',-233.00),(29,1,'WiFi Bill Payment','N/A','2345654','2025-04-19 23:12:39',-33.00),(30,1,'Electricity Bill Payment','N/A','3456765','2025-04-19 23:24:39',-20.00),(31,1,'Loan Payment','N/A','N/A','2025-04-20 01:08:52',634.94),(32,7,'Add Money from Card','PHDZFY7X','4345 6543 2345 6543','2025-04-20 01:11:18',5999.00),(33,7,'Gas Bill Payment','N/A','234234532','2025-04-20 01:12:00',-399.00),(34,7,'Gas Bill Payment in Installment','N/A','354353534','2025-04-20 01:15:20',-399.00),(35,7,'Multi Source Gas Bill Payment','N/A','76545678','2025-04-20 01:16:50',-399.00),(36,7,'Multi Source Gas Bill Payment','N/A','76545678','2025-04-20 01:17:39',-399.00),(37,7,'Electricity Bill Payment','N/A','4323452342','2025-04-20 01:33:03',-499.00),(38,7,'Electricity Bill Payment in Installment','N/A','3452245324','2025-04-20 01:33:32',-499.00),(39,7,'Multi Source Electricity Bill Payment','N/A','877887764','2025-04-20 01:34:07',-499.00),(40,7,'WiFi Bill Payment','N/A','42536672344','2025-04-20 01:35:41',-599.00),(41,7,'WiFi Bill Payment in Installment','N/A','84987347584','2025-04-20 01:36:06',-599.00),(42,7,'Multi Source WiFi Bill Payment','N/A','98237839453','2025-04-20 01:36:51',-599.00),(43,7,'Add Money from Bank','XJ8QN1RN','23457653','2025-04-20 01:45:19',5999.00),(44,7,'Loan Payment','N/A','N/A','2025-04-20 01:50:34',424.00),(46,7,'Send Money','0Z97GP5Z','01720694369','2025-04-20 02:55:51',-43.00),(47,7,'Send Money','7AO3FJ0Z','01745051995','2025-04-20 03:00:25',-89.00),(48,7,'Loan Payment','N/A','N/A','2025-04-20 03:02:30',1073.92),(51,7,'Add Money from Bank','UN9SDYCK','23457653','2025-04-20 12:42:28',400.00),(52,7,'Add Money from Card','4S3SWV5T','4678 9087 6545 6778','2025-04-20 12:43:52',5000.00),(53,7,'WiFi Bill Payment','N/A','1234543','2025-04-20 12:44:30',-400.00),(54,9,'Add Money from Bank','0BNNLU3E','65432234','2025-04-20 12:55:13',8000.00),(55,9,'Electricity Bill Payment','N/A','35654','2025-04-20 12:55:40',-4000.00),(56,9,'Send Money','DTLQOZ7P','01720694369','2025-04-20 12:56:00',-1500.00),(57,1,'Loan Payment','N/A','N/A','2025-04-20 15:20:08',532.50),(59,1,'Scheduled Send Money','N/A','01886757297','2025-04-26 00:02:01',-199.00),(60,1,'Send Money','7EW2CH1B','01745051995','2025-04-26 00:58:41',-43.00),(61,1,'Send Money','ENUUZQP4','01886757297','2025-04-26 01:01:40',-2.00),(62,1,'Send Money','BWFIQTFU','01886757297','2025-04-26 01:05:18',-82.00),(63,5,'Electricity Bill Payment in Installment','N/A','655789','2025-04-26 23:26:01',-569.00),(64,5,'WiFi Bill Payment','N/A','65547','2025-04-26 23:27:49',-65.00),(65,5,'Gas Bill Payment','N/A','656474','2025-04-26 23:28:58',-567.00),(66,5,'Send Money','FHMCRHOH','01720694369','2025-04-26 23:32:51',-39.00),(67,5,'Send Money','PAX03AHX','01720694369','2025-04-26 23:33:59',-39.00),(68,5,'Scheduled Send Money','N/A','01720694369','2025-04-26 23:35:06',-43.00),(69,5,'Scheduled Send Money','N/A','01720694369','2025-04-26 23:37:02',-43.00),(70,1,'Loan Payment','N/A','N/A','2025-04-26 23:46:37',81.70),(71,1,'Add Money from Card','BZY36SHJ','5437 2819 7657 7899','2025-04-26 23:53:33',43.00),(72,1,'Electricity Bill Payment','N/A','35654','2025-04-27 00:55:48',-33.00),(73,1,'Electricity Bill Payment','N/A','3456543','2025-04-27 01:49:06',-599.00),(74,1,'Cashback','N/A','Electricity Bill','2025-04-27 01:49:06',3.00),(75,1,'Scheduled Send Money','N/A','01727618944','2025-04-27 02:05:04',-10.00),(76,1,'WiFi Bill Payment','N/A','356543','2025-04-27 02:11:23',-50.00),(77,1,'Cashback','N/A','WiFi Bill','2025-04-27 02:11:23',0.25),(78,1,'Send Money','KMSAZQIW','01727618944','2025-04-27 02:14:06',-33.00),(79,9,'Gas Bill Payment','N/A','1234543','2025-04-27 11:47:05',-400.00),(80,9,'Cashback','N/A','Gas Bill','2025-04-27 11:47:05',2.00),(81,6,'Scheduled Send Money','N/A','01720694369','2025-04-27 13:40:00',-400.00),(82,10,'Add Money from Card','KF8L11H6','4567 5434 5678 6888','2025-04-27 13:51:00',30000.00),(83,11,'Add Money from Card','FBOW3RKV','4567 8900 6543 3455','2025-04-27 14:05:02',50000.00),(84,6,'Gas Bill Payment','N/A','1234543','2025-04-27 14:31:10',-400.00),(85,6,'Cashback','N/A','Gas Bill','2025-04-27 14:31:10',1.20),(86,6,'Gas Bill Payment in Installment','N/A','1234543','2025-04-27 14:31:33',-400.00),(87,6,'Gas Bill Payment in Installment','N/A','1234543','2025-04-27 14:50:08',-800.00),(88,1,'Send Money','LH0937F0','01745051995','2025-04-27 14:55:29',-20.00),(89,6,'Scheduled Send Money','N/A','01720694369','2025-04-27 15:13:04',-400.00),(90,12,'Add Money from Card','RH5UEBIT','5234 5654 3237 6543','2025-04-30 18:08:36',2000.00),(91,12,'WiFi Bill Payment','N/A','12345434','2025-04-30 18:09:14',-599.00),(92,12,'Cashback','N/A','WiFi Bill','2025-04-30 18:09:14',1.80),(93,12,'Scheduled Send Money','N/A','01234567892','2025-04-30 18:10:04',-100.00),(94,12,'Scheduled Send Money','N/A','01234567892','2025-04-30 18:16:04',-50.00),(95,1,'Investment','DILGTO8NQ9Q8','Daily Shopping','2025-05-01 22:34:52',-433.00),(96,12,'Multi Source WiFi Bill Payment','N/A','1234543','2025-05-01 23:05:25',-50.00),(97,12,'Gas Bill Payment','N/A','1234543','2025-05-01 23:09:47',-6.00),(98,12,'Cashback','N/A','Gas Bill','2025-05-01 23:09:47',0.02),(99,12,'International Money Transfer','09N8QZMJ','65432234','2025-05-01 23:20:16',-999.00),(100,1,'Multi Source WiFi Bill Payment','N/A','1234543','2025-05-02 01:24:58',-43.00),(101,1,'Multi Source Electricity Bill Payment','N/A','09876','2025-05-02 01:25:27',-40.00),(102,1,'Multi Source Gas Bill Payment','N/A','4567','2025-05-02 01:25:51',-55.00),(103,1,'Scheduled Send Money','N/A','01234567892','2025-05-02 21:31:01',-2.00),(104,1,'Scheduled Send Money','N/A','01234567892','2025-05-02 21:32:21',-2.00),(105,1,'Scheduled Send Money','N/A','01234567892','2025-05-02 21:34:01',-9.00),(106,1,'International Money Transfer','GWIQD9AT','234324','2025-05-02 21:35:46',-80.00),(107,1,'Send Money','YW5JO2HX','01745051995','2025-05-02 21:51:37',-34.00),(108,1,'International Money Transfer','8FF51G03','23457653','2025-05-02 21:52:07',-230.00),(109,1,'Add Money from Card','B7AIPSYP','5345 6765 4345 6787','2025-05-02 23:44:24',589.00),(110,13,'Add Money from Card','NYN02HEH','5465 7657 7565 5755','2025-05-03 17:12:23',90000.00),(111,13,'Investment','UD6MCX8W0QMO','Aarong','2025-05-03 17:15:01',-50.00),(112,13,'Gas Bill Payment in Installment','N/A','1234543','2025-05-03 17:17:22',-56.00),(113,13,'Send Money','61QKI8O0','01886757297','2025-05-03 17:20:02',-56.00),(114,13,'Send Money','VFYDVEXZ','01886757297','2025-05-03 17:20:37',-56.00),(115,13,'Add Money from Bank','Q1DFBDNE','4536756765897','2025-05-03 17:21:18',67.00),(116,13,'International Money Transfer','EY6IM3A0','98765434567','2025-05-03 17:22:28',-43.00),(117,13,'Multi Source Electricity Bill Payment','N/A','1234543','2025-05-03 17:26:40',-56.00),(118,13,'Electricity Bill Payment in Installment','N/A','123454356','2025-05-03 17:28:22',-43.00),(119,12,'Send Money','68F0GJZT','01745051995','2025-05-03 20:13:21',-22.00),(120,12,'Scheduled Send Money','N/A','01234567892','2025-05-03 20:48:01',-20.00),(121,1,'Investment','FIK4DQI76CJ9','Chillox','2025-05-04 00:01:32',-500.00);
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investment_ads`
--

DROP TABLE IF EXISTS `investment_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investment_ads` (
  `investment_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `roi` decimal(5,2) NOT NULL,
  PRIMARY KEY (`investment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investment_ads`
--

LOCK TABLES `investment_ads` WRITE;
/*!40000 ALTER TABLE `investment_ads` DISABLE KEYS */;
INSERT INTO `investment_ads` VALUES (1,'Aarong',7.25),(2,'Chillox',12.50),(3,'StarLink',18.00),(4,'Daily Shopping',9.75);
/*!40000 ALTER TABLE `investment_ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investment_user`
--

DROP TABLE IF EXISTS `investment_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investment_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trx_id` varchar(20) NOT NULL,
  `user_id` int DEFAULT NULL,
  `investment_id` int DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `period` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `return_amount` decimal(10,2) NOT NULL,
  `status` varchar(20) DEFAULT 'inactive',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trx_id` (`trx_id`),
  KEY `user_id` (`user_id`),
  KEY `investment_id` (`investment_id`),
  CONSTRAINT `investment_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`),
  CONSTRAINT `investment_user_ibfk_2` FOREIGN KEY (`investment_id`) REFERENCES `investment_ads` (`investment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investment_user`
--

LOCK TABLES `investment_user` WRITE;
/*!40000 ALTER TABLE `investment_user` DISABLE KEYS */;
INSERT INTO `investment_user` VALUES (1,'1S0TKCHX3W55',1,2,50.00,3,'2025-04-09','2025-07-08',68.75,'completed','2025-04-09 22:48:35'),(2,'2FJBPMLATYQ6',1,3,50.00,3,'2025-04-10','2025-07-09',77.00,'completed','2025-04-10 02:42:13'),(3,'58VHG9LADOBT',1,3,34.00,2,'2025-04-10','2025-06-09',46.24,'completed','2025-04-10 02:46:11'),(4,'865U5HZ2HKHI',1,2,67.00,2,'2025-04-12','2025-06-11',83.75,'completed','2025-04-12 20:50:11'),(5,'940A6ENO3AVG',1,4,400.00,3,'2025-04-12','2025-07-11',517.00,'completed','2025-04-12 22:41:11'),(6,'AH99EQH838FR',1,2,10000000.00,2,'2025-04-10','2025-06-09',12500000.00,'completed','2025-04-10 02:37:53'),(7,'AU5HJPACNJCD',1,2,1000.00,3,'2025-04-10','2025-07-09',1375.00,'completed','2025-04-10 02:57:08'),(8,'AXXWKLQQ2WLK',1,3,34.00,2,'2025-04-10','2025-06-09',46.24,'completed','2025-04-10 02:47:39'),(9,'BMRU2GGAL9MT',1,3,500.00,12,'2025-04-11','2026-04-06',1580.00,'completed','2025-04-11 15:46:44'),(10,'BWS42NGGVFEY',1,3,34.00,2,'2025-04-10','2025-06-09',46.24,'completed','2025-04-10 02:53:47'),(11,'D9C500U20QI7',1,1,50.00,2,'2025-04-10','2025-06-09',57.25,'completed','2025-04-10 02:37:15'),(12,'EUX8SAR45KCK',1,2,500.00,6,'2025-04-11','2025-10-08',875.00,'completed','2025-04-11 15:47:13'),(13,'GHS9OKOCRP4Z',1,3,50.00,3,'2025-04-10','2025-07-09',77.00,'completed','2025-04-10 02:43:04'),(14,'JGQ47S1IZ5KI',1,4,400.00,3,'2025-04-12','2025-07-11',517.00,'completed','2025-04-12 21:45:10'),(15,'JVW4JC1UISYM',1,4,400.00,3,'2025-04-12','2025-07-11',517.00,'completed','2025-04-12 21:44:48'),(16,'N9NXS4U49JKT',1,3,500.00,6,'2025-04-11','2025-10-08',1040.00,'completed','2025-04-11 15:47:08'),(17,'NNX2257EQL82',1,4,45.00,1,'2025-04-10','2025-05-10',49.39,'completed','2025-04-10 02:38:42'),(18,'O2GTP5P62IOI',1,2,500.00,3,'2025-04-12','2025-07-11',687.50,'completed','2025-04-12 21:47:16'),(19,'OLCFDMCGZ1G1',1,3,34.00,2,'2025-04-10','2025-06-09',46.24,'completed','2025-04-10 02:52:37'),(20,'OO0ZH1SLSVBI',1,3,34.00,2,'2025-04-10','2025-06-09',46.24,'completed','2025-04-10 02:46:43'),(21,'Q6MLSDBQNF3H',1,4,45.00,1,'2025-04-10','2025-05-10',49.39,'completed','2025-04-10 02:40:56'),(22,'QLKOSCSHELQN',1,3,50.00,3,'2025-04-10','2025-07-09',77.00,'completed','2025-04-10 02:41:14'),(23,'SI7TMGWJ0T6D',1,3,23.00,2,'2025-04-10','2025-06-09',31.28,'completed','2025-04-10 02:46:01'),(24,'SNQH1LPN3WX7',1,4,500.00,6,'2025-04-11','2025-10-08',792.50,'completed','2025-04-11 15:48:01'),(25,'ULVDU96LAWH6',1,3,23.00,2,'2025-04-10','2025-06-09',31.28,'completed','2025-04-10 02:43:54'),(26,'VSB0NU7F95EG',1,4,45.00,1,'2025-04-10','2025-05-10',49.39,'completed','2025-04-10 02:40:18'),(27,'W9EY5CBX13MA',1,4,45.00,1,'2025-04-10','2025-05-10',49.39,'completed','2025-04-10 02:40:26'),(28,'WP2HSYR3IV13',1,3,23.00,2,'2025-04-10','2025-06-09',31.28,'completed','2025-04-10 02:45:19'),(29,'XMT2BCZJ4OG5',1,4,45.00,1,'2025-04-10','2025-05-10',49.39,'completed','2025-04-10 02:41:04'),(30,'Y1OQKD0S7Q43',1,2,500.00,3,'2025-04-12','2025-07-11',687.50,'completed','2025-04-12 21:50:27'),(31,'Y53BCAPE8WEC',2,3,500.00,3,'2025-04-10','2025-07-09',770.00,'completed','2025-04-10 00:41:28'),(32,'Y75B95459RXF',1,4,400.00,3,'2025-04-12','2025-07-11',517.00,'completed','2025-04-12 21:56:48'),(33,'EI06SE0DCEKQ',1,4,400.00,3,'2025-04-12','2025-07-11',517.00,'completed','2025-04-12 22:43:43'),(34,'ISDOU0CHHQWP',1,1,500.00,4,'2025-04-12','2025-08-10',645.00,'completed','2025-04-12 22:43:55'),(35,'XUQRYNYXMHAF',6,1,50.00,4,'2025-04-13','2025-08-11',64.50,'completed','2025-04-13 13:40:43'),(36,'GH6Z3G3UWXQN',6,1,500.00,5,'2025-04-13','2025-09-10',681.25,'completed','2025-04-13 13:41:13'),(37,'LAM1FAOBZKPM',6,1,10.00,2,'2025-04-13','2025-06-12',11.45,'completed','2025-04-13 13:41:26'),(38,'YZEXGO6GXUJ7',6,2,200.00,2,'2025-04-13','2025-06-12',250.00,'completed','2025-04-13 13:41:39'),(39,'J6IFTEMGJG1H',6,3,300.00,4,'2025-04-13','2025-08-11',516.00,'completed','2025-04-13 13:41:52'),(40,'9RP57MIGD83N',6,3,233.00,5,'2025-04-13','2025-09-10',442.70,'completed','2025-04-13 13:42:19'),(41,'46E0FH3K3830',1,4,333.00,4,'2025-04-13','2025-08-11',462.87,'completed','2025-04-13 13:42:40'),(42,'NPIKUR9MKQWL',1,4,333.00,1,'2025-04-13','2025-05-13',365.47,'completed','2025-04-13 13:45:44'),(43,'MXADZUR5ZIHT',1,2,400.00,1,'2025-04-13','2025-05-13',450.00,'completed','2025-04-13 13:51:36'),(44,'GDMBRFWZDEPK',1,2,467.00,1,'2025-04-13','2025-05-13',525.38,'completed','2025-04-13 13:56:08'),(45,'4XO4UXXCLES5',6,1,700.00,4,'2025-04-13','2025-08-11',903.00,'completed','2025-04-13 13:58:39'),(46,'215TU9BP6KSU',1,3,300.00,1,'2025-04-13','2025-05-13',354.00,'completed','2025-04-13 15:08:02'),(47,'76WA3TOPFGV2',1,2,499.00,4,'2025-04-16','2025-08-14',748.50,'completed','2025-04-16 22:59:26'),(48,'9RLBMMYL9WS9',1,1,1100.00,2,'2025-04-17','2025-06-16',1259.50,'completed','2025-04-17 02:04:32'),(49,'F1E2GYKXR7K4',1,3,1100.00,2,'2025-04-17','2025-06-16',1496.00,'completed','2025-04-17 02:05:21'),(50,'JUIYE0SYR796',1,2,500.00,2,'2025-04-17','2025-06-16',625.00,'completed','2025-04-17 02:05:35'),(51,'XXDHMTQCNO6W',1,2,1000.00,3,'2025-04-17','2025-07-16',1375.00,'completed','2025-04-17 02:06:32'),(52,'4JPCI9WFMQIR',1,3,999.00,2,'2025-04-17','2025-06-16',1358.64,'completed','2025-04-17 02:08:46'),(53,'XCYV5G65MUIY',1,2,1100.00,2,'2025-04-17','2025-06-16',1375.00,'completed','2025-04-17 02:09:49'),(54,'T56VQOHLK5Q1',3,1,500.00,3,'2025-04-17','2025-07-16',608.75,'completed','2025-04-17 23:08:18'),(55,'DILGTO8NQ9Q8',1,4,433.00,3,'2025-05-01','2025-07-30',559.65,'completed','2025-05-01 22:34:47'),(56,'DLLZIXVOEGF9',12,2,233.00,3,'2025-05-01','2025-07-30',320.38,'completed','2025-05-01 22:58:56'),(57,'4YP2MHCF3DMK',12,4,233.00,3,'2025-05-01','2025-07-30',301.15,'completed','2025-05-01 22:59:06'),(58,'LTCCWXCITBJE',12,4,233.00,2,'2025-05-01','2025-06-30',278.44,'completed','2025-05-01 22:59:30'),(59,'UD6MCX8W0QMO',13,1,50.00,2,'2025-05-03','2025-07-02',57.25,'completed','2025-05-03 17:14:48'),(60,'FIK4DQI76CJ9',1,2,500.00,3,'2025-05-04','2025-08-02',687.50,'completed','2025-05-04 00:01:29');
/*!40000 ALTER TABLE `investment_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans`
--

DROP TABLE IF EXISTS `loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loans` (
  `trx_id` varchar(20) NOT NULL,
  `user_id` int DEFAULT NULL,
  `loan_amount` decimal(10,2) DEFAULT NULL,
  `interest_rate` decimal(5,2) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `return_amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `remarks` varchar(255) DEFAULT 'None',
  PRIMARY KEY (`trx_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `loans_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans`
--

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
INSERT INTO `loans` VALUES ('2860R1VIZ5',7,600.00,5.50,2,'2025-04-20','2025-06-20',633.00,'approved','None'),('3JIISMKD5S',1,33.00,5.50,2,'2025-05-04','2025-07-04',34.81,'approved',''),('6J31IWJYVG',1,40.00,6.00,3,'2025-05-04','2025-08-04',42.40,'approved',''),('7DZVJC064W',1,100.00,5.50,2,'2025-05-01','2025-07-01',105.50,'approved','Accepted For 2 Months.'),('D0G35972LL',7,1000.00,6.50,4,'2025-04-27','2025-08-27',1065.00,'approved','None'),('I58J6B5S24',13,340.00,7.50,6,'2025-05-03','2025-11-03',365.50,'approved','pay quick'),('K97QPTTJN6',6,800.00,5.00,1,'2025-04-27','2025-05-27',840.00,'approved','None'),('LNTHKI4TE4',7,100.00,5.00,1,'2025-04-20','2025-05-20',105.00,'approved','None'),('MYBB5EILEY',1,12.00,7.00,5,'2025-05-04','2025-10-04',12.84,'approved',''),('NBGC5K9X4M',12,200.00,5.50,2,'2025-04-30','2025-06-30',211.00,'approved','None'),('O3W0BSL3K1',1,90.00,7.00,5,NULL,NULL,96.30,'pending','None'),('OL2WO4JSHC',9,50000.00,6.50,4,NULL,NULL,53250.00,'pending','None');
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int DEFAULT NULL,
  `recipient_id` int DEFAULT NULL,
  `message` text NOT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(20) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `user_profile` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,1,NULL,'Hlw, I am facing problem regarding send money.','2025-04-19 22:03:27','user',1),(2,1,NULL,'I need emergency help','2025-04-19 22:03:48','user',1),(3,1,NULL,'Can you send help?','2025-04-19 22:03:59','user',1),(4,5,NULL,'Hlw','2025-04-19 22:05:01','user',1),(5,5,NULL,'Anyone there for help?','2025-04-19 22:05:11','user',1),(6,NULL,1,'Hello , I am Alif from the Help Support. How can I help you?','2025-04-19 22:06:19','admin',0),(7,7,NULL,'Hlw !','2025-04-20 02:53:58','user',1),(8,7,NULL,'hi','2025-04-20 12:46:25','user',1),(9,NULL,7,'yes','2025-04-20 12:47:31','admin',0),(10,1,NULL,'Hello','2025-04-20 15:23:09','user',1),(11,NULL,5,'Yes, How can I help you?','2025-04-26 00:05:10','admin',0),(12,5,NULL,'creating account','2025-04-26 23:31:08','user',1),(13,NULL,5,'dont create','2025-04-26 23:41:27','admin',0),(14,12,NULL,'Hello, Is there anyone for help? I am facing some problem regarding send money.','2025-04-30 17:53:18','user',1),(15,NULL,12,'Hello there, May I know exactly what kind of problem you are facing?','2025-04-30 17:55:06','admin',0),(16,12,NULL,'Actually I wanted to know is there any extra charge for send money?','2025-04-30 17:57:17','user',1),(17,NULL,12,'There is no hidden charge for sending money. You can send money to any user free of cost. Is there anything else I can help with?','2025-04-30 17:58:46','admin',0),(18,12,NULL,'No, Thank You so much for the help.','2025-04-30 17:59:36','user',1),(19,13,NULL,'Can you send help?','2025-05-03 17:35:13','user',1),(20,NULL,13,'no','2025-05-03 17:46:20','admin',0);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `notification_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `alerts` text NOT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notification_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (6,2,'Sent 50.0 to Alif','2025-04-09 23:35:42'),(8,2,'Sent 500.0 BDT internationally to Test in Saudi Arabia','2025-04-10 00:40:34'),(9,2,'Add money from Bank account 234543 for Taka 5000.00 successful, Trx ID: SE74THPS','2025-04-10 00:40:50'),(10,2,'Add money from card account 2345432 for Taka 500.00 successful, Trx ID: 81J6QP62','2025-04-10 00:41:05'),(11,2,'Successfully invested 500.00 Taka on StarLink for 3 months.','2025-04-10 00:41:30'),(12,2,'Gift card of 1200.00 Taka Redeemed!','2025-04-10 00:41:53'),(13,2,'Sent 100.0 to Alif','2025-04-10 00:42:29'),(40,6,'Add money from card account 4567 8965 3567 8667 for Taka 5000.00 successful, Trx ID: 17Z3JWU7','2025-04-13 13:38:26'),(41,6,'Bill payment for Gas Meter ID 123455 of 50.00 Taka Successful!','2025-04-13 13:39:09'),(42,6,'Bill payment for WiFi ID 123455 of 10.0 Taka Successful!','2025-04-13 13:39:36'),(43,6,'Bill payment for Electricity Meter ID 123455 of 90.0 Taka Successful!','2025-04-13 13:39:55'),(45,6,'Successfully invested 700.00 Taka on Aarong for 4 months.','2025-04-13 13:58:42'),(46,6,'Sent 1000.0 to Alif','2025-04-13 13:59:14'),(48,6,'Bill payment for Gas Meter ID 123455 of 1000.00 Taka Successful!','2025-04-13 14:00:08'),(49,6,'Add money from card account 4567 8907 6432 4576 for Taka 100000.00 successful, Trx ID: F7VCK0XT','2025-04-13 14:01:02'),(50,6,'Bill payment for Electricity Meter ID 123455 of 30000.0 Taka Successful!','2025-04-13 14:01:25'),(51,6,'Sent 32.0 to ergfd','2025-04-13 14:08:38'),(52,2,'Received 32.0 from User 6','2025-04-13 14:08:38'),(61,2,'Received 30.0 from User 1','2025-04-14 16:53:47'),(77,6,'Received 33.0 from User 1','2025-04-16 22:42:21'),(98,3,'Add money from Bank account 23457653 for Taka 2999.00 successful, Trx ID: 9DLOG1SA','2025-04-17 23:08:06'),(99,3,'Successfully invested 500.00 Taka on Aarong for 3 months.','2025-04-17 23:08:20'),(119,7,'Add money from card account 4345 6543 2345 6543 for Taka 5999.00 successful, Trx ID: PHDZFY7X','2025-04-20 01:11:18'),(120,7,'Bill payment for Gas ID 234234532 of 399.0 Taka Successful!','2025-04-20 01:12:00'),(121,7,'Bill payment for Gas ID 354353534 of 399.0 Taka Successful!','2025-04-20 01:15:20'),(122,7,'Bill payment for Gas ID 76545678 of 399.0 Taka Paid from multiple sources!','2025-04-20 01:16:50'),(123,7,'Bill payment for Gas ID 76545678 of 399.0 Taka Paid from multiple sources!','2025-04-20 01:17:39'),(124,7,'Bill payment for WiFi ID 4323452342 of 499.0 Taka Successful!','2025-04-20 01:33:03'),(125,7,'Bill payment for WiFi ID 3452245324 of 499.0 Taka Successful!','2025-04-20 01:33:32'),(126,7,'Bill payment for WiFi ID 877887764 of 499.0 Taka Paid from multiple sources!','2025-04-20 01:34:07'),(127,7,'Bill payment for WiFi ID 42536672344 of 599.0 Taka Successful!','2025-04-20 01:35:41'),(128,7,'Bill payment for WiFi ID 84987347584 of 599.0 Taka Successful!','2025-04-20 01:36:06'),(129,7,'Bill payment for WiFi ID 98237839453 of 599.0 Taka Paid from multiple sources!','2025-04-20 01:36:51'),(130,7,'Your loan of 999.00 has been approved.','2025-04-20 01:38:24'),(131,7,'Your loan of 400.00 has been approved.','2025-04-20 01:40:20'),(132,7,'Add money from Bank account 23457653 for Taka 5999.00 successful, Trx ID: XJ8QN1RN','2025-04-20 01:45:19'),(133,7,'Your loan of 424.00 has been fully paid.','2025-04-20 01:50:34'),(134,7,'Sent 200.0 to test','2025-04-20 02:43:34'),(136,7,'Your loan of 100.00 has been approved.','2025-04-20 02:46:07'),(137,7,'Sent 43.0 to test','2025-04-20 02:55:51'),(139,7,'Sent 89.0 to ergfd','2025-04-20 03:00:25'),(140,2,'Received 89.0 from User 7','2025-04-20 03:00:25'),(141,7,'Your loan of 1073.92 has been fully paid.','2025-04-20 03:02:30'),(142,7,'Sent 999.0 BDT internationally to test in Saudi Arabia','2025-04-20 03:16:18'),(144,2,'Received 68.0 from User 5','2025-04-20 11:24:31'),(145,7,'Add money from Bank account 23457653 for Taka 400.00 successful, Trx ID: UN9SDYCK','2025-04-20 12:42:28'),(146,7,'Add money from card account 4678 9087 6545 6778 for Taka 5000.00 successful, Trx ID: 4S3SWV5T','2025-04-20 12:43:52'),(147,7,'Bill payment for WiFi ID 1234543 of 400.0 Taka Successful!','2025-04-20 12:44:30'),(148,7,'Your loan of 600.00 has been approved.','2025-04-20 12:47:45'),(149,9,'Your Transaction Limit has been updated to 5000 Taka per transaction.','2025-04-20 12:54:42'),(150,9,'Add money from Bank account 65432234 for Taka 8000.00 successful, Trx ID: 0BNNLU3E','2025-04-20 12:55:13'),(151,9,'Bill payment for WiFi ID 35654 of 4000.0 Taka Successful!','2025-04-20 12:55:40'),(152,9,'Sent 1500.0 to Alif','2025-04-20 12:56:00'),(154,9,'Your Transaction Limit has been updated to 50 Taka per transaction.','2025-04-20 12:56:36'),(161,2,'Received 43.0 from User 1','2025-04-26 00:58:41'),(163,6,'Received 2.0 from User 1','2025-04-26 01:01:40'),(165,6,'Received 82.0 from User 1','2025-04-26 01:05:18'),(170,5,'Sent 39.0 to Alif','2025-04-26 23:32:51'),(172,5,'Sent 39.0 to Alif','2025-04-26 23:33:59'),(174,5,'Schedule transfer to 01720694369 of 43.00 Taka Successful!','2025-04-26 23:35:06'),(175,5,'Schedule transfer to 01720694369 of 43.00 Taka Successful!','2025-04-26 23:37:02'),(186,9,'Received 33.0 from User 1','2025-04-27 02:14:06'),(187,9,'Your Transaction Limit has been updated to 500 Taka per transaction.','2025-04-27 11:46:49'),(188,9,'Bill payment for Gas ID 1234543 of 400.0 Taka Successful!','2025-04-27 11:47:05'),(189,9,'Received 2.0 cashback for Gas Bill Payment','2025-04-27 11:47:05'),(190,9,'Your Transaction Limit has been updated to 50 Taka per transaction.','2025-04-27 11:47:36'),(191,9,'Your Transaction Limit has been updated to 2000 Taka per transaction.','2025-04-27 11:48:09'),(192,6,'Schedule transfer to 01720694369 of 400.00 Taka Successful!','2025-04-27 13:40:00'),(193,7,'Your loan of 1000.00 has been approved.','2025-04-27 13:41:21'),(194,6,'Your loan of 800.00 has been approved.','2025-04-27 13:41:21'),(195,10,'Add money from card account 4567 5434 5678 6888 for Taka 30000.00 successful, Trx ID: KF8L11H6','2025-04-27 13:51:00'),(196,11,'Add money from card account 4567 8900 6543 3455 for Taka 50000.00 successful, Trx ID: FBOW3RKV','2025-04-27 14:05:02'),(197,6,'Bill payment for Gas ID 1234543 of 400.0 Taka Successful!','2025-04-27 14:31:10'),(198,6,'Received 1.2 cashback for Gas Bill Payment','2025-04-27 14:31:10'),(199,6,'Bill payment for Gas ID 1234543 of 400.0 Taka Successful!','2025-04-27 14:31:33'),(200,6,'Bill payment for Gas ID 1234543 of 800.0 Taka Successful!','2025-04-27 14:50:08'),(202,2,'Received 20.0 from User 1','2025-04-27 14:55:29'),(203,6,'Schedule transfer to 01720694369 of 400.00 Taka Successful!','2025-04-27 15:13:04'),(204,12,'Add money from card account 5234 5654 3237 6543 for Taka 2000.00 successful, Trx ID: RH5UEBIT','2025-04-30 18:08:36'),(205,12,'Bill payment for WiFi ID 12345434 of 599.0 Taka Successful!','2025-04-30 18:09:14'),(206,12,'Received 1.8 cashback for Wifi Bill Payment','2025-04-30 18:09:14'),(207,12,'Schedule transfer to 01234567892 of 100.00 Taka Successful!','2025-04-30 18:10:04'),(208,12,'Your loan of 200.00 has been approved.','2025-04-30 18:11:16'),(209,12,'Gift card of 50.00 Taka Redeemed!','2025-04-30 18:12:37'),(210,12,'Schedule transfer to 01234567892 of 50.00 Taka Successful!','2025-04-30 18:16:04'),(211,1,'Successfully invested 433.00 Taka on Daily Shopping for 3 months.','2025-05-01 22:34:52'),(212,1,'Your loan of 100.00 has been approved. Message: Accepted For 2 Months.','2025-05-01 22:36:26'),(213,12,'Bill payment for WiFi ID 1234543 of 50.0 Taka Paid from multiple sources!','2025-05-01 23:05:25'),(214,12,'Bill payment for Gas ID 1234543 of 6.0 Taka Successful!','2025-05-01 23:09:47'),(215,12,'Received 0.02 cashback for Gas Bill Payment','2025-05-01 23:09:47'),(216,12,'Sent 999.0 BDT internationally to t in China','2025-05-01 23:20:16'),(217,1,'Bill payment for WiFi ID 1234543 of 43.0 Taka Paid from multiple sources!','2025-05-02 01:24:58'),(218,1,'Bill payment for Meter ID 09876 of 40.0 Taka Paid from multiple sources!','2025-05-02 01:25:27'),(219,1,'Bill payment for Gas ID 4567 of 55.0 Taka Paid from multiple sources!','2025-05-02 01:25:51'),(220,1,'Schedule transfer to 01234567892 of 2.00 Taka Successful!','2025-05-02 21:31:01'),(221,1,'Schedule transfer to 01234567892 of 2.00 Taka Successful!','2025-05-02 21:32:21'),(222,1,'Schedule transfer to 01234567892 of 9.00 Taka Successful!','2025-05-02 21:34:01'),(223,1,'Sent 80.0 BDT internationally to Test in China','2025-05-02 21:35:46'),(224,1,'Sent 34.0 to test','2025-05-02 21:51:37'),(225,2,'Received 34.0 from User 1','2025-05-02 21:51:37'),(226,1,'Sent 230.0 BDT internationally to mm in Germany','2025-05-02 21:52:07'),(227,1,'Add money from card account 5345 6765 4345 6787 for Taka 589.00 successful, Trx ID: B7AIPSYP','2025-05-02 23:44:24'),(228,13,'Add money from card account 5465 7657 7565 5755 for Taka 90000.00 successful, Trx ID: NYN02HEH','2025-05-03 17:12:23'),(229,13,'Your Transaction Limit has been updated to 2500 Taka per transaction.','2025-05-03 17:13:51'),(230,13,'Successfully invested 50.00 Taka on Aarong for 2 months.','2025-05-03 17:15:01'),(231,13,'Bill payment for Gas ID 1234543 of 56.0 Taka Successful!','2025-05-03 17:17:22'),(232,13,'Sent 56.0 to Alif','2025-05-03 17:20:02'),(233,6,'Received 56.0 from User 13','2025-05-03 17:20:02'),(234,13,'Sent 56.0 to Alif','2025-05-03 17:20:37'),(235,6,'Received 56.0 from User 13','2025-05-03 17:20:37'),(236,13,'Add money from Bank account 4536756765897 for Taka 67.00 successful, Trx ID: Q1DFBDNE','2025-05-03 17:21:18'),(237,13,'Sent 43.0 BDT internationally to ytredfg in Australia','2025-05-03 17:22:28'),(238,13,'Your loan of 340.00 has been approved. Message: pay quick','2025-05-03 17:24:37'),(239,13,'Bill payment for Meter ID 1234543 of 56.0 Taka Paid from multiple sources!','2025-05-03 17:26:40'),(240,13,'Bill payment for Meter ID 123454356 of 43.0 Taka Successful!','2025-05-03 17:28:22'),(241,13,'Gift card of 500.00 Taka Redeemed!','2025-05-03 17:30:23'),(242,12,'Sent 22.0 to t','2025-05-03 20:13:21'),(243,2,'Received 22.0 from User 12','2025-05-03 20:13:21'),(244,12,'Schedule transfer to 01234567892 of 20.00 Taka Successful!','2025-05-03 20:48:01'),(245,1,'Your investment in Chillox of 50.00 Taka has matured. Your return of 68.75 Taka has been added to your balance.','2025-05-04 00:00:11'),(246,1,'Your investment in Aarong of 50.00 Taka has matured. Your return of 57.25 Taka has been added to your balance.','2025-05-04 00:00:11'),(247,2,'Your investment in StarLink of 500.00 Taka has matured. Your return of 770.00 Taka has been added to your balance.','2025-05-04 00:00:11'),(248,1,'Your investment in Chillox of 467.00 Taka has matured. Your return of 525.38 Taka has been added to your balance.','2025-05-04 00:00:11'),(249,6,'Your investment in Aarong of 700.00 Taka has matured. Your return of 903.00 Taka has been added to your balance.','2025-05-04 00:00:11'),(250,1,'Your investment in StarLink of 300.00 Taka has matured. Your return of 354.00 Taka has been added to your balance.','2025-05-04 00:00:11'),(251,1,'Your investment in Chillox of 499.00 Taka has matured. Your return of 748.50 Taka has been added to your balance.','2025-05-04 00:00:11'),(252,1,'Your investment in StarLink of 999.00 Taka has matured. Your return of 1358.64 Taka has been added to your balance.','2025-05-04 00:00:11'),(253,1,'Your investment in Chillox of 1100.00 Taka has matured. Your return of 1375.00 Taka has been added to your balance.','2025-05-04 00:00:11'),(254,3,'Your investment in Aarong of 500.00 Taka has matured. Your return of 608.75 Taka has been added to your balance.','2025-05-04 00:00:11'),(255,1,'Your investment in Daily Shopping of 433.00 Taka has matured. Your return of 559.65 Taka has been added to your balance.','2025-05-04 00:00:11'),(256,13,'Your investment in Aarong of 50.00 Taka has matured. Your return of 57.25 Taka has been added to your balance.','2025-05-04 00:00:11'),(257,1,'Successfully invested 500.00 Taka on Chillox for 3 months.','2025-05-04 00:01:32'),(258,1,'Your investment in Chillox of 500.00 Taka has matured. Your return of 687.50 Taka has been added to your balance.','2025-05-04 00:02:19'),(259,1,'Your loan of 40.00 has been approved.','2025-05-04 00:02:53'),(260,1,'Your loan of 33.00 has been approved.','2025-05-04 00:07:17'),(261,1,'Your loan of 12.00 has been approved.','2025-05-04 00:09:22');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_electricity`
--

DROP TABLE IF EXISTS `pay_electricity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pay_electricity` (
  `user_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `meter_no` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `installment` int DEFAULT '0',
  `multi_source` varchar(10) DEFAULT 'no',
  `due_1` date DEFAULT NULL,
  `due_2` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  CONSTRAINT `pay_electricity_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_electricity`
--

LOCK TABLES `pay_electricity` WRITE;
/*!40000 ALTER TABLE `pay_electricity` DISABLE KEYS */;
INSERT INTO `pay_electricity` VALUES (1,'sfsdfsd','234543',321.00,'February',3,'no','2025-05-19','2025-06-18','pending'),(1,'fggfd','3456543',323.00,'February',0,'yes',NULL,NULL,NULL),(1,'dfgf','345654334',100.00,'March',0,'no',NULL,NULL,NULL),(1,'a','3456765',20.00,'March',0,'no',NULL,NULL,NULL),(7,'test','4323452342',499.00,'February',0,'no',NULL,NULL,NULL),(7,'test ins','3452245324',499.00,'April',3,'no','2025-05-20','2025-06-19','pending'),(7,'test multi','877887764',499.00,'April',0,'yes',NULL,NULL,NULL),(9,'test','35654',4000.00,'January',0,'no',NULL,NULL,NULL),(5,'hi','655789',569.00,'May',3,'no','2025-05-26','2025-06-25','pending'),(1,'t','35654',33.00,'May',0,'no',NULL,NULL,NULL),(1,'gt','3456543',599.00,'May',0,'no',NULL,NULL,NULL),(1,'k','09876',40.00,'March',0,'yes',NULL,NULL,NULL),(13,'opy','1234543',56.00,'March',0,'yes',NULL,NULL,NULL),(13,'opy','123454356',43.00,'February',3,'no','2025-06-02','2025-07-02','pending');
/*!40000 ALTER TABLE `pay_electricity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_gas`
--

DROP TABLE IF EXISTS `pay_gas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pay_gas` (
  `user_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `meter_no` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `installment` int DEFAULT '0',
  `multi_source` varchar(10) DEFAULT 'no',
  `due_1` date DEFAULT NULL,
  `due_2` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  CONSTRAINT `pay_gas_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_gas`
--

LOCK TABLES `pay_gas` WRITE;
/*!40000 ALTER TABLE `pay_gas` DISABLE KEYS */;
INSERT INTO `pay_gas` VALUES (1,'rgfdf','35654',567.00,'March',2,'no','2025-05-19',NULL,'pending'),(1,'dgdfbd','35654',456.00,'February',0,'yes',NULL,NULL,NULL),(7,'Test','234234532',399.00,'March',0,'no',NULL,NULL,NULL),(7,'test ins','354353534',399.00,'January',3,'no','2025-05-20','2025-06-19','pending'),(7,'test multi','76545678',399.00,'April',0,'yes',NULL,NULL,NULL),(7,'test multi','76545678',399.00,'April',0,'yes',NULL,NULL,NULL),(5,'gsgs','656474',567.00,'May',0,'no',NULL,NULL,NULL),(9,'test','1234543',400.00,'March',0,'no',NULL,NULL,NULL),(6,'test','1234543',400.00,'May',0,'no',NULL,NULL,NULL),(6,'test','1234543',400.00,'February',3,'no','2025-05-27','2025-06-26','pending'),(6,'FATIMA','1234543',800.00,'March',2,'no','2025-05-27',NULL,'pending'),(12,'j','1234543',6.00,'March',0,'no',NULL,NULL,NULL),(1,'lll','4567',55.00,'May',0,'yes',NULL,NULL,NULL),(13,'opy','1234543',56.00,'March',2,'no','2025-06-02',NULL,'pending');
/*!40000 ALTER TABLE `pay_gas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_wifi`
--

DROP TABLE IF EXISTS `pay_wifi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pay_wifi` (
  `user_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `wifi_id` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `installment` int DEFAULT '0',
  `multi_source` varchar(10) DEFAULT 'no',
  `due_1` date DEFAULT NULL,
  `due_2` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  CONSTRAINT `pay_wifi_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_wifi`
--

LOCK TABLES `pay_wifi` WRITE;
/*!40000 ALTER TABLE `pay_wifi` DISABLE KEYS */;
INSERT INTO `pay_wifi` VALUES (1,'dfgbv','3654324',299.00,'March',3,'no','2025-05-19','2025-06-18','pending'),(1,'dfg','35654',233.00,'March',0,'yes',NULL,NULL,NULL),(1,'sdfgbvc','2345654',33.00,'February',0,'no',NULL,NULL,NULL),(7,'test','42536672344',599.00,'February',0,'no',NULL,NULL,NULL),(7,'test ins','84987347584',599.00,'September',2,'no','2025-05-20',NULL,'pending'),(7,'test multi','98237839453',599.00,'June',0,'yes',NULL,NULL,NULL),(7,'test ins','1234543',400.00,'October',0,'no',NULL,NULL,NULL),(5,'haha','65547',65.00,'May',0,'no',NULL,NULL,NULL),(1,'Test','356543',50.00,'March',0,'no',NULL,NULL,NULL),(12,'Test','12345434',599.00,'April',0,'no',NULL,NULL,NULL),(12,'ttt','1234543',50.00,'April',0,'yes',NULL,NULL,NULL),(1,'test ins','1234543',43.00,'March',0,'yes',NULL,NULL,NULL);
/*!40000 ALTER TABLE `pay_wifi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_money`
--

DROP TABLE IF EXISTS `request_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_money` (
  `trx_id` varchar(50) NOT NULL,
  `user_id` int DEFAULT NULL,
  `requested_to` int DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`trx_id`),
  KEY `user_id` (`user_id`),
  KEY `requested_to` (`requested_to`),
  CONSTRAINT `request_money_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`),
  CONSTRAINT `request_money_ibfk_2` FOREIGN KEY (`requested_to`) REFERENCES `user_profile` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_money`
--

LOCK TABLES `request_money` WRITE;
/*!40000 ALTER TABLE `request_money` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rewards`
--

DROP TABLE IF EXISTS `rewards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rewards` (
  `tier` varchar(50) NOT NULL,
  `cashback_rate` decimal(4,2) NOT NULL,
  PRIMARY KEY (`tier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rewards`
--

LOCK TABLES `rewards` WRITE;
/*!40000 ALTER TABLE `rewards` DISABLE KEYS */;
INSERT INTO `rewards` VALUES ('bronze',0.30),('diamond',1.50),('gold',0.70),('platinum',0.90),('silver',0.50);
/*!40000 ALTER TABLE `rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_details`
--

DROP TABLE IF EXISTS `saved_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saved_details` (
  `save_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`save_id`),
  UNIQUE KEY `unique_user_phone` (`user_id`,`phone`),
  CONSTRAINT `saved_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_details`
--

LOCK TABLES `saved_details` WRITE;
/*!40000 ALTER TABLE `saved_details` DISABLE KEYS */;
INSERT INTO `saved_details` VALUES (2,1,'test','01745051995'),(4,5,'Alif','01720694369'),(6,1,'Shuvo','01727618944'),(7,13,'Alif','01886757297');
/*!40000 ALTER TABLE `saved_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_transactions`
--

DROP TABLE IF EXISTS `schedule_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_transactions` (
  `schedule_id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int DEFAULT NULL,
  `receiver_id` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `scheduled_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pending',
  PRIMARY KEY (`schedule_id`),
  KEY `sender_id` (`sender_id`),
  KEY `receiver_id` (`receiver_id`),
  CONSTRAINT `schedule_transactions_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `user_profile` (`user_id`),
  CONSTRAINT `schedule_transactions_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `user_profile` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_transactions`
--

LOCK TABLES `schedule_transactions` WRITE;
/*!40000 ALTER TABLE `schedule_transactions` DISABLE KEYS */;
INSERT INTO `schedule_transactions` VALUES (1,1,6,199.00,'2025-04-26 00:02:00','completed'),(2,5,1,43.00,'2025-04-26 23:35:00','completed'),(3,5,1,43.00,'2025-04-26 23:37:00','completed'),(4,1,9,10.00,'2025-04-27 02:05:00','completed'),(5,6,1,400.00,'2025-04-27 13:40:00','completed'),(6,6,1,400.00,'2025-04-27 15:13:00','completed'),(7,12,7,100.00,'2025-04-30 18:10:00','completed'),(8,12,7,50.00,'2025-04-30 18:16:00','completed'),(9,1,7,2.00,'2025-05-02 21:31:00','completed'),(10,1,7,2.00,'2025-05-02 21:31:00','completed'),(11,1,7,9.00,'2025-05-02 21:34:00','completed'),(12,13,7,87.00,'2025-05-09 05:32:00','pending'),(13,12,7,20.00,'2025-05-03 20:48:00','completed');
/*!40000 ALTER TABLE `schedule_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `send_money`
--

DROP TABLE IF EXISTS `send_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `send_money` (
  `user_id` int DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `trx_id` varchar(50) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`trx_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `send_money_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `send_money`
--

LOCK TABLES `send_money` WRITE;
/*!40000 ALTER TABLE `send_money` DISABLE KEYS */;
INSERT INTO `send_money` VALUES (1,'01720694369','0VX20GOJ',55.00,'Alif'),(1,'01609769008','0W3HCOH3',68.00,'test 2'),(7,'01720694369','0Z97GP5Z',43.00,'test'),(2,'01720694369','1YOXLMV9',100.00,'Alif'),(13,'01886757297','61QKI8O0',56.00,'Alif'),(12,'01745051995','68F0GJZT',22.00,'t'),(7,'01745051995','7AO3FJ0Z',89.00,'ergfd'),(1,'01745051995','7EW2CH1B',43.00,'test'),(1,'01745051995','8VNGWS9C',30.00,'tset'),(1,'01886757297','BWFIQTFU',82.00,'tset'),(1,'01720694369','CWRFJTG6',33.00,'Alif'),(9,'01720694369','DTLQOZ7P',1500.00,'Alif'),(1,'01886757297','ENUUZQP4',2.00,'tset'),(6,'01720694369','F8L75XK2',1000.00,'Alif'),(5,'01720694369','FHMCRHOH',39.00,'Alif'),(2,'01720694369','K62DC6CI',50.00,'Alif'),(1,'01727618944','KMSAZQIW',33.00,'Shuvo'),(1,'01745051995','LH0937F0',20.00,'fd'),(6,'01745051995','MMSTO8Z6',32.00,'ergfd'),(5,'01720694369','PAX03AHX',39.00,'Alif'),(1,'01720694369','QDNJ5A7O',50.00,'Alif'),(13,'01886757297','VFYDVEXZ',56.00,'Alif'),(1,'01720694369','X16TVXGI',500.00,'Alif'),(1,'01745051995','YW5JO2HX',34.00,'test');
/*!40000 ALTER TABLE `send_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `send_money_international`
--

DROP TABLE IF EXISTS `send_money_international`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `send_money_international` (
  `trx_id` varchar(50) NOT NULL,
  `user_id` int DEFAULT NULL,
  `account_no` varchar(30) NOT NULL,
  `receivers_name` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `amount_in_bdt` decimal(10,2) NOT NULL,
  `amount_in_selected_country` decimal(10,2) NOT NULL,
  PRIMARY KEY (`trx_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `send_money_international_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `send_money_international`
--

LOCK TABLES `send_money_international` WRITE;
/*!40000 ALTER TABLE `send_money_international` DISABLE KEYS */;
INSERT INTO `send_money_international` VALUES ('09N8QZMJ',12,'65432234','t','China',999.00,59.93),('17MQ5E2M',1,'444444444','teesst','Germany',989.00,7.51),('7YK42RDB',1,'23457653','gdhdrtyugfd','Australia',500.00,6.47),('8FF51G03',1,'23457653','mm','Germany',230.00,1.75),('AIE5VHW8',1,'234324','ytredfg','France',999.00,7.59),('EY6IM3A0',13,'98765434567','ytredfg','Australia',43.00,0.56),('GWIQD9AT',1,'234324','Test','China',80.00,4.80),('HADOIV5L',1,'65432234','Testt','China',599.00,35.93),('N7I54711',1,'345676543','rthgfde','Australia',100.00,1.29),('P9WOQ4UJ',1,'65432234','test','France',498.00,3.78),('T4SRCYJ9',2,'65434567','Test','Saudi Arabia',500.00,15.44),('YS8WHMDT',1,'234543','test','China',599.00,35.93);
/*!40000 ALTER TABLE `send_money_international` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporary_send_money_international`
--

DROP TABLE IF EXISTS `temporary_send_money_international`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporary_send_money_international` (
  `trx_id` varchar(50) NOT NULL,
  `user_id` int DEFAULT NULL,
  `account_no` varchar(30) NOT NULL,
  `receivers_name` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`trx_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `temporary_send_money_international_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporary_send_money_international`
--

LOCK TABLES `temporary_send_money_international` WRITE;
/*!40000 ALTER TABLE `temporary_send_money_international` DISABLE KEYS */;
INSERT INTO `temporary_send_money_international` VALUES ('06OJZG6I',12,'9875678754','Tester','Canada',700.00),('17D8S8OW',NULL,'65432','gfds','Australia',50.00),('2FHQW4WU',NULL,'345676543','trety','Australia',50.00),('6G9RVZJY',7,'234324','Alif','Canada',50000.00),('77WKT1HA',NULL,'765432','ytre','Australia',50.00),('ACI674B2',NULL,'6543','gfds','Australia',50.00),('FG7E2LMV',NULL,'76543345','ytgfdf','Australia',50.00),('FT3LTT4S',2,'65434567','Test','Saudi Arabia',500.00),('GUCNDKM4',NULL,'76543345','hgfd','Australia',50.00),('M7W43N2P',NULL,'2345678','sdfghj','Australia',50.00),('Y3BTD5PU',NULL,'654323456','uytre','Australia',50.00);
/*!40000 ALTER TABLE `temporary_send_money_international` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `nid` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `balance` decimal(10,2) DEFAULT '1000.00',
  `points` int DEFAULT '0',
  `status` varchar(20) DEFAULT 'active',
  `transaction_limit` int DEFAULT '10000',
  `tier` enum('Bronze','Silver','Gold','Platinum','Diamond') NOT NULL DEFAULT 'Bronze',
  `profile_pic` varchar(255) DEFAULT 'default-profile-pic.jpg',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,'Alif','Khan','2023-12-27','alif@gmail.com','01720694369','1234567891','$2b$12$YNkPoY2x8y8xJQiMKjNaxu.DrEgOFqbFXXbnE.pSUTh/K3LjbJASa',12030.23,181,'active',5000,'Silver','/IMG_20211203_172508.jpg'),(2,'tester','11','2025-04-09','tester1@gmail.com','01745051995','3456345678','$2b$12$e8fy./G/ilu4/WSopb682O/LwNUThoIa1qmBq5kAF1H4dORxONttK',7590.00,0,'active',10000,'Bronze',NULL),(3,'Tester','2','2004-06-08','tester2@gmail.com','01123456789','34523454323','$2b$12$YcHcmObkBSmc9GyidN9.JOoLVdkh4mFqRD2CrUa3LRrlHIjtJxk3G',4107.75,0,'suspended',10000,'Bronze','default-profile-pic.jpg'),(4,'gandu ','salaa','2025-04-22','redone@gmail.com','01745897583','6567876456677','$2b$12$44XdmXXebLSU/fI6ZUnz1.iYzniHiodlyLOXshcOJ8Hj/.McdToDS',1000.00,0,'active',10000,'Bronze','default-profile-pic.jpg'),(5,'Raduan ','Ahmed','2025-04-16','redone12.5@gmail.com','01609769008','45678936','$2b$12$Is9K5f614Ny9amfxZ7cPdOugNyjeSmF/iYTWdD.UjIoBwbedcGgnu',82.33,10,'active',60000,'Bronze','default-profile-pic.jpg'),(6,'Fatima','Johora','2002-02-22','fatima@gmail.com','01886757297','1234567892','$2b$12$WiHCojGaS0OvTjlU6xR28OmBZdtAIFzbRZAj2QjpYXnb7QLCxJUeW',73483.87,326,'active',10000,'Bronze','default-profile-pic.jpg'),(7,'Tester','2','2000-03-22','tester2@gmail.com','01234567892','2343343567','$2b$12$dYsxcc9eqRFwdE3J43KSBu1/cMtPM5R5EDGvRYo9dTnDg/ZTdg5ZW',15626.35,43,'active',10000,'Bronze','default-profile-pic.jpg'),(8,'Alvi','69','2025-03-11','alvi69@gmail.com','01736372762','6728154217','$2b$12$LQ8hvbcY1xisiycYnB3pyujeBsySJbY1N6JZw3h8Yx3GR4c6PPFLi',1000.00,0,'active',10000,'Bronze','default-profile-pic.jpg'),(9,'Shuvojit','Paul','1999-06-08','shuvo@g.bracu.ac.bd','01727618944','1234567895','$2b$12$dB4n/llYNGH57tDIfxbegOIRveL/xnetapWhMmn/BLWZrDvbLj/gG',3145.00,128,'active',2000,'Silver','default-profile-pic.jpg'),(10,'Admin','Suspend','2011-02-16','admin@gmail.com','01926757297','1345678789','$2b$12$DGWXslWUtIxEBcqT5q0GWeulMDnHGCVSrqJaDiC3Jj8gTSzz2ShL6',31000.00,118,'suspended',10000,'Silver','default-profile-pic.jpg'),(11,'Amena sultana','Preeti','2003-05-13','amenasultana688@gmail.com','01727820959','1525618766','$2b$12$UTdKdseNxJSdiiM220uBve1M8w4JhW0u0ul8xSs8cFfcr.1NTNJ/2',51000.00,0,'active',10000,'Bronze','default-profile-pic.jpg'),(12,'Tester ','One 1','2000-03-22','testerone@gmail.com','01987654322','8765783653','$2b$12$X1tTVUnbrf8Pzabxkx1JwueqKeRjJG/j8kYioQZdXznma05vkAG4e',1438.82,5,'active',10000,'Bronze','/default-profile-pic.jpg'),(13,'Opy','ooooo','2008-02-03','junglejung32@gmail.com','01766309155','4563782375','$2b$12$eT8Ff1KDuSJI3Eex0jaq0eM6GITblcTUk39Hopf.3yurLUcJK.42y',91701.24,30,'active',2500,'Bronze','/add-money-to-bank-illustration-vector.jpg');
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-04  0:26:07
