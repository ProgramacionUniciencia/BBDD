-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: newschema
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `codigos_de_calificaciones`
--

DROP TABLE IF EXISTS `codigos_de_calificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codigos_de_calificaciones` (
  `codigos_de_calificaciones` varchar(20) NOT NULL,
  `nota_asignada` varchar(20) DEFAULT NULL,
  `carrera_asignada_a_nota` int DEFAULT NULL,
  PRIMARY KEY (`codigos_de_calificaciones`),
  KEY `carrera_asignada_a_nota` (`carrera_asignada_a_nota`),
  CONSTRAINT `carrera_asignada_a_nota` FOREIGN KEY (`carrera_asignada_a_nota`) REFERENCES `notas` (`id_carrera_notas`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigos_de_calificaciones`
--

LOCK TABLES `codigos_de_calificaciones` WRITE;
/*!40000 ALTER TABLE `codigos_de_calificaciones` DISABLE KEYS */;
INSERT INTO `codigos_de_calificaciones` VALUES ('A1','nota_1',1),('A2','nota_2',1),('A3','nota_3',1),('A4','nota_4',1),('B1','nota_1',2),('B2','nota_2',2),('B3','nota_3',2),('B4','nota_4',2),('C1','nota_1',3),('C2','nota_2',3),('C3','nota_3',3),('C4','nota_4',3),('D1','nota_1',4),('D2','nota_2',4),('D3','nota_3',4),('D4','nota_4',4),('E1','nota_1',5),('E2','nota_2',5),('E3','nota_3',5),('E4','nota_4',5),('F1','nota_1',6),('F2','nota_2',6),('F3','nota_3',6),('F4','nota_4',6),('G1','nota_1',7),('G2','nota_2',7),('G3','nota_3',7),('G4','nota_4',7);
/*!40000 ALTER TABLE `codigos_de_calificaciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29  2:35:06
