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
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias` (
  `nombre_de_materia` varchar(100) NOT NULL,
  `identificacion_profesor` int DEFAULT NULL,
  `id_carrera` int DEFAULT NULL,
  `codigo_de_materia` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`nombre_de_materia`),
  KEY `identificacion_profesor` (`identificacion_profesor`),
  KEY `id_carrera` (`id_carrera`),
  KEY `codigo_de_materia` (`codigo_de_materia`),
  CONSTRAINT `codigo_de_materia` FOREIGN KEY (`codigo_de_materia`) REFERENCES `codigos_de_calificaciones` (`codigos_de_calificaciones`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_carrera` FOREIGN KEY (`id_carrera`) REFERENCES `carrera` (`id_carrera`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `identificacion_profesor` FOREIGN KEY (`identificacion_profesor`) REFERENCES `profesores` (`identificacion_de_profesores`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES ('Álgegra lineal y matemática discreta',1004300371,3,'C1'),('Arquitectura de Computadores',79256447,1,'A1'),('Bases de Datos',79256447,1,'A2'),('Biologia celular',1010102347,6,'F1'),('Bioquímica',1010019599,5,'E1'),('Cálculo',1004300371,3,'C2'),('Dibujo y perspectiva',63286339,4,'D1'),('Estampación textil y técnica de reserva',63286339,4,'D2'),('Filosofía',101128762,7,'G1'),('Genética',1010102347,6,'F2'),('Gestión de la Calidad y de la Innovación Tecnológica',1001188173,2,'B1'),('Inmunología',1010019599,5,'E2'),('Inteligencia del Negocio',1001188173,2,'B2'),('Lógica y algorítmica',79256447,1,'A3'),('Matemáticas I',1001188173,2,'B3'),('Microbiología',1010019599,5,'E3'),('Patronaje y confección lencería',63286339,4,'D3'),('Química general',1010102347,6,'F3'),('Química orgánica',1010102347,6,'F4'),('Régimen y sistema político colombiano',101128762,7,'G2'),('Seguridad y cumplimiento normativo',1004300371,3,'C3'),('Semiótica audiovisual',63286339,4,'D4'),('Sistema de Información para las Organizaciones',1004300371,3,'C4'),('Sistemas Inteligentes',79256447,1,'A4'),('Sociología jurídica',101128762,7,'G3'),('Teoría de códigos y criptografía',1001188173,2,'B4'),('Teoría del Estado y de la Constitución',101128762,7,'G4'),('Virología',1010019599,5,'E4');
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
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
