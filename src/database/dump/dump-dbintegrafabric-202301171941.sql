-- MariaDB dump 10.19  Distrib 10.11.1-MariaDB, for Win64 (AMD64)
--
-- Host: 192.168.0.234    Database: dbintegrafabric
-- ------------------------------------------------------
-- Server version	10.4.7-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contaspagar`
--

DROP TABLE IF EXISTS `contaspagar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contaspagar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fornecedor` varchar(255) DEFAULT NULL,
  `duplicata` varchar(255) DEFAULT NULL,
  `tipoTitulo` varchar(255) DEFAULT NULL,
  `portador` varchar(255) DEFAULT NULL,
  `posicao` varchar(255) DEFAULT NULL,
  `centroCusto` varchar(255) DEFAULT NULL,
  `dataEmissao` timestamp NULL DEFAULT NULL,
  `dataTransacao` timestamp NULL DEFAULT NULL,
  `dataVencto` timestamp NULL DEFAULT NULL,
  `valorParcela` decimal(18,5) DEFAULT NULL,
  `saldoParcela` decimal(18,5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contasreceber`
--

DROP TABLE IF EXISTS `contasreceber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contasreceber` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cliente` varchar(255) DEFAULT NULL,
  `representante` varchar(255) DEFAULT NULL,
  `duplicata` varchar(255) DEFAULT NULL,
  `tipoTitulo` varchar(255) DEFAULT NULL,
  `portador` varchar(255) DEFAULT NULL,
  `posicao` varchar(255) DEFAULT NULL,
  `dataEmissao` timestamp NULL DEFAULT NULL,
  `dataVencto` timestamp NULL DEFAULT NULL,
  `dataProrrogacao` timestamp NULL DEFAULT NULL,
  `valorDuplicata` decimal(18,5) DEFAULT NULL,
  `saldoDuplicata` decimal(18,5) DEFAULT NULL,
  `atraso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=527 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `frases`
--

DROP TABLE IF EXISTS `frases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frases` (
  `autor` varchar(100) NOT NULL,
  `txt` text NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frases`
--

LOCK TABLES `frases` WRITE;
/*!40000 ALTER TABLE `frases` DISABLE KEYS */;
INSERT INTO `frases` VALUES
('Remo Lupin','É o grau de comprometimento que determina o sucesso, não o número de seguidores.',1),
('Alvo Dumbledore','Hogwarts sempre ajudará aqueles que merecem!',4),
('Alvo Dumbledore','Hogwarts sempre ajudará aqueles que merecem!',5),
('Alvo Dumbledore','Hogwarts sempre ajudará aqueles que merecem!',6),
('Alvo Dumbledore','Hogwarts sempre ajudará aqueles que merecem!',7);
/*!40000 ALTER TABLE `frases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldisplayoperacao`
--

DROP TABLE IF EXISTS `tbldisplayoperacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldisplayoperacao` (
  `DateInsert` timestamp NOT NULL DEFAULT current_timestamp(),
  `Tear` varchar(50) NOT NULL,
  `Artigo` varchar(50) NOT NULL,
  `TearStatus` varchar(50) DEFAULT NULL,
  `Continuando` varchar(50) DEFAULT NULL COMMENT 'HORA:MINUTO',
  `ParadasEficienciaTurnoAtual` varchar(50) DEFAULT NULL,
  `ParadasEficiencia24h` varchar(50) DEFAULT NULL,
  `RPM` varchar(50) DEFAULT NULL,
  `PrevisaoTrocaRoloTecido` varchar(50) DEFAULT NULL COMMENT 'HORA:MINUTO',
  `PrevisaoTrocaRoloUrdume` varchar(50) DEFAULT NULL COMMENT 'HORA:MINUTO',
  PRIMARY KEY (`DateInsert`,`Tear`,`Artigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tblproduction`
--

DROP TABLE IF EXISTS `tblproduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproduction` (
  `date` varchar(50) NOT NULL,
  `Loom` varchar(50) NOT NULL,
  `Style` varchar(50) NOT NULL,
  `Product_Pick` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`date`,`Loom`,`Style`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproduction`
--

LOCK TABLES `tblproduction` WRITE;
/*!40000 ALTER TABLE `tblproduction` DISABLE KEYS */;
INSERT INTO `tblproduction` VALUES
('2022-03-02','0001','252330','333.8'),
('2022-03-02','002','252530','385.7'),
('2022-03-02','003','252530','530.3'),
('2022-03-02','005','1000.','529.2'),
('2022-03-02','007','Undefined','3.4'),
('2022-03-02','009','1000','460.4'),
('2022-03-02','011','11855','381.3'),
('2022-03-02','015','1000','836'),
('2022-04-01','0001','252330','310.5'),
('2022-04-01','002','252530','278.4'),
('2022-04-01','003','252530','311.6'),
('2022-04-01','005','1000.','301.4'),
('2022-04-01','007','Undefined','283.8'),
('2022-04-01','009','1000','270.5'),
('2022-04-01','011','11855','250.7'),
('2022-04-01','015','1000','374.6');
/*!40000 ALTER TABLE `tblproduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblshiftreport`
--

DROP TABLE IF EXISTS `tblshiftreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblshiftreport` (
  `Sortkey` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Loom` varchar(50) NOT NULL,
  `Style` varchar(50) NOT NULL,
  `RPM` varchar(10) DEFAULT NULL,
  `EfficPercent` varchar(50) DEFAULT NULL,
  `RunMinute` varchar(50) DEFAULT NULL,
  `StopMinute` varchar(50) DEFAULT NULL,
  `ProductPick` varchar(255) DEFAULT NULL,
  `WarpCount` varchar(50) DEFAULT NULL,
  `WarpMinute` varchar(50) DEFAULT NULL,
  `WarpRatePH` varchar(50) DEFAULT NULL,
  `WarpRatePDAY` varchar(50) DEFAULT NULL,
  `WarpRatePP` varchar(50) DEFAULT NULL,
  `Weft_Count` varchar(50) DEFAULT NULL,
  `WeftMinute` varchar(50) DEFAULT NULL,
  `WeftRatePH` varchar(50) DEFAULT NULL,
  `WeftRatePDAY` varchar(50) DEFAULT NULL,
  `WeftRatePP` varchar(50) DEFAULT NULL,
  `UnselectCount` varchar(50) DEFAULT NULL,
  `UnselectMinute` varchar(50) DEFAULT NULL,
  `Unselect2Count` varchar(50) DEFAULT NULL,
  `UnselectRatePH` varchar(50) DEFAULT NULL,
  `UnselectRatePDAY` varchar(50) DEFAULT NULL,
  `UnselectRatePP` varchar(50) DEFAULT NULL,
  `TotalCount` varchar(50) DEFAULT NULL,
  `TotalMinute` varchar(50) DEFAULT NULL,
  `Total2Count` varchar(50) DEFAULT NULL,
  `TotalRatePH` varchar(50) DEFAULT NULL,
  `TotalRatePDAY` varchar(50) DEFAULT NULL,
  `TotalRatePP` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Sortkey`,`Date`,`Loom`,`Style`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblshiftreport`
--

LOCK TABLES `tblshiftreport` WRITE;
/*!40000 ALTER TABLE `tblshiftreport` DISABLE KEYS */;
INSERT INTO `tblshiftreport` VALUES
('1','2022-03-02','0001','252330','','','529.733','910.267','333.8','333.8','11','130.500','','','29','38.717','','','','2','741.05','0','','','','42','910.267','40','','',''),
('1','2022-03-02','002','252530','','','653.217','786.783','385.7','385.7','26','166.900','','','79','103.983','','','','2','515.9','0','','','','107','786.783','105','','',''),
('1','2022-03-02','003','252530','','','808.617','631.383','530.3','530.3','3','11.767','','','50','93.717','','','','2','525.9','1','','','','55','631.384','54','','',''),
('1','2022-03-02','005','1000.','','','846.567','593.433','529.2','529.2','3','10.683','','','47','66.067','','','','3','516.683','1','','','','53','593.433','51','','',''),
('1','2022-03-02','007','Undefined','','','6.317','1433.683','3.4','3.4','0','497.283','','','1','0.200','','','','2','936.2','0','','','','3','1433.683','1','','',''),
('1','2022-03-02','009','1000','','','811.500','628.500','460.4','460.4','5','17.633','','','10','543.617','','','','4','67.25','1','','','','19','628.5','16','','',''),
('1','2022-03-02','011','11855','','','760.100','679.900','381.3','381.3','2','1.000','','','101','159.983','','','','5','518.917','0','','','','108','679.9','103','','',''),
('1','2022-03-02','015','1000','','','858.750','581.250','836.0','836','0','0','','','38','67.650','','','','3','513.6','0','','','','41','581.25','38','','',''),
('1','2022-04-01','0001','252330','','34.151597222222222222222222222','491.783','948.217','310.5','310.5','2','9.633','','','14','27.167','','','','2','911.417','0','','','','18','948.217','16','','',''),
('1','2022-04-01','002','252530','','32.594930555555555555555555556','469.367','970.633','278.4','278.4','3','7.067','','','31','47.383','','','','2','916.184','0','','','','36','970.634','34','','',''),
('1','2022-04-01','003','252530','','32.994236111111111111111111111','475.117','964.883','311.6','311.6','0','0','','','28','59.483','','','','1','905.4','0','','','','29','964.883','28','','',''),
('1','2022-04-01','005','1000.','','33.502291666666666666666666667','482.433','957.567','301.4','301.4','0','0','','','31','45.517','','','','2','912.05','0','','','','33','957.567','31','','',''),
('1','2022-04-01','007','Undefined','','35.339097222222222222222222222','508.883','931.117','283.8','283.8','3','2.183','','','14','20.850','','','','1','908.083','0','','','','18','931.116','17','','',''),
('1','2022-04-01','009','1000','','33.149305555555555555555555556','477.350','962.650','270.5','270.5','2','5.850','','','11','48.967','','','','1','907.834','0','','','','14','962.651','13','','',''),
('1','2022-04-01','011','11855','','34.590277777777777777777777778','498.100','941.900','250.7','250.7','1','5.017','','','4','13.183','','','','3','923.7','0','','','','8','941.9','5','','',''),
('1','2022-04-01','015','1000','','28.753472222222222222222222222','414.050','1025.950','374.6','374.6','1','1.117','','','14','91.083','','','','5','933.75','0','','','','20','1025.95','15','','','');
/*!40000 ALTER TABLE `tblshiftreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vwcontaspagarsaldototalmesatual`
--

DROP TABLE IF EXISTS `vwcontaspagarsaldototalmesatual`;
/*!50001 DROP VIEW IF EXISTS `vwcontaspagarsaldototalmesatual`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwcontaspagarsaldototalmesatual` AS SELECT
 1 AS `pagarMesAtual` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwcontaspagarsaldototalprogramado`
--

DROP TABLE IF EXISTS `vwcontaspagarsaldototalprogramado`;
/*!50001 DROP VIEW IF EXISTS `vwcontaspagarsaldototalprogramado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwcontaspagarsaldototalprogramado` AS SELECT
 1 AS `pagarProgramado` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwcontasrecebersaldototalmesatual`
--

DROP TABLE IF EXISTS `vwcontasrecebersaldototalmesatual`;
/*!50001 DROP VIEW IF EXISTS `vwcontasrecebersaldototalmesatual`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwcontasrecebersaldototalmesatual` AS SELECT
 1 AS `receberMesAtual` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwcontasrecebersaldototalprogramado`
--

DROP TABLE IF EXISTS `vwcontasrecebersaldototalprogramado`;
/*!50001 DROP VIEW IF EXISTS `vwcontasrecebersaldototalprogramado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwcontasrecebersaldototalprogramado` AS SELECT
 1 AS `receberProgramado` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vwdisplayoperacao`
--

DROP TABLE IF EXISTS `vwdisplayoperacao`;
/*!50001 DROP VIEW IF EXISTS `vwdisplayoperacao`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vwdisplayoperacao` AS SELECT
 1 AS `DateInsert`,
  1 AS `Tear`,
  1 AS `Artigo`,
  1 AS `TearStatus`,
  1 AS `Continuando_minutos`,
  1 AS `ParadasTurnoAtual`,
  1 AS `EficienciaTurnoAtual`,
  1 AS `Paradas24h`,
  1 AS `Eficiencia24h`,
  1 AS `RPM`,
  1 AS `PrevisaoTrocaRoloTecido_minutos`,
  1 AS `PrevisaoTrocaRoloUrdume_minutos` */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'dbintegrafabric'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `uspContasPagarDeletar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`abreu`@`%` PROCEDURE `uspContasPagarDeletar`()
begin
	TRUNCATE TABLE contaspagar;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `uspContasPagarInserir` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`abreu`@`%` PROCEDURE `uspContasPagarInserir`(
	IN fornecedor VARCHAR(255),
	IN duplicata VARCHAR(255),
	IN tipoTitulo VARCHAR(255),
	IN portador VARCHAR(255),
	IN posicao VARCHAR(255),
	IN centroCusto VARCHAR(255),
	IN dataEmissao TIMESTAMP,
	IN dataTransacao TIMESTAMP,
	IN dataVencto TIMESTAMP,
	IN valorParcela NUMERIC(18,5),
	IN saldoParcela NUMERIC(18,5)
)
begin
	INSERT INTO contasPagar
	(
		fornecedor, 
		duplicata, 
		tipoTitulo, 
		portador, 
		posicao, 
		centroCusto,
		dataEmissao,
		dataTransacao, 
		dataVencto, 		
		valorParcela, 
		saldoParcela
	)
	VALUES 
	(
		fornecedor, 
		duplicata, 
		tipoTitulo, 
		portador, 
		posicao, 
		centroCusto,
		dataEmissao,
		dataTransacao, 
		dataVencto, 		
		valorParcela, 
		saldoParcela
	);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `uspContasReceberDeletar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`abreu`@`%` PROCEDURE `uspContasReceberDeletar`()
begin
	TRUNCATE TABLE contasreceber ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `uspContasReceberInserir` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`abreu`@`%` PROCEDURE `uspContasReceberInserir`(
	IN cliente VARCHAR(255),
	IN representante VARCHAR(255),
	IN duplicata VARCHAR(255),
	IN tipoTitulo VARCHAR(255),
	IN portador VARCHAR(255),
	IN posicao VARCHAR(255),
	IN dataEmissao TIMESTAMP,
	IN dataVencto TIMESTAMP,
	IN dataProrrogacao TIMESTAMP,
	IN valorDuplicata NUMERIC(18,5),
	IN saldoDuplicata NUMERIC(18,5),
	in atraso INTEGER
)
begin
	INSERT INTO contasReceber
	(
		cliente, 
		representante,
		duplicata, 
		tipoTitulo, 
		portador, 
		posicao, 
		dataEmissao,
		dataVencto, 		
		dataProrrogacao, 
		valorDuplicata, 
		saldoDuplicata,
		atraso
	)
	VALUES 
	(
		cliente, 
		representante,
		duplicata, 
		tipoTitulo, 
		portador, 
		posicao, 
		dataEmissao,
		dataVencto, 		
		dataProrrogacao, 
		valorDuplicata, 
		saldoDuplicata,
		atraso
	);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `uspInsertDisplayOperacao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`abreu`@`%` PROCEDURE `uspInsertDisplayOperacao`(
    IN Tear VARCHAR(50),
    IN Artigo VARCHAR(50),
    IN TearStatus VARCHAR(50),
    IN Continuando VARCHAR(50),
    IN ParadasEficienciaTurnoAtual VARCHAR(50),
    IN ParadasEficiencia24h VARCHAR(50),
    IN RPM VARCHAR(50),
    IN PrevisaoTrocaRoloTecido VARCHAR(50),
    IN PrevisaoTrocaRoloUrdume VARCHAR(50)
    )
BEGIN

INSERT INTO tblDisplayOperacao (
    Tear,
    Artigo,
    TearStatus,
    Continuando,
    ParadasEficienciaTurnoAtual,
    ParadasEficiencia24h,
    RPM,
    PrevisaoTrocaRoloTecido,
    PrevisaoTrocaRoloUrdume
    )
VALUES (
    Tear,
    Artigo,
    TearStatus,
    Continuando,
    ParadasEficienciaTurnoAtual,
    ParadasEficiencia24h,
    RPM,
    PrevisaoTrocaRoloTecido,
    PrevisaoTrocaRoloUrdume
    );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `uspInsertProduction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`abreu`@`%` PROCEDURE `uspInsertProduction`(
    IN Date VARCHAR(50),
    IN Loom VARCHAR(50),
    IN Style VARCHAR(50),
    IN Product_Pick VARCHAR(50)
    )
BEGIN

INSERT INTO tblproduction (
    Date,
    Loom,
    Style,
    Product_Pick
    )
VALUES (
    Date,
    Loom,
    Style,
    Product_Pick
    );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `uspInsertShiftReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`abreu`@`%` PROCEDURE `uspInsertShiftReport`(
    IN Sortkey VARCHAR(50),
    IN Date VARCHAR(50),
    IN Loom VARCHAR(50),
    IN Style VARCHAR(50),
    IN RPM VARCHAR(10),
    IN EfficPercent VARCHAR(50),
    IN RunMinute VARCHAR(50),
    IN StopMinute VARCHAR(50),
    IN ProductPick VARCHAR(255),
    IN WarpCount VARCHAR(50),
    IN WarpMinute VARCHAR(50),
    IN WarpRatePH VARCHAR(50),
    IN WarpRatePDAY VARCHAR(50),
    IN WarpRatePP VARCHAR(50),
    IN Weft_Count VARCHAR(50),
    IN WeftMinute VARCHAR(50),
    IN WeftRatePH VARCHAR(50),
    IN WeftRatePDAY VARCHAR(50),
    IN WeftRatePP VARCHAR(50),
    IN UnselectCount VARCHAR(50),
    IN UnselectMinute VARCHAR(50),
    IN Unselect2Count VARCHAR(50),
    IN UnselectRatePH VARCHAR(50),
    IN UnselectRatePDAY VARCHAR(50),
    IN UnselectRatePP VARCHAR(50),
    IN TotalCount VARCHAR(50),
    IN TotalMinute VARCHAR(50),
    IN Total2Count VARCHAR(50),
    IN TotalRatePH VARCHAR(50),
    IN TotalRatePDAY VARCHAR(50),
    IN TotalRatePP VARCHAR(50)
    )
BEGIN

INSERT INTO tblshiftreport (
    Sortkey,
    Date,
    Loom,
    Style,
    RPM ,
    EfficPercent,
    RunMinute,
    StopMinute,
    ProductPick,
    WarpCount,
    WarpMinute,
    WarpRatePH,
    WarpRatePDAY,
    WarpRatePP,
    Weft_Count,
    WeftMinute,
    WeftRatePH,
    WeftRatePDAY,
    WeftRatePP,
    UnselectCount,
    UnselectMinute,
    Unselect2Count,
    UnselectRatePH,
    UnselectRatePDAY,
    UnselectRatePP,
    TotalCount,
    TotalMinute ,
    Total2Count,
    TotalRatePH,
    TotalRatePDAY,
    TotalRatePP
    )
VALUES (
    Sortkey,
    Date,
    Loom,
    Style,
    RPM ,
    EfficPercent,
    RunMinute,
    StopMinute,
    ProductPick,
    WarpCount,
    WarpMinute,
    WarpRatePH,
    WarpRatePDAY,
    WarpRatePP,
    Weft_Count,
    WeftMinute,
    WeftRatePH,
    WeftRatePDAY,
    WeftRatePP,
    UnselectCount,
    UnselectMinute,
    Unselect2Count,
    UnselectRatePH,
    UnselectRatePDAY,
    UnselectRatePP,
    TotalCount,
    TotalMinute ,
    Total2Count,
    TotalRatePH,
    TotalRatePDAY,
    TotalRatePP
    );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vwcontaspagarsaldototalmesatual`
--

/*!50001 DROP VIEW IF EXISTS `vwcontaspagarsaldototalmesatual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`abreu`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vwcontaspagarsaldototalmesatual` AS select sum(`c`.`saldoParcela`) AS `pagarMesAtual` from `contaspagar` `c` where `c`.`dataVencto` between cast(cast(current_timestamp() - interval (dayofmonth(current_timestamp()) - 1) day as date) as datetime) and cast(last_day(current_timestamp()) as datetime) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwcontaspagarsaldototalprogramado`
--

/*!50001 DROP VIEW IF EXISTS `vwcontaspagarsaldototalprogramado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`abreu`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vwcontaspagarsaldototalprogramado` AS select sum(`c`.`saldoParcela`) AS `pagarProgramado` from `contaspagar` `c` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwcontasrecebersaldototalmesatual`
--

/*!50001 DROP VIEW IF EXISTS `vwcontasrecebersaldototalmesatual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`abreu`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vwcontasrecebersaldototalmesatual` AS select sum(`c`.`saldoDuplicata`) AS `receberMesAtual` from `contasreceber` `c` where `c`.`dataProrrogacao` between cast(cast(current_timestamp() - interval (dayofmonth(current_timestamp()) - 1) day as date) as datetime) and cast(last_day(current_timestamp()) as datetime) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwcontasrecebersaldototalprogramado`
--

/*!50001 DROP VIEW IF EXISTS `vwcontasrecebersaldototalprogramado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`abreu`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vwcontasrecebersaldototalprogramado` AS select sum(`c`.`saldoDuplicata`) AS `receberProgramado` from `contasreceber` `c` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwdisplayoperacao`
--

/*!50001 DROP VIEW IF EXISTS `vwdisplayoperacao`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`abreu`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vwdisplayoperacao` AS select `do`.`DateInsert` AS `DateInsert`,`do`.`Tear` AS `Tear`,`do`.`Artigo` AS `Artigo`,`do`.`TearStatus` AS `TearStatus`,time_to_sec(`do`.`Continuando`) / 60 AS `Continuando_minutos`,cast(substring_index(replace(`do`.`ParadasEficienciaTurnoAtual`,' ',''),'/',1) as signed) AS `ParadasTurnoAtual`,cast(substring_index(replace(`do`.`ParadasEficienciaTurnoAtual`,' ',''),'/',-1) as decimal(18,5)) AS `EficienciaTurnoAtual`,cast(substring_index(replace(`do`.`ParadasEficiencia24h`,' ',''),'/',1) as signed) AS `Paradas24h`,cast(substring_index(replace(`do`.`ParadasEficiencia24h`,' ',''),'/',-1) as decimal(18,5)) AS `Eficiencia24h`,cast(`do`.`RPM` as signed) AS `RPM`,time_to_sec(`do`.`PrevisaoTrocaRoloTecido`) / 60 AS `PrevisaoTrocaRoloTecido_minutos`,time_to_sec(`do`.`PrevisaoTrocaRoloUrdume`) / 60 AS `PrevisaoTrocaRoloUrdume_minutos` from `tbldisplayoperacao` `do` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-17 19:42:35
