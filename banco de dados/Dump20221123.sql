CREATE DATABASE  IF NOT EXISTS `projetouni` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `projetouni`;
-- MariaDB dump 10.19  Distrib 10.4.25-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: projetouni
-- ------------------------------------------------------
-- Server version	10.4.25-MariaDB

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
-- Table structure for table `setor`
--

DROP TABLE IF EXISTS `setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setor` (
  `id` int(11) DEFAULT NULL,
  `bairro` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setor` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setor`
--

LOCK TABLES `setor` WRITE;
/*!40000 ALTER TABLE `setor` DISABLE KEYS */;
INSERT INTO `setor` VALUES (1,'CENTRO','1'),(2,'CONJUNTO HABITACIONAL ALFREDO FERNANDES','3'),(3,'CONJUNTO HABITACIONAL ELVIRA ORTEGA LEMOS','3'),(4,'CONJUNTO HABITACIONAL IGARAÇU I','3'),(5,'CONJUNTO HABITACIONAL JOÃO CAPELAZZO','3'),(6,'CONJUNTO RESIDENCIAL SEGURA GARCIA','4'),(7,'CONJUNTO RESIDENCIAL SEGURA GARCIA II','4'),(8,'DISTRITO INDUSTRIAL COMENDADOR JOÃO RAYES','4'),(9,'DISTRITO INDUSTRIAL VEREADOR PASCHOAL RUIZ','4'),(10,'JARDIM ALTOS DO IGARAÇU','2'),(11,'JARDIM DA COLINA ','1'),(12,'JARDIM DAS ACÁCIAS','2'),(13,'JARDIM DOS ANTÚRIOS','2'),(14,'JARDIM GERMANO RONCARI','1'),(15,'JARDIM MARIA CAROLINA','1'),(16,'JARDIM MARIA CAROLINA II','1'),(17,'JARDIM NOVO ESTILO','1'),(18,'JARDIM NOVO IGARAÇU','1'),(19,'JARDIM OURO VERDE','2'),(20,'JARDIM PAULISTA','2'),(21,'JARDIM PORTAL DA COLINA','1'),(22,'JARDIM PORTAL DA COLINA III','1'),(23,'NÚCLEO HABITACIONAL COMENDADOR ORLANDO CHESINI OMETTO','4'),(24,'NÚCLEO HABITACIONAL HUMBERTO SCALIZA','4'),(25,'RIO LINDO','4'),(26,'RECANDO DONA ADÉLIA','4'),(27,'RESIDENCIAL NOSSA GENTE','4'),(28,'RESIDENCIAL PARK BOA VISTA','1'),(29,'RESIDENCIAL SÃO JOSÉ','2'),(30,'RESIDENCIAL SÃO JOSÉ II','2'),(31,'RIO LINDO II','4'),(32,'VILA BOA VISTA','2'),(33,'VILA LEOZINA','1'),(34,'VILA MANOEL RAYES','4'),(35,'VILA NOSSA SENHORA APARECIDA','4'),(36,'VILA SANTA ISABEL','4');
/*!40000 ALTER TABLE `setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_search`
--

DROP TABLE IF EXISTS `tb_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_search` (
  `cidade` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cep` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uf` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexo` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faixa_etaria` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pesquisageral` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_search`
--

LOCK TABLES `tb_search` WRITE;
/*!40000 ALTER TABLE `tb_search` DISABLE KEYS */;
INSERT INTO `tb_search` VALUES ('Igaraçu do Tietê','17350-001','SP','Centro','M','Acima de 60 anos','COLETA DE LIXO',117),('Igaraçu do Tietê','17350-001','SP','Centro','F','De 30 a 59 anos','LIMPEZA DE TERRENOS',118),('Igaraçu do Tietê','17350-001','SP','Centro','M','De 19 a 29 anos','LIMPEZA DA VIA PÚBLICA',119),('Igaraçu do Tietê','17350-001','SP','Centro','F','De 19 a 29 anos','ILUMINAÇÃO PÚBLICA',123),('Igaraçu do Tietê','17350-001','SP','Centro','F','De 30 a 59 anos','ABASTECIMENTO DE ÁGUA',125),('Igaraçu do Tietê','17350-001','SP','Centro','F','De 19 a 29 anos','RECAPEAMENTO ASFALTICO',126),('Igaraçu do Tietê','17350-001','SP','Centro','M','De 30 a 59 anos','ÁREAS DE LAZER',127),('Igaraçu do Tietê','17350-001','SP','Centro','M','De 19 a 29 anos','GUARDA MUNICIPAL',128),('Igaraçu do Tietê','17352-468','SP','Jardim das Acácias','M','Acima de 60 anos','COLETA DE LIXO',129),('Igaraçu do Tietê','17352-468','SP','Jardim das Acácias','F','De 30 a 59 anos','LIMPEZA DE TERRENOS',130),('Igaraçu do Tietê','17352-468','SP','Jardim das Acácias','M','De 19 a 29 anos','LIMPEZA DA VIA PÚBLICA',131),('Igaraçu do Tietê','17352-468','SP','Jardim das Acácias','F','Até 18 anos','GUARDA MUNICIPAL',132),('Igaraçu do Tietê','17352-468','SP','Jardim das Acácias','M','Acima de 60 anos','ABASTECIMENTO DE ÁGUA',133),('Igaraçu do Tietê','17352-468','SP','Jardim das Acácias','F','De 30 a 59 anos','ILUMINAÇÃO PÚBLICA',134),('Igaraçu do Tietê','17352-468','SP','Jardim das Acácias','M','De 19 a 29 anos','ÁREAS DE LAZER',135),('Igaraçu do Tietê','17352-468','SP','Jardim das Acácias','F','Até 18 anos','RECAPEAMENTO ASFALTICO',136),('Igaraçu do Tietê','17354-080','SP','Conjunto Habitacional Elvira Ortega Lemos','M','Acima de 60 anos','COLETA DE LIXO',137),('Igaraçu do Tietê','17354-080','SP','Conjunto Habitacional Elvira Ortega Lemos','M','De 30 a 59 anos','LIMPEZA DE TERRENOS',138),('Igaraçu do Tietê','17354-080','SP','Conjunto Habitacional Elvira Ortega Lemos','M','De 19 a 29 anos','LIMPEZA DA VIA PÚBLICA',139),('Igaraçu do Tietê','17354-080','SP','Conjunto Habitacional Elvira Ortega Lemos','M','Até 18 anos','GUARDA MUNICIPAL',140),('Igaraçu do Tietê','17354-080','SP','Conjunto Habitacional Elvira Ortega Lemos','F','Acima de 60 anos','ABASTECIMENTO DE ÁGUA',141),('Igaraçu do Tietê','17354-080','SP','Conjunto Habitacional Elvira Ortega Lemos','F','De 30 a 59 anos','ILUMINAÇÃO PÚBLICA',143),('Igaraçu do Tietê','17354-080','SP','Conjunto Habitacional Elvira Ortega Lemos','F','Até 18 anos','ÁREAS DE LAZER',144),('Igaraçu do Tietê','17354-080','SP','Conjunto Habitacional Elvira Ortega Lemos','F','Até 18 anos','RECAPEAMENTO ASFALTICO',145),('Igaraçu do Tietê','17357-002','SP','Conjunto Residencial Segura Garcia II','M','Acima de 60 anos','RECAPEAMENTO ASFALTICO',146),('Igaraçu do Tietê','17357-002','SP','Conjunto Residencial Segura Garcia II','M','De 30 a 59 anos','ÁREAS DE LAZER',148),('Igaraçu do Tietê','17357-002','SP','Conjunto Residencial Segura Garcia II','M','De 30 a 59 anos','ILUMINAÇÃO PÚBLICA',149),('Igaraçu do Tietê','17357-002','SP','Conjunto Residencial Segura Garcia II','M','Até 18 anos','ABASTECIMENTO DE ÁGUA',150),('Igaraçu do Tietê','17357-002','SP','Conjunto Residencial Segura Garcia II','F','Acima de 60 anos','GUARDA MUNICIPAL',151),('Igaraçu do Tietê','17357-002','SP','Conjunto Residencial Segura Garcia II','F','De 30 a 59 anos','LIMPEZA DA VIA PÚBLICA',152),('Igaraçu do Tietê','17357-002','SP','Conjunto Residencial Segura Garcia II','F','De 19 a 29 anos','LIMPEZA DE TERRENOS',153),('Igaraçu do Tietê','17357-002','SP','Conjunto Residencial Segura Garcia II','F','Até 18 anos','COLETA DE LIXO',154);
/*!40000 ALTER TABLE `tb_search` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-23  6:56:33
