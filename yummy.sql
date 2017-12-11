-- MySQL dump 10.13  Distrib 5.7.20, for osx10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: yummy
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `hitcount` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BFDD3168A76ED395` (`user_id`),
  KEY `IDX_BFDD3168EA9FDD75` (`media_id`),
  CONSTRAINT `FK_BFDD3168A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_BFDD3168EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `medias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `user_id`, `media_id`, `title`, `summary`, `content`, `hitcount`, `created_at`, `updated_at`) VALUES (1,1,1,'un titre','## Après','## Après Content',0,'2017-12-10 19:17:01','2017-12-10 19:17:01'),(2,1,2,'pizza : plat Italien','La pizza est une tarte d\'origine italienne, faite d\'une pâte à pain étalée et de coulis de tomate, recouverte de divers ingrédients et cuite au four (à bois, à gaz ou électrique). La pizza est un des mets de la cuisine italienne qui s\'est établi presque partout dans le monde, souvent en s\'adaptant aux goûts locaux.','## Étymologie\r\n\r\nSelon Alain Rey, le mot « pizza » est « attesté primitivement au sens de « fouace », « galette », dès 997 en latin médiéval dans un document d\'archive de la cathédrale de Gaeta ; il apparaît en 1535 en dialecte napolitain dans l\'ouvrage Rimario, de Benedetto Di Falco (it) et, à partir de 1549, en italien florentin. Il est spécialisé dans son sens actuel depuis 1570\\. L\'étymologie exacte du mot est difficile à déterminer et il existe plusieurs hypothèses à ce sujet : G. Princi Braccini propose comme étymon un mot gotique ou longobard, bizzo (haut allemand), « morceau (de pain), bouchée, fouace » ; R. Giacomelli y voit comme origine le grec vulgaire pitta, « fouace » (qui aurait donné pita en grec moderne).\r\n\r\n## Histoire\r\n\r\nJusqu\'à l\'introduction de la tomate (un des principaux ingrédients de la pizza actuelle) en Europe et à son utilisation en cuisine à la fin du xviie siècle, la dite « pizza » d\'alors n\'avait aucun rapport avec celle d\'aujourd\'hui : elle se présentait sous différentes formes et de plusieurs types dont la variété ne se limitait pas aux garnitures mais s’élargissait aussi aux modes de cuisson (four ou poêlée dans l\'huile).\r\n\r\nLa pizzella, sorte de pain de garde, apparaît dans le recueil de conte napolitain Lo Cunto de li cunti de Giambattista Basile, publié en 1634\\. Ce texte précise qu\'elle se décline en pizzella sucrée réservée à la cour et en pizzella salée, sorte de casse-croûte d\'extérieur, roboratif, matefaim ambulatoire réservé au petit peuple.\r\n\r\nLa tomate étant de la même famille que la belladone toxique, ses fruits ne sont pas considérés par les « savants » comme comestibles (auparavant, la plante est surtout utilisée comme plante ornementale et le fruit en médecine) avant le début du xviiie siècle, en Italie, si bien que seule existe initialement la pizza bianca (« pizza blanche »), pâte aplatie et agrémentée de « choses diverses » (huile ou saindoux, herbes) qui est devenue un mets plébéien. Il a une garniture et un prix qui varient en fonction des disponibilités du marché.\r\n\r\nLa pizza bianca est progressivement détrônée par la pizza rossa (« pizza rouge »), pour partie parce que la première, « trop proche des multiples cousines que compte l\'Italie, ne permet pas d\'étendre le rayonnement de Naples en l\'intégrant dans les registres de cuisine régionale par la médiation du marqueur rouge ». Mais c\'est plus probablement à l\'épisode de la création de la pizza Margherita (pizza aux couleurs de l\'Italie, créée en hommage à la reine Marguerite, lors d\'un voyage à Naples) que l\'on doit l\'explication de cette substitution.\r\n\r\nLa pizza rouge est prise dans un nouveau processus, avec l\'émigration massive italienne (26 millions d\'Italiens s\'expatrient entre 1850 et 1900), et devient un véritable étendard symbolique de leur nation9',0,'2017-12-10 20:39:32','2017-12-10 20:39:32');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5F9E962AA76ED395` (`user_id`),
  KEY `IDX_5F9E962A59D8A214` (`recipe_id`),
  CONSTRAINT `FK_5F9E962A59D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  CONSTRAINT `FK_5F9E962AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `user_id`, `recipe_id`, `content`, `created_at`, `updated_at`) VALUES (2,1,1,'Miam Miam','2017-12-11 07:55:58','2017-12-11 07:56:06');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medias`
--

DROP TABLE IF EXISTS `medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medias`
--

LOCK TABLES `medias` WRITE;
/*!40000 ALTER TABLE `medias` DISABLE KEYS */;
INSERT INTO `medias` (`id`, `title`, `path`, `type`) VALUES (1,'un titre','47f3cf886b8e99a3503417c1888c47dc.jpeg','image/jpeg'),(2,'pizza','53e069ae4534187f0faf147f215c9948.jpeg','image/jpeg');
/*!40000 ALTER TABLE `medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` int(11) DEFAULT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `steps` text COLLATE utf8_unicode_ci,
  `ingredients` text COLLATE utf8_unicode_ci,
  `difficulty` tinyint(4) DEFAULT NULL,
  `preparation_time` time NOT NULL,
  `cooking_time` time NOT NULL,
  `materials` text COLLATE utf8_unicode_ci,
  `astuce` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A369E2B5EA9FDD75` (`media_id`),
  CONSTRAINT `FK_A369E2B5EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `medias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` (`id`, `media_id`, `name`, `steps`, `ingredients`, `difficulty`, `preparation_time`, `cooking_time`, `materials`, `astuce`, `created_at`, `updated_at`) VALUES (1,1,'Pizza','* Préparation de la pâte : eau, sel, farine de blé type 00 (dénomination italienne correspondante en France à la T55), levure. On mélange, on forme des boules grosses comme le poing et on laisse reposer à température ambiante trois à quatre heures minimum.\n* Préparation de la pizza : on étale chaque boule de préférence à la main (car le rouleau écrase les bulles d\'air dans la pâte) sur laquelle on place les ingrédients.\n* Cuisson : au four à feu de bois environ 1 minute de cuisson à 400 °C.\n\nPar exemple pour la pizza Margherita, la plus simple : une cuillère à soupe de tomates, de la mozzarella écrasée avec les mains, une ou deux feuilles de basilic frais, un soupçon d\'huile d\'olive, au four, et à consommer rapidement.\n','- 1 pâte à pizza \n- 1 fromage de chèvre long \n- 1 petit pot coulis de tomate \n- 1 roquefort\n- 1 petit sachet mozzarella\n- 1 sachet gruyère râpé\n- Poivre \n- Sel \n',1,'00:10:00','00:40:00','\n- 1 four\n- 1 fourchette\n- 1 rouleau à pâtisserie\n- 1 couteau\n- 1 râpe\n- 1 couvercle','Cela fait une bonne pizza avec une bonne épaisseur ; se mange facilement pour ceux qui aiment les fromages. On peut la faire avec n\'importe quel fromage. En général, elle a du succès.','2017-12-11 08:06:24','2017-12-11 08:06:41');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `admin`, `created_at`, `updated_at`) VALUES (1,'admin','admin@marathon.com','$2y$13$oJzoxXfyFfCf6SWzCcZQA.6ZJk5zi2bjQra4kcVLJ140xl0ne6.5W','',1,'2017-12-10 19:14:57','2017-12-10 19:14:57'),(2,'duchmol','duchmol@marathon.com','$2y$13$oJzoxXfyFfCf6SWzCcZQA.6ZJk5zi2bjQra4kcVLJ140xl0ne6.5W',' ',0,'2017-12-10 19:14:57','2017-12-10 19:14:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `value` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_518B7ACFA76ED395` (`user_id`),
  KEY `IDX_518B7ACF59D8A214` (`recipe_id`),
  CONSTRAINT `FK_518B7ACF59D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  CONSTRAINT `FK_518B7ACFA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
INSERT INTO `votes` (`id`, `user_id`, `recipe_id`, `value`) VALUES (1,2,1,5);
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-11  9:09:39
