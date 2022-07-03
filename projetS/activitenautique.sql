-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: sportnautique
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES (1,'Subaquatique'),(2,'Sports de glisse'),(3,'Loisirs nautique'),(4,'Navigation');
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20210223232843','2021-03-10 15:48:48',98),('DoctrineMigrations\\Version20210310160759','2021-03-10 17:08:09',101),('DoctrineMigrations\\Version20210315162754','2021-03-15 17:28:11',111),('DoctrineMigrations\\Version20210315164132','2021-03-15 17:42:02',73),('DoctrineMigrations\\Version20210315165416','2021-03-15 17:54:26',111),('DoctrineMigrations\\Version20210315184615','2021-03-15 19:46:25',83);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sport`
--

DROP TABLE IF EXISTS `sport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_categorie_id` int(11) DEFAULT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `prix` decimal(10,0) NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1A85EFD29F34925F` (`id_categorie_id`),
  CONSTRAINT `FK_1A85EFD29F34925F` FOREIGN KEY (`id_categorie_id`) REFERENCES `categorie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sport`
--

LOCK TABLES `sport` WRITE;
/*!40000 ALTER TABLE `sport` DISABLE KEYS */;
INSERT INTO `sport` VALUES (1,1,'Plongée sous-marine','La plongée sous-marine est une activité consistant à rester sous l\'eau marine soit en apnée, soit en respirant à l\'aide d\'un narguilé (tuyau apportant de l\'air depuis la surface) ou le plus souvent en s\'équipant d\'une bouteille de plongée.','2021-03-09',25,'img/act/plongee.jpg'),(2,1,'Exploration d\'épave','Dans le domaine maritime, une épave est ce qui reste d\'un navire en mer, sur le rivage ou au fond de la mer, après avoir été abandonné, s’être échoué ou avoir coulé à la suite d\'un événement de mer ou d\\\'un sabordage.','2021-02-12',50,'img/act/epave.jpg'),(3,1,'Apnée sportive','L\\\'apnée est une dicipline sportive non sans danger, car elle expose le pratiquant à un certain nombre de risques potentiellement grave. Cette pratique consiste à suspendre de manière volontaire la ventilation sous l\\\'eau.','2021-04-17',12,'img/act/apnee.jpg'),(4,1,'Exploration de réserve maritime','Les réserves maritime sont des aires protégée qui sont des outils de conservations efficace des ressources halieutiques (poissons, mollusques ect..)','2021-03-14',39,'img/act/reserve.jpg'),(5,2,'Surf','Le surf est une action ou une pratique physique de glisse sur les vagues, au bord de l\\\'océan. Il est pratiqué debout sur une planche.','2021-05-15',30,'img/act/surf.jpg'),(6,2,'Kitesurf','Le kitesurf est un sport de glisse consistant à évoluer avec une planche à la surface d\\\'une étendue d\\\'eau en étant tracté par un cerf-volant spécialement adapté, nommé aile ou voile.','2021-03-12',45,'img/act/kitesurf.jpg'),(7,2,'Planche à voile','\'La planche à voile est un type d\\\'embarcation à voile minimaliste, c\\\'est aussi le sport de glisse pratiqué avec cette embarcation. Elle est constituée d\\\'une simple planche ou flotteur, et d\\\'un gréement articulé à la planche par la base du mât.','2021-06-11',59,'img/act/voile.jpg'),(8,2,'Paddle','Le paddle est un sport de glisse nautique où le pratiquant se tient debout sur une planche plus longue qu\\\'une planche de surf classique, se propulsant à l\\\'aide d\\\'une pagaie.','2021-03-05',11,'img/act/paddle.jpg'),(9,3,'Bouée tractée','La bouée tractée est une activité nautique qui fait sensation sur les plages en été. L\\\'appellation regroupe aussi bien les bouées individuelle, pour plusieurs personnes ou les fameuses bouées banane','2021-03-11',15,'img/act/bouee.jpg'),(10,3,'Ski nautique','Le ski nautique est un sport nautique consistant à se faire tracter par un bateau à moteur en étant sur des ski. Il comporte quatre disciplines :le slalom, les figures, et saut et le combiné.','2021-02-24',20,'img/act/ski.jpg'),(11,3,'Wakeboard','Le wakeboard est un sport nautique. Le pratiquant de wakeboard est relié par un palonnier à un bateau à moteur qui le tracte, glisse sur l\\\'eu en se maintenant ssur une planche de type surf ou skate.','2021-03-28',20,'img/act/wakeboard.jpg'),(12,3,'Jet ski','Sur un plan d\\\'eau, l\\\'océan ou la mer, et au départ d\\\'une plage, d\\\'un port ou d\\\'une base de loisirs, le jetski est une activité aquatique saisonnière très appréciée. Combinant vitesse, découverte et adrénaline dans les vagues, il est idéal pour une sortie nautique et ludique.','2021-03-29',80,'img/act/jetski.jpg'),(13,4,'Croisière Fort Boyard','Cette croisière commentée vous fera passer un agréable moment à l\\\'ombre de ce majestueux édifice. Elle comprend : approche du Fort Enet, tour complet du Fort Boyard et un tour de l\\\'île d\\\'Aix.','2021-03-28',14,'img/act/fortboyard.jpg'),(14,4,'Promenade en canoë/kayak','Le canoë-kayak et ses activités associées se pratiquent à bord d\\\'une embarcation propulsée à la pagaie, en eau calme, en mer et en eau vive. La pagaie est un instrument à une ou deux pales permettant de propulser une embarcation sans point d\\\'appui sur le flotteur','2021-05-24',15,'img/act/kayak.jpg'),(15,4,'Location de bâteau','Elle comprend le Pertuis d’Antioche et le Pertuis Breton, sa plus grande partie est située à l’abri des îles de Ré et d’Oléron. Quelque soit le temps, il y a toujours la possibilité d’y effectuer une navigation très agréable et de trouver des ports charmants ou des mouillages tranquilles. Deux jours de navigation ne suffiront pas pour explorer un tel périmètre !','2021-03-27',100,'img/act/bateau.jpg'),(16,4,'4','4','2021-03-29',4,'img/act/.jpg');
/*!40000 ALTER TABLE `sport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_postal` int(11) NOT NULL,
  `ville` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pays` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'tiphaine_r17@live.fr','[]','$argon2id$v=19$m=65536,t=4,p=1$oPVq+tJ+mAoQ3YQo/tQxfw$tR+akM5WQ/A5KGH8myn9wwjV+svpmYR4Ui/quDxOqHQ','renouf','tiphaine','4 rue truc machin chose',17000,'la rochelle','france',658769248),(9,'nico1@gmail.com','[]','coucou','Per','Nic','6 rue de chez toi',17000,'LR','France',676836489);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-15 20:20:37
