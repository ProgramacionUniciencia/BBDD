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
-- Table structure for table `datos_de_estudiante`
--

DROP TABLE IF EXISTS `datos_de_estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos_de_estudiante` (
  `Nombre` varchar(100) NOT NULL,
  `Eps` text,
  `Fecha_De_Nacimiento` text NOT NULL,
  `Genero` text,
  `Celular` bigint DEFAULT NULL,
  `Identificacion` int NOT NULL,
  `RH` text,
  `Correo` text,
  `Estrato` int DEFAULT NULL,
  `Estado civil` text,
  `Dirreccion` text,
  `Ocupacion` text,
  `carrera` varchar(100) DEFAULT NULL,
  `codigo_de_carrera` int DEFAULT NULL,
  PRIMARY KEY (`Identificacion`),
  KEY `codigo_de_carrera` (`codigo_de_carrera`),
  CONSTRAINT `codigo_de_carrera` FOREIGN KEY (`codigo_de_carrera`) REFERENCES `carrera` (`id_carrera`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_de_estudiante`
--

LOCK TABLES `datos_de_estudiante` WRITE;
/*!40000 ALTER TABLE `datos_de_estudiante` DISABLE KEYS */;
INSERT INTO `datos_de_estudiante` VALUES ('alicia vanesa ponce diaz','sanitas','30/7/1998','Femenino',3206736488,8684689,' o+','aliciamaravilla@yahoo.es',3,'casado','calle 65#21-67 este','estudiante','derecho',7),('santiago barrangan gutierrez','capital salud','22/1/2003','Masculino',3164263787,43864890,' o+','santibarra@gmail.com',1,'soltero','carrera 45 # 65-76 sur','estudiante','derecho',7),('julio armando dias nuñes','salud total','15/11/2000','Masculino',3200568941,45892671,'o-','armandod@hotmail.com',1,'Soltero','calle 16 norte #12-12','estudiante','ing.industrial',3),('hector andres velandia peres','Compensar','16/9/2001','Masculino',3012457689,52689321,'o+','hecdrees@gmail.com',2,'Soltero','Kr9 #60-10','estudiante','contabilidad',2),('edgar casallas cuellar','salud total','23/4/2003','Masculino',3192335005,435967123,'o+','egcasa@gmail.com',2,'Union libre','calle 18 sur #27-32','estudiante','contabilidad',2),('yerson isaias sanchez morales','famisanar','28/2/2000','Masculino',3008667211,489632175,'o+','isacy@gmail.com',3,'Viudo','carrera 16 #15-12','estudiante','medicina',6),('adriana lucia santana peres','famisanar','18/6/1998','Femenino',3200961547,497814369,'a-','adin@gmail.com',2,'Soltero','Kr10 #89-20','estudiante','ing.sistemas',1),('luisa fernanda castro mejia','famisanar','26/5/1999','Femenino',3106982141,497852263,'o-','luci@gmail.com',2,'Soltero','calle 16 sur  #40-33','estudiante','diseño de modas',4),('Sebastian stiven cifuentes diaz','salud total','18/3/2003','Masculino ',3124483664,1000034148,'o+','sabastianstivenc@gmail.com',2,'Soltero','Kr2b este #90-20 sur','estudiante','medicina',6),('maria fernanda torres casallas','Compensar','18/1/2000','Femenino',3102968547,1000264480,'a+','mafe@hotmail.com',4,'Union libre','calle sur #15-8','estudiante','diseño de modas',4),('Juan camilo bulla monroy','Compensar','28/4/2002','Masculino',3202721468,1000592644,'o+','juancamilobulla1@hotmail.com',1,'Soltero','Calle 83 sur #91-70','estudiante','contabilidad',2),('sandra milena bulla monroy','ponal','21/11/2000','Femenino',3144816967,1000592687,'a-','miles@hotmail.com',4,'Union libre','carrera 17b #30-66','estudiante','medicina',6),('Nelson daniel castaño rivera','Salud total','14/4/2001','Masculino',3219951723,1000733235,'O-','nd.castanorivera@uniciencia.edu.co',3,'Soltero','Carrera 69a #57-69 sur','estudiante','enfermeria',5),('sabantian bonilla rivera','Compensar','23/8/2000','Masculino',3155967481,1000785296,'o+','sdebaa@gmail.com',1,'Soltero','kr15 #6-20','estudiante','enfermeria',5),('julio david mejia mejia','Compensar','17/9/1999','Masculino',3210654987,1005426332,'a-','julida@hotmail.com',4,'Union libre','carrera 17b #30-50','estudiante','ing.industrial',3),('Davis Steck Landazuri Ariza','ponal','2/2/2001','Masculino',3167883332,1010049448,'o+','stecklan2014@gmail.com',2,'Soltero','CRA 145#145a-41','estudiante','ing.sistemas',1),('oscar velandia salgado','famisanar','24/12/1997','Masculino ',3162222293,1010237299,'0+','o.salgadovelandia@uniciencia.edu.co',1,'Soltero','calle 83 sur # 91-70','estudiante','enfermeria',5),('brayan stiven prieto','famisanar','13/2/2000','Masculino',3036837788,1019187653,'a-','brayanrpt23@hotmail.com',2,'soltero','diagonal 34 # 45-87','estudiante','derecho',7),('Laura valentina sanabria mejia','Compensar','23/6/1997','Femenino',3256984124,1059267341,'o+','lvalentina@gmail.com',2,'Viuda','calle 59 #17-20','estudiante','ing.industrial',3),('luz mary hernandes palacios','ponal','15/3/2000','Femenino',3005961213,1065150078,'a-','luzmar@hotmail.com',3,'Union libre','calle #16b-6','estudiante','diseño de modas',4),('andres julian cuellar casallas','compensar','23/3/2004','Masculino',3216585974,1879450632,'a+','julic@hotmail.com',2,'Viudo','kr7b #51-98','estudiante','ing.sistemas',1);
/*!40000 ALTER TABLE `datos_de_estudiante` ENABLE KEYS */;
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
