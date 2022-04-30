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
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `identificacion_estudiante` int NOT NULL,
  `nota_1` double DEFAULT NULL,
  `nota_2` double DEFAULT NULL,
  `nota_3` double DEFAULT NULL,
  `nota_4` double DEFAULT NULL,
  `promedio` double DEFAULT NULL,
  `id_carrera_notas` int DEFAULT NULL,
  PRIMARY KEY (`identificacion_estudiante`),
  KEY `id_carrera_notas` (`id_carrera_notas`),
  CONSTRAINT `id_carrera_notas` FOREIGN KEY (`id_carrera_notas`) REFERENCES `materias` (`id_carrera`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `identificacion_estudiante` FOREIGN KEY (`identificacion_estudiante`) REFERENCES `datos_de_estudiante` (`Identificacion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (8684689,3.2,1.7,4.5,4.2,NULL,1),(43864890,3.5,3,4.3,3.8,NULL,3),(45892671,4.4,3.2,4.2,2,NULL,4),(52689321,4.3,2.2,3,1.5,NULL,2),(435967123,4.5,3.7,4.5,3.2,NULL,5),(489632175,4.3,4,3.5,3.7,NULL,6),(497814369,4.9,5,5,4.4,NULL,7),(497852263,3.8,3.7,3.5,4.6,NULL,5),(1000034148,5,2.2,5,3,NULL,3),(1000264480,4.3,4.6,3.2,4.5,NULL,7),(1000592644,4.4,4.5,3.7,4.2,NULL,7),(1000592687,4.6,3.4,2.2,4.3,NULL,5),(1000733235,4.4,2,3.5,5,NULL,2),(1000785296,1,3.2,3,4.2,NULL,4),(1005426332,3.7,2.2,1.5,3,NULL,3),(1010049448,4.2,4.3,4.4,1.5,NULL,6),(1010237299,1,1,3.5,3.2,NULL,1),(1019187653,4.4,3.8,4.5,3.7,NULL,6),(1059267341,3.5,1.5,2.2,3.5,NULL,1),(1065150078,3.8,3.2,4,3.8,NULL,4),(1879450632,4.2,2,4.5,4.4,NULL,2);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29  2:35:07
