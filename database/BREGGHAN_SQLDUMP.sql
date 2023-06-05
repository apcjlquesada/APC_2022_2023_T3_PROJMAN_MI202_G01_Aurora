-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: 13.213.119.146    Database: pos
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `qty_unit` varchar(45) NOT NULL DEFAULT 'piece',
  `qty_stock_threshold` int(11) NOT NULL DEFAULT '0',
  `image` varchar(100) DEFAULT 'placeholder.png',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'978020137961','C2 Red','Beverages','C2R5HML',30.00,39,'piece',24,'C2Red.jpg','2023-01-17 00:25:58',NULL,NULL),(2,'100036219082','Absolute Mineral Water','Beverages','AMW500ML',10.00,50,'piece',20,'Absolute.png','2023-01-17 00:25:58',NULL,NULL),(3,'538276340019','Coke Mismo','Beverages','CMSMO10',15.00,15,'piece',14,'cokemismo.png','2023-01-17 00:25:58',NULL,NULL),(4,'889300173211','Nissin cup noodle Chicken','Snacks','NCNCHCKN',12.00,25,'piece',24,'download.jfif','2023-01-17 00:25:58',NULL,NULL),(5,'123','test',NULL,'123456',20.00,0,'piece',0,'placeholder.png','2023-01-17 00:51:09',NULL,'2023-02-26 15:11:36'),(6,'12345','test2',NULL,'1234567',10.00,0,'piece',0,'placeholder.png','2023-01-17 01:11:37',NULL,'2023-02-21 14:38:11'),(7,'54321','test3',NULL,'testagain',15.00,0,'piece',0,'placeholder.png','2023-01-17 01:22:02',NULL,'2023-02-19 23:33:11'),(8,'48692715351243','Mi Goreng: Hot and Spicy','Snacks','MGorengHNSpicy',15.00,65,'piece',24,'MigorengHotAndSpicy.jpg','2023-02-19 22:25:21',NULL,'2023-02-19 22:58:06'),(9,'45552168941234','Mi Goreng: Original Flavor','Snacks','MGorengOrig',15.00,60,'piece',24,'MigorengOriginal.jpg','2023-02-19 22:28:47',NULL,'2023-02-19 22:56:41'),(10,'884569521542','Mi Goreng: Original Flavor','Snacks','MGorengOrig',15.00,65,'piece',20,'71B4YNvwCtL.jpg','2023-02-21 14:50:19',NULL,'2023-02-22 09:56:07'),(11,'2220345678','Mi Goreng: Original Flavor','Snacks','MGorengOrig',18.00,62,'piece',15,'71B4YNvwCtL.jpg','2023-02-22 09:56:55',NULL,NULL),(12,'48033053','Aceite De Manzanilla','Personal Care','ACD',17.00,37,'piece',5,'ADM.jpg','2023-02-26 21:39:55',NULL,NULL),(13,'4800888194268','Sunsilk Green 15ml','Personal Care','SunsilkGrn15ml',7.00,45,'piece',24,'sunsilkgreen15ml.png','2023-02-27 01:08:03',NULL,NULL),(14,'12034585951','Tide Jumbo Bar','Household & Cleaning Supplies','TideJumBar',25.00,65,'piece',24,'Tide%20Jumbo%20Bar.jpg','2023-02-28 00:17:00',NULL,NULL),(15,'584697846102','555 Sardines: Hot and Spicy','Canned Goods','555SHnS',27.00,65,'piece',24,'555HnS.jpg','2023-02-28 00:18:44',NULL,NULL),(16,'589457575841','Magic Flakes: Onion Chives (28gx10pcs)','Canned Goods','MFOC1PCK',54.00,20,'piece',8,'MFOC.png','2023-02-28 00:21:27',NULL,NULL),(17,'87956485952','Coke 1.5L','Canned Goods','CLTRO',75.00,27,'piece',20,'Cok1.5.jpg','2023-02-28 00:24:41',NULL,NULL),(18,'8850389100684','Mogu Mogu Lychee 320ml','Beverages','MGMG320',50.00,293,'piece',20,'Mogu-Mogu-Lychee-320mL.png','2023-02-28 11:32:03',NULL,'2023-02-28 14:16:44'),(19,'4800016073359','Blue Orange 500ml','Beverages','BLUORNG',35.00,192,'piece',10,'zoom-front-10098280.png','2023-02-28 14:12:52',NULL,'2023-02-28 14:16:37'),(20,'4800194185196','Smart C Calamansi 500ml','Beverages','SMRTC',35.00,42,'piece',49,'resize..png','2023-02-28 16:13:37',NULL,NULL),(21,'4800016073359','Blue Orange 500ml','Beverages','BLO500ML',40.50,95,'piece',10,'zoom-front-10098280.png','2023-02-28 16:34:13',NULL,NULL),(22,'4806502164044','Sanicare Bamboo Wipes','Personal Care','SNCBW',64.89,193,'piece',20,'download.jpeg','2023-02-28 16:35:42',NULL,NULL),(23,'4806502164432','Safeguard','Personal Care','SFGRD',32.78,50,'piece',20,'','2023-03-06 00:43:48',NULL,NULL),(24,'8809275381423','Seaweed 7g','Snacks','SWD7G',20.50,38,'piece',10,'seaweed.jpeg','2023-03-10 10:54:01',NULL,NULL),(25,'4802222032793','Bonus Bathroom Tissue','Personal Care','VCUTSPCY60',28.30,99,'piece',20,'tissue.png','2023-03-10 10:56:29',NULL,NULL),(26,'4806506050015','Sola Iced Tea 473ml','Beverages','SLCDT473',98.00,46,'piece',10,'sola.jpeg','2023-03-10 11:00:21',NULL,'2023-03-10 11:06:04'),(27,'4806506050015','Sola iced Tea 437ml','Beverages','SIT437',97.20,37,'piece',10,'sola.jpeg','2023-03-10 11:07:07',NULL,NULL),(28,'4800016625534','Vcut Spicy BBQ 60g','Snacks','VCUTSPCY',28.75,66,'piece',68,'vcut.jpeg','2023-03-10 11:36:19',NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_no` varchar(45) NOT NULL,
  `current_date` varchar(45) NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `amount_paid` decimal(8,2) NOT NULL,
  `change` decimal(8,2) NOT NULL,
  `cart` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'167377835903029860','1/15/2023 6:26 PM',40.00,50.00,10.00,'{\"cart\":[{\"barcode\":\"978020137961\",\"name\":\"C2 Red\",\"code\":\"C2R5HML\",\"price\":30,\"image\":\"c2-red.png\",\"total\":30,\"qty\":1},{\"barcode\":\"100036219082\",\"name\":\"Absolute Mineral Water\",\"code\":\"AMW500ML\",\"price\":10,\"image\":\"absolute.png\",\"total\":10,\"qty\":1}]}'),(2,'167377838493679293','1/15/2023 6:26 PM',45.00,50.00,5.00,'{\"cart\":[{\"barcode\":\"538276340019\",\"name\":\"Coke Mismo\",\"code\":\"CMSMO10\",\"price\":15,\"image\":\"coke.png\",\"total\":45,\"qty\":3}]}'),(3,'167377840241750968','1/15/2023 6:26 PM',75.00,500.00,425.00,'{\"cart\":[{\"barcode\":\"889300173211\",\"name\":\"Nissin cup nooble Chicken\",\"code\":\"NCNCHCKN\",\"price\":35,\"image\":\"nissin-chicken.png\",\"total\":35,\"qty\":1},{\"barcode\":\"978020137961\",\"name\":\"C2 Red\",\"code\":\"C2R5HML\",\"price\":30,\"image\":\"c2-red.png\",\"total\":30,\"qty\":1},{\"barcode\":\"100036219082\",\"name\":\"Absolute Mineral Water\",\"code\":\"AMW500ML\",\"price\":10,\"image\":\"absolute.png\",\"total\":10,\"qty\":1}]}'),(4,'16768226443086156','2/20/2023 12:04 AM',90.00,100.00,10.00,'{\"cart\":[{\"barcode\":\"978020137961\",\"name\":\"C2 Red\",\"code\":\"C2R5HML\",\"price\":\"30.00\",\"image\":\"c2-red.png\",\"total\":90,\"qty\":3}]}'),(5,'16768226806808260','2/20/2023 12:04 AM',90.00,100.00,10.00,'{\"cart\":[{\"barcode\":\"889300173211\",\"name\":\"Nissin cup nooble Chicken\",\"code\":\"NCNCHCKN\",\"price\":\"35.00\",\"image\":\"nissin-chicken.png\",\"total\":35,\"qty\":1},{\"barcode\":\"538276340019\",\"name\":\"Coke Mismo\",\"code\":\"CMSMO10\",\"price\":\"15.00\",\"image\":\"coke.png\",\"total\":15,\"qty\":1},{\"barcode\":\"100036219082\",\"name\":\"Absolute Mineral Water\",\"code\":\"AMW500ML\",\"price\":\"10.00\",\"image\":\"absolute.png\",\"total\":10,\"qty\":1},{\"barcode\":\"978020137961\",\"name\":\"C2 Red\",\"code\":\"C2R5HML\",\"price\":\"30.00\",\"image\":\"c2-red.png\",\"total\":30,\"qty\":1}]}'),(6,'167694823303787313','2/21/2023 2:37 PM',70.00,100.00,30.00,'{\"cart\":[{\"barcode\":\"978020137961\",\"name\":\"C2 Red\",\"code\":\"C2R5HML\",\"price\":\"30.00\",\"image\":\"c2-red.png\",\"total\":60,\"qty\":2},{\"barcode\":\"100036219082\",\"name\":\"Absolute Mineral Water\",\"code\":\"AMW500ML\",\"price\":\"10.00\",\"image\":\"absolute.png\",\"total\":10,\"qty\":1}]}'),(7,'167696224129336521','2/21/2023 2:51 PM',30.00,40.00,10.00,'{\"cart\":[{\"barcode\":\"884569521542\",\"name\":\"Mi Goreng: Original Flavor\",\"code\":\"MGorengOrig\",\"price\":\"15.00\",\"image\":\"71B4YNvwCtL.jpg\",\"total\":30,\"qty\":2}]}'),(8,'167702637576061313','2/22/2023 8:44 AM',110.00,120.00,10.00,'{\"cart\":[{\"barcode\":\"978020137961\",\"name\":\"C2 Red\",\"code\":\"C2R5HML\",\"price\":\"30.00\",\"image\":\"c2-red.png\",\"total\":60,\"qty\":2},{\"barcode\":\"889300173211\",\"name\":\"Nissin cup nooble Chicken\",\"code\":\"NCNCHCKN\",\"price\":\"35.00\",\"image\":\"\",\"total\":35,\"qty\":1},{\"barcode\":\"538276340019\",\"name\":\"Coke Mismo\",\"code\":\"CMSMO10\",\"price\":\"15.00\",\"image\":\"coke.png\",\"total\":15,\"qty\":1}]}'),(9,'167703024278831389','2/22/2023 9:44 AM',120.00,130.00,10.00,'{\"cart\":[{\"barcode\":\"978020137961\",\"name\":\"C2 Red\",\"code\":\"C2R5HML\",\"price\":\"30.00\",\"image\":\"c2-red.png\",\"total\":90,\"qty\":3},{\"barcode\":\"538276340019\",\"name\":\"Coke Mismo\",\"code\":\"CMSMO10\",\"price\":\"15.00\",\"image\":\"coke.png\",\"total\":30,\"qty\":2}]}'),(10,'167703077916873845','2/22/2023 9:54 AM',69.00,70.00,1.00,'{\"cart\":[{\"barcode\":\"889300173211\",\"name\":\"Nissin cup noodle Chicken\",\"code\":\"NCNCHCKN\",\"price\":\"12.00\",\"image\":\"download.jfif\",\"total\":24,\"qty\":2},{\"barcode\":\"538276340019\",\"name\":\"Coke Mismo\",\"code\":\"CMSMO10\",\"price\":\"15.00\",\"image\":\"coke.png\",\"total\":15,\"qty\":1},{\"barcode\":\"978020137961\",\"name\":\"C2 Red\",\"code\":\"C2R5HML\",\"price\":\"30.00\",\"image\":\"c2-red.png\",\"total\":30,\"qty\":1}]}'),(11,'16773020775077214','2/25/2023 1:15 PM',18.00,20.00,2.00,'{\"cart\":[{\"barcode\":\"2220345678\",\"name\":\"Mi Goreng: Original Flavor\",\"code\":\"MGorengOrig\",\"price\":\"18.00\",\"image\":\"71B4YNvwCtL.jpg\",\"total\":18,\"qty\":1}]}'),(12,'167741883691259796','2/26/2023 9:43 PM',35.00,40.00,5.00,'{\"cart\":[{\"barcode\":\"48033053\",\"name\":\"Aceite De Manzanilla\",\"code\":\"ACD\",\"price\":\"17.00\",\"image\":\"\",\"total\":17,\"qty\":1},{\"barcode\":\"2220345678\",\"name\":\"Mi Goreng: Original Flavor\",\"code\":\"MGorengOrig\",\"price\":\"18.00\",\"image\":\"71B4YNvwCtL.jpg\",\"total\":18,\"qty\":1}]}'),(13,'167742293068946463','2/26/2023 10:49 PM',18.00,20.00,2.00,'{\"cart\":[{\"barcode\":\"2220345678\",\"name\":\"Mi Goreng: Original Flavor\",\"code\":\"MGorengOrig\",\"price\":\"18.00\",\"image\":\"71B4YNvwCtL.jpg\",\"total\":18,\"qty\":1}]}'),(14,'167742297540219068','2/26/2023 10:57 PM',54.00,60.00,6.00,'{\"cart\":[{\"barcode\":\"2220345678\",\"name\":\"Mi Goreng: Original Flavor\",\"code\":\"MGorengOrig\",\"price\":\"18.00\",\"image\":\"71B4YNvwCtL.jpg\",\"total\":54,\"qty\":3}]}'),(15,'167742533254981707','2/26/2023 11:29 PM',30.00,30.00,0.00,'{\"cart\":[{\"barcode\":\"538276340019\",\"name\":\"Coke Mismo\",\"code\":\"CMSMO10\",\"price\":\"15.00\",\"image\":\"cokemismo.png\",\"total\":30,\"qty\":2}]}'),(16,'167743179428727759','2/27/2023 1:16 AM',21.00,25.00,4.00,'{\"cart\":[{\"barcode\":\"4800888194268\",\"name\":\"Sunsilk Green 15ml\",\"code\":\"SunsilkGrn15ml\",\"price\":\"7.00\",\"image\":\"sunsilkgreen15ml.png\",\"total\":21,\"qty\":3}]}'),(17,'167743281507699531','2/27/2023 1:33 AM',35.00,40.00,5.00,'{\"cart\":[{\"barcode\":\"4800888194268\",\"name\":\"Sunsilk Green 15ml\",\"code\":\"SunsilkGrn15ml\",\"price\":\"7.00\",\"image\":\"sunsilkgreen15ml.png\",\"total\":35,\"qty\":5}]}'),(18,'167743146111570749','2/27/2023 1:36 AM',111.00,120.00,9.00,'{\"cart\":[{\"barcode\":\"48033053\",\"name\":\"Aceite De Manzanilla\",\"code\":\"ACD\",\"price\":\"17.00\",\"image\":\"\",\"total\":51,\"qty\":\"3\"},{\"barcode\":\"978020137961\",\"name\":\"C2 Red\",\"code\":\"C2R5HML\",\"price\":\"30.00\",\"image\":\"\",\"total\":60,\"qty\":2}]}'),(19,'167743444193750132','2/27/2023 2:00 AM',7.00,10.00,3.00,'{\"cart\":[{\"barcode\":\"4800888194268\",\"name\":\"Sunsilk Green 15ml\",\"code\":\"SunsilkGrn15ml\",\"price\":\"7.00\",\"image\":\"sunsilkgreen15ml.png\",\"total\":7,\"qty\":1}]}'),(20,'167743444193750132','2/27/2023 2:08 AM',21.00,25.00,4.00,'{\"cart\":[{\"barcode\":\"4800888194268\",\"name\":\"Sunsilk Green 15ml\",\"code\":\"SunsilkGrn15ml\",\"price\":\"7.00\",\"image\":\"sunsilkgreen15ml.png\",\"total\":21,\"qty\":3}]}'),(21,'167743444193750132','2/28/2023 7:49 AM',21.00,25.00,4.00,'{\"cart\":[{\"barcode\":\"4800888194268\",\"name\":\"Sunsilk Green 15ml\",\"code\":\"SunsilkGrn15ml\",\"price\":\"7.00\",\"image\":\"sunsilkgreen15ml.png\",\"total\":21,\"qty\":3}]}'),(22,'167755426721329446','2/28/2023 11:18 AM',60.00,70.00,10.00,'{\"cart\":[{\"barcode\":\"978020137961\",\"name\":\"C2 Red\",\"code\":\"C2R5HML\",\"price\":\"30.00\",\"image\":\"C2Red.jpg\",\"total\":60,\"qty\":2}]}'),(23,'167755524053414886','2/28/2023 11:34 AM',150.00,160.00,10.00,'{\"cart\":[{\"barcode\":\"8850389100684\",\"name\":\"Mogu Mogu Lychee 320ml\",\"code\":\"MGMG320\",\"price\":\"50.00\",\"image\":\"Mogu-Mogu-Lychee-320mL.png\",\"total\":150,\"qty\":3}]}'),(24,'167743444193750132','2/28/2023 12:05 PM',100.00,100.00,0.00,'{\"cart\":[{\"barcode\":\"8850389100684\",\"name\":\"Mogu Mogu Lychee 320ml\",\"code\":\"MGMG320\",\"price\":\"50.00\",\"image\":\"Mogu-Mogu-Lychee-320mL.png\",\"total\":100,\"qty\":2}]}'),(25,'167755524053414886','2/28/2023 2:13 PM',205.00,250.00,45.00,'{\"cart\":[{\"barcode\":\"4800016073359\",\"name\":\"Blue Orange 500ml\",\"code\":\"BLUORNG\",\"price\":\"35.00\",\"image\":\"zoom-front-10098280.png\",\"total\":105,\"qty\":3},{\"barcode\":\"8850389100684\",\"name\":\"Mogu Mogu Lychee 320ml\",\"code\":\"MGMG320\",\"price\":\"50.00\",\"image\":\"Mogu-Mogu-Lychee-320mL.png\",\"total\":100,\"qty\":2}]}'),(26,'167757215709138206','2/28/2023 4:16 PM',75.00,80.00,5.00,'{\"cart\":[{\"barcode\":\"87956485952\",\"name\":\"Coke 1.5L\",\"code\":\"CLTRO\",\"price\":\"75.00\",\"image\":\"Cok1.5.jpg\",\"total\":75,\"qty\":1}]}'),(27,'167757215709138206','2/28/2023 4:16 PM',75.00,80.00,5.00,'{\"cart\":[{\"barcode\":\"87956485952\",\"name\":\"Coke 1.5L\",\"code\":\"CLTRO\",\"price\":\"75.00\",\"image\":\"Cok1.5.jpg\",\"total\":75,\"qty\":1}]}'),(28,'167757215709138206','2/28/2023 4:16 PM',75.00,80.00,5.00,'{\"cart\":[{\"barcode\":\"87956485952\",\"name\":\"Coke 1.5L\",\"code\":\"CLTRO\",\"price\":\"75.00\",\"image\":\"Cok1.5.jpg\",\"total\":75,\"qty\":1}]}'),(29,'167757253696626281','2/28/2023 4:24 PM',175.00,200.00,25.00,'{\"cart\":[{\"barcode\":\"4800194185196\",\"name\":\"Smart C Calamansi 500ml\",\"code\":\"SMRTC\",\"price\":\"35.00\",\"image\":\"resize..png\",\"total\":175,\"qty\":\"5\"}]}'),(30,'167757336473740631','2/28/2023 4:39 PM',337.00,400.00,63.00,'{\"cart\":[{\"barcode\":\"4806502164044\",\"name\":\"Sanicare Bamboo Wipes\",\"code\":\"SNCBW\",\"price\":\"64.00\",\"image\":\"download.jpeg\",\"total\":192,\"qty\":3},{\"barcode\":\"4800194185196\",\"name\":\"Smart C Calamansi 500ml\",\"code\":\"SMRTC\",\"price\":\"35.00\",\"image\":\"resize..png\",\"total\":105,\"qty\":3},{\"barcode\":\"4800016073359\",\"name\":\"Blue Orange 500ml\",\"code\":\"BLO500ML\",\"price\":\"40.00\",\"image\":\"zoom-front-10098280.png\",\"total\":40,\"qty\":1}]}'),(31,'167803277935235451','3/6/2023 12:52 AM',128.00,130.00,2.00,'{\"cart\":[{\"barcode\":\"4806502164044\",\"name\":\"Sanicare Bamboo Wipes\",\"code\":\"SNCBW\",\"price\":\"64.00\",\"image\":\"download.jpeg\",\"total\":128,\"qty\":2}]}'),(32,'16780355786924357','3/6/2023 12:59 AM',64.89,70.00,5.11,'{\"cart\":[{\"barcode\":\"4806502164044\",\"name\":\"Sanicare Bamboo Wipes\",\"code\":\"SNCBW\",\"price\":\"64.89\",\"image\":\"download.jpeg\",\"total\":64.89,\"qty\":1}]}'),(33,'167803558747183304','3/6/2023 1:02 AM',40.00,40.00,0.00,'{\"cart\":[{\"barcode\":\"4800016073359\",\"name\":\"Blue Orange 500ml\",\"code\":\"BLO500ML\",\"price\":\"40.00\",\"image\":\"zoom-front-10098280.png\",\"total\":40,\"qty\":1}]}'),(34,'167803804922498251','3/6/2023 1:41 AM',186.39,200.00,13.61,'{\"cart\":[{\"barcode\":\"4800016073359\",\"name\":\"Blue Orange 500ml\",\"code\":\"BLO500ML\",\"price\":\"40.50\",\"image\":\"zoom-front-10098280.png\",\"total\":121.5,\"qty\":\"3\"},{\"barcode\":\"4806502164044\",\"name\":\"Sanicare Bamboo Wipes\",\"code\":\"SNCBW\",\"price\":\"64.89\",\"image\":\"download.jpeg\",\"total\":64.89,\"qty\":1}]}'),(35,'167803939101263408','3/6/2023 2:03 AM',150.00,150.00,0.00,'{\"cart\":[{\"barcode\":\"978020137961\",\"name\":\"C2 Red\",\"code\":\"C2R5HML\",\"price\":\"30.00\",\"image\":\"C2Red.jpg\",\"total\":150,\"qty\":5}]}'),(36,'167841724216318749','3/10/2023 11:02 AM',167.30,170.00,2.70,'{\"cart\":[{\"barcode\":\"4802222032793\",\"name\":\"Bonus Bathroom Tissue\",\"code\":\"VCUTSPCY60\",\"price\":\"28.30\",\"image\":\"tissue.png\",\"total\":28.3,\"qty\":1},{\"barcode\":\"8809275381423\",\"name\":\"Seaweed 7g\",\"code\":\"SWD7G\",\"price\":\"20.50\",\"image\":\"seaweed.jpeg\",\"total\":41,\"qty\":2},{\"barcode\":\"4806506050015\",\"name\":\"Sola Iced Tea 473ml\",\"code\":\"SLCDT473\",\"price\":\"98.00\",\"image\":\"sola.jpeg\",\"total\":98,\"qty\":1}]}'),(37,'167841942818741924','3/10/2023 11:37 AM',86.25,90.00,3.75,'{\"cart\":[{\"barcode\":\"4800016625534\",\"name\":\"Vcut Spicy BBQ 60g\",\"code\":\"VCUTSPCY\",\"price\":\"28.75\",\"image\":\"vcut.jpeg\",\"total\":86.25,\"qty\":3}]}'),(38,'167841963704213020','3/10/2023 11:42 AM',1944.00,2000.00,56.00,'{\"cart\":[{\"barcode\":\"4806506050015\",\"name\":\"Sola iced Tea 437ml\",\"code\":\"SIT437\",\"price\":\"97.20\",\"image\":\"sola.jpeg\",\"total\":1944,\"qty\":\"20\"}]}'),(39,'16784198298025958','3/10/2023 11:43 AM',120.00,130.00,10.00,'{\"cart\":[{\"barcode\":\"978020137961\",\"name\":\"C2 Red\",\"code\":\"C2R5HML\",\"price\":\"30.00\",\"image\":\"C2Red.jpg\",\"total\":120,\"qty\":4}]}'),(40,'167803804922498251','3/24/2023 10:19 AM',320.35,400.00,79.65,'{\"cart\":[{\"barcode\":\"4806506050015\",\"name\":\"Sola iced Tea 437ml\",\"code\":\"SIT437\",\"price\":\"97.20\",\"image\":\"sola.jpeg\",\"total\":291.6,\"qty\":3},{\"barcode\":\"4800016625534\",\"name\":\"Vcut Spicy BBQ 60g\",\"code\":\"VCUTSPCY\",\"price\":\"28.75\",\"image\":\"vcut.jpeg\",\"total\":28.75,\"qty\":1}]}');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','0192023a7bbd73250516f069df18b500','admin','2023-01-15 00:14:37',NULL),(2,'emp0000001','482c811da5d5b4bc6d497ffa98491e38','emp','2023-01-15 00:14:37',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-03 13:13:37
