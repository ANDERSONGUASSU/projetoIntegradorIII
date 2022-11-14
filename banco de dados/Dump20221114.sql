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
  `bairro` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setor` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setor`
--

LOCK TABLES `setor` WRITE;
/*!40000 ALTER TABLE `setor` DISABLE KEYS */;
INSERT INTO `setor` VALUES ('JARDIM DA COLINA','1'),('MARIA CAROLINA 1','2'),('MARIA CAROLINA 2','2'),('VISTA ALEGRE','2'),('JARDIM CONQUISTA','2'),('VISTA ALEGRE','2'),('JARDIM BOA VISTA','2'),('JARDIM DAS ACACIAS','2'),('JARDIM NOVO ESTILO','2'),('JARDIM OURO VERDE','2'),('VILA LEOZINA','2'),('CENTRO','1'),('VILA MANOEL RAYS','2'),('DISTRITO INDUSTRIAL','3'),('CDHU','3'),('COHAB','3'),('CECAP','4'),('RIO LINDO','4'),('SEGURA GARCIA','4'),('VILA NOSSA SENHORA APARECIDA','4'),('NOSSA GENTE','4'),('VILA SANTA ISABEL','4'),('PARK BOA VISTA','1'),('MIRANTE DO TIETE','1'),('JARDIM DOS ANTURIOS','2'),('ALTOS DE IGARAÇU','2'),('NOVO IGARAÇU','2'),('SÃO JOSÉ 1','2'),('SÃO JOSÉ 2','2');
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_search`
--

LOCK TABLES `tb_search` WRITE;
/*!40000 ALTER TABLE `tb_search` DISABLE KEYS */;
INSERT INTO `tb_search` VALUES ('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM DA COLINA','M','Acima de 60 anos','SAÚDE',1),('IGARAÇÚ DO TIETÊ','17350-000','SP','PARK BOA VISTA','F','Até 18 anos','EDUCAÇÃO',2),('IGARAÇÚ DO TIETÊ','17350-000','SP','COHAB','F','De 19 a 29 anos','SAÚDE',3),('IGARAÇÚ DO TIETÊ','17350-000','SP','MIRANTE DO TIETE','M','De 30 a 59 anos','CULTURA',4),('IGARAÇÚ DO TIETÊ','17350-000','SP','MIRANTE DO TIETE','F','De 19 a 29 anos','SAÚDE',5),('IGARAÇÚ DO TIETÊ','17350-000','SP','MIRANTE DO TIETE','M','Acima de 60 anos','SAÚDE',6),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM DOS ANTURIOS','F','Até 18 anos','EDUCAÇÃO',7),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM DOS ANTURIOS','M','De 30 a 59 anos','SAÚDE',8),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM DOS ANTURIOS','F','De 19 a 29 anos','ASSISTENCIA SOCIAL',9),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM DOS ANTURIOS','M','Acima de 60 anos','SAÚDE',10),('IGARAÇÚ DO TIETÊ','17350-000','SP','ALTOS DE IGARAÇU','F','Até 18 anos','EDUCAÇÃO',11),('IGARAÇÚ DO TIETÊ','17350-000','SP','ALTOS DE IGARAÇU','M','De 30 a 59 anos','LAZER',12),('IGARAÇÚ DO TIETÊ','17350-000','SP','CENTRO','F','Até 18 anos','EDUCAÇÃO',13),('IGARAÇÚ DO TIETÊ','17350-000','SP','ALTOS DE IGARAÇU','F','De 19 a 29 anos','SAÚDE',14),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM DA COLINA','M','Acima de 60 anos','SAÚDE',15),('IGARAÇÚ DO TIETÊ','17350-000','SP','NOVO IGARAÇU','F','Até 18 anos','EDUCAÇÃO',16),('IGARAÇÚ DO TIETÊ','17350-000','SP','NOVO IGARAÇU','M','De 30 a 59 anos','SAÚDE',17),('IGARAÇÚ DO TIETÊ','17350-000','SP','SÃO JOSÉ 1','F','De 19 a 29 anos','SAÚDE',18),('IGARAÇÚ DO TIETÊ','17350-000','SP','SÃO JOSÉ 1','M','Acima de 60 anos','SAÚDE',19),('IGARAÇÚ DO TIETÊ','17350-000','SP','SÃO JOSÉ 1','F','Até 18 anos','EDUCAÇÃO',20),('IGARAÇÚ DO TIETÊ','17350-000','SP','SÃO JOSÉ 2','M','De 30 a 59 anos','TURISMO',21),('IGARAÇÚ DO TIETÊ','17350-000','SP','SÃO JOSÉ 2','F','De 19 a 29 anos','SAÚDE',22),('IGARAÇÚ DO TIETÊ','17350-000','SP','SÃO JOSÉ 2','M','Acima de 60 anos','SAÚDE',23),('IGARAÇÚ DO TIETÊ','17350-000','SP','CENTRO','M','De 30 a 59 anos','ESPORTE',24),('IGARAÇÚ DO TIETÊ','17350-000','SP','SÃO JOSÉ 2','F','Até 18 anos','LAZER',25),('IGARAÇÚ DO TIETÊ','17350-000','SP','MARIA CAROLINA 1','M','De 30 a 59 anos','LAZER',26),('IGARAÇÚ DO TIETÊ','17350-000','SP','MARIA CAROLINA 1','F','De 19 a 29 anos','SAÚDE',27),('IGARAÇÚ DO TIETÊ','17350-000','SP','MARIA CAROLINA 2','M','Acima de 60 anos','CULTURA',28),('IGARAÇÚ DO TIETÊ','17350-000','SP','MARIA CAROLINA 2','F','Até 18 anos','EDUCAÇÃO',29),('IGARAÇÚ DO TIETÊ','17350-000','SP','MARIA CAROLINA 2','M','De 30 a 59 anos','SAÚDE',30),('IGARAÇÚ DO TIETÊ','17350-000','SP','VISTA ALEGRE','F','De 19 a 29 anos','SAÚDE',31),('IGARAÇÚ DO TIETÊ','17350-000','SP','VISTA ALEGRE','M','Acima de 60 anos','SAÚDE',32),('IGARAÇÚ DO TIETÊ','17350-000','SP','VISTA ALEGRE','F','Até 18 anos','EDUCAÇÃO',33),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM CONQUISTA','M','De 30 a 59 anos','SAÚDE',34),('IGARAÇÚ DO TIETÊ','17350-000','SP','CENTRO','F','De 19 a 29 anos','SAÚDE',35),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM CONQUISTA','F','De 19 a 29 anos','LAZER',36),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM BOA VISTA','M','Acima de 60 anos','SAÚDE',37),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM BOA VISTA','F','Até 18 anos','EDUCAÇÃO',38),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM DAS ACACIAS','M','De 30 a 59 anos','SAÚDE',39),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM DAS ACACIAS','F','De 19 a 29 anos','TURISMO',40),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM DAS ACACIAS','M','Acima de 60 anos','SAÚDE',41),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM DAS ACACIAS','F','Até 18 anos','EDUCAÇÃO',42),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM NOVO ESTILO','M','De 30 a 59 anos','SAÚDE',43),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM NOVO ESTILO','F','De 19 a 29 anos','SAÚDE',44),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM OURO VERDE','M','Acima de 60 anos','SAÚDE',45),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM DA COLINA','M','Acima de 60 anos','CULTURA',46),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM OURO VERDE','F','Até 18 anos','EDUCAÇÃO',47),('IGARAÇÚ DO TIETÊ','17350-000','SP','VILA LEOZINA','M','De 30 a 59 anos','CULTURA',48),('IGARAÇÚ DO TIETÊ','17350-000','SP','VILA LEOZINA','F','De 19 a 29 anos','SAÚDE',49),('IGARAÇÚ DO TIETÊ','17350-000','SP','VILA LEOZINA','M','Acima de 60 anos','SAÚDE',50),('IGARAÇÚ DO TIETÊ','17350-000','SP','VILA LEOZINA','F','Até 18 anos','EDUCAÇÃO',51),('IGARAÇÚ DO TIETÊ','17350-000','SP','VILA MANOEL RAYS','M','De 30 a 59 anos','ASSISTENCIA SOCIAL',52),('IGARAÇÚ DO TIETÊ','17350-000','SP','VILA MANOEL RAYS','F','De 19 a 29 anos','SAÚDE',53),('IGARAÇÚ DO TIETÊ','17350-000','SP','DISTRITO INDUSTRIAL','M','Acima de 60 anos','SAÚDE',54),('IGARAÇÚ DO TIETÊ','17350-000','SP','DISTRITO INDUSTRIAL','F','Até 18 anos','EDUCAÇÃO',55),('IGARAÇÚ DO TIETÊ','17350-000','SP','CDHU','M','De 30 a 59 anos','SAÚDE',56),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM DA COLINA','F','Até 18 anos','EDUCAÇÃO',57),('IGARAÇÚ DO TIETÊ','17350-000','SP','CDHU','F','De 19 a 29 anos','SAÚDE',58),('IGARAÇÚ DO TIETÊ','17350-000','SP','CDHU','M','Acima de 60 anos','SAÚDE',59),('IGARAÇÚ DO TIETÊ','17350-000','SP','CDHU','F','Até 18 anos','EDUCAÇÃO',60),('IGARAÇÚ DO TIETÊ','17350-000','SP','CDHU','M','De 30 a 59 anos','SAÚDE',61),('IGARAÇÚ DO TIETÊ','17350-000','SP','COHAB','F','De 19 a 29 anos','SAÚDE',62),('IGARAÇÚ DO TIETÊ','17350-000','SP','COHAB','M','Acima de 60 anos','SAÚDE',63),('IGARAÇÚ DO TIETÊ','17350-000','SP','COHAB','F','Até 18 anos','EDUCAÇÃO',64),('IGARAÇÚ DO TIETÊ','17350-000','SP','COHAB','M','De 30 a 59 anos','SAÚDE',65),('IGARAÇÚ DO TIETÊ','17350-000','SP','COHAB','F','De 19 a 29 anos','SAÚDE',66),('IGARAÇÚ DO TIETÊ','17350-000','SP','CECAP','M','Acima de 60 anos','SAÚDE',67),('IGARAÇÚ DO TIETÊ','17350-000','SP','CENTRO','M','De 30 a 59 anos','CULTURA',68),('IGARAÇÚ DO TIETÊ','17350-000','SP','CECAP','F','Até 18 anos','EDUCAÇÃO',69),('IGARAÇÚ DO TIETÊ','17350-000','SP','CECAP','M','De 30 a 59 anos','SAÚDE',70),('IGARAÇÚ DO TIETÊ','17350-000','SP','CECAP','F','De 19 a 29 anos','SAÚDE',71),('IGARAÇÚ DO TIETÊ','17350-000','SP','RIO LINDO','M','Acima de 60 anos','SAÚDE',72),('IGARAÇÚ DO TIETÊ','17350-000','SP','RIO LINDO','F','Até 18 anos','EDUCAÇÃO',73),('IGARAÇÚ DO TIETÊ','17350-000','SP','SEGURA GARCIA','M','De 30 a 59 anos','SAÚDE',74),('IGARAÇÚ DO TIETÊ','17350-000','SP','SEGURA GARCIA','F','De 19 a 29 anos','SAÚDE',75),('IGARAÇÚ DO TIETÊ','17350-000','SP','SEGURA GARCIA','M','Acima de 60 anos','SAÚDE',76),('IGARAÇÚ DO TIETÊ','17350-000','SP','VILA NOSSA SENHORA APARECIDA','F','Até 18 anos','EDUCAÇÃO',77),('IGARAÇÚ DO TIETÊ','17350-000','SP','VILA NOSSA SENHORA APARECIDA','M','De 30 a 59 anos','SAÚDE',78),('IGARAÇÚ DO TIETÊ','17350-000','SP','PARK BOA VISTA','F','De 19 a 29 anos','ESPORTE',79),('IGARAÇÚ DO TIETÊ','17350-000','SP','VILA NOSSA SENHORA APARECIDA','F','De 19 a 29 anos','ASSISTENCIA SOCIAL',80),('IGARAÇÚ DO TIETÊ','17350-000','SP','VILA NOSSA SENHORA APARECIDA','M','Acima de 60 anos','SAÚDE',81),('IGARAÇÚ DO TIETÊ','17350-000','SP','VILA NOSSA SENHORA APARECIDA','F','Até 18 anos','EDUCAÇÃO',82),('IGARAÇÚ DO TIETÊ','17350-000','SP','VILA NOSSA SENHORA APARECIDA','M','De 30 a 59 anos','ASSISTENCIA SOCIAL',83),('IGARAÇÚ DO TIETÊ','17350-000','SP','VILA NOSSA SENHORA APARECIDA','F','De 19 a 29 anos','ASSISTENCIA SOCIAL',84),('IGARAÇÚ DO TIETÊ','17350-000','SP','VILA NOSSA SENHORA APARECIDA','M','Acima de 60 anos','SAÚDE',85),('IGARAÇÚ DO TIETÊ','17350-000','SP','VILA NOSSA SENHORA APARECIDA','F','Até 18 anos','EDUCAÇÃO',86),('IGARAÇÚ DO TIETÊ','17350-000','SP','NOSSA GENTE','M','De 30 a 59 anos','SAÚDE',87),('IGARAÇÚ DO TIETÊ','17350-000','SP','NOSSA GENTE','F','De 19 a 29 anos','SAÚDE',88),('IGARAÇÚ DO TIETÊ','17350-000','SP','NOSSA GENTE','M','Acima de 60 anos','SAÚDE',89),('IGARAÇÚ DO TIETÊ','17350-000','SP','PARK BOA VISTA','M','Acima de 60 anos','SAÚDE',90),('IGARAÇÚ DO TIETÊ','17350-000','SP','NOSSA GENTE','F','Até 18 anos','EDUCAÇÃO',91),('IGARAÇÚ DO TIETÊ','17350-000','SP','VILA SANTA ISABEL','M','De 30 a 59 anos','ASSISTENCIA SOCIAL',92),('IGARAÇÚ DO TIETÊ','17350-000','SP','VILA SANTA ISABEL','F','De 19 a 29 anos','SAÚDE',93),('IGARAÇÚ DO TIETÊ','17350-000','SP','VILA SANTA ISABEL','M','Acima de 60 anos','SAÚDE',94),('IGARAÇÚ DO TIETÊ','17350-000','SP','CENTRO','F','Até 18 anos','TURISMO',95),('IGARAÇÚ DO TIETÊ','17350-000','SP','CENTRO','M','De 30 a 59 anos','SAÚDE',96),('IGARAÇÚ DO TIETÊ','17350-000','SP','COHAB','F','De 19 a 29 anos','SAÚDE',97),('IGARAÇÚ DO TIETÊ','17350-000','SP','JARDIM DA COLINA','M','Acima de 60 anos','SAÚDE',98),('IGARAÇÚ DO TIETÊ','17350-000','SP','CENTRO','F','Até 18 anos','EDUCAÇÃO',99),('IGARAÇÚ DO TIETÊ','17350-000','SP','CENTRO','M','De 30 a 59 anos','CULTURA',100),('Igaraçu do Tietê','17352-468','SP','Jardim das Acácias','M','Acima de 60 anos','SAÚDE',101),('Igaraçu do Tietê','17352-468','SP','Jardim das Acácias','F','Acima de 60 anos','SAÚDE',102),('Igaraçu do Tietê','17352-468','SP','Jardim das Acácias','M','Acima de 60 anos','SAÚDE',103),('Igaraçu do Tietê','17352-470','SP','Jardim das Acácias','M','Acima de 60 anos','CULTURA',104),('Igaraçu do Tietê','17352-470','SP','Jardim das Acácias','M','Acima de 60 anos','CULTURA',105),('Igaraçu do Tietê','17352-470','SP','Jardim das Acácias','M','Acima de 60 anos','SAÚDE',106),('Igaraçu do Tietê','17352-470','SP','Jardim das Acácias','M','Até 18 anos','CULTURA',107),('Igaraçu do Tietê','17352-468','SP','Jardim das Acácias','M','Acima de 60 anos','SAÚDE',108);
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

-- Dump completed on 2022-11-14  7:09:13
