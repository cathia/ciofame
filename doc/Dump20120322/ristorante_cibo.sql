CREATE DATABASE  IF NOT EXISTS `ristorante` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ristorante`;
-- MySQL dump 10.13  Distrib 5.5.15, for Win32 (x86)
--
-- Host: localhost    Database: ristorante
-- ------------------------------------------------------
-- Server version	5.5.16

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
-- Table structure for table `cibo`
--

DROP TABLE IF EXISTS `cibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cibo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descrizione` varchar(225) NOT NULL,
  `costo` decimal(10,2) NOT NULL DEFAULT '0.00',
  `immagine` varchar(45) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cibo_categoria` (`categoria_id`),
  CONSTRAINT `fk_cibo_categoria1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cibo`
--

LOCK TABLES `cibo` WRITE;
/*!40000 ALTER TABLE `cibo` DISABLE KEYS */;
INSERT INTO `cibo` VALUES (1,'Fisch Lasagne',5.50,'fischlasagne.jpeg',1),(2,'Spaghetti mare e monti',5.50,'spaghetti_mare_e_monti.jpeg',1),(3,'Risotto ai funghi',5.50,'risotto_ai_funghi.jpeg',1),(4,'Agnolotti',5.50,'agnolotti.jpeg',1),(5,'Gnocchi',5.50,'gnocchi.jpeg',1),(6,'Fregola con arselle',6.00,'fregola_con_arselle.jpeg',1),(7,'Linguine al nero di seppia',6.00,'linguine_al_nero_di_seppia.jpeg',1),(8,'Risotto in crema con i crostini',5.00,'risotto_in_crema_con_i_crostini.jpeg',1),(9,'Spaghetti alle cozze',5.50,'spaghetti_alle_cozze.jpeg',1),(10,'Grigliata mista',7.00,'grigliata_mista.jpeg',2),(11,'Calamari fritti',7.00,'calamari_fritti.jpeg',2),(12,'Cacciucco',7.00,'cacciucco.jpeg',2),(13,'Fritto misto fantasia',8.50,'fritto_misto_fantasia.jpeg',2),(14,'Moscardini affogati',6.50,'moscardini_affogati.jpeg',2),(15,'Salmone in salsa',6.00,'salmone_in_salsa.jpeg',2),(16,'Salmone e gamberi',8.50,'salmone_e_gamberi.jpeg',2),(17,'Misto carne alla griglia',8.00,'misto_carne_alla_griglia.jpeg',3),(18,'Bratwurst',4.00,'bratwurst.jpeg',3),(19,'Bistecca di manzo ai ferri',6.00,'bistecca_di_manzo_ai_ferri.jpeg',3),(20,'Bistecca di cavallo grigliata',7.00,'bistecca_di_cavallo_grigliata.jpeg',3),(21,'Brasato di manzo',5.50,'brasato_di_manzo.jpeg',3),(22,'Cotoletta alla milanese',5.00,'cotoletta_alla_milanese.jpeg',3),(23,'Scaloppine al vino bianco',6.00,'scaloppine_al_vino_bianco.jpeg',3),(24,'Wallington',6.50,'wallington.jpeg',3),(25,'Spiedini di verdure grigliate',3.00,'spiedini_di_verdure_grigliate.jpeg',4),(26,'Verdure saltate',3.00,'verdure_saltate.jpeg',4),(27,'Crudite',3.00,'crudite.jpeg',4),(28,'Melanzane ripiene',4.50,'melanzane_ripiene.jpeg',4),(29,'Sformato di verdure',4.00,'sformato_di_verdure.jpeg',4),(30,'Patate al forno',3.00,'patate_al_forno.jpeg',4),(31,'Patate fritte',2.50,'patate_fritte.jpeg',4),(32,'Insalata fantasia',3.00,'insalata_fantasia.jpeg',4),(33,'Bacio alle nocciole',4.00,'bacio_alle_nocciole.jpeg',5),(34,'Bunet',4.00,'bunet.jpeg',5),(35,'Crostata di frutta fresca',4.50,'crostata_di_frutta_fresca.jpeg',5),(36,'Millefoglie ai frutti di bosco',5.00,'millefoglie_ai_frutti_di_bosco.jpeg',5),(37,'Buttercreme Torte',5.00,'buttercreme_torte.jpeg',5),(38,'Kaesekuchen mit Streusel',5.50,'kaesekuchen_mit_streusel.jpeg',5),(39,'Torta della nonna',3.50,'torta_della_nonna.jpeg',5),(40,'Tortino di riso',3.00,'tortino_di_riso.jpeg',5),(41,'Rote Grutze',4.00,'rote_grutze.jpeg',5),(42,'Gelato con le fragole',4.50,'gelato_con_le_fragole.jpeg',5),(43,'Frutta fresca di stagione',2.50,'frutta_fresca_di_stagione.jpeg',6),(44,'Mele in pinzimonio',2.00,'mele_in_pinzimonio.jpeg',6),(45,'Tranci di anguria e melone',3.00,'tranci_di_anguria_e_melone.jpeg',6);
/*!40000 ALTER TABLE `cibo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-03-22 13:13:25
