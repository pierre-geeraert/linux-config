-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (armv7l)
--
-- Host: localhost    Database: giselle
-- ------------------------------------------------------
-- Server version	5.5.54-0+deb8u1

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
-- Table structure for table `Commande`
--

DROP TABLE IF EXISTS `Commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Commande` (
  `IDCommande` int(11) NOT NULL AUTO_INCREMENT,
  `DateCommande` date NOT NULL,
  `Statut` char(25) DEFAULT NULL,
  `PrixTotal` float NOT NULL,
  `IDPersonne` int(11) NOT NULL,
  PRIMARY KEY (`IDCommande`),
  KEY `FK_Commande_IDPersonne` (`IDPersonne`),
  CONSTRAINT `FK_Commande_IDPersonne` FOREIGN KEY (`IDPersonne`) REFERENCES `Personne` (`IDPersonne`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Commande`
--

LOCK TABLES `Commande` WRITE;
/*!40000 ALTER TABLE `Commande` DISABLE KEYS */;
INSERT INTO `Commande` VALUES (1,'2017-02-15','livraison',680,1),(2,'2017-03-25','livraison',750,2),(3,'2017-01-08','livraison',340,15),(4,'2016-12-30','livré',199,5),(5,'2017-05-18','preparation',1080,15),(6,'2017-01-05','',620,3);
/*!40000 ALTER TABLE `Commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Diluant`
--

DROP TABLE IF EXISTS `Diluant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Diluant` (
  `IDDiluant` int(11) NOT NULL AUTO_INCREMENT,
  `NomDiluant` char(25) NOT NULL,
  `PrixDiluant` float NOT NULL,
  PRIMARY KEY (`IDDiluant`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Diluant`
--

LOCK TABLES `Diluant` WRITE;
/*!40000 ALTER TABLE `Diluant` DISABLE KEYS */;
INSERT INTO `Diluant` VALUES (1,'Eau',1),(2,'Vin',15),(3,'Jus de fruit',4),(4,'Bière',6);
/*!40000 ALTER TABLE `Diluant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fournisseur`
--

DROP TABLE IF EXISTS `Fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fournisseur` (
  `IDFournisseur` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` char(25) NOT NULL,
  `Numero` int(11) NOT NULL,
  PRIMARY KEY (`IDFournisseur`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fournisseur`
--

LOCK TABLES `Fournisseur` WRITE;
/*!40000 ALTER TABLE `Fournisseur` DISABLE KEYS */;
INSERT INTO `Fournisseur` VALUES (1,'Hugues',760094917),(2,'Loic',740372012),(3,'Romain',712243648),(4,'Sébastien',754861549);
/*!40000 ALTER TABLE `Fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ingredient`
--

DROP TABLE IF EXISTS `Ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ingredient` (
  `IDproduit` int(11) NOT NULL,
  PRIMARY KEY (`IDproduit`),
  CONSTRAINT `FK_Ingredient_IDproduit` FOREIGN KEY (`IDproduit`) REFERENCES `Produit` (`IDproduit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingredient`
--

LOCK TABLES `Ingredient` WRITE;
/*!40000 ALTER TABLE `Ingredient` DISABLE KEYS */;
INSERT INTO `Ingredient` VALUES (30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(84),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99);
/*!40000 ALTER TABLE `Ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `Moyenne`
--

DROP TABLE IF EXISTS `Moyenne`;
/*!50001 DROP VIEW IF EXISTS `Moyenne`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Moyenne` (
  `Valeur` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Personne`
--

DROP TABLE IF EXISTS `Personne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Personne` (
  `IDPersonne` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` char(25) NOT NULL,
  `Prenom` char(25) NOT NULL,
  `Adresse` varchar(25) NOT NULL,
  PRIMARY KEY (`IDPersonne`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personne`
--

LOCK TABLES `Personne` WRITE;
/*!40000 ALTER TABLE `Personne` DISABLE KEYS */;
INSERT INTO `Personne` VALUES (1,'Arnol','Maxence','17 Rue Arnol'),(2,'Boogaerts','Paul','28 Rue Boogaerts'),(3,'Caron','Alexis','13 Rue Caron'),(4,'Descamps','Anthony','6 Rue Descamps'),(5,'Fritsch','Florian','16 Rue Fritsch'),(6,'Geeraert','Pierre','8 Rue Geeraert'),(7,'Hollebecq','Maxime','1 Rue Hollebecq'),(8,'Hoyez','Alexis','26 Rue Hoyez'),(9,'Klein','Aurélien','12 Rue Klein'),(10,'Kruger','Maxence','19 Rue Kruger'),(11,'Lecomte','Alexandre','2 Rue Lecomte'),(12,'Leleux','Charles','15 Rue Leleux'),(13,'Lhomme','Jean-Francois','7 Rue Lhomme'),(14,'Libessart','Dimitri','20 Rue Libessart'),(15,'Naessens','Valentin','10 Rue Naessens'),(16,'Podevin','Jean-Clément','3 Rue Podevin'),(17,'Poly','Thibault','4 Rue Poly'),(18,'Rigaut','Arnaud','23 Rue Rigaut'),(19,'Vancamp','Rémy','5 Rue Vancamp'),(20,'Panoramix','Panoramix','12 rue du cif'),(21,'Gandalf','Gandalf','15 rue du moulin'),(22,'Merlin','Enchanteur','56 boulevard arthur'),(23,'Severus','Rogue','Cabane');
/*!40000 ALTER TABLE `Personne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Preparation`
--

DROP TABLE IF EXISTS `Preparation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Preparation` (
  `Temperature` int(11) DEFAULT NULL,
  `IDproduit` int(11) NOT NULL,
  `IDDiluant` int(11) DEFAULT NULL,
  `IDPersonne` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDproduit`),
  KEY `FK_Preparation_IDPersonne` (`IDPersonne`),
  KEY `FK_Preparation_IDDiluant` (`IDDiluant`),
  CONSTRAINT `FK_Preparation_IDDiluant` FOREIGN KEY (`IDDiluant`) REFERENCES `Diluant` (`IDDiluant`),
  CONSTRAINT `FK_Preparation_IDPersonne` FOREIGN KEY (`IDPersonne`) REFERENCES `Personne` (`IDPersonne`),
  CONSTRAINT `FK_Preparation_IDproduit` FOREIGN KEY (`IDproduit`) REFERENCES `Produit` (`IDproduit`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Preparation`
--

LOCK TABLES `Preparation` WRITE;
/*!40000 ALTER TABLE `Preparation` DISABLE KEYS */;
INSERT INTO `Preparation` VALUES (NULL,1,NULL,20),(NULL,2,NULL,NULL),(NULL,3,NULL,22),(NULL,4,NULL,23),(NULL,5,NULL,NULL),(NULL,6,NULL,21),(NULL,7,NULL,22),(NULL,8,NULL,NULL),(NULL,9,NULL,NULL),(NULL,10,NULL,21),(95,11,3,22),(36,12,1,14),(41,14,3,20),(2,15,2,21),(14,16,4,22),(30,17,3,19),(9,18,4,20),(29,19,2,NULL),(43,20,1,NULL),(1,21,3,23),(100,101,2,22);
/*!40000 ALTER TABLE `Preparation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Produit`
--

DROP TABLE IF EXISTS `Produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Produit` (
  `IDproduit` int(11) NOT NULL AUTO_INCREMENT,
  `NomProduit` varchar(255) DEFAULT NULL,
  `Prix` float DEFAULT NULL,
  PRIMARY KEY (`IDproduit`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produit`
--

LOCK TABLES `Produit` WRITE;
/*!40000 ALTER TABLE `Produit` DISABLE KEYS */;
INSERT INTO `Produit` VALUES (1,'Onguent de cicatrisation',110),(2,'Onguent de lévitation',160),(3,'Onguent de soins',180),(4,'Onguent d\'endurance',90),(5,'Onguent de perception',160),(6,'Onguent d\'invisibilité',180),(7,'Onguent d\'agilité',200),(8,'Onguent de saut',160),(9,'Onguent bridgestone',120),(10,'Onguent laqueuille',70),(11,'Huile de bénédiction d\'arme',230),(12,'Huile de gourdin magique',320),(14,'Potion d\'aide',200),(15,'Potion de flou',80),(16,'Potion de grâce féline',150),(17,'Potion de lévitation',130),(18,'Potion de protection contre les projectiles',270),(19,'Potion de ruse du renard',180),(20,'Potion de soins légers',220),(21,'Potion d\'endurance de l\'ours',100),(30,'Aigue-marine',29),(31,'Alexandrite',15),(32,'Azurite',18),(33,'Chrysobéryl',10),(34,'Grenat rouge',36),(35,'Grenat violet',28),(36,'Irtios',14),(37,'Ivoire',6),(38,'Lapis-Lazuli',5),(39,'Néphrite',9),(40,'Orprase',6),(41,'Péridot',24),(42,'Perle dorée',34),(43,'Perle noire',35),(44,'Pierre de lune',37),(45,'Quartz bleu',40),(46,'Sardonyx',27),(47,'Spinelle vert sombre',24),(48,'Spodumène',9),(49,'Topaze jaune d\'or',31),(50,'Tourmaline blanche',16),(51,'Zircon',31),(52,'Amulette d\'armure naturelle',3),(53,'Anneau du bélier',31),(54,'Baguette de sagesse du hibou',9),(55,'Bottes de sept lieues',18),(56,'Écu en acier',3),(57,'Élixir de nage',12),(58,'Épée bâtarde',26),(59,'Épée courte',21),(60,'Huile de ténèbres',10),(61,'Masse d\'armes lourde',26),(62,'Onguent d\'intemporalité',30),(63,'Parchemin divin',5),(64,'Parchemin profane',11),(65,'Potion d\'agrandissement',16),(66,'Potion de flou',14),(67,'Potion de grâce féline',11),(68,'Potion de regain d\'assurance',17),(69,'Potion de ruse du renard',34),(70,'Potion de sagesse du hibou',34),(71,'Urgrosh nain',34),(72,'Antidote',24),(73,'Arbalète légère de maître',21),(74,'Arc court de maître',8),(75,'Armure à plaques',9),(76,'Armure de cuir cloutée de maître',33),(77,'Bâtonnet(s) fumigène(s)',20),(78,'Cadenas simple',17),(79,'Carreaux',35),(80,'Chemise de maille',37),(81,'Cimeterre de maître',8),(82,'Eau bénite',22),(83,'Ecu en acier de maître',6),(84,'Ecu en ébénite',12),(85,'Epée longue de maître',26),(86,'Gourdin de maître',32),(87,'Grande hache de maître',20),(88,'Hache de guerre naine de maître',2),(89,'Hallebarde de maître',16),(90,'Harnois',34),(91,'Menottes de qualité suppérieure',31),(92,'Pic de guerre léger de maître',18),(93,'Pierre(s) à tonnerre',5),(94,'Rapière de maître',25),(95,'Rondache en ébénite',8),(96,'Serpe de maître',8),(97,'Elixir secret',8),(98,'Poudre secrète',27),(99,'Minéral secret',18),(101,'Potion de test',NULL);
/*!40000 ALTER TABLE `Produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proposition`
--

DROP TABLE IF EXISTS `Proposition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Proposition` (
  `IDProposition` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` char(25) NOT NULL,
  `Temperature` int(11) DEFAULT NULL,
  `Diluant` int(11) DEFAULT NULL,
  `IDPersonne` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDProposition`),
  KEY `FK_Proposition_IDPersonne` (`IDPersonne`),
  CONSTRAINT `FK_Proposition_IDPersonne` FOREIGN KEY (`IDPersonne`) REFERENCES `Personne` (`IDPersonne`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proposition`
--

LOCK TABLES `Proposition` WRITE;
/*!40000 ALTER TABLE `Proposition` DISABLE KEYS */;
INSERT INTO `Proposition` VALUES (1,'Potion de prosit',500,1,5),(2,'Onguent de mysql',0,0,18),(3,'Huile de magicarts',10,4,12);
/*!40000 ALTER TABLE `Proposition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recipient`
--

DROP TABLE IF EXISTS `Recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Recipient` (
  `IDrecipient` int(11) NOT NULL AUTO_INCREMENT,
  `NomRecipient` varchar(255) DEFAULT NULL,
  `Prix` float NOT NULL,
  `Stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDrecipient`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recipient`
--

LOCK TABLES `Recipient` WRITE;
/*!40000 ALTER TABLE `Recipient` DISABLE KEYS */;
INSERT INTO `Recipient` VALUES (1,'Bocal',10,50),(2,'Fiole',6,20),(3,'Tube',4,10);
/*!40000 ALTER TABLE `Recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `Somme`
--

DROP TABLE IF EXISTS `Somme`;
/*!50001 DROP VIEW IF EXISTS `Somme`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Somme` (
  `Produit` tinyint NOT NULL,
  `Valeur` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Stock`
--

DROP TABLE IF EXISTS `Stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stock` (
  `IDstock` int(11) NOT NULL AUTO_INCREMENT,
  `NbStock` int(11) NOT NULL,
  `Fraicheur` int(11) DEFAULT NULL,
  `IDproduit` int(11) DEFAULT NULL,
  `IDFournisseur` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDstock`),
  KEY `FK_Stock_IDproduit` (`IDproduit`),
  KEY `FK_Stock_IDFournisseur` (`IDFournisseur`),
  CONSTRAINT `FK_Stock_IDFournisseur` FOREIGN KEY (`IDFournisseur`) REFERENCES `Fournisseur` (`IDFournisseur`),
  CONSTRAINT `FK_Stock_IDproduit` FOREIGN KEY (`IDproduit`) REFERENCES `Produit` (`IDproduit`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stock`
--

LOCK TABLES `Stock` WRITE;
/*!40000 ALTER TABLE `Stock` DISABLE KEYS */;
INSERT INTO `Stock` VALUES (1,11,31,30,1),(2,96,53,31,1),(3,8,48,32,4),(4,13,16,33,4),(5,74,51,34,4),(6,48,39,35,3),(7,20,34,36,2),(8,6,36,37,2),(9,42,31,38,3),(11,38,34,40,4),(12,46,45,41,1),(13,16,26,42,3),(14,40,47,43,2),(15,77,42,44,4),(16,90,24,45,2),(17,48,20,46,3),(18,32,41,47,4),(19,88,21,48,1),(20,58,19,49,1),(21,-19,25,50,4),(22,20,18,50,4),(23,56,23,51,2),(24,57,30,52,3),(25,45,41,53,3),(26,92,36,54,2),(27,12,30,55,4),(28,5,50,56,2),(30,52,19,58,2),(31,64,29,59,1),(32,79,24,60,3),(33,77,51,61,1),(34,93,53,62,2),(36,53,32,64,2),(37,71,29,65,1),(38,15,52,66,1),(39,88,42,67,3),(40,79,16,68,2),(41,23,16,69,1),(42,54,50,70,3),(43,34,46,71,4),(44,73,17,72,3),(46,60,23,74,4),(47,81,37,75,1),(48,43,17,76,4),(49,11,44,77,1),(50,32,22,78,1),(51,96,29,79,2),(52,11,25,80,3),(53,98,24,81,3),(54,55,39,82,4),(55,38,18,83,1),(56,72,52,84,2),(57,67,18,85,2),(58,97,37,86,3),(59,18,30,87,1),(60,2,33,88,1),(61,4,21,89,1),(62,34,49,90,3),(63,45,20,91,2),(64,94,23,92,2),(65,79,29,93,3),(66,56,45,94,2),(67,16,53,95,2),(68,45,45,96,4),(69,91,42,97,1),(70,50,50,98,2),(71,8,34,99,1),(72,5,23,99,1),(73,85,58,1,NULL),(74,26,45,2,NULL),(75,59,31,3,NULL),(76,48,28,4,NULL),(77,75,35,5,NULL),(78,42,19,6,NULL),(79,62,47,7,NULL),(80,34,37,8,NULL),(81,15,23,9,NULL),(82,26,20,10,NULL),(83,48,40,11,NULL),(84,51,35,12,NULL),(85,64,28,14,NULL),(86,53,30,15,NULL),(87,6,49,16,NULL),(88,58,35,17,NULL),(89,28,22,18,NULL),(90,27,27,19,NULL),(91,10,32,20,NULL),(92,5,41,21,NULL);
/*!40000 ALTER TABLE `Stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contient`
--

DROP TABLE IF EXISTS `contient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contient` (
  `QuantiteCommande` int(11) DEFAULT NULL,
  `FraicheurVoulu` int(11) DEFAULT NULL,
  `IDCommande` int(11) NOT NULL,
  `IDproduit` int(11) NOT NULL,
  `IDrecipient` int(11) NOT NULL,
  PRIMARY KEY (`IDCommande`,`IDproduit`,`IDrecipient`),
  KEY `FK_contient_IDproduit` (`IDproduit`),
  KEY `FK_contient_IDrecipient` (`IDrecipient`),
  CONSTRAINT `FK_contient_IDCommande` FOREIGN KEY (`IDCommande`) REFERENCES `Commande` (`IDCommande`),
  CONSTRAINT `FK_contient_IDproduit` FOREIGN KEY (`IDproduit`) REFERENCES `Produit` (`IDproduit`),
  CONSTRAINT `FK_contient_IDrecipient` FOREIGN KEY (`IDrecipient`) REFERENCES `Recipient` (`IDrecipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contient`
--

LOCK TABLES `contient` WRITE;
/*!40000 ALTER TABLE `contient` DISABLE KEYS */;
INSERT INTO `contient` VALUES (3,0,1,16,2),(2,5,1,48,1),(5,0,1,50,1),(1,0,2,12,2),(10,6,2,35,1),(2,0,3,3,1),(5,0,4,39,3),(5,0,5,8,1),(2,0,5,17,3),(20,0,6,31,1);
/*!40000 ALTER TABLE `contient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournit`
--

DROP TABLE IF EXISTS `fournit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fournit` (
  `IDFournisseur` int(11) NOT NULL,
  `IDproduit` int(11) NOT NULL,
  PRIMARY KEY (`IDFournisseur`,`IDproduit`),
  KEY `FK_fournit_IDproduit` (`IDproduit`),
  CONSTRAINT `FK_fournit_IDFournisseur` FOREIGN KEY (`IDFournisseur`) REFERENCES `Fournisseur` (`IDFournisseur`),
  CONSTRAINT `FK_fournit_IDproduit` FOREIGN KEY (`IDproduit`) REFERENCES `Produit` (`IDproduit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournit`
--

LOCK TABLES `fournit` WRITE;
/*!40000 ALTER TABLE `fournit` DISABLE KEYS */;
INSERT INTO `fournit` VALUES (1,30),(2,30),(1,31),(4,32),(4,33),(4,34),(3,35),(2,36),(2,37),(3,38),(1,39),(3,39),(4,39),(4,40),(1,41),(3,42),(2,43),(4,44),(2,45),(3,46),(4,47),(1,48),(1,49),(4,50),(1,51),(2,51),(3,51),(3,52),(3,53),(2,54),(4,55),(2,56),(2,57),(2,58),(1,59),(3,60),(1,61),(2,62),(3,63),(2,64),(1,65),(1,66),(3,67),(2,68),(1,69),(3,70),(4,71),(3,72),(2,73),(4,74),(1,75),(4,76),(1,77),(1,78),(2,79),(3,80),(3,81),(4,82),(1,83),(2,84),(2,85),(3,86),(1,87),(1,88),(1,89),(3,90),(2,91),(2,92),(3,93),(2,94),(2,95),(4,96),(1,97),(2,98),(1,99);
/*!40000 ALTER TABLE `fournit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournit_recipient`
--

DROP TABLE IF EXISTS `fournit_recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fournit_recipient` (
  `IDFournisseur` int(11) NOT NULL,
  `IDrecipient` int(11) NOT NULL,
  PRIMARY KEY (`IDFournisseur`,`IDrecipient`),
  KEY `FK_fournit_recipient_IDrecipient` (`IDrecipient`),
  CONSTRAINT `FK_fournit_recipient_IDFournisseur` FOREIGN KEY (`IDFournisseur`) REFERENCES `Fournisseur` (`IDFournisseur`),
  CONSTRAINT `FK_fournit_recipient_IDrecipient` FOREIGN KEY (`IDrecipient`) REFERENCES `Recipient` (`IDrecipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournit_recipient`
--

LOCK TABLES `fournit_recipient` WRITE;
/*!40000 ALTER TABLE `fournit_recipient` DISABLE KEYS */;
INSERT INTO `fournit_recipient` VALUES (1,1),(2,1),(1,2),(3,3),(4,3);
/*!40000 ALTER TABLE `fournit_recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `se_compose_prepa`
--

DROP TABLE IF EXISTS `se_compose_prepa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `se_compose_prepa` (
  `QteIngredient` int(11) DEFAULT NULL,
  `FraicheurMin` int(11) DEFAULT NULL,
  `FraicheurMax` int(11) DEFAULT NULL,
  `Temps` int(11) DEFAULT NULL,
  `IDproduit` int(11) NOT NULL,
  `IDproduitFinal` int(11) NOT NULL,
  PRIMARY KEY (`IDproduit`,`IDproduitFinal`),
  KEY `FK_se_compose_prepa_IDproduitFinal` (`IDproduitFinal`),
  CONSTRAINT `FK_se_compose_prepa_IDproduit` FOREIGN KEY (`IDproduit`) REFERENCES `Produit` (`IDproduit`),
  CONSTRAINT `FK_se_compose_prepa_IDproduitFinal` FOREIGN KEY (`IDproduitFinal`) REFERENCES `Produit` (`IDproduit`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `se_compose_prepa`
--

LOCK TABLES `se_compose_prepa` WRITE;
/*!40000 ALTER TABLE `se_compose_prepa` DISABLE KEYS */;
INSERT INTO `se_compose_prepa` VALUES (1,36,44,10,32,4),(1,5,18,10,32,21),(10,5,1,5,32,101),(1,32,38,20,33,16),(3,27,42,6,37,14),(2,16,20,5,39,5),(2,15,19,10,39,20),(1,1,1,2,40,10),(1,40,50,6,40,15),(3,11,15,2,43,6),(1,5,10,15,43,11),(3,5,10,5,43,12),(2,19,27,15,43,17),(3,3,7,10,45,18),(1,9,13,5,46,9),(5,10,5,10,46,101),(1,5,9,10,47,1),(2,5,9,3,47,2),(1,19,27,5,47,18),(2,5,9,12,47,19),(1,6,10,15,49,7),(3,6,10,15,49,8),(1,5,10,2,51,101),(2,15,19,10,53,9),(1,13,26,5,53,14),(3,15,19,2,53,16),(1,24,32,5,54,2),(1,24,32,15,54,19),(3,21,25,15,55,8),(3,15,19,10,56,5),(2,34,40,3,57,10),(2,1,1,5,58,4),(2,1,22,15,58,21),(3,2,8,15,59,12),(2,5,20,20,60,11),(3,36,44,2,63,7),(1,24,38,20,64,17),(2,10,30,15,64,18),(3,31,37,3,72,6),(3,3,5,20,73,8),(3,3,5,3,73,16),(1,5,17,10,76,17),(2,29,33,15,78,9),(1,7,11,5,79,10),(1,15,30,10,79,15),(2,14,18,12,80,5),(3,2,7,20,80,12),(2,6,10,15,80,20),(1,10,14,10,81,2),(3,2,30,10,81,11),(3,2,10,2,81,14),(1,10,14,20,81,19),(2,10,20,5,84,15),(1,35,43,10,85,4),(1,5,40,2,85,21),(2,3,7,5,86,1),(3,24,32,12,87,20),(2,34,38,3,91,7),(2,11,25,20,91,18);
/*!40000 ALTER TABLE `se_compose_prepa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `se_compose_propo`
--

DROP TABLE IF EXISTS `se_compose_propo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `se_compose_propo` (
  `QteIngredient` int(11) DEFAULT NULL,
  `FraicheurMin` int(11) DEFAULT NULL,
  `FraicheurMax` int(11) DEFAULT NULL,
  `Temps` int(11) DEFAULT NULL,
  `IDProposition` int(11) NOT NULL,
  `IDproduit` int(11) NOT NULL,
  PRIMARY KEY (`IDProposition`,`IDproduit`),
  KEY `FK_se_compose_propo_IDproduit` (`IDproduit`),
  CONSTRAINT `FK_se_compose_propo_IDProposition` FOREIGN KEY (`IDProposition`) REFERENCES `Proposition` (`IDProposition`) ON DELETE CASCADE,
  CONSTRAINT `FK_se_compose_propo_IDproduit` FOREIGN KEY (`IDproduit`) REFERENCES `Produit` (`IDproduit`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `se_compose_propo`
--

LOCK TABLES `se_compose_propo` WRITE;
/*!40000 ALTER TABLE `se_compose_propo` DISABLE KEYS */;
INSERT INTO `se_compose_propo` VALUES (3,5,10,2,1,38),(1,5,10,20,1,42),(2,5,10,15,1,70),(2,2,5,3,2,32),(5,1,2,6,2,33),(3,10,20,15,2,35),(1,2,8,5,3,35),(1,3,7,10,3,49),(1,4,6,20,3,50);
/*!40000 ALTER TABLE `se_compose_propo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `Moyenne`
--

/*!50001 DROP TABLE IF EXISTS `Moyenne`*/;
/*!50001 DROP VIEW IF EXISTS `Moyenne`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`aurelien`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Moyenne` AS select avg(`Somme`.`Valeur`) AS `Valeur` from `Somme` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Somme`
--

/*!50001 DROP TABLE IF EXISTS `Somme`*/;
/*!50001 DROP VIEW IF EXISTS `Somme`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`aurelien`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Somme` AS select `Preparation`.`IDproduit` AS `Produit`,sum(`se_compose_prepa`.`QteIngredient`) AS `Valeur` from (`Preparation` join `se_compose_prepa` on((`Preparation`.`IDproduit` = `se_compose_prepa`.`IDproduitFinal`))) where (`Preparation`.`Temperature` > 0) group by `Preparation`.`IDproduit` */;
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

-- Dump completed on 2017-04-04 10:27:43
