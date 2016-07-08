-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: eprintappdb
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `maklon_company`
--

DROP TABLE IF EXISTS `maklon_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maklon_company` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maklon_company`
--

LOCK TABLES `maklon_company` WRITE;
/*!40000 ALTER TABLE `maklon_company` DISABLE KEYS */;
INSERT INTO `maklon_company` VALUES (1,'Makindo',NULL),(2,'Makindo (eksport)',NULL),(3,'SAM',NULL);
/*!40000 ALTER TABLE `maklon_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maklondatamaster`
--

DROP TABLE IF EXISTS `maklondatamaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maklondatamaster` (
  `id` int(11) NOT NULL,
  `maklon` varchar(45) DEFAULT NULL,
  `itemfg` varchar(100) DEFAULT NULL,
  `satuan` varchar(45) DEFAULT NULL,
  `kodeitemkemas` varchar(45) DEFAULT NULL,
  `itemkemas` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `expires` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maklondatamaster`
--

LOCK TABLES `maklondatamaster` WRITE;
/*!40000 ALTER TABLE `maklondatamaster` DISABLE KEYS */;
INSERT INTO `maklondatamaster` VALUES (1,'Makindo','TS DM COOKIES CHOCO 200G(12D)','Box','C211070008','BOX DIABETAMIL COOKIES 12X200G',107,20),(2,'Makindo','TS DM COOKIES CHOCO 200G(12D)','Dus','C212071008','DUS TS DM COOKIES CHOCOLATE 200G',1274,18),(3,'Makindo','TS DM COOKIES CHOCO 200G(12D)','Bag','C213190008','BAG TS COOKIES 200G',1274,18),(4,'Makindo','WRP COOKIES CHOCOLATE (12D)','Box','C211201128','BOX WRP ND MERAH 12S (12DX12S)',88,21),(5,'Makindo','WRP COOKIES CHOCOLATE (12D)','Dus','C212232008','DUS WRP COOKIES CHOCOLATE 20G X 12 SCH',1061,21),(6,'Makindo','WRP COOKIES CHOCOLATE (12D)','Sachet','C213230178','KTG WRP COOKIES 20G',12732,21),(7,'Makindo','WRP COOKIES CHOCOLATE 6SBX12SX30G','Box','C21199029113','BOX WRP COOKIES 6SBX12SX30G',191,18),(8,'Makindo','WRP COOKIES CHOCOLATE 6SBX12SX30G','Showbox','C21299029112','SHOWBOX WRP COOKIES 12SX30G',1143,18),(9,'Makindo','WRP COOKIES CHOCOLATE 6SBX12SX30G','Sachet','C21399029108','KTG WRP COOKIES 30G',13716,18),(10,'Makindo','WRP COOKIES CHOCOLATE 12SCHX20G','Box','C211235008','BOX WRP 6DAY CHOCOLATE PARTISI 6DX36S',176,21),(11,'Makindo','WRP COOKIES CHOCOLATE 12SCHX20G','Dus','C212232008','DUS WRP COOKIES CHOCOLATE 20G X 12 SCH',1054,21),(12,'Makindo','WRP COOKIES CHOCOLATE 12SCHX20G','Sachet','C213230178','KTG WRP COOKIES 20G',12646,21),(13,'Makindo (eksport)','TS SUGAR FREE COOKIES NUTTY CHOCOLATE SACHET 20 GR IRAQ','E-Bag','C213071071','E-BAG TS SUGAR FREE COOKIES NUTTY CHOCOLATE 20G IRAQ',15000,18),(14,'Makindo (eksport)','TS SUGAR FREE COOKIES VANILLA DRIED FRUIT SACHET 20 GR IRAQ','E-Bag','C213072071','E-BAG TS SUGAR FREE COOKIES VANILLA DRIED FRUIT 20G IRAQ',15000,18),(15,'Makindo (eksport)','TS SUGAR FREE COOKIES NUTTY CHOCOLATE SACHET 20 GR SAUDI','E-Bag','C213068221','E-BAG TS SUGAR FREE COOKIES NUTTY CHOCOLATE 20G SAUDI ARABIA',26350,18),(16,'Makindo (eksport)','TS SUGAR FREE COOKIES VANILLA DRIED FRUIT SACHET 20 GR SAUDI','E-Bag','C213067221','E-BAG TS SUGAR FREE COOKIES VANILLA DRIED FRUIT 20G SAUDI ARABIA',23000,18),(17,'Makindo (eksport)','TS SUGAR FREE COOKIES NUTTY CHOCOLATE SACHET 20 GR DUBAI','E-Bag','C213068021','E-BAG TS SUGAR FREE COOKIES NUTTY CHOCOLATE 20G DUBAI',20170,18),(18,'Makindo (eksport)','TS SUGAR FREE COOKIES VANILLA DRIED FRUIT SACHET 20 GR DUBAI','E-Bag','C213067021','E-BAG TS SUGAR FREE COOKIES VANILLA DRIED FRUIT 20G DUBAI',11040,18),(19,'Makindo (eksport)','HILO SUGAR FREE COOKIES VANILLA DRIED FRUIT SACHET 20 GR SAUDI','E-Bag','C213065001','E-BAG HILO SUGAR FREE COOKIES VANILLA DRIED FRUIT 20G SAUDI ARABIA',15000,18),(20,'Makindo (eksport)','TS DM COOKIES VANILLA SACHET 20 GR EKSPOR','E-Bag','C213070000','E-BAG TS DM COOKIES 20G UNIVERSAL',16450,18),(21,'SAM','TS BERAS MERAH ORGANIK 12PCHX1KG','Box','C21150153122','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1500,18),(22,'SAM','TS BERAS MERAH ORGANIK 12PCHX1KG','Pouch','C213004068','POUCH TS BERAS MERAH ORGANIK 1KG',1500,18),(23,'SAM','TS BERAS MERAH ORGANIK 12PCHX1KG (Wonogiri)','Box','C21150153122','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1500,18),(24,'SAM','TS BERAS MERAH ORGANIK 12PCHX1KG (Wonogiri)','Pouch','C21950153095','POUCH TS BERAS MERAH ORGANIK (UNIVERSAL) 1KG',1500,18);
/*!40000 ALTER TABLE `maklondatamaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maklons`
--

DROP TABLE IF EXISTS `maklons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maklons` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `batchke` int(11) DEFAULT NULL,
  `itemfg` varchar(255) DEFAULT NULL,
  `itemkemas` varchar(255) DEFAULT NULL,
  `jumlahbatch` int(11) DEFAULT NULL,
  `kodeitemkemas` varchar(255) DEFAULT NULL,
  `maklonname` varchar(255) DEFAULT NULL,
  `satuan` varchar(255) DEFAULT NULL,
  `tanggalproduksi` varchar(255) DEFAULT NULL,
  `requestdate` varchar(50) DEFAULT NULL,
  `requester` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `jumlahpouch` int(11) DEFAULT NULL,
  `jumlahdus` int(11) DEFAULT NULL,
  `jumlahbox` int(11) DEFAULT NULL,
  `pd` varchar(50) DEFAULT NULL,
  `ed` varchar(50) DEFAULT NULL,
  `kodeprintingbox` varchar(50) DEFAULT NULL,
  `expiredate` varchar(50) DEFAULT NULL,
  `showbox` int(11) DEFAULT NULL,
  `bag` int(11) DEFAULT NULL,
  `ebag` int(11) DEFAULT NULL,
  `sachet` int(11) DEFAULT NULL,
  `requestnumber` varchar(100) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `tanggalpengiriman` varchar(100) DEFAULT NULL,
  `tanggalprinting` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maklons`
--

LOCK TABLES `maklons` WRITE;
/*!40000 ALTER TABLE `maklons` DISABLE KEYS */;
INSERT INTO `maklons` VALUES (116,1,'TS DM COOKIES CHOCO 200G(12D)','BOX DIABETAMIL COOKIES 12X200G',1,'C211070008','Makindo','Box','02/06/2016','22/06/2016','suwito ','Complete',0,0,106,'','','02 12 17 - QM12021701','02/12/2017',0,0,0,0,'REQ - 116 - Makindo - 22/06/2016 - Box','siidk gtg','06/07/2016','28/07/2016'),(117,1,'WRP COOKIES CHOCOLATE (12D)','DUS WRP COOKIES CHOCOLATE 20G X 12 SCH',3,'C212232008','Makindo','Dus','30/06/2016','22/06/2016','suwito ','Complete',0,3183,0,'QM033003','30 03 18','','30/03/2018',0,0,0,0,'REQ - 117 - Makindo - 22/06/2016 - Dus','Mohon diisi','01/07/2016','23/07/2016'),(118,1,'TS BERAS MERAH ORGANIK 12PCHX1KG (Wonogiri)','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','02/06/2016','22/06/2016','suwito ','Complete',0,0,1500,'','','','02/12/2017',0,0,0,0,'REQ - 118 - SAM - 22/06/2016 - Box','Mohon Diisi','02/07/2016','16/07/2016'),(119,1,'TS DM COOKIES CHOCO 200G(12D)','BOX DIABETAMIL COOKIES 12X200G',1,'C211070008','Makindo','Box','01/06/2016','22/06/2016','suwito ','Complete',0,0,106,'','','01 12 17 - QM12011701','01/12/2017',0,0,0,0,'REQ - 119 - Makindo - 22/06/2016 - Box','Print hari ini','01/07/2016','23/07/2016'),(120,1,'WRP COOKIES CHOCOLATE (12D)','KTG WRP COOKIES 20G',1,'C213230178','Makindo','Sachet','01/06/2016','22/06/2016','suwito ','Complete',0,0,0,'QM030101','01 03 18','','01/03/2018',0,0,0,12732,'REQ - 120 - Makindo - 22/06/2016 - Sachet','print di H1','01/07/2016','16/07/2016'),(121,11,'TS DM COOKIES VANILLA SACHET 20 GR EKSPOR','E-BAG TS DM COOKIES 20G UNIVERSAL',1,'C213070000','Makindo (eksport)','E-bag','01/06/2016','22/06/2016','suwito ','Complete',0,0,0,'01 1217 - QM120101','0 12 17','','01/12/2017',0,0,16450,0,'REQ - 121 - Makindo (eksport) - 22/06/2016 - E-bag','TES','02/07/2016','30/07/2016'),(122,1,'TS DM COOKIES VANILLA SACHET 20 GR EKSPOR','E-BAG TS DM COOKIES 20G UNIVERSAL',1,'C213070000','Makindo (eksport)','E-bag','02/06/2016','22/06/2016','suwito ','Complete',0,0,0,'02 1217 - QM120201','1 12 17','','02/12/2017',0,0,16450,0,'REQ - 122 - Makindo (eksport) - 22/06/2016 - E-bag','TES','01/07/2016','30/07/2016'),(124,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','01/06/2016','22/06/2016','suwito ','Complete',0,0,1500,'','','','01/12/2017',0,0,0,0,'REQ - 124 - SAM - 22/06/2016 - Box','tes','01/07/2016','16/07/2016'),(125,1,'TS BERAS MERAH ORGANIK 12PCHX1KG (Wonogiri)','POUCH TS BERAS MERAH ORGANIK (UNIVERSAL) 1KG',1,'C21950153095','SAM','Pouch','01/06/2016','22/06/2016','suwito ','Complete',1500,0,0,'Q1201','01 12 17','','01/12/2017',0,0,0,0,'REQ - 125 - SAM - 22/06/2016 - Pouch','tes','01/07/2016','09/07/2016'),(126,1,'TS DM COOKIES CHOCO 200G(12D)','BOX DIABETAMIL COOKIES 12X200G',1,'C211070008','Makindo','Box','25/06/2016','29/06/2016','suwito ','Complete',0,0,106,'','','25 12 17 - QM12251701','25/12/2017',0,0,0,0,'REQ - 126 - Makindo - 29/06/2016 - Box','email testing test 1','02/07/2016','02/07/2016'),(127,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','POUCH TS BERAS MERAH ORGANIK 1KG',1,'C213004068','SAM','Pouch','30/06/2016','29/06/2016','suwito ','Complete',1500,0,0,'WQ1230','30 12 17','','30/12/2017',0,0,0,0,'REQ - 127 - SAM - 29/06/2016 - Pouch','test email sender 2','01/07/2016','22/07/2016'),(128,1,'TS SUGAR FREE COOKIES NUTTY CHOCOLATE SACHET 20 GR IRAQ','E-BAG TS SUGAR FREE COOKIES NUTTY CHOCOLATE 20G IRAQ',1,'C213071071','Makindo (eksport)','E-bag','10/06/2016','30/06/2016','suwito ','Complete',0,0,0,'10 1217 - QM121001','9 12 17','','10/12/2017',0,0,15000,0,'REQ - 128 - Makindo (eksport) - 30/06/2016 - E-bag','test email loader shiddiq','09/07/2016','23/07/2016'),(129,12,'TS BERAS MERAH ORGANIK 12PCHX1KG','POUCH TS BERAS MERAH ORGANIK 1KG',1,'C213004068','SAM','Pouch','10/06/2016','30/06/2016','suwito ','Complete',1500,0,0,'WQ1210','10 12 17','','10/12/2017',0,0,0,0,'REQ - 129 - SAM - 30/06/2016 - Pouch','test mailer app ','01/07/2016','15/07/2016'),(130,1,'TS SUGAR FREE COOKIES NUTTY CHOCOLATE SACHET 20 GR IRAQ','E-BAG TS SUGAR FREE COOKIES NUTTY CHOCOLATE 20G IRAQ',1,'C213071071','Makindo (eksport)','E-bag','10/06/2016','30/06/2016','suwito ','Complete',0,0,0,'10 1217 - QM121001','9 12 17','','10/12/2017',0,0,15000,0,'REQ - 130 - Makindo (eksport) - 30/06/2016 - E-bag','test loader mail 123','02/07/2016','23/07/2016'),(131,1,'WRP COOKIES CHOCOLATE (12D)','BOX WRP ND MERAH 12S (12DX12S)',1,'C211201128','Makindo','Box','11/06/2016','30/06/2016','suwito ','Complete',0,0,88,'','','11 03 18 - QM03111801','11/03/2018',0,0,0,0,'REQ - 131 - Makindo - 30/06/2016 - Box','test ','02/07/2016','23/07/2016'),(132,2,'TS BERAS MERAH ORGANIK 12PCHX1KG','POUCH TS BERAS MERAH ORGANIK 1KG',2,'C213004068','SAM','Pouch','16/06/2016','30/06/2016','suwito ','Complete',3000,0,0,'WQ1216','16 12 17','','16/12/2017',0,0,0,0,NULL,NULL,'01/07/2016','30/07/2016'),(133,3,'TS DM COOKIES CHOCO 200G(12D)','BOX DIABETAMIL COOKIES 12X200G',2,'C211070008','Makindo','Box','16/06/2016','30/06/2016','suwito ','Complete',0,0,212,'','','16 12 17 - QM12161702','16/12/2017',0,0,0,0,NULL,NULL,'01/07/2016','01/07/2016'),(134,3,'TS BERAS MERAH ORGANIK 12PCHX1KG','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',3,'C21150153122','SAM','Box','17/06/2016','30/06/2016','suwito ','Complete',0,0,4500,'','','','17/12/2017',0,0,0,0,NULL,NULL,'01/07/2016','30/07/2016'),(135,5,'TS BERAS MERAH ORGANIK 12PCHX1KG','POUCH TS BERAS MERAH ORGANIK 1KG',5,'C213004068','SAM','Pouch','23/07/2016','30/06/2016','suwito ','Running',7500,0,0,'WQ0123','23 01 18','','23/01/2018',0,0,0,0,'REQ - 135 - SAM - 30/06/2016 - Pouch','test 5',NULL,NULL),(136,1,'TS BERAS MERAH ORGANIK 12PCHX1KG (Wonogiri)','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','01/06/2016','30/06/2016','suwito ','Complete',0,0,1500,'','','','01/12/2017',0,0,0,0,'REQ - 136 - SAM - 30/06/2016 - Box','diprint sebelum lebaran','02/07/2016','16/07/2016'),(137,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','01/06/2016','30/06/2016','suwito ','Complete',0,0,1500,'','','','01/12/2017',0,0,0,0,'REQ - 137 - SAM - 30/06/2016 - Box','efwegw','01/07/2016','02/07/2016'),(138,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','14/07/2016','01/07/2016','suwito ','Complete',0,0,1500,'','','','14/01/2018',0,0,0,0,'REQ - 138 - SAM - 01/07/2016 - Box','testfinal','01/07/2016','16/07/2016'),(139,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','14/07/2016','01/07/2016','suwito ','Complete',0,0,1500,'','','','14/01/2018',0,0,0,0,'REQ - 139 - SAM - 01/07/2016 - Box','testfinal','06/07/2016','29/07/2016'),(140,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','14/07/2016','01/07/2016','suwito ','Complete',0,0,1500,'','','','14/01/2018',0,0,0,0,'REQ - 140 - SAM - 01/07/2016 - Box','testfinal','09/07/2016','09/07/2016'),(141,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','POUCH TS BERAS MERAH ORGANIK 1KG',1,'C213004068','SAM','Pouch','29/07/2016','01/07/2016','suwito ','Complete',1500,0,0,'WQ0129','29 01 18','','29/01/2018',0,0,0,0,'REQ - 141 - SAM - 01/07/2016 - Pouch','pouch 1','08/07/2016','23/07/2016'),(142,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','POUCH TS BERAS MERAH ORGANIK 1KG',1,'C213004068','SAM','Pouch','29/07/2016','01/07/2016','suwito ','Complete',1500,0,0,'WQ0129','29 01 18','','29/01/2018',0,0,0,0,'REQ - 142 - SAM - 01/07/2016 - Pouch','pouch 1','02/07/2016','16/07/2016'),(143,2,'TS BERAS MERAH ORGANIK 12PCHX1KG','POUCH TS BERAS MERAH ORGANIK 1KG',1,'C213004068','SAM','Pouch','28/07/2016','01/07/2016','suwito ','Running',1500,0,0,'Q0728','28 01 18','','28/01/2018',0,0,0,0,'REQ - 143 - SAM - 01/07/2016 - Pouch','test mailer',NULL,NULL),(144,1,'TS SUGAR FREE COOKIES NUTTY CHOCOLATE SACHET 20 GR IRAQ','E-BAG TS SUGAR FREE COOKIES NUTTY CHOCOLATE 20G IRAQ',1,'C213071071','Makindo (eksport)','E-bag','06/07/2016','01/07/2016','suwito ','Complete',0,0,0,'06 0118 - QM010601','5 01 18','','06/01/2018',0,0,15000,0,NULL,NULL,'01/07/2016','02/07/2016'),(145,1,'WRP COOKIES CHOCOLATE (12D)','KTG WRP COOKIES 20G',1,'C213230178','Makindo','Sachet','15/07/2016','01/07/2016','suwito ','Complete',0,0,0,'QM071501','15 04 18','','15/04/2018',0,0,0,12732,'REQ - 145 - Makindo - 01/07/2016 - Sachet','Makindo Sachet test ','07/07/2016','28/07/2016'),(146,1,'WRP COOKIES CHOCOLATE (12D)','KTG WRP COOKIES 20G',1,'C213230178','Makindo','Sachet','15/07/2016','01/07/2016','suwito ','Complete',0,0,0,'QM071501','15 04 18','','15/04/2018',0,0,0,12732,'REQ - 146 - Makindo - 01/07/2016 - Sachet','Makindo Sachet test ','08/07/2016','30/07/2016'),(147,1,'WRP COOKIES CHOCOLATE (12D)','KTG WRP COOKIES 20G',1,'C213230178','Makindo','Sachet','15/07/2016','01/07/2016','suwito ','Complete',0,0,0,'QM071501','15 04 18','','15/04/2018',0,0,0,12732,'REQ - 147 - Makindo - 01/07/2016 - Sachet','Makindo Sachet test ','01/07/2016','30/07/2016'),(148,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','13/07/2016','01/07/2016','suwito ','Complete',0,0,1500,'','','13 01 18 - QM011301','13/01/2018',0,0,0,0,NULL,NULL,'01/07/2016','16/07/2016'),(149,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','13/07/2016','01/07/2016','suwito ','Running',0,0,1500,'','','13 01 18 - QM011301','13/01/2018',0,0,0,0,'REQ - 149 - SAM - 01/07/2016 - Box','SAM BOX Test Mailer',NULL,NULL),(150,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','29/07/2016','01/07/2016','suwito ','Running',0,0,1500,'','','29 01 18 - QM012901','29/01/2018',0,0,0,0,'REQ - 150 - SAM - 01/07/2016 - Box','SAM MAILER',NULL,NULL),(151,1,'TS BERAS MERAH ORGANIK 12PCHX1KG (Wonogiri)','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','01/07/2016','02/07/2016','suwito ','Running',0,0,1500,'','','01 01 18 - QM010101','01/01/2018',0,0,0,0,'REQ - 151 - SAM - 02/07/2016 - Box','bbbb',NULL,NULL),(152,1,'TS DM COOKIES VANILLA SACHET 20 GR EKSPOR','E-BAG TS DM COOKIES 20G UNIVERSAL',3,'C213070000','Makindo (eksport)','E-bag','01/07/2016','02/07/2016','suwito ','Running',0,0,0,'01 0118 - QM010103','0 01 18','','01/01/2018',0,0,49350,0,'REQ - 152 - Makindo (eksport) - 02/07/2016 - E-bag','bla bla bla',NULL,NULL),(153,1,'HILO SUGAR FREE COOKIES VANILLA DRIED FRUIT SACHET 20 GR SAUDI','E-BAG HILO SUGAR FREE COOKIES VANILLA DRIED FRUIT 20G SAUDI ARABIA',4,'C213065001','Makindo (eksport)','E-bag','14/07/2016','02/07/2016','suwito ','Complete',0,0,0,'14 0118 - QM011404','13 01 18','','14/01/2018',0,0,60000,0,'REQ - 153 - Makindo (eksport) - 02/07/2016 - E-bag','sdBADB','01/07/2016','23/07/2016'),(154,1,'TS DM COOKIES VANILLA SACHET 20 GR EKSPOR','E-BAG TS DM COOKIES 20G UNIVERSAL',12,'C213070000','Makindo (eksport)','E-bag','10/07/2016','02/07/2016','suwito ','Running',0,0,0,'10 0118 - QM011012','9 01 18','','10/01/2018',0,0,197400,0,'REQ - 154 - Makindo (eksport) - 02/07/2016 - E-bag','weKJLKEWABV;AQ',NULL,NULL),(156,1,'TS DM COOKIES CHOCO 200G(12D)','BOX DIABETAMIL COOKIES 12X200G',1,'C211070008','Makindo','Box','01/07/2016','02/07/2016','suwito ','Running',0,0,106,'','','01 01 18 - QM010101','01/01/2018',0,0,0,0,'REQ - 156 - Makindo - 02/07/2016 - Box','1',NULL,NULL),(157,1,'WRP COOKIES CHOCOLATE (12D)','DUS WRP COOKIES CHOCOLATE 20G X 12 SCH',1,'C212232008','Makindo','Dus','01/07/2016','02/07/2016','suwito ','Running',0,1061,0,'QM070101','01 04 18','','01/04/2018',0,0,0,0,'REQ - 157 - Makindo - 02/07/2016 - Dus','1',NULL,NULL),(158,1,'WRP COOKIES CHOCOLATE 6SBX12SX30G','SHOWBOX WRP COOKIES 12SX30G',1,'C21299029112','Makindo','Showbox','01/07/2016','02/07/2016','suwito ','Running',0,0,0,'','','01 01 18 - QM010101','01/01/2018',1143,0,0,0,'REQ - 158 - Makindo - 02/07/2016 - Showbox','1',NULL,NULL),(159,1,'WRP COOKIES CHOCOLATE 12SCHX20G','KTG WRP COOKIES 20G',1,'C213230178','Makindo','Sachet','01/07/2016','02/07/2016','suwito ','Running',0,0,0,'QM070101','01 04 18','','01/04/2018',0,0,0,12646,'REQ - 159 - Makindo - 02/07/2016 - Sachet','1',NULL,NULL),(160,1,'TS SUGAR FREE COOKIES VANILLA DRIED FRUIT SACHET 20 GR DUBAI','E-BAG TS SUGAR FREE COOKIES VANILLA DRIED FRUIT 20G DUBAI',1,'C213067021','Makindo (eksport)','E-bag','01/07/2016','02/07/2016','suwito ','Complete',0,0,0,'01 0118 - QM010101','0 01 18','','01/01/2018',0,0,11040,0,'REQ - 160 - Makindo (eksport) - 02/07/2016 - E-bag','1','02/07/2016','09/07/2016'),(161,1,'HILO SUGAR FREE COOKIES VANILLA DRIED FRUIT SACHET 20 GR SAUDI','E-BAG HILO SUGAR FREE COOKIES VANILLA DRIED FRUIT 20G SAUDI ARABIA',1,'C213065001','Makindo (eksport)','E-bag','01/07/2016','02/07/2016','suwito ','Complete',0,0,0,'01 0118 - QM010101','0 01 18','','01/01/2018',0,0,15000,0,'REQ - 161 - Makindo (eksport) - 02/07/2016 - E-bag','1','01/07/2016','30/07/2016'),(162,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','01/07/2016','02/07/2016','suwito ','Complete',0,0,1500,'','','01 01 18 - QM010101','01/01/2018',0,0,0,0,'REQ - 162 - SAM - 02/07/2016 - Box','1','07/07/2016','30/07/2016'),(163,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','01/07/2016','02/07/2016','suwito ','Complete',0,0,1500,'','','01 01 18 - QM010101','01/01/2018',0,0,0,0,'REQ - 163 - SAM - 02/07/2016 - Box','1','14/07/2016','13/07/2016'),(164,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','01/07/2016','02/07/2016','suwito ','Running',0,0,1500,'','','01 01 18 - QM010101','01/01/2018',0,0,0,0,'REQ - 164 - SAM - 02/07/2016 - Box','1',NULL,NULL),(165,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','POUCH TS BERAS MERAH ORGANIK 1KG',1,'C213004068','SAM','Pouch','01/07/2016','02/07/2016','suwito ','Running',1500,0,0,'Q0701','01 01 18','','01/01/2018',0,0,0,0,'REQ - 165 - SAM - 02/07/2016 - Pouch','1',NULL,NULL),(166,1,'TS BERAS MERAH ORGANIK 12PCHX1KG (Wonogiri)','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','01/07/2016','02/07/2016','suwito ','Running',0,0,1500,'','','01 01 18 - QM010101','01/01/2018',0,0,0,0,'REQ - 166 - SAM - 02/07/2016 - Box','1',NULL,NULL),(167,1,'TS BERAS MERAH ORGANIK 12PCHX1KG (Wonogiri)','POUCH TS BERAS MERAH ORGANIK (UNIVERSAL) 1KG',1,'C21950153095','SAM','Pouch','01/07/2016','02/07/2016','suwito ','Complete',1500,0,0,'WQ0701','01 01 18','','01/01/2018',0,0,0,0,'REQ - 167 - SAM - 02/07/2016 - Pouch','1','10/07/2016','11/07/2016'),(168,1,'TS BERAS MERAH ORGANIK 12PCHX1KG (Wonogiri)','POUCH TS BERAS MERAH ORGANIK (UNIVERSAL) 1KG',1,'C21950153095','SAM','Pouch','01/07/2016','02/07/2016','suwito ','Running',1500,0,0,'WQ0701','01 01 18','','01/01/2018',0,0,0,0,'REQ - 168 - SAM - 02/07/2016 - Pouch','1',NULL,NULL),(169,1,'HILO SUGAR FREE COOKIES VANILLA DRIED FRUIT SACHET 20 GR SAUDI','E-BAG HILO SUGAR FREE COOKIES VANILLA DRIED FRUIT 20G SAUDI ARABIA',1,'C213065001','Makindo (eksport)','E-bag','02/07/2016','02/07/2016','suwito ','Running',0,0,0,'02 0118 - QM010201','1 01 18','','02/01/2018',0,0,15000,0,'REQ - 169 - Makindo (eksport) - 02/07/2016 - E-bag','1',NULL,NULL),(170,1,'TS DM COOKIES CHOCO 200G(12D)','BOX DIABETAMIL COOKIES 12X200G',1,'C211070008','Makindo','Box','09/07/2016','02/07/2016','suwito ','Complete',0,0,106,'','','09 01 18 - QM010901','09/01/2018',0,0,0,0,'REQ - 170 - Makindo - 02/07/2016 - Box','Test Box Email ','07/07/2016','23/07/2016'),(171,1,'TS DM COOKIES CHOCO 200G(12D)','BOX DIABETAMIL COOKIES 12X200G',1,'C211070008','Makindo','Box','09/07/2016','02/07/2016','suwito ','Complete',0,0,106,'','','09 01 18 - QM010901','09/01/2018',0,0,0,0,'REQ - 171 - Makindo - 02/07/2016 - Box','Test Box Email ','01/07/2016','30/07/2016'),(172,1,'TS DM COOKIES CHOCO 200G(12D)','BOX DIABETAMIL COOKIES 12X200G',1,'C211070008','Makindo','Box','09/07/2016','02/07/2016','suwito ','Complete',0,0,106,'','','09 01 18 - QM010901','09/01/2018',0,0,0,0,'REQ - 172 - Makindo - 02/07/2016 - Box','Test Box Email ','01/07/2016','30/07/2016'),(173,1,'TS DM COOKIES CHOCO 200G(12D)','BOX DIABETAMIL COOKIES 12X200G',1,'C211070008','Makindo','Box','09/07/2016','02/07/2016','suwito ','Running',0,0,106,'','','09 01 18 - QM010901','09/01/2018',0,0,0,0,'REQ - 173 - Makindo - 02/07/2016 - Box','Test Box Email ',NULL,NULL),(174,1,'TS DM COOKIES CHOCO 200G(12D)','BOX DIABETAMIL COOKIES 12X200G',1,'C211070008','Makindo','Box','04/07/2016','03/07/2016','suwito ','Running',0,0,106,'','','04 01 18 - QM070401','04/01/2018',0,0,0,0,'REQ - 174 - Makindo - 03/07/2016 - Box','tanggal produksinya 4 july bro',NULL,NULL),(175,1,'WRP COOKIES CHOCOLATE 6SBX12SX30G','SHOWBOX WRP COOKIES 12SX30G',1,'C21299029112','Makindo','Showbox','07/07/2016','03/07/2016','suwito ','Running',0,0,0,'','','07 01 18 - QM070701','07/01/2018',1143,0,0,0,'REQ - 175 - Makindo - 03/07/2016 - Showbox','prddate 07/07',NULL,NULL),(176,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','08/07/2016','03/07/2016','suwito ','Complete',0,0,1500,'','','08 01 18 - QM070801','08/01/2018',0,0,0,0,'REQ - 176 - SAM - 03/07/2016 - Box','08/07 prddate','02/07/2016','23/07/2016'),(177,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','06/06/2016','03/07/2016','suwito ','Running',0,0,1500,'','','06 12 17 - Q0606','06/12/2017',0,0,0,0,'REQ - 177 - SAM - 03/07/2016 - Box','prd date 0606',NULL,NULL),(178,1,'TS BERAS MERAH ORGANIK 12PCHX1KG (Wonogiri)','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','08/08/2016','03/07/2016','suwito ','Running',0,0,1500,'','','08 02 18 - Q0808','08/02/2018',0,0,0,0,'REQ - 178 - SAM - 03/07/2016 - Box','prd date 0808',NULL,NULL),(179,1,'TS BERAS MERAH ORGANIK 12PCHX1KG (Wonogiri)','POUCH TS BERAS MERAH ORGANIK (UNIVERSAL) 1KG',1,'C21950153095','SAM','Pouch','05/05/2016','03/07/2016','suwito ','Running',1500,0,0,'WQ0505','05 11 17','','05/11/2017',0,0,0,0,'REQ - 179 - SAM - 03/07/2016 - Pouch','wonogiri pouch prd date 05/05',NULL,NULL),(180,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','POUCH TS BERAS MERAH ORGANIK 1KG',1,'C213004068','SAM','Pouch','09/09/2016','03/07/2016','suwito ','Running',1500,0,0,'Q0909','09 03 18','','09/03/2018',0,0,0,0,'REQ - 180 - SAM - 03/07/2016 - Pouch','tgl prd 0909',NULL,NULL),(181,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','POUCH TS BERAS MERAH ORGANIK 1KG',1,'C213004068','SAM','Pouch','07/07/2016','03/07/2016','suwito ','Running',1500,0,0,'Q0707','07 01 18','','07/01/2018',0,0,0,0,'REQ - 181 - SAM - 03/07/2016 - Pouch','SAM Pouch 0707',NULL,NULL),(182,1,'TS BERAS MERAH ORGANIK 12PCHX1KG','POUCH TS BERAS MERAH ORGANIK 1KG',1,'C213004068','SAM','Pouch','07/07/2016','03/07/2016','suwito ','Running',1500,0,0,'Q0707','07 01 18','','07/01/2018',0,0,0,0,'REQ - 182 - SAM - 03/07/2016 - Pouch','prd date 0707',NULL,NULL),(183,1,'TS BERAS MERAH ORGANIK 12PCHX1KG (Wonogiri)','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','02/07/2016','03/07/2016','suwito ','Running',0,0,1500,'','','02 01 18 - Q0702','02/01/2018',0,0,0,0,'REQ - 183 - SAM - 03/07/2016 - Box','1',NULL,NULL),(184,1,'HILO SUGAR FREE COOKIES VANILLA DRIED FRUIT SACHET 20 GR SAUDI','E-BAG HILO SUGAR FREE COOKIES VANILLA DRIED FRUIT 20G SAUDI ARABIA',1,'C213065001','Makindo (eksport)','E-bag','01/07/2016','03/07/2016','suwito ','Running',0,0,0,'01 0118 - QM010101','0 01 18','','01/01/2018',0,0,15000,0,'REQ - 184 - Makindo (eksport) - 03/07/2016 - E-bag','1',NULL,NULL),(185,1,'TS SUGAR FREE COOKIES NUTTY CHOCOLATE SACHET 20 GR DUBAI','E-BAG TS SUGAR FREE COOKIES NUTTY CHOCOLATE 20G DUBAI',1,'C213068021','Makindo (eksport)','E-bag','29/07/2016','03/07/2016','suwito ','Running',0,0,0,'29 0118 - QM012901','28 01 18','','29/01/2018',0,0,20170,0,'REQ - 185 - Makindo (eksport) - 03/07/2016 - E-bag','11',NULL,NULL),(186,1,'TS DM COOKIES VANILLA SACHET 20 GR EKSPOR','E-BAG TS DM COOKIES 20G UNIVERSAL',1,'C213070000','Makindo (eksport)','E-bag','01/07/2016','03/07/2016','suwito ','Running',0,0,0,'30 1217 - QM123001','29 12 17','','30/12/2017',0,0,16450,0,'REQ - 186 - Makindo (eksport) - 03/07/2016 - E-bag','jhgdjhgdkgdkghd',NULL,NULL),(187,1,'TS SUGAR FREE COOKIES NUTTY CHOCOLATE SACHET 20 GR IRAQ','E-BAG TS SUGAR FREE COOKIES NUTTY CHOCOLATE 20G IRAQ',1,'C213071071','Makindo (eksport)','E-bag','01/07/2016','03/07/2016','suwito ','Running',0,0,0,'01 0717 - QM123001','30 12 17','','30/12/2017',0,0,15000,0,'REQ - 187 - Makindo (eksport) - 03/07/2016 - E-bag','1',NULL,NULL),(188,1,'HILO SUGAR FREE COOKIES VANILLA DRIED FRUIT SACHET 20 GR SAUDI','E-BAG HILO SUGAR FREE COOKIES VANILLA DRIED FRUIT 20G SAUDI ARABIA',1,'C213065001','Makindo (eksport)','E-bag','01/07/2016','03/07/2016','suwito ','Running',0,0,0,'01 0717 - QM123001','30 12 17','','30/12/2017',0,0,15000,0,'REQ - 188 - Makindo (eksport) - 03/07/2016 - E-bag','bbbb',NULL,NULL),(189,1,'TS SUGAR FREE COOKIES NUTTY CHOCOLATE SACHET 20 GR IRAQ','E-BAG TS SUGAR FREE COOKIES NUTTY CHOCOLATE 20G IRAQ',1,'C213071071','Makindo (eksport)','E-bag','01/07/2016','03/07/2016','suwito ','Complete',0,0,0,'01 0717 - QM010701','30 12 17','','30/12/2017',0,0,15000,0,'REQ - 189 - Makindo (eksport) - 03/07/2016 - E-bag','1','',''),(190,1,'HILO SUGAR FREE COOKIES VANILLA DRIED FRUIT SACHET 20 GR SAUDI','E-BAG HILO SUGAR FREE COOKIES VANILLA DRIED FRUIT 20G SAUDI ARABIA',1,'C213065001','Makindo (eksport)','E-bag','01/08/2016','03/07/2016','suwito ','Complete',0,0,0,'01 0818 - QM010801','30 01 18','','30/01/2018',0,0,15000,0,'REQ - 190 - Makindo (eksport) - 03/07/2016 - E-bag','1','01/07/2016','09/07/2016'),(191,1,'TS SUGAR FREE COOKIES NUTTY CHOCOLATE SACHET 20 GR IRAQ','E-BAG TS SUGAR FREE COOKIES NUTTY CHOCOLATE 20G IRAQ',1,'C213071071','Makindo (eksport)','E-bag','01/07/2016','03/07/2016','suwito ','Complete',0,0,0,'01 0717 - QM010701','30 12 17','','30/12/2017',0,0,15000,0,'REQ - 191 - Makindo (eksport) - 03/07/2016 - E-bag','1','02/07/2016','09/07/2016'),(192,1,'TS SUGAR FREE COOKIES NUTTY CHOCOLATE SACHET 20 GR IRAQ','E-BAG TS SUGAR FREE COOKIES NUTTY CHOCOLATE 20G IRAQ',1,'C213071071','Makindo (eksport)','E-bag','01/07/2016','03/07/2016','suwito ','Complete',0,0,0,'01 07 17 - QM010701','30 12 17','','30/12/2017',0,0,15000,0,NULL,NULL,'01/07/2016','30/07/2016'),(193,1,'TS DM COOKIES CHOCO 200G(12D)','BOX DIABETAMIL COOKIES 12X200G',1,'C211070008','Makindo','Box','01/07/2016','03/07/2016','suwito ','Complete',0,0,107,'','','27 02 18 - QM070101','27/02/2018',0,0,0,0,'REQ - 193 - Makindo - 03/07/2016 - Box','1','01/07/2016','09/07/2016'),(194,1,'TS DM COOKIES CHOCO 200G(12D)','BOX DIABETAMIL COOKIES 12X200G',1,'C211070008','Makindo','Box','01/07/2016','03/07/2016','suwito ','Complete',0,0,107,'','','27 02 18 - QM070101','27/02/2018',0,0,0,0,'REQ - 194 - Makindo - 03/07/2016 - Box','test lagi ','01/07/2016','01/07/2016'),(195,1,'TS BERAS MERAH ORGANIK 12PCHX1KG (Wonogiri)','BOX TS BERAS MERAH ORGANIK (UNIVERSAL) 12PCHX1KG',1,'C21150153122','SAM','Box','14/07/2016','03/07/2016','suwito ','Running',0,0,1500,'','','30 12 17 - Q0714','30/12/2017',0,0,0,0,'REQ - 195 - SAM - 03/07/2016 - Box','Test',NULL,NULL);
/*!40000 ALTER TABLE `maklons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `satuan`
--

DROP TABLE IF EXISTS `satuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `satuan` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satuan`
--

LOCK TABLES `satuan` WRITE;
/*!40000 ALTER TABLE `satuan` DISABLE KEYS */;
INSERT INTO `satuan` VALUES (1,'Box','Sebuah kemasan berupa box'),(2,'Dus','Sebuah kemasan berupa dus'),(3,'Bag','Sebuah kemasan berupa bag'),(4,'Sachet','Sebuah kemasan berupa sachet'),(5,'Showbox','Sebuah kemasan berupa showbox'),(6,'E-bag','Sebuah kemasan berupa e-bag'),(7,'Pouch','Sebuah kemasan berupa pouch');
/*!40000 ALTER TABLE `satuan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-04 12:30:29