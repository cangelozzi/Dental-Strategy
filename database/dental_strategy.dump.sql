-- MySQL dump 10.16  Distrib 10.2.8-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: dental_strategy
-- ------------------------------------------------------
-- Server version	10.2.8-MariaDB

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
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int(10) unsigned NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `answers_question_id_foreign` (`question_id`),
  CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,1,0,'Non qui qui numquam ea. Dolor placeat quasi voluptas non ratione impedit. Vero velit quia ducimus quibusdam est.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(2,1,1,'Voluptas et et debitis reiciendis est voluptas. Ut voluptas blanditiis et aliquam. Totam adipisci porro asperiores earum consequatur consequatur nesciunt.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(3,1,0,'Quod recusandae expedita sed debitis sunt dicta. Magnam sed consequatur delectus nesciunt. Iste eos qui ut impedit sit non. Enim non ea ratione quo fugiat dolores animi.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(4,1,0,'Aut alias itaque velit nobis provident sit. Beatae nulla alias dolore ut dolores quasi laudantium. Est sit eaque explicabo.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(5,2,0,'Officiis reprehenderit deleniti repudiandae natus quia ratione dicta. Sint consequatur explicabo eius ad. Aut sequi accusamus quo modi quia quam impedit. Sit autem maiores aliquam.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(6,2,0,'Ipsa neque ea porro laboriosam fugit sunt accusamus. Et repudiandae esse aut est qui. In et iste omnis dolores eum nemo recusandae.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(7,2,0,'Aut saepe debitis dicta quo dolorum. Quaerat soluta porro distinctio nihil. Modi illo aliquam laborum sunt. Sit iure quia voluptatem et et esse.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(8,2,0,'Accusantium omnis fugiat explicabo accusantium quidem. Itaque est est impedit praesentium voluptatibus alias quod. Quidem molestiae optio vel reprehenderit molestias sunt in.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(9,3,0,'Eum ut aut sed molestiae ut quia doloremque. Eos officia quia et. Quidem sed dignissimos molestiae tenetur nisi rerum. Saepe et rerum excepturi repellat.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(10,3,0,'Laboriosam omnis quas tempore et. Omnis perspiciatis error in alias quam. Molestiae esse ipsam natus nobis officiis sint.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(11,3,0,'Aut cum exercitationem maiores cumque impedit voluptas. Aperiam qui ducimus sunt ut ab nostrum soluta. Id rerum placeat corrupti et occaecati consectetur quia.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(12,3,0,'Ipsum ut blanditiis voluptatibus ad velit. Quia ratione ut in similique iure. Nulla nulla rerum velit est soluta. Voluptatem rerum eius assumenda aut ullam cum.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(13,4,1,'Quam qui ut voluptas nihil esse dolore. Est porro reiciendis corporis accusantium totam ducimus aut. Autem et voluptatem sapiente voluptatem quis.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(14,4,0,'Porro libero quis iure atque eos et blanditiis. Et veniam cum non minus eos optio. Doloribus fuga quia voluptas libero vel. Repellendus nobis tenetur occaecati et et.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(15,4,0,'Eaque quia ut eveniet quaerat odio unde. Consequatur in animi nulla non quo facilis doloribus. Qui officia possimus id et qui nihil ea. Voluptatibus id quia numquam velit voluptatum asperiores.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(16,4,0,'At eligendi ipsam et. Molestiae qui dignissimos quas.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(17,5,0,'Odio provident enim qui in. Consequatur magnam dolore fugiat. Velit nam vel cum consequuntur nihil sint.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(18,5,0,'Blanditiis rerum incidunt dolorem aut. Debitis neque sed dolores nulla nesciunt modi. Officia et beatae eligendi sit.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(19,5,0,'Veniam aut delectus consequatur quis necessitatibus. Necessitatibus neque qui neque id. Quae fugit tempora ea nesciunt temporibus ratione reprehenderit.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(20,5,0,'Et recusandae voluptatum molestiae repellat voluptas corrupti. Pariatur quia deleniti sint ex officiis laborum eaque. Facilis repudiandae vero est veniam ullam.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(21,6,0,'Est beatae molestiae labore voluptatem ut earum vitae sunt. Quos ea vel nihil minus et qui. Aspernatur autem corporis rerum tempora dicta. Veritatis molestiae velit et consequuntur error.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(22,6,0,'Iste voluptas libero maiores est consequuntur commodi. Eos voluptatem vitae ea est voluptatem occaecati pariatur. Aut nostrum placeat minima provident et reprehenderit.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(23,6,1,'Assumenda et voluptatem sit. Maxime ipsa sed vero quia. Iste vel ullam eius ducimus quod omnis. Suscipit nihil et doloribus ratione quo expedita.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(24,6,0,'Ut consectetur natus accusamus excepturi reprehenderit. Eos maiores eius rerum debitis animi consequatur.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(25,7,1,'Minima sit et ullam quidem aut a dolor qui. Eum aperiam assumenda perspiciatis. Rem fugiat cum nemo ad est quia. Molestiae laboriosam consequatur omnis architecto libero eos sed vero.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(26,7,0,'A et aperiam voluptate harum perspiciatis optio dolores. Soluta assumenda placeat voluptatem. Odit omnis magni perspiciatis sed unde.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(27,7,0,'Nostrum enim et quisquam reprehenderit earum odio. Exercitationem eos ab laboriosam est consequuntur. Inventore perferendis sed eligendi velit odit sequi et minus. Minus qui et illo atque quod et.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(28,7,1,'Nihil error at debitis hic officiis at. Ea culpa officiis neque sequi nulla expedita molestiae hic. Nam deserunt dolor adipisci autem sint reprehenderit.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(29,8,0,'Voluptates laboriosam ut eius velit. Cumque sunt ab consectetur earum nobis reiciendis ipsa soluta. Ut dolore corrupti excepturi consequuntur autem non ratione assumenda.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(30,8,0,'Nam esse rerum iusto cum et. Id quidem dolor vitae consequuntur cum illo distinctio. Aliquid ut atque veritatis aperiam. Cupiditate quia nisi incidunt qui similique pariatur in.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(31,8,0,'Vitae magnam et quis voluptas. Doloremque consequuntur iste incidunt voluptatem ex. Animi distinctio deserunt quod animi rerum voluptatem. Consectetur enim et quod ratione quae officiis enim.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(32,8,0,'Reprehenderit consequatur aperiam facere recusandae. Fuga eligendi est eos repudiandae non itaque veniam. Rerum minima quasi mollitia debitis.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(33,9,0,'Nesciunt voluptatem ipsum aut quaerat totam numquam consequatur omnis. Dicta eos ex sit. Dolorem eius omnis quibusdam sit rerum et. Culpa totam ab veritatis quia ea et.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(34,9,1,'Ut natus qui aut laborum rem exercitationem quia. Est nobis minus dolore voluptatibus laboriosam. Consequatur sit dolores qui earum autem. Qui quo ad in dolorem dolorum amet quam.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(35,9,0,'In commodi ab dolorem ea. Est in aut illo sed ut neque. Eveniet sit temporibus ducimus fugit. Pariatur in dolorem molestias hic ut iste earum.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(36,9,0,'Consequatur ab autem veniam aut. Ea sapiente molestiae nisi est. Quia unde et quasi voluptates nam sit. A qui repudiandae quasi tenetur sed neque.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(37,10,0,'Non voluptatum et quia et. Ut neque quam ut harum nobis. Aliquid repudiandae et dolor. Sed sunt corrupti repellendus recusandae. Et enim repudiandae exercitationem.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(38,10,0,'Officiis officia maxime est. Maiores qui omnis fugit perferendis. Sunt assumenda architecto et.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(39,10,1,'Facere dolor enim quibusdam est fugit suscipit perferendis. Maiores incidunt quam quae non odio quidem. Optio voluptatum quibusdam molestiae eius nesciunt.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(40,10,0,'Molestias qui dignissimos possimus id. Culpa nostrum hic sed sit est suscipit autem similique. Aut hic nulla nam sit iste.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(41,16,0,'Dignissimos et et blanditiis. Ea et laborum laboriosam ipsum animi ut. Laboriosam quia nulla iusto odit dolorem quis.','2018-02-28 01:34:07','2018-02-28 01:34:07'),(42,17,0,'Officiis ut eum nihil occaecati. Quidem ipsum maiores voluptas molestiae rerum mollitia. Voluptates in ea animi sunt et unde.','2018-02-28 01:35:42','2018-02-28 01:35:42'),(43,18,0,'Repudiandae voluptatum et qui rerum fugit repudiandae. Repellat aliquam dolores corporis quia est. Et quisquam expedita voluptatum quo. Repudiandae quia corporis nam nihil.','2018-02-28 01:36:46','2018-02-28 01:36:46'),(44,18,0,'Possimus aliquam earum nesciunt unde tenetur. Et officia consequatur quo maxime. Repudiandae omnis sapiente optio dolor. Non molestias dicta velit voluptatem libero et.','2018-02-28 01:36:46','2018-02-28 01:36:46'),(45,18,0,'Sunt molestiae dolore dolore beatae. Aperiam neque porro sint explicabo.','2018-02-28 01:36:46','2018-02-28 01:36:46'),(46,18,0,'Et repudiandae et rerum deserunt dolore iste nam. A dolore voluptatum accusantium ea et. Et delectus mollitia autem ullam adipisci veritatis.','2018-02-28 01:36:46','2018-02-28 01:36:46'),(47,18,0,'Illum eos ipsa ratione ut. Aut et voluptatem ratione. Non voluptatem repellat nisi molestiae.','2018-02-28 01:36:46','2018-02-28 01:36:46'),(48,19,0,'Ipsum veniam dolorum placeat labore quia et. Voluptas iure consequuntur tenetur vitae. Quia illo nostrum qui ea. Cupiditate ullam iure qui culpa vel.','2018-02-28 01:37:01','2018-02-28 01:37:01'),(49,19,1,'Et quia sapiente ullam occaecati enim tenetur. Vero rerum ut modi ea. Dolor similique quo ab et temporibus.','2018-02-28 01:37:01','2018-02-28 01:37:01'),(50,19,1,'Facilis harum recusandae voluptatum. Sed et id ea debitis amet dicta et. Harum aut dolorum beatae animi rerum quasi. Possimus corrupti dolor in.','2018-02-28 01:37:01','2018-02-28 01:37:01'),(51,19,1,'Ut est nostrum blanditiis quibusdam ut eveniet. Enim odio aut delectus voluptatum.','2018-02-28 01:37:01','2018-02-28 01:37:01'),(52,19,0,'Ex vero ea dicta accusantium nostrum. Maxime cumque quod voluptatum. Ratione quasi qui magnam accusantium. Consequatur explicabo iste maiores culpa ut assumenda.','2018-02-28 01:37:01','2018-02-28 01:37:01'),(53,19,0,'Repellendus commodi magni commodi dignissimos modi. Reprehenderit vitae laborum illo vitae. Nihil molestias et aut commodi et aut sint. Maxime doloribus sequi aut nam.','2018-02-28 01:37:04','2018-02-28 01:37:04'),(54,19,0,'Ab sint ducimus consequatur iusto in tempore rerum mollitia. Possimus blanditiis cumque qui id corrupti nihil non sit. Temporibus tempore voluptatibus tempore dolor.','2018-02-28 01:37:04','2018-02-28 01:37:04'),(55,19,0,'Ea minima sit alias quis odit. Nostrum dolorem reiciendis et eos nesciunt beatae provident. Iusto velit qui et sequi sunt asperiores.','2018-02-28 01:37:04','2018-02-28 01:37:04'),(56,19,0,'Repellat voluptatum ex quo vel provident sed. Nihil perspiciatis omnis esse vitae cumque occaecati est perspiciatis.','2018-02-28 01:37:04','2018-02-28 01:37:04'),(57,19,0,'Beatae id officiis ut repellat natus sed consequatur. Dolor non doloremque qui unde odit. Cupiditate molestias quia voluptatibus omnis. Ipsa nostrum quo voluptas rem occaecati facilis nesciunt.','2018-02-28 01:37:04','2018-02-28 01:37:04'),(58,20,1,'Magnam debitis et quis consequatur. Sed labore consequatur pariatur perferendis dicta fugiat ut. Autem fugit ad magni veritatis. Inventore autem et cumque non sunt at.','2018-02-28 01:37:33','2018-02-28 01:37:33'),(59,22,1,'Quo unde itaque sunt culpa eum. Odio sint debitis saepe. Voluptates adipisci ut suscipit et dolorem sit labore. Aut amet repellendus natus voluptas eligendi nihil.','2018-02-28 01:37:54','2018-02-28 01:37:54'),(60,24,1,'Dignissimos necessitatibus quos quae nisi deleniti dolorem. Voluptatem mollitia accusamus numquam dolorum nesciunt. In esse ut at itaque voluptatum. Soluta ipsa cum cupiditate adipisci.','2018-02-28 01:40:53','2018-02-28 01:40:53'),(61,26,1,'Cum voluptas sit nisi libero. Repudiandae voluptas et eos corporis commodi optio pariatur. Ipsum dolorem quibusdam optio earum non molestiae sed. Eum fugiat sed et non.','2018-02-28 01:41:14','2018-02-28 01:41:14'),(62,28,1,'Deleniti aut in dolor. Natus quo officia velit commodi itaque. Accusamus et saepe aut officiis eos enim qui qui. Vitae explicabo ipsam fugit sed ratione esse sapiente rerum.','2018-02-28 01:47:53','2018-02-28 01:47:53'),(63,30,1,'Dolorum ipsa aperiam non aut praesentium totam. Voluptatibus cumque asperiores nesciunt consequatur id culpa eos qui.','2018-02-28 01:48:11','2018-02-28 01:48:11'),(64,32,1,'Ut consequatur veniam aut molestiae quis. Quos sit laborum recusandae corrupti quia laudantium. Eum sequi explicabo ullam quaerat architecto omnis dolore. Iusto rerum aut nam et laudantium.','2018-02-28 01:48:20','2018-02-28 01:48:20');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `companies_admin_id_foreign` (`admin_id`),
  CONSTRAINT `companies_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,NULL,'https://lorempixel.com/640/480/?37491','2018-02-28 01:27:35','2018-02-28 01:27:35','Koepp-Schimmel'),(2,NULL,'NOTREALIMG.jpg','2018-02-28 01:27:38','2018-02-28 01:27:38','Test Company'),(4,NULL,'NOTREALIMG.jpg','2018-02-28 01:29:48','2018-02-28 01:29:48','Test Company'),(6,NULL,'NOTREALIMG.jpg','2018-02-28 01:33:25','2018-02-28 01:33:25','Test Company'),(8,NULL,'NOTREALIMG.jpg','2018-02-28 01:34:06','2018-02-28 01:34:06','Test Company'),(10,NULL,'NOTREALIMG.jpg','2018-02-28 01:37:54','2018-02-28 01:37:54','Test Company'),(12,NULL,'NOTREALIMG.jpg','2018-02-28 01:40:52','2018-02-28 01:40:52','Test Company'),(14,NULL,'NOTREALIMG.jpg','2018-02-28 01:41:14','2018-02-28 01:41:14','Test Company'),(16,NULL,'NOTREALIMG.jpg','2018-02-28 01:47:53','2018-02-28 01:47:53','Test Company'),(18,NULL,'NOTREALIMG.jpg','2018-02-28 01:48:11','2018-02-28 01:48:11','Test Company'),(20,NULL,'NOTREALIMG.jpg','2018-02-28 01:48:19','2018-02-28 01:48:19','Test Company');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_answer`
--

DROP TABLE IF EXISTS `employee_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_answer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `employee_quiz_id` int(10) unsigned NOT NULL,
  `answer_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_answer_employee_id_foreign` (`employee_id`),
  KEY `employee_answer_employee_quiz_id_foreign` (`employee_quiz_id`),
  KEY `employee_answer_answer_id_foreign` (`answer_id`),
  CONSTRAINT `employee_answer_answer_id_foreign` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `employee_answer_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  CONSTRAINT `employee_answer_employee_quiz_id_foreign` FOREIGN KEY (`employee_quiz_id`) REFERENCES `employee_quiz` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_answer`
--

LOCK TABLES `employee_answer` WRITE;
/*!40000 ALTER TABLE `employee_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_lesson`
--

DROP TABLE IF EXISTS `employee_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_lesson` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lesson_id` int(10) unsigned NOT NULL,
  `employee_id` int(10) unsigned NOT NULL,
  `amount_complete` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_lesson_lesson_id_foreign` (`lesson_id`),
  KEY `employee_lesson_employee_id_foreign` (`employee_id`),
  CONSTRAINT `employee_lesson_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  CONSTRAINT `employee_lesson_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_lesson`
--

LOCK TABLES `employee_lesson` WRITE;
/*!40000 ALTER TABLE `employee_lesson` DISABLE KEYS */;
INSERT INTO `employee_lesson` VALUES (1,1,1,0.80,'2018-02-28 01:27:36','2018-02-28 01:27:36');
/*!40000 ALTER TABLE `employee_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_module`
--

DROP TABLE IF EXISTS `employee_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(10) unsigned NOT NULL,
  `employee_id` int(10) unsigned NOT NULL,
  `amount_complete` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_module_module_id_foreign` (`module_id`),
  KEY `employee_module_employee_id_foreign` (`employee_id`),
  CONSTRAINT `employee_module_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  CONSTRAINT `employee_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_module`
--

LOCK TABLES `employee_module` WRITE;
/*!40000 ALTER TABLE `employee_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_page`
--

DROP TABLE IF EXISTS `employee_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `employee_lesson_id` int(10) unsigned NOT NULL,
  `complete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_page_employee_id_foreign` (`employee_id`),
  KEY `employee_page_employee_lesson_id_foreign` (`employee_lesson_id`),
  CONSTRAINT `employee_page_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  CONSTRAINT `employee_page_employee_lesson_id_foreign` FOREIGN KEY (`employee_lesson_id`) REFERENCES `employee_lesson` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_page`
--

LOCK TABLES `employee_page` WRITE;
/*!40000 ALTER TABLE `employee_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_quiz`
--

DROP TABLE IF EXISTS `employee_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_quiz` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) unsigned NOT NULL,
  `quiz_id` int(10) unsigned NOT NULL,
  `passed` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_quiz_employee_id_foreign` (`employee_id`),
  KEY `employee_quiz_quiz_id_foreign` (`quiz_id`),
  CONSTRAINT `employee_quiz_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  CONSTRAINT `employee_quiz_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_quiz`
--

LOCK TABLES `employee_quiz` WRITE;
/*!40000 ALTER TABLE `employee_quiz` DISABLE KEYS */;
INSERT INTO `employee_quiz` VALUES (1,4,1,1,'2018-02-28 01:27:36','2018-02-28 01:27:36');
/*!40000 ALTER TABLE `employee_quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_track`
--

DROP TABLE IF EXISTS `employee_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_track` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `track_id` int(10) unsigned NOT NULL,
  `employee_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_track_track_id_foreign` (`track_id`),
  KEY `employee_track_employee_id_foreign` (`employee_id`),
  CONSTRAINT `employee_track_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  CONSTRAINT `employee_track_track_id_foreign` FOREIGN KEY (`track_id`) REFERENCES `tracks` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=531 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_track`
--

LOCK TABLES `employee_track` WRITE;
/*!40000 ALTER TABLE `employee_track` DISABLE KEYS */;
INSERT INTO `employee_track` VALUES (1,2,1,NULL,NULL),(2,3,1,NULL,NULL),(3,4,1,NULL,NULL),(4,6,1,NULL,NULL),(5,7,1,NULL,NULL),(6,8,1,NULL,NULL),(7,10,1,NULL,NULL),(8,11,1,NULL,NULL),(9,12,1,NULL,NULL),(10,13,1,NULL,NULL),(11,16,1,NULL,NULL),(12,18,1,NULL,NULL),(13,20,1,NULL,NULL),(14,2,2,NULL,NULL),(15,3,2,NULL,NULL),(16,4,2,NULL,NULL),(17,5,2,NULL,NULL),(18,6,2,NULL,NULL),(19,7,2,NULL,NULL),(20,8,2,NULL,NULL),(21,9,2,NULL,NULL),(22,10,2,NULL,NULL),(23,11,2,NULL,NULL),(24,12,2,NULL,NULL),(25,13,2,NULL,NULL),(26,14,2,NULL,NULL),(27,15,2,NULL,NULL),(28,16,2,NULL,NULL),(29,17,2,NULL,NULL),(30,18,2,NULL,NULL),(31,19,2,NULL,NULL),(32,20,2,NULL,NULL),(33,1,3,NULL,NULL),(34,2,3,NULL,NULL),(35,3,3,NULL,NULL),(36,6,3,NULL,NULL),(37,8,3,NULL,NULL),(38,9,3,NULL,NULL),(39,10,3,NULL,NULL),(40,11,3,NULL,NULL),(41,13,3,NULL,NULL),(42,14,3,NULL,NULL),(43,15,3,NULL,NULL),(44,16,3,NULL,NULL),(45,17,3,NULL,NULL),(46,18,3,NULL,NULL),(47,20,3,NULL,NULL),(48,2,4,NULL,NULL),(49,5,4,NULL,NULL),(50,8,4,NULL,NULL),(51,10,4,NULL,NULL),(52,11,4,NULL,NULL),(53,16,4,NULL,NULL),(54,20,4,NULL,NULL),(55,1,5,NULL,NULL),(56,2,5,NULL,NULL),(57,3,5,NULL,NULL),(58,4,5,NULL,NULL),(59,5,5,NULL,NULL),(60,6,5,NULL,NULL),(61,7,5,NULL,NULL),(62,8,5,NULL,NULL),(63,9,5,NULL,NULL),(64,10,5,NULL,NULL),(65,11,5,NULL,NULL),(66,12,5,NULL,NULL),(67,14,5,NULL,NULL),(68,15,5,NULL,NULL),(69,16,5,NULL,NULL),(70,17,5,NULL,NULL),(71,18,5,NULL,NULL),(72,19,5,NULL,NULL),(73,20,5,NULL,NULL),(74,18,6,NULL,NULL),(75,20,6,NULL,NULL),(76,1,7,NULL,NULL),(77,2,7,NULL,NULL),(78,3,7,NULL,NULL),(79,5,7,NULL,NULL),(80,11,7,NULL,NULL),(81,12,7,NULL,NULL),(82,13,7,NULL,NULL),(83,15,7,NULL,NULL),(84,16,7,NULL,NULL),(85,17,7,NULL,NULL),(86,18,7,NULL,NULL),(87,19,7,NULL,NULL),(88,20,7,NULL,NULL),(89,1,8,NULL,NULL),(90,3,8,NULL,NULL),(91,4,8,NULL,NULL),(92,5,8,NULL,NULL),(93,10,8,NULL,NULL),(94,15,8,NULL,NULL),(95,20,8,NULL,NULL),(96,1,9,NULL,NULL),(97,2,9,NULL,NULL),(98,3,9,NULL,NULL),(99,4,9,NULL,NULL),(100,5,9,NULL,NULL),(101,6,9,NULL,NULL),(102,7,9,NULL,NULL),(103,8,9,NULL,NULL),(104,10,9,NULL,NULL),(105,11,9,NULL,NULL),(106,12,9,NULL,NULL),(107,14,9,NULL,NULL),(108,15,9,NULL,NULL),(109,17,9,NULL,NULL),(110,19,9,NULL,NULL),(111,1,10,NULL,NULL),(112,2,10,NULL,NULL),(113,4,10,NULL,NULL),(114,5,10,NULL,NULL),(115,6,10,NULL,NULL),(116,9,10,NULL,NULL),(117,10,10,NULL,NULL),(118,11,10,NULL,NULL),(119,13,10,NULL,NULL),(120,14,10,NULL,NULL),(121,16,10,NULL,NULL),(122,17,10,NULL,NULL),(123,18,10,NULL,NULL),(124,19,10,NULL,NULL),(125,2,11,NULL,NULL),(126,2,12,NULL,NULL),(127,3,12,NULL,NULL),(128,4,12,NULL,NULL),(129,5,12,NULL,NULL),(130,7,12,NULL,NULL),(131,8,12,NULL,NULL),(132,9,12,NULL,NULL),(133,13,12,NULL,NULL),(134,15,12,NULL,NULL),(135,17,12,NULL,NULL),(136,19,12,NULL,NULL),(137,1,13,NULL,NULL),(138,2,13,NULL,NULL),(139,3,13,NULL,NULL),(140,4,13,NULL,NULL),(141,5,13,NULL,NULL),(142,6,13,NULL,NULL),(143,7,13,NULL,NULL),(144,8,13,NULL,NULL),(145,9,13,NULL,NULL),(146,10,13,NULL,NULL),(147,11,13,NULL,NULL),(148,12,13,NULL,NULL),(149,13,13,NULL,NULL),(150,14,13,NULL,NULL),(151,15,13,NULL,NULL),(152,16,13,NULL,NULL),(153,17,13,NULL,NULL),(154,18,13,NULL,NULL),(155,19,13,NULL,NULL),(156,20,13,NULL,NULL),(157,1,14,NULL,NULL),(158,2,14,NULL,NULL),(159,3,14,NULL,NULL),(160,4,14,NULL,NULL),(161,5,14,NULL,NULL),(162,6,14,NULL,NULL),(163,7,14,NULL,NULL),(164,8,14,NULL,NULL),(165,9,14,NULL,NULL),(166,10,14,NULL,NULL),(167,11,14,NULL,NULL),(168,12,14,NULL,NULL),(169,13,14,NULL,NULL),(170,14,14,NULL,NULL),(171,15,14,NULL,NULL),(172,16,14,NULL,NULL),(173,17,14,NULL,NULL),(174,18,14,NULL,NULL),(175,19,14,NULL,NULL),(176,20,14,NULL,NULL),(177,1,15,NULL,NULL),(178,3,15,NULL,NULL),(179,4,15,NULL,NULL),(180,5,15,NULL,NULL),(181,6,15,NULL,NULL),(182,7,15,NULL,NULL),(183,8,15,NULL,NULL),(184,11,15,NULL,NULL),(185,12,15,NULL,NULL),(186,13,15,NULL,NULL),(187,14,15,NULL,NULL),(188,15,15,NULL,NULL),(189,16,15,NULL,NULL),(190,18,15,NULL,NULL),(191,19,15,NULL,NULL),(192,20,15,NULL,NULL),(193,1,16,NULL,NULL),(194,2,16,NULL,NULL),(195,6,16,NULL,NULL),(196,8,16,NULL,NULL),(197,9,16,NULL,NULL),(198,11,16,NULL,NULL),(199,12,16,NULL,NULL),(200,13,16,NULL,NULL),(201,15,16,NULL,NULL),(202,17,16,NULL,NULL),(203,18,16,NULL,NULL),(204,19,16,NULL,NULL),(205,20,16,NULL,NULL),(206,10,17,NULL,NULL),(207,14,17,NULL,NULL),(208,20,17,NULL,NULL),(209,1,18,NULL,NULL),(210,2,18,NULL,NULL),(211,3,18,NULL,NULL),(212,4,18,NULL,NULL),(213,6,18,NULL,NULL),(214,9,18,NULL,NULL),(215,11,18,NULL,NULL),(216,13,18,NULL,NULL),(217,15,18,NULL,NULL),(218,18,18,NULL,NULL),(219,20,18,NULL,NULL),(220,4,19,NULL,NULL),(221,9,19,NULL,NULL),(222,12,19,NULL,NULL),(223,18,19,NULL,NULL),(224,20,19,NULL,NULL),(225,15,20,NULL,NULL),(226,1,21,NULL,NULL),(227,2,21,NULL,NULL),(228,4,21,NULL,NULL),(229,5,21,NULL,NULL),(230,6,21,NULL,NULL),(231,7,21,NULL,NULL),(232,8,21,NULL,NULL),(233,9,21,NULL,NULL),(234,10,21,NULL,NULL),(235,11,21,NULL,NULL),(236,12,21,NULL,NULL),(237,13,21,NULL,NULL),(238,16,21,NULL,NULL),(239,17,21,NULL,NULL),(240,18,21,NULL,NULL),(241,20,21,NULL,NULL),(242,1,22,NULL,NULL),(243,2,22,NULL,NULL),(244,7,22,NULL,NULL),(245,9,22,NULL,NULL),(246,11,22,NULL,NULL),(247,15,22,NULL,NULL),(248,17,22,NULL,NULL),(249,18,22,NULL,NULL),(250,1,23,NULL,NULL),(251,2,23,NULL,NULL),(252,3,23,NULL,NULL),(253,4,23,NULL,NULL),(254,5,23,NULL,NULL),(255,6,23,NULL,NULL),(256,7,23,NULL,NULL),(257,8,23,NULL,NULL),(258,9,23,NULL,NULL),(259,10,23,NULL,NULL),(260,11,23,NULL,NULL),(261,12,23,NULL,NULL),(262,13,23,NULL,NULL),(263,14,23,NULL,NULL),(264,15,23,NULL,NULL),(265,16,23,NULL,NULL),(266,17,23,NULL,NULL),(267,18,23,NULL,NULL),(268,19,23,NULL,NULL),(269,20,23,NULL,NULL),(270,1,24,NULL,NULL),(271,4,24,NULL,NULL),(272,6,24,NULL,NULL),(273,8,24,NULL,NULL),(274,9,24,NULL,NULL),(275,12,24,NULL,NULL),(276,15,24,NULL,NULL),(277,17,24,NULL,NULL),(278,19,24,NULL,NULL),(279,20,24,NULL,NULL),(280,4,25,NULL,NULL),(281,6,25,NULL,NULL),(282,7,25,NULL,NULL),(283,8,25,NULL,NULL),(284,9,25,NULL,NULL),(285,10,25,NULL,NULL),(286,12,25,NULL,NULL),(287,13,25,NULL,NULL),(288,16,25,NULL,NULL),(289,18,25,NULL,NULL),(290,19,25,NULL,NULL),(291,2,26,NULL,NULL),(292,3,26,NULL,NULL),(293,4,26,NULL,NULL),(294,5,26,NULL,NULL),(295,8,26,NULL,NULL),(296,10,26,NULL,NULL),(297,13,26,NULL,NULL),(298,15,26,NULL,NULL),(299,16,26,NULL,NULL),(300,17,26,NULL,NULL),(301,18,26,NULL,NULL),(302,19,26,NULL,NULL),(303,20,26,NULL,NULL),(304,2,27,NULL,NULL),(305,4,27,NULL,NULL),(306,5,27,NULL,NULL),(307,11,27,NULL,NULL),(308,14,27,NULL,NULL),(309,16,27,NULL,NULL),(310,18,27,NULL,NULL),(311,18,28,NULL,NULL),(312,2,29,NULL,NULL),(313,3,29,NULL,NULL),(314,4,29,NULL,NULL),(315,5,29,NULL,NULL),(316,6,29,NULL,NULL),(317,7,29,NULL,NULL),(318,8,29,NULL,NULL),(319,9,29,NULL,NULL),(320,10,29,NULL,NULL),(321,13,29,NULL,NULL),(322,14,29,NULL,NULL),(323,15,29,NULL,NULL),(324,16,29,NULL,NULL),(325,17,29,NULL,NULL),(326,18,29,NULL,NULL),(327,19,29,NULL,NULL),(328,20,29,NULL,NULL),(329,3,30,NULL,NULL),(330,6,30,NULL,NULL),(331,10,30,NULL,NULL),(332,11,30,NULL,NULL),(333,13,30,NULL,NULL),(334,17,30,NULL,NULL),(335,20,30,NULL,NULL),(336,1,31,NULL,NULL),(337,2,31,NULL,NULL),(338,5,31,NULL,NULL),(339,6,31,NULL,NULL),(340,7,31,NULL,NULL),(341,9,31,NULL,NULL),(342,11,31,NULL,NULL),(343,13,31,NULL,NULL),(344,14,31,NULL,NULL),(345,16,31,NULL,NULL),(346,17,31,NULL,NULL),(347,18,31,NULL,NULL),(348,1,32,NULL,NULL),(349,2,32,NULL,NULL),(350,4,32,NULL,NULL),(351,5,32,NULL,NULL),(352,6,32,NULL,NULL),(353,7,32,NULL,NULL),(354,9,32,NULL,NULL),(355,10,32,NULL,NULL),(356,11,32,NULL,NULL),(357,12,32,NULL,NULL),(358,14,32,NULL,NULL),(359,15,32,NULL,NULL),(360,20,32,NULL,NULL),(361,1,33,NULL,NULL),(362,2,33,NULL,NULL),(363,3,33,NULL,NULL),(364,5,33,NULL,NULL),(365,6,33,NULL,NULL),(366,9,33,NULL,NULL),(367,11,33,NULL,NULL),(368,13,33,NULL,NULL),(369,19,33,NULL,NULL),(370,20,33,NULL,NULL),(371,1,34,NULL,NULL),(372,2,34,NULL,NULL),(373,3,34,NULL,NULL),(374,4,34,NULL,NULL),(375,5,34,NULL,NULL),(376,6,34,NULL,NULL),(377,8,34,NULL,NULL),(378,9,34,NULL,NULL),(379,10,34,NULL,NULL),(380,11,34,NULL,NULL),(381,13,34,NULL,NULL),(382,14,34,NULL,NULL),(383,15,34,NULL,NULL),(384,16,34,NULL,NULL),(385,17,34,NULL,NULL),(386,18,34,NULL,NULL),(387,19,34,NULL,NULL),(388,20,34,NULL,NULL),(389,1,35,NULL,NULL),(390,2,35,NULL,NULL),(391,3,35,NULL,NULL),(392,5,35,NULL,NULL),(393,6,35,NULL,NULL),(394,9,35,NULL,NULL),(395,10,35,NULL,NULL),(396,11,35,NULL,NULL),(397,14,35,NULL,NULL),(398,15,35,NULL,NULL),(399,17,35,NULL,NULL),(400,19,35,NULL,NULL),(401,20,35,NULL,NULL),(402,1,36,NULL,NULL),(403,2,36,NULL,NULL),(404,3,36,NULL,NULL),(405,7,36,NULL,NULL),(406,10,36,NULL,NULL),(407,11,36,NULL,NULL),(408,13,36,NULL,NULL),(409,18,36,NULL,NULL),(410,15,37,NULL,NULL),(411,1,38,NULL,NULL),(412,4,38,NULL,NULL),(413,5,38,NULL,NULL),(414,6,38,NULL,NULL),(415,7,38,NULL,NULL),(416,10,38,NULL,NULL),(417,11,38,NULL,NULL),(418,12,38,NULL,NULL),(419,14,38,NULL,NULL),(420,15,38,NULL,NULL),(421,3,39,NULL,NULL),(422,4,39,NULL,NULL),(423,7,39,NULL,NULL),(424,8,39,NULL,NULL),(425,9,39,NULL,NULL),(426,10,39,NULL,NULL),(427,13,39,NULL,NULL),(428,17,39,NULL,NULL),(429,1,40,NULL,NULL),(430,5,40,NULL,NULL),(431,8,40,NULL,NULL),(432,9,40,NULL,NULL),(433,11,40,NULL,NULL),(434,13,40,NULL,NULL),(435,19,40,NULL,NULL),(436,20,40,NULL,NULL),(437,1,41,NULL,NULL),(438,2,41,NULL,NULL),(439,3,41,NULL,NULL),(440,4,41,NULL,NULL),(441,7,41,NULL,NULL),(442,8,41,NULL,NULL),(443,9,41,NULL,NULL),(444,11,41,NULL,NULL),(445,12,41,NULL,NULL),(446,13,41,NULL,NULL),(447,14,41,NULL,NULL),(448,15,41,NULL,NULL),(449,16,41,NULL,NULL),(450,17,41,NULL,NULL),(451,18,41,NULL,NULL),(452,19,41,NULL,NULL),(453,20,41,NULL,NULL),(454,3,42,NULL,NULL),(455,7,42,NULL,NULL),(456,8,42,NULL,NULL),(457,9,42,NULL,NULL),(458,10,42,NULL,NULL),(459,11,42,NULL,NULL),(460,12,42,NULL,NULL),(461,13,42,NULL,NULL),(462,15,42,NULL,NULL),(463,16,42,NULL,NULL),(464,17,42,NULL,NULL),(465,18,42,NULL,NULL),(466,19,42,NULL,NULL),(467,1,43,NULL,NULL),(468,4,43,NULL,NULL),(469,6,43,NULL,NULL),(470,7,43,NULL,NULL),(471,8,43,NULL,NULL),(472,11,43,NULL,NULL),(473,12,43,NULL,NULL),(474,13,43,NULL,NULL),(475,14,43,NULL,NULL),(476,15,43,NULL,NULL),(477,17,43,NULL,NULL),(478,18,43,NULL,NULL),(479,19,43,NULL,NULL),(480,20,43,NULL,NULL),(481,2,44,NULL,NULL),(482,3,44,NULL,NULL),(483,4,44,NULL,NULL),(484,6,44,NULL,NULL),(485,7,44,NULL,NULL),(486,8,44,NULL,NULL),(487,10,44,NULL,NULL),(488,11,44,NULL,NULL),(489,12,44,NULL,NULL),(490,14,44,NULL,NULL),(491,16,44,NULL,NULL),(492,5,45,NULL,NULL),(493,8,45,NULL,NULL),(494,12,45,NULL,NULL),(495,7,46,NULL,NULL),(496,16,46,NULL,NULL),(497,19,46,NULL,NULL),(498,2,47,NULL,NULL),(499,4,47,NULL,NULL),(500,8,47,NULL,NULL),(501,9,47,NULL,NULL),(502,10,47,NULL,NULL),(503,11,47,NULL,NULL),(504,13,47,NULL,NULL),(505,15,47,NULL,NULL),(506,19,47,NULL,NULL),(507,1,48,NULL,NULL),(508,2,48,NULL,NULL),(509,4,48,NULL,NULL),(510,9,48,NULL,NULL),(511,11,48,NULL,NULL),(512,12,48,NULL,NULL),(513,19,48,NULL,NULL),(514,1,49,NULL,NULL),(515,3,49,NULL,NULL),(516,6,49,NULL,NULL),(517,10,49,NULL,NULL),(518,12,49,NULL,NULL),(519,20,49,NULL,NULL),(520,1,50,NULL,NULL),(521,2,50,NULL,NULL),(522,5,50,NULL,NULL),(523,6,50,NULL,NULL),(524,7,50,NULL,NULL),(525,10,50,NULL,NULL),(526,11,50,NULL,NULL),(527,12,50,NULL,NULL),(528,13,50,NULL,NULL),(529,14,50,NULL,NULL),(530,15,50,NULL,NULL);
/*!40000 ALTER TABLE `employee_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_hired` date NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employees_company_id_foreign` (`company_id`),
  KEY `employees_position_id_foreign` (`position_id`),
  CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  CONSTRAINT `employees_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Denis Nicolas','Jarvis Mayer',1,'ruecker.elmore@cormier.info','2017-04-03','?>Dv\':',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(2,'Darren Larkin','Alanna D\'Amore I',1,'bogan.dakota@yahoo.com','1981-04-30','?=ng\'a(fnzxrZNylhd',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(3,'Dereck Krajcik','Tianna Abernathy',1,'walsh.creola@gmail.com','2000-10-03',')H`9:P,Beh',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(4,'Orval Stiedemann Sr.','Mr. Floyd Schneider',1,'ckonopelski@gmail.com','2005-06-23','2tBY@W|1~H[jGgWj',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(5,'Talon Borer','Diamond Turcotte',1,'fisher.gina@hotmail.com','1976-01-07','g1ha~6R.;lQ',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(6,'Eriberto Heidenreich IV','Annamarie Zboncak',1,'joan68@gmail.com','1983-11-08','$0clB*yN.?$^9)!gB',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(7,'Sharon Bogan','Arlene Cole V',1,'klocko.velda@doyle.biz','1985-11-24','#g/TXf6m{uEs',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(8,'Jerrold Jenkins','Rusty Gleichner',1,'blick.troy@nienow.org','1993-02-18','>|O`3p{P*}lJD+H~EgNT',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(9,'Prof. Monserrate Heathcote II','Daija Deckow',1,'carole.halvorson@yahoo.com','2008-08-20','>js/D?N',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(10,'Winifred Turner','Mrs. Elisa Abbott Sr.',1,'fleta.witting@oberbrunner.com','1997-06-13','<[N^6+\\',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(11,'Prof. Jena Kuvalis','Berry Runte PhD',1,'jeremy.rosenbaum@mccullough.com','1973-10-06','68#U~&slxN~2yD>=t',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(12,'Prof. Cyrus Monahan','Moises Jakubowski',1,'oreilly.doyle@hotmail.com','1983-09-10','Q0HED.z',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(13,'Lydia Olson','Cortney Huel',1,'raheem.bahringer@daugherty.com','2009-10-04','~P5g:=WZ',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(14,'Mohammed Jast','Alexane Sawayn',1,'orrin.auer@schroeder.com','2009-01-02','UTHC*!XZkh-l',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(15,'Jedidiah Mosciski','Shawna Torp',1,'broderick44@gmail.com','2013-10-17','u$\"JYb@_w',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(16,'Prof. Salvatore Prohaska','Mac Wisozk',1,'lmetz@gmail.com','1998-01-11','aX}+gLAS3hpoXsn9S\\`',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(17,'Savannah Treutel','Dr. Chyna Raynor',1,'kareem63@padberg.com','2003-04-03','5m6?>A#Ca\"e7/kA].!',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(18,'Jerald Lehner','Prof. Tatum Hermann I',1,'imogene82@yahoo.com','1976-07-10','ohUd@b`)jSf\\[N(|E~JV',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(19,'Vallie Reichert','Lillie Botsford',1,'sschowalter@kozey.com','2001-11-14','z:\\0XZ',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(20,'Prof. Sean Stehr','Milton Vandervort',1,'rharvey@schiller.com','2015-01-17','SPGWc?W@.,S-T.v`nudP',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(21,'Mr. Domingo Rogahn PhD','Concepcion Goyette',1,'ari.schneider@smith.net','1998-03-03','\"$_~R%}i+A7JBkS:u,',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(22,'Lois Padberg','Oswaldo Zulauf',1,'kamille.thompson@littel.info','1973-07-02','a%ZVP!/6#[6hWt]',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(23,'Noemy Cummerata','Miss Rhea Pfeffer',1,'bartholome.fisher@stanton.net','1993-07-05','N`XPN},c9e(%a\'*',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(24,'Prof. Helmer Harris','Otto Greenfelder',1,'vivianne.rolfson@hotmail.com','1979-08-12','eB>e[.4`=\"NqH',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(25,'Nella Ruecker','Joanny Gleason',1,'woreilly@gmail.com','2000-08-13','G7ZV!rPjyQ/HQ',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(26,'Dr. Garret Mayert','Dr. Philip Will Jr.',1,'donna06@halvorson.com','2015-06-12','gH}zg6^.bL>A~t->+in\'',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(27,'Elyssa Heaney','Ophelia Harris',1,'wisoky.hailie@hermann.com','1974-07-02','tn,)U/yq<TCjK??@vlS',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(28,'Berta Schaden','Drew Von DDS',1,'treutel.margaretta@feeney.com','1979-01-29','imVce0<s@]t^g\"{3p=:M',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(29,'Miss Emma Stroman','Hollie Satterfield',1,'may45@yahoo.com','2011-08-08','TQ6{Zdgn',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(30,'Leonie Kshlerin','Miss Zula Dach',1,'modesto28@gmail.com','1992-10-21','\"qu#H8WagB{yAIB',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(31,'Mrs. Whitney Gottlieb III','Dr. Israel Ondricka',1,'maci.hagenes@hotmail.com','1975-02-24','+RwlC<?>;aAQ(Q-~LPG\\',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(32,'Americo Schinner','Prof. Eldora Heaney Sr.',1,'franz.labadie@murphy.com','2003-05-17','5x4wI%fQ',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(33,'Vella Hettinger II','Dr. David Moen',1,'oyost@stiedemann.com','1978-09-03','wzco91i\"',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(34,'Mr. Isaias Smitham DDS','Ona Wintheiser',1,'tlittle@yahoo.com','2004-08-12','na2ET/\\K|#%p(n\\c',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(35,'Mr. Marcellus Willms Sr.','Melyssa Flatley DDS',1,'georgianna.bruen@jast.org','2005-07-18','SR%i;{Jm$ynTb9x\'O',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(36,'Dr. Otilia Cremin','Sabrina Mueller',1,'wintheiser.pink@gmail.com','2006-08-09','`(RpwD:SoDRH2P\\)V',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(37,'Dr. Allan Mann','Odie Hand',1,'hblock@koch.org','2009-11-11','`^4S^[F3E',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(38,'Cornell Ritchie','Maybelle Metz',1,'rogahn.amy@hotmail.com','1982-07-05','_ylA7(bU^yG!',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(39,'Bradley Sipes','Marcelle Ritchie',1,'xmonahan@mcdermott.com','1982-08-17','`$)rv=0!cjg++uG',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(40,'Hobart Harris','Colleen Balistreri',1,'qcartwright@hotmail.com','1979-04-18','M;+/[<h7)Ss=:',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(41,'Delphia Erdman','Prof. Kenneth Russel Jr.',1,'martin.langosh@zemlak.net','2014-09-13','$~A\'<#e8r5e\\2b',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(42,'Maddison Pfannerstill','Mr. Rowland Corkery DVM',1,'evie38@schuppe.biz','1990-07-27','^uE\'hRJ_TpgQiO',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(43,'Kaia Howe','Dr. Taylor Welch',1,'wilbert35@gmail.com','1994-12-18','-H@8wgH',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(44,'Wilton Glover III','Ludie Mann PhD',1,'johns.chanelle@hotmail.com','1994-11-03','LG#y>PsFM8zu3',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(45,'Mrs. Alverta Bode','Elbert Cummerata III',1,'jkoch@hahn.net','1979-03-02','=Y9I$k.*R\"[d@S{\"c',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(46,'Gus Robel','Lessie Smith',1,'lhodkiewicz@runolfsdottir.com','1983-06-14','jVsw$yQ&QelqVn5Z',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(47,'Sasha Padberg','Dedrick Dickens MD',1,'tillman.murphy@yahoo.com','2000-04-28','vf#\"%j=6T.e`}I',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(48,'Prof. Ashlee Hahn MD','Destini Schuppe',1,'bednar.frederique@gmail.com','1979-12-06','L&WZEAU`\\W',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(49,'Wilber Gibson','Mr. Toni Christiansen PhD',1,'qziemann@senger.com','1970-01-18','z3Jxz0c.3',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(50,'Noel Simonis','Willa O\'Reilly',1,'vkris@yahoo.com','2008-08-25','mu}4EyUy`hK0j',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(51,'Nova Strosin','Olen Farrell',1,'corkery.destin@reilly.com','1993-02-05','.tepgRP<Lm\\@C#{1\"a',1,'2018-02-28 01:27:38','2018-02-28 01:27:38'),(53,'Annabel Hauck','Lucy Krajcik',1,'ferry.shirley@herzog.com','1994-06-02','OGm\\bYMo86JaXE-/I.',1,'2018-02-28 01:27:38','2018-02-28 01:27:38'),(57,'Nadia Powlowski','Prof. Dejuan Yundt DVM',1,'hstreich@olson.net','1980-02-14','?Y*gGHeNqV0`',1,'2018-02-28 01:29:48','2018-02-28 01:29:48'),(59,'Lura Homenick','Mr. Ronaldo Kub',1,'funk.creola@moen.com','1994-06-02','b^vfR.R1zojEjD4gr\\>',1,'2018-02-28 01:29:48','2018-02-28 01:29:48'),(63,'Matilda Padberg','Prof. Tomas Carter Jr.',1,'allen43@hotmail.com','1981-11-29','Y\\.WI\\>@',1,'2018-02-28 01:33:25','2018-02-28 01:33:25'),(65,'Demond Ullrich','Philip Okuneva',1,'polly47@casper.com','1994-06-02','>-i,oVe<i=z\"Ym8Yl$K',1,'2018-02-28 01:33:25','2018-02-28 01:33:25'),(69,'Letha Aufderhar','Britney Nader',1,'amy50@miller.net','1970-09-02','UxCA|D&W#',1,'2018-02-28 01:34:06','2018-02-28 01:34:06'),(71,'Dr. Ola Daniel III','Rigoberto Lind',1,'jettie.hamill@yahoo.com','1994-06-02',')V:PGcbk\'UC&',1,'2018-02-28 01:34:06','2018-02-28 01:34:06'),(75,'Brannon Olson','Bernie Hayes',1,'shanahan.bridgette@grimes.com','1995-05-18','l#jI.8fR>tU=*+X6Fy_',1,'2018-02-28 01:37:54','2018-02-28 01:37:54'),(77,'Roxanne Effertz','Mr. Alfred Prosacco',1,'joyce.lubowitz@bode.biz','1994-06-02','s?/*&hNldlu0bTf}',1,'2018-02-28 01:37:54','2018-02-28 01:37:54'),(81,'Eden Hickle','Quinten Jenkins II',1,'cleta.legros@hotmail.com','1984-10-01',':Z+VI!v?eFd%;2w',1,'2018-02-28 01:40:52','2018-02-28 01:40:52'),(83,'Laura Trantow','Mr. Filiberto Mohr PhD',1,'destiney78@gibson.com','1994-06-02','<#:6(`K',1,'2018-02-28 01:40:52','2018-02-28 01:40:52'),(87,'Robin Tillman MD','Alberto Thiel',1,'stehr.shaylee@gmail.com','1987-10-18','#M)I3yw8>p=XCFz',1,'2018-02-28 01:41:14','2018-02-28 01:41:14'),(89,'Marilie Ruecker III','Juana Lind',1,'tyler75@yahoo.com','1994-06-02','JE+*J-M)dGs|DLW+He',1,'2018-02-28 01:41:14','2018-02-28 01:41:14'),(93,'Greg Osinski','Jamel Ankunding',1,'koby00@schroeder.com','1982-04-02','\"yp{xL;p/',1,'2018-02-28 01:47:53','2018-02-28 01:47:53'),(95,'Mrs. Glenda Adams','Ayana Gibson',1,'jacquelyn82@hotmail.com','1994-06-02','A3e$0`Eif1B!06m;',1,'2018-02-28 01:47:53','2018-02-28 01:47:53'),(99,'Jo Fritsch','Delbert Hickle',1,'letitia04@hotmail.com','2002-11-06','M3(E9\\\"CiV~QF\\)yYb50',1,'2018-02-28 01:48:11','2018-02-28 01:48:11'),(101,'Lora Glover','Harrison Swift',1,'jmonahan@ortiz.net','1994-06-02','dL5M>u',1,'2018-02-28 01:48:11','2018-02-28 01:48:11'),(105,'Mrs. Retta Sipes II','Hobart Monahan DVM',1,'lauren48@pacocha.com','2003-05-10','KlPSR`1w}uLR8_',1,'2018-02-28 01:48:19','2018-02-28 01:48:19'),(107,'Kaci Welch','Dr. Ladarius Keeling',1,'richard.cronin@hotmail.com','1994-06-02','9$<,W/',1,'2018-02-28 01:48:19','2018-02-28 01:48:19');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_module`
--

DROP TABLE IF EXISTS `lesson_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lesson_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lesson_id` int(10) unsigned NOT NULL,
  `module_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lesson_module_lesson_id_foreign` (`lesson_id`),
  KEY `lesson_module_module_id_foreign` (`module_id`),
  CONSTRAINT `lesson_module_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`),
  CONSTRAINT `lesson_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_module`
--

LOCK TABLES `lesson_module` WRITE;
/*!40000 ALTER TABLE `lesson_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `lesson_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lessons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(144) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `module_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lessons_quiz_id_foreign` (`quiz_id`),
  KEY `lessons_module_id_foreign` (`module_id`),
  CONSTRAINT `lessons_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`),
  CONSTRAINT `lessons_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES (1,'Et eius dolor doloremque magnam recusandae qui.','Repudiandae voluptate quia quia sed illum. Aliquid quo et quis ducimus libero fugit natus rerum. Ab voluptas et aut vel amet impedit. Eius consectetur id voluptas earum quia nemo.',10,'2018-02-28 01:27:36','2018-02-28 01:27:36',7),(2,'Aliquam recusandae sed in in.','Ex impedit labore velit aliquid temporibus modi. Eos exercitationem magnam incidunt dolor rem occaecati non. Quae dicta harum qui qui.',10,'2018-02-28 01:27:36','2018-02-28 01:27:36',3),(3,'Fugit quia ut optio magnam eligendi nihil enim facere.','Sed saepe vitae tempora quae qui consequatur recusandae expedita. Nesciunt voluptatem praesentium tempore expedita et. Itaque architecto quia sequi ipsam illo qui quia.',10,'2018-02-28 01:27:36','2018-02-28 01:27:36',6),(4,'Amet ducimus sit ut quasi.','Tenetur sunt consequuntur enim molestiae qui. Voluptas inventore voluptas voluptatem. Dolore officiis est inventore.',8,'2018-02-28 01:27:36','2018-02-28 01:27:36',4),(5,'Voluptatem illum dignissimos cupiditate cumque voluptatem.','Qui et officia odio ullam ex eos occaecati. Est nemo natus reiciendis libero nam pariatur fuga. Architecto est saepe sit sapiente. Ad doloribus rerum commodi dolores.',9,'2018-02-28 01:27:36','2018-02-28 01:27:36',2),(6,'Molestias porro illum debitis dignissimos suscipit.','Veritatis aut modi quisquam fugiat delectus ipsam enim. Ut ipsa dignissimos facilis. Est dolorem sapiente enim. Facere sed similique deleniti.',5,'2018-02-28 01:27:36','2018-02-28 01:27:36',8),(7,'Placeat voluptas modi rerum hic et.','Voluptates quam eius quaerat mollitia assumenda. Aliquid nobis esse itaque explicabo. Omnis laboriosam aut reiciendis dignissimos non qui nesciunt.',9,'2018-02-28 01:27:36','2018-02-28 01:27:36',10),(8,'Explicabo et omnis nam facere molestias.','Voluptatibus earum ea sed ab porro repudiandae ut nulla. Maxime id ratione eligendi voluptatem et officiis qui. Error numquam ex doloribus et tenetur.',9,'2018-02-28 01:27:36','2018-02-28 01:27:36',9),(9,'Dolores facilis ea excepturi minus possimus provident.','Consequatur error possimus quibusdam non nemo. Est recusandae consequuntur voluptates distinctio assumenda quam. Sint nihil sed eaque aliquam ut eligendi qui.',7,'2018-02-28 01:27:36','2018-02-28 01:27:36',5),(10,'Quisquam sed enim atque quis repellat repellat.','Quo voluptas voluptas sit explicabo ipsam. Dolores illum accusantium et neque a dignissimos nesciunt. Consequuntur consequuntur dignissimos facere in rerum.',2,'2018-02-28 01:27:36','2018-02-28 01:27:36',2),(11,'Consequatur praesentium quis quis alias quis voluptatum corporis.','Sapiente labore odit quae id ad maxime. Nostrum quo cum dolorum rerum ab.',3,'2018-02-28 01:48:11','2018-02-28 01:48:11',11),(12,'Ab sint ducimus dolores mollitia.','Molestias omnis doloremque voluptatem iure et. Atque et qui minus voluptatem suscipit perferendis. Exercitationem error rem fuga eligendi facere debitis.',9,'2018-02-28 01:48:20','2018-02-28 01:48:20',12);
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2018_02_09_180750_create_company_table',1),(2,'2018_02_09_181031_create_employee_table',1),(3,'2018_02_09_181905_create_position_table',1),(4,'2018_02_09_182016_bind_foreign_keys_from_company_employee_position',1),(5,'2018_02_09_184434_create_tracks_table',1),(6,'2018_02_09_184652_create_position_track_pivot_table',1),(7,'2018_02_09_185448_create_modules_table',1),(8,'2018_02_09_185534_reate_module_track_pivot_table',1),(9,'2018_02_09_190512_create_quizes_table',1),(10,'2018_02_09_190917_create_questions_table',1),(11,'2018_02_09_191202_create_answers_table',1),(12,'2018_02_09_192246_create_lessons_table',1),(13,'2018_02_09_195632_create_pages_table',1),(14,'2018_02_09_200010_create_lesson_module_table',1),(15,'2018_02_09_200927_create_employee_quiz_table',1),(16,'2018_02_09_201551_create_employee_quiz_answer',1),(17,'2018_02_09_202355_create_employee_lesson_table',1),(18,'2018_02_09_202730_create_employee_track_table',1),(19,'2018_02_09_202855_create_employee_module_table',1),(20,'2018_02_13_141326_fix_date_hired',1),(21,'2018_02_13_155055_remove_employee_track_amount_completed',1),(22,'2018_02_13_175013_add_lessons_modules_association',1),(23,'2018_02_13_181535_create_tag_table',1),(24,'2018_02_13_203805_create_employee_page_table',1),(25,'2018_02_27_141534_add_title_column_to_companies',1),(26,'2018_02_27_170135_fix_foreignkey_cascade',1),(27,'2018_02_27_202353_quiz_foreignkey_fix',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_tag`
--

DROP TABLE IF EXISTS `module_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_tag_module_id_foreign` (`module_id`),
  KEY `module_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `module_tag_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`),
  CONSTRAINT `module_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_tag`
--

LOCK TABLES `module_tag` WRITE;
/*!40000 ALTER TABLE `module_tag` DISABLE KEYS */;
INSERT INTO `module_tag` VALUES (1,1,4),(2,1,14),(3,1,34),(4,1,36),(5,1,40),(6,2,3),(7,2,11),(8,2,15),(9,2,26),(10,2,37),(11,3,4),(12,3,5),(13,3,7),(14,3,16),(15,3,18),(16,3,22),(17,3,23),(18,3,26),(19,3,31),(20,3,43),(21,3,44),(22,3,49),(23,4,1),(24,4,2),(25,4,5),(26,4,6),(27,4,11),(28,4,12),(29,4,14),(30,4,16),(31,4,17),(32,4,18),(33,4,23),(34,4,26),(35,4,29),(36,4,30),(37,4,35),(38,4,39),(39,4,42),(40,4,50),(41,5,8),(42,5,13),(43,5,15),(44,5,16),(45,5,17),(46,5,22),(47,5,23),(48,5,31),(49,5,46),(50,6,50),(51,7,4),(52,7,6),(53,7,7),(54,7,8),(55,7,9),(56,7,13),(57,7,14),(58,7,17),(59,7,18),(60,7,21),(61,7,24),(62,7,28),(63,7,33),(64,7,37),(65,7,41),(66,7,47),(67,7,48),(68,7,49),(69,7,50),(70,8,1),(71,8,2),(72,8,3),(73,8,16),(74,8,18),(75,8,22),(76,8,25),(77,8,27),(78,8,33),(79,8,35),(80,8,38),(81,8,43),(82,8,44),(83,8,46),(84,8,49),(85,9,5),(86,9,6),(87,9,12),(88,9,13),(89,9,17),(90,9,18),(91,9,20),(92,9,23),(93,9,27),(94,9,28),(95,9,39),(96,9,40),(97,9,41),(98,9,42),(99,9,43),(100,9,44),(101,9,46),(102,9,47),(103,10,3),(104,10,28),(105,10,40);
/*!40000 ALTER TABLE `module_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_track`
--

DROP TABLE IF EXISTS `module_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_track` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(10) unsigned NOT NULL,
  `track_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_track_module_id_foreign` (`module_id`),
  KEY `module_track_track_id_foreign` (`track_id`),
  CONSTRAINT `module_track_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`),
  CONSTRAINT `module_track_track_id_foreign` FOREIGN KEY (`track_id`) REFERENCES `tracks` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_track`
--

LOCK TABLES `module_track` WRITE;
/*!40000 ALTER TABLE `module_track` DISABLE KEYS */;
INSERT INTO `module_track` VALUES (1,1,4,NULL,NULL),(2,1,14,NULL,NULL),(3,1,16,NULL,NULL),(4,1,19,NULL,NULL),(5,2,3,NULL,NULL),(6,2,4,NULL,NULL),(7,2,10,NULL,NULL),(8,2,15,NULL,NULL),(9,2,16,NULL,NULL),(10,2,18,NULL,NULL),(11,3,16,NULL,NULL),(12,4,1,NULL,NULL),(13,4,2,NULL,NULL),(14,4,3,NULL,NULL),(15,4,4,NULL,NULL),(16,4,8,NULL,NULL),(17,4,11,NULL,NULL),(18,4,14,NULL,NULL),(19,4,15,NULL,NULL),(20,4,16,NULL,NULL),(21,4,17,NULL,NULL),(22,4,18,NULL,NULL),(23,4,20,NULL,NULL),(24,5,1,NULL,NULL),(25,5,3,NULL,NULL),(26,5,4,NULL,NULL),(27,5,6,NULL,NULL),(28,5,7,NULL,NULL),(29,5,8,NULL,NULL),(30,5,11,NULL,NULL),(31,5,16,NULL,NULL),(32,5,17,NULL,NULL),(33,5,20,NULL,NULL),(34,6,1,NULL,NULL),(35,6,2,NULL,NULL),(36,6,3,NULL,NULL),(37,6,4,NULL,NULL),(38,6,5,NULL,NULL),(39,6,6,NULL,NULL),(40,6,7,NULL,NULL),(41,6,8,NULL,NULL),(42,6,9,NULL,NULL),(43,6,10,NULL,NULL),(44,6,11,NULL,NULL),(45,6,12,NULL,NULL),(46,6,13,NULL,NULL),(47,6,14,NULL,NULL),(48,6,15,NULL,NULL),(49,6,16,NULL,NULL),(50,6,17,NULL,NULL),(51,6,18,NULL,NULL),(52,6,19,NULL,NULL),(53,6,20,NULL,NULL),(54,7,1,NULL,NULL),(55,7,2,NULL,NULL),(56,7,3,NULL,NULL),(57,7,5,NULL,NULL),(58,7,9,NULL,NULL),(59,7,12,NULL,NULL),(60,7,14,NULL,NULL),(61,7,15,NULL,NULL),(62,7,16,NULL,NULL),(63,8,7,NULL,NULL),(64,8,8,NULL,NULL),(65,9,2,NULL,NULL),(66,9,3,NULL,NULL),(67,9,4,NULL,NULL),(68,9,6,NULL,NULL),(69,9,7,NULL,NULL),(70,9,8,NULL,NULL),(71,9,9,NULL,NULL),(72,9,10,NULL,NULL),(73,9,11,NULL,NULL),(74,9,12,NULL,NULL),(75,9,15,NULL,NULL),(76,9,16,NULL,NULL),(77,9,17,NULL,NULL),(78,9,18,NULL,NULL),(79,9,19,NULL,NULL),(80,9,20,NULL,NULL),(81,10,1,NULL,NULL),(82,10,2,NULL,NULL),(83,10,3,NULL,NULL),(84,10,4,NULL,NULL),(85,10,5,NULL,NULL),(86,10,6,NULL,NULL),(87,10,7,NULL,NULL),(88,10,8,NULL,NULL),(89,10,9,NULL,NULL),(90,10,10,NULL,NULL),(91,10,11,NULL,NULL),(92,10,13,NULL,NULL),(93,10,14,NULL,NULL),(94,10,15,NULL,NULL),(95,10,16,NULL,NULL),(96,10,17,NULL,NULL),(97,10,18,NULL,NULL),(98,10,19,NULL,NULL),(99,10,20,NULL,NULL);
/*!40000 ALTER TABLE `module_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(144) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `modules_quiz_id_foreign` (`quiz_id`),
  CONSTRAINT `modules_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'In fuga quas reprehenderit deserunt. Inventore dolores laborum veritatis repellat non repellendus et. Omnis enim voluptatem quam sint rerum aut. Doloremque et dolorem odit excepturi in.','Dolor natus magni et quaerat sunt beatae voluptatem voluptas.',6,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(2,'Eum nulla soluta animi. Velit vero molestias accusamus voluptatum qui natus maiores. Nihil et qui ex quia et vitae ipsa.','Dolorem enim reiciendis voluptas deleniti illum.',6,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(3,'Voluptate vel dolores labore rerum est. Ratione facere et voluptatem repellat cum omnis. Ipsa voluptatem numquam corrupti ipsam asperiores perferendis sed sit. Reiciendis voluptas quisquam nobis.','Placeat a hic deserunt nihil error.',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(4,'Laudantium totam consequatur libero facere occaecati nesciunt voluptatem saepe. Illo eveniet officiis vel adipisci iusto magnam. Dolorem nisi exercitationem veniam sequi eum sed fugiat.','Eius consequatur sint enim enim.',2,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(5,'Ex explicabo occaecati in possimus magni dolorem earum. Consequatur omnis vero voluptatem alias quia. Molestias qui dolor sit saepe adipisci soluta hic qui. Sit inventore animi quam sequi.','Sit aperiam sit non odio sunt similique.',3,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(6,'Quia est quod quis maxime. Architecto molestias sint suscipit sint. Esse dolorem esse doloribus rerum ut. Ut itaque mollitia rerum voluptate vitae.','Omnis nihil quibusdam ut.',1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(7,'Commodi assumenda porro nostrum minus consequatur molestiae corporis. Qui iste rerum aut eos. Sint ullam dolore consequatur a beatae.','Qui aperiam ex et expedita.',5,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(8,'Necessitatibus at minima nam. Commodi sed ut consequuntur enim. Omnis reprehenderit officiis tenetur molestias dolores recusandae cupiditate.','Dolores eveniet sed ratione dolor sed.',3,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(9,'Voluptatem quos ex voluptatem excepturi sequi. Atque veritatis rerum occaecati voluptates. Id numquam odio quia facilis. Et laudantium ratione vel est tempore nulla.','Quia nam velit est repellendus.',3,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(10,'Et vitae est blanditiis soluta expedita sunt provident. Aut velit est sint minima consequuntur magni quis qui. Eius molestias cupiditate rerum sunt at. Velit qui sit reiciendis et.','Eius eos aliquam sunt ut.',8,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(11,'Possimus repellat explicabo velit dignissimos. Ut ab maiores non consequatur vel eos. Omnis et quidem totam est dolorum.','Delectus ut quos illum reprehenderit consequuntur sed velit.',1,'2018-02-28 01:48:11','2018-02-28 01:48:11'),(12,'Laboriosam corrupti reiciendis nam ad accusamus debitis saepe. Et et numquam iusto dolores voluptas dolor sequi aut. Nesciunt vel tenetur nemo dolor.','Ex assumenda mollitia fugiat ut fuga et.',5,'2018-02-28 01:48:20','2018-02-28 01:48:20');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `lesson_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_lesson_id_foreign` (`lesson_id`),
  CONSTRAINT `pages_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Quos cupiditate corrupti molestiae dignissimos. Vel est beatae quo ut quae dolores. Rerum eum culpa fugit doloremque.',0,1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(2,'Consequatur non dolor iusto. Et molestiae officia ut eveniet magnam officiis. Excepturi sint expedita illum et facilis. Dicta voluptatem adipisci ut quaerat quisquam.',1,1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(3,'Expedita laboriosam quibusdam qui officiis. Eius eos dolor optio. Sunt earum voluptatem voluptas earum molestiae adipisci. Mollitia similique optio ullam.',2,1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(4,'Fugiat vel voluptatum nihil eaque libero culpa ipsam. Eum quibusdam ut consequatur dolorum. Doloribus perferendis odio maxime unde commodi aut nemo quasi.',3,1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(5,'Neque voluptatem ad deleniti odio et velit aliquid. Nemo iure consequatur libero aut neque. Quae beatae est iste sapiente autem autem quo.',4,1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(6,'Nemo vel rerum dolor assumenda repellendus. Animi voluptas voluptatem doloremque facere voluptas. Quia ipsum possimus rerum veritatis. Quia ut quisquam hic quibusdam sunt et dolor ad.',5,1,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(7,'Magni sint autem sint pariatur fugit sed ut. Soluta velit velit voluptatem sapiente enim. Vero autem non et quo facilis voluptatum non quibusdam.',0,2,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(8,'Alias ut itaque id deserunt soluta libero tenetur adipisci. Iusto sint vel nesciunt perferendis ullam provident. Laborum ex aut voluptatem eum. Magni corporis autem non sit aut id.',1,2,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(9,'Dicta dolor repudiandae velit rem. Ut voluptate et quas non. Temporibus occaecati quisquam vero quo dolores in possimus.',2,2,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(10,'Ab voluptatem eos id aut. Molestiae commodi quia nemo voluptatem et beatae vel minima. Tenetur reiciendis voluptas et non qui.',3,2,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(11,'Accusamus sit aliquid porro officiis possimus et. Harum omnis laudantium ut sapiente a. Vero earum voluptatum distinctio. Saepe cum neque magnam maiores fugit.',4,2,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(12,'Ullam non omnis aliquid unde nihil culpa fugiat. Doloremque harum consequatur labore ducimus earum rerum atque.',5,2,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(13,'Et non laboriosam excepturi consequuntur suscipit dolor. Sapiente nemo iste velit maxime. Corporis voluptates molestiae corrupti totam voluptatem et impedit.',0,3,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(14,'Nihil rerum magnam quae aut odio reiciendis. Ex corrupti et neque. Qui rerum voluptatem non delectus alias aut omnis.',1,3,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(15,'Quo dignissimos laborum ullam neque blanditiis. Nulla quia harum laboriosam enim. Aut fuga vel ut id porro et. Reiciendis fugit illo ut reiciendis dicta.',2,3,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(16,'Labore nulla eum illum modi et amet. Iure voluptatum debitis officiis ducimus. Est ut est nisi et error odio sit. Quam exercitationem iste modi nesciunt vitae exercitationem qui.',3,3,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(17,'Inventore dolorum illum cumque explicabo. Repudiandae illo facere asperiores reiciendis aperiam voluptate. Voluptatem quisquam voluptatem dolore sit.',4,3,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(18,'Numquam deleniti maxime voluptates molestiae reiciendis quisquam velit. Maxime nihil impedit repellat eum neque. Eveniet eos consequatur et facilis explicabo architecto exercitationem magni.',5,3,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(19,'Dolores non nihil autem consequatur laboriosam nulla sunt. Et aspernatur atque cumque laborum in. Accusamus illum qui dolor ut. Eius sit numquam neque repellendus sit tenetur.',0,4,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(20,'In qui cumque pariatur id consectetur. Quis nobis expedita sunt quis facere.',1,4,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(21,'In totam odit voluptas hic. Atque totam alias suscipit atque.',2,4,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(22,'Deserunt similique qui iste at est modi. Similique non sequi est asperiores voluptatem. Illum voluptate aliquam alias et voluptatem magnam quo et. Expedita vel non modi beatae vel voluptate.',3,4,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(23,'Et velit autem omnis omnis. Rem eos in delectus vero delectus quod. Eveniet nobis minima et. Quo ut quia dolore et ut.',4,4,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(24,'Enim repellat nihil voluptatem est ab. Et saepe optio aut labore laudantium.',5,4,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(25,'Est eos est commodi exercitationem. Quod eius explicabo aut officiis temporibus.',0,5,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(26,'Cum officia est architecto quod ut voluptas. Ut autem non rerum voluptatem. Non voluptatem quae officiis. Laborum voluptatem molestiae quidem voluptatibus quo earum.',1,5,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(27,'Et accusantium dolores neque odit delectus. Enim nulla vero adipisci maxime velit error nostrum. Illum eius at modi quia itaque.',2,5,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(28,'Sapiente enim minima harum repudiandae. Laborum inventore quis consequatur deleniti.',3,5,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(29,'Et vitae est nam aliquid amet sunt consectetur. Ea saepe omnis magni aperiam. Veniam eius ab necessitatibus aliquam unde. Esse nostrum fuga consectetur asperiores dolor exercitationem quia.',4,5,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(30,'Quos sit nemo est id iusto sed minima. Vitae et sit porro est qui nobis. Et ducimus deleniti id in quidem ab sed veritatis. Non earum dolores nihil.',5,5,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(31,'Amet ut quod amet cupiditate. Aut dicta a iure aut maxime aut aliquam. Voluptatem qui asperiores sit accusantium.',0,6,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(32,'Molestiae sunt laudantium eius. Quo aut architecto sequi culpa qui. At error distinctio et in dolores voluptate. Libero sit animi ea veniam eius.',1,6,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(33,'Tempore ea quis id. Reiciendis qui magnam sit sit aut deserunt vero. Fuga doloremque autem enim porro repellat. Quidem ut qui pariatur unde.',2,6,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(34,'Id et et illum eveniet. Illum est rerum aperiam eum expedita ex rerum. Qui sed perspiciatis qui vel dignissimos et enim fuga. Cumque occaecati exercitationem sed in porro.',3,6,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(35,'Minus enim velit assumenda perferendis et qui voluptatibus. Doloremque eum quibusdam et odit.',4,6,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(36,'Est at adipisci odio est. Unde possimus sint vitae aliquam. Nihil molestias veniam iste sunt laudantium deleniti. Et eaque exercitationem qui.',5,6,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(37,'Voluptatum placeat quibusdam sed et. Praesentium debitis fuga cum autem aliquid. Rerum et repellendus quis sit repellat qui.',0,7,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(38,'Alias architecto nihil commodi ut consequatur ipsa laboriosam. Nesciunt deserunt quis totam possimus. Velit voluptatem consectetur et ea quisquam.',1,7,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(39,'Eos fugit eaque tempore sunt natus. Ut repellendus iure assumenda provident. Ullam blanditiis suscipit veritatis voluptatem. In laudantium consequatur enim magnam autem possimus.',2,7,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(40,'Nostrum nobis corrupti quo voluptates. Magni nihil ea quas et. Dolor ut velit aut. Eos sed ut consequatur necessitatibus nulla et. Nisi quibusdam consequatur blanditiis sunt consectetur deleniti ut.',3,7,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(41,'Voluptatibus ullam et et quisquam nemo qui voluptatem. Eligendi similique delectus adipisci rerum sint. Animi soluta iste ipsum eos nulla et.',4,7,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(42,'Beatae accusantium similique ut incidunt nulla quo. Magnam quae perferendis quaerat fugit velit minima ad debitis. Porro ut alias quis aperiam debitis quibusdam.',5,7,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(43,'Animi iste fuga eaque consequatur similique. Distinctio dicta eligendi aut facere nisi. Eveniet amet atque assumenda provident distinctio dolorem.',0,8,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(44,'Dolor a deserunt magnam. Natus corrupti ipsum aut eius expedita cum aut. Itaque consequuntur dolore et at. Error recusandae fugiat dolorem sit dignissimos facilis neque.',1,8,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(45,'Aperiam minus aperiam at quo sed et fuga. Sit sed eligendi ab et est vero ullam. Repellendus ullam iusto aut doloremque sit. Veniam amet non cum ut sunt.',2,8,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(46,'Hic excepturi nam nulla laborum facere. Earum perspiciatis dicta at veritatis vero dolorem. Ut qui quasi esse ipsam et eligendi et. Reprehenderit sapiente animi quo quia dolores quidem.',3,8,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(47,'Rerum distinctio sapiente qui quas et autem officia. Commodi aliquam non iure officiis debitis delectus necessitatibus. Dolorem reprehenderit sit ex aliquid.',4,8,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(48,'Est aut aperiam amet aspernatur. Sunt vitae ut quibusdam accusamus omnis distinctio. Doloribus sed officiis aliquid eum ad eligendi. Dignissimos nostrum quis sequi itaque molestias ea nulla.',5,8,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(49,'Voluptatibus accusantium asperiores molestias reiciendis aliquid quos explicabo. Aut ipsam dolorum corrupti sequi iusto dolores. Mollitia hic illo optio est odio doloribus.',0,9,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(50,'At aspernatur labore laboriosam impedit in est perferendis. Est repudiandae eius cum iste. Qui voluptatibus impedit et qui. Placeat voluptatem vitae impedit non aut in.',1,9,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(51,'Quam sint beatae non sunt autem. Dolores dolor placeat eveniet et culpa voluptatem. Sequi doloribus possimus voluptatem et vel.',2,9,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(52,'Dicta pariatur sint porro veniam perferendis in. Accusamus repudiandae et ipsam doloremque. Neque ut molestiae sed sit qui.',3,9,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(53,'Quae odit sapiente deleniti corporis itaque aut amet. Nostrum totam nihil nam est voluptas ut natus. Quia quas optio quibusdam. Ducimus modi et labore consequatur voluptatem ipsa molestias.',4,9,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(54,'Debitis esse nulla magnam est quam quia nam architecto. Quisquam assumenda ut perferendis est. Nam dicta beatae odio in doloribus. Voluptatem qui autem amet cumque debitis tempore cumque.',5,9,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(55,'Tempore et corporis in iste nihil impedit. Omnis sint eum et. Cum aliquam sed officia molestiae sapiente dignissimos deleniti dicta.',0,10,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(56,'Rerum aut ut quis voluptate voluptates excepturi et. Voluptatibus neque hic sit quis minima itaque mollitia. Placeat dolore maiores qui quo.',1,10,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(57,'Libero tempora sit soluta ut. Quia sapiente quisquam voluptatem et ipsa cupiditate corporis. Voluptatem minus reiciendis quasi eos ipsum soluta.',2,10,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(58,'Qui quia vitae porro sint suscipit ut. Earum sunt temporibus eveniet distinctio voluptatum enim. Officiis adipisci provident odio quam cumque.',3,10,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(59,'Ut asperiores deleniti et odit corporis. Soluta perspiciatis rerum recusandae ad. Odio qui et ut. Eius architecto quia suscipit nihil.',4,10,'2018-02-28 01:27:36','2018-02-28 01:27:36'),(60,'Maiores et repellendus quia et maiores dolores facilis. Nesciunt id aspernatur est temporibus deserunt aut illum. Voluptas perspiciatis accusamus cumque rerum sed omnis voluptatem.',5,10,'2018-02-28 01:27:36','2018-02-28 01:27:36');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_track`
--

DROP TABLE IF EXISTS `position_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position_track` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position_id` int(10) unsigned NOT NULL,
  `track_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `position_track_position_id_foreign` (`position_id`),
  KEY `position_track_track_id_foreign` (`track_id`),
  CONSTRAINT `position_track_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`),
  CONSTRAINT `position_track_track_id_foreign` FOREIGN KEY (`track_id`) REFERENCES `tracks` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_track`
--

LOCK TABLES `position_track` WRITE;
/*!40000 ALTER TABLE `position_track` DISABLE KEYS */;
INSERT INTO `position_track` VALUES (1,1,1,NULL,NULL),(2,1,2,NULL,NULL),(3,1,3,NULL,NULL),(4,1,4,NULL,NULL),(5,1,5,NULL,NULL),(6,1,6,NULL,NULL),(7,1,7,NULL,NULL),(8,1,8,NULL,NULL),(9,1,9,NULL,NULL),(10,1,10,NULL,NULL),(11,1,11,NULL,NULL),(12,1,12,NULL,NULL),(13,1,13,NULL,NULL),(14,1,14,NULL,NULL),(15,1,15,NULL,NULL),(16,1,16,NULL,NULL),(17,1,17,NULL,NULL),(18,1,18,NULL,NULL),(19,1,19,NULL,NULL),(20,1,20,NULL,NULL);
/*!40000 ALTER TABLE `position_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `positions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (1,'Elementary and Secondary School Administrators','2018-02-28 01:27:35','2018-02-28 01:27:35');
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quiz_id` int(10) unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_quiz_id_foreign` (`quiz_id`),
  CONSTRAINT `questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,7,'Veniam hic voluptates quis aut. Nulla officia doloribus incidunt tempore corrupti aut assumenda. Sed adipisci laboriosam aliquam exercitationem hic eaque.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(2,10,'Dolorum quasi rem iure laudantium doloribus reiciendis tenetur. Aut quisquam at officiis iste laboriosam quisquam. Rerum porro et eum sit sint autem. Nesciunt illo sunt neque est animi dolore quia.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(3,6,'Quis esse similique et ex dicta amet sunt. Deserunt minima nesciunt autem praesentium deserunt dolores officiis. Omnis quidem deserunt itaque deserunt ut velit eaque.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(4,9,'Est architecto quia fuga aut in. Amet ad aut quos voluptate earum. Molestiae in exercitationem eum sint.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(5,7,'Non quis cumque accusantium officiis. Modi culpa aspernatur molestiae perspiciatis. Maiores et sint expedita.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(6,8,'Optio sit corrupti illum facilis rerum rerum. Repudiandae tenetur voluptatem esse omnis. Atque ad esse magni in delectus commodi.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(7,9,'Labore officiis id omnis. Dolores veritatis quisquam quis est et sit. Ut qui autem maiores odio dolores doloremque dolor nobis.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(8,7,'Corrupti sequi saepe quae soluta illum fugit. Est quibusdam corrupti impedit provident dolore atque similique. Veniam temporibus quia cumque.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(9,1,'Minima excepturi possimus et ipsum eaque quia id. Minus cum omnis placeat. Qui id cum doloribus veritatis asperiores voluptatem vel.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(10,9,'Aut beatae distinctio dolores quam aperiam voluptatem eos. Et amet voluptatem reprehenderit. Maxime sapiente sint eum aliquam aperiam cupiditate accusamus.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(12,12,'Corporis autem qui eius suscipit dolores rerum. Et voluptas inventore ullam possimus. Animi velit est et possimus omnis vel. Libero maxime debitis saepe nam ab nisi deserunt.','2018-02-28 01:29:48','2018-02-28 01:29:48'),(13,13,'Tempora laboriosam impedit esse quia qui. Molestias explicabo esse aut aut. Consectetur quisquam neque ipsum. Numquam sed fugiat repellendus enim accusantium quaerat.','2018-02-28 01:33:25','2018-02-28 01:33:25'),(14,14,'Error cum et harum amet et beatae sint. Sunt sapiente est minima nisi eum aut voluptatum tenetur. Et dolorem occaecati tenetur provident consectetur pariatur.','2018-02-28 01:33:25','2018-02-28 01:33:25'),(15,15,'Eius nisi ratione et esse est. Autem id tenetur quisquam optio. Facere quas fugiat dicta quaerat tenetur voluptatem qui.','2018-02-28 01:34:07','2018-02-28 01:34:07'),(16,16,'In est iure natus iste voluptatem assumenda. Libero nihil a ea velit officia provident aliquid.','2018-02-28 01:34:07','2018-02-28 01:34:07'),(17,17,'Tempore et animi sed aspernatur aut. Officia non veniam nemo eaque aut in. Et quam dolor ut doloremque consequuntur incidunt.','2018-02-28 01:35:41','2018-02-28 01:35:41'),(18,18,'Incidunt fugiat voluptatem maxime modi voluptas perferendis. Id nihil dolorem sit et. Quisquam et sequi sed.','2018-02-28 01:36:45','2018-02-28 01:36:45'),(19,19,'Eos dolores voluptas et nemo repellat accusantium incidunt veritatis. Recusandae est eligendi a omnis. Saepe et molestias eius excepturi dolorem.','2018-02-28 01:37:01','2018-02-28 01:37:01'),(20,20,'Incidunt quia labore vitae. Est aut qui consequatur reiciendis eaque maiores vitae. Debitis quia incidunt et rerum eligendi assumenda non. Rerum quia rerum dolores non non commodi cum.','2018-02-28 01:37:32','2018-02-28 01:37:32'),(21,21,'Neque hic aut eos aut vero. Magni dolorem rerum dolores. Consequuntur alias assumenda recusandae architecto esse vel ab.','2018-02-28 01:37:54','2018-02-28 01:37:54'),(22,22,'Consequatur eos ut in dolores. Quia a dolorem ducimus optio voluptas. Dignissimos aut vel perspiciatis sapiente quo rem.','2018-02-28 01:37:54','2018-02-28 01:37:54'),(23,23,'Sed impedit delectus qui dolorem voluptate. Est perspiciatis eaque corporis consequatur atque.','2018-02-28 01:40:53','2018-02-28 01:40:53'),(24,24,'Dolores deleniti magni autem aliquam. Est tenetur repudiandae quibusdam molestiae. Veniam ullam nesciunt delectus vel sed iusto.','2018-02-28 01:40:53','2018-02-28 01:40:53'),(25,25,'Non aliquam dolor iusto id praesentium quia tenetur autem. Reiciendis enim facere enim nesciunt ipsam distinctio rerum officia. Placeat magnam autem minima nisi atque.','2018-02-28 01:41:14','2018-02-28 01:41:14'),(26,26,'Voluptas possimus sapiente fugit quo. Enim cumque dicta id corrupti esse. Velit modi rerum at rerum. Labore qui aspernatur rerum perspiciatis mollitia.','2018-02-28 01:41:14','2018-02-28 01:41:14'),(27,27,'Est illo provident aliquid corrupti harum eligendi ut. Quisquam et in beatae et explicabo distinctio distinctio modi. Et quia quia velit optio.','2018-02-28 01:47:53','2018-02-28 01:47:53'),(28,28,'Voluptas ea blanditiis quia deleniti. Est quo quia culpa consequatur sunt delectus. Placeat similique voluptatem vel ratione.','2018-02-28 01:47:53','2018-02-28 01:47:53'),(29,29,'Excepturi ratione et nisi nihil. Sunt deserunt sed nesciunt iste. Delectus quia vel nisi voluptatibus explicabo autem numquam nesciunt.','2018-02-28 01:48:11','2018-02-28 01:48:11'),(30,30,'Cumque odio quae omnis. Provident corporis qui modi minus aut et. Hic quo provident sint quia quasi. Quae rerum reprehenderit molestiae minus. Voluptatem dicta pariatur sint quidem iste.','2018-02-28 01:48:11','2018-02-28 01:48:11'),(31,31,'Magnam unde enim aut quia. Illum quasi non voluptatem perferendis iste et iste. Tempore molestiae sit vel architecto minus ut. Ut quaerat iusto provident exercitationem sed.','2018-02-28 01:48:20','2018-02-28 01:48:20'),(32,32,'Velit suscipit provident est rerum. Quisquam est est mollitia quia molestiae. Rerum modi ut in amet.','2018-02-28 01:48:20','2018-02-28 01:48:20');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quizzes`
--

DROP TABLE IF EXISTS `quizzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quizzes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mark_to_pass` decimal(8,2) NOT NULL,
  `title` varchar(144) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizzes`
--

LOCK TABLES `quizzes` WRITE;
/*!40000 ALTER TABLE `quizzes` DISABLE KEYS */;
INSERT INTO `quizzes` VALUES (1,0.80,'Qui quisquam itaque ut dolor error.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(2,0.80,'Vero ratione a quia asperiores eum.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(3,0.80,'Vitae optio hic vel deserunt non necessitatibus omnis.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(4,0.80,'Aut iusto debitis non numquam ratione voluptates.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(5,0.80,'Voluptatem voluptatibus voluptates aut et corrupti quia eius.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(6,0.80,'Non odit maiores voluptatem veniam.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(7,0.80,'Ea ea porro nihil consequatur fuga tenetur.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(8,0.80,'Quis earum iste explicabo molestiae.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(9,0.80,'Quidem alias ut autem enim cupiditate sit.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(10,0.80,'Tempore aut rem vel odit.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(12,0.80,'Quisquam iste cupiditate accusamus aut qui pariatur.','2018-02-28 01:29:48','2018-02-28 01:29:48'),(13,0.80,'Quibusdam distinctio natus alias tempore qui.','2018-02-28 01:33:25','2018-02-28 01:33:25'),(14,0.80,'Maxime aliquam molestias quod.','2018-02-28 01:33:25','2018-02-28 01:33:25'),(15,0.80,'Sit est quia nihil accusantium quia.','2018-02-28 01:34:07','2018-02-28 01:34:07'),(16,0.80,'Quia saepe ea accusamus quis doloremque.','2018-02-28 01:34:07','2018-02-28 01:34:07'),(17,0.80,'Quas ipsam omnis odio impedit dignissimos.','2018-02-28 01:35:40','2018-02-28 01:35:40'),(18,0.80,'Tenetur sed atque saepe quibusdam.','2018-02-28 01:36:45','2018-02-28 01:36:45'),(19,0.80,'Veritatis et iure sit non quod.','2018-02-28 01:37:00','2018-02-28 01:37:00'),(20,0.80,'Et in deserunt recusandae ratione nemo sunt.','2018-02-28 01:37:32','2018-02-28 01:37:32'),(21,0.80,'Quia quibusdam accusamus voluptas qui molestias rerum temporibus.','2018-02-28 01:37:54','2018-02-28 01:37:54'),(22,0.80,'A quasi eius est quae sequi impedit ea consequatur.','2018-02-28 01:37:54','2018-02-28 01:37:54'),(23,0.80,'Quia voluptatem sed ex officiis voluptate veniam perferendis.','2018-02-28 01:40:53','2018-02-28 01:40:53'),(24,0.80,'Voluptates consequatur quia veniam possimus sit.','2018-02-28 01:40:53','2018-02-28 01:40:53'),(25,0.80,'Iste velit voluptas qui quo harum quia.','2018-02-28 01:41:14','2018-02-28 01:41:14'),(26,0.80,'Fugit repellat tempore dignissimos delectus non et.','2018-02-28 01:41:14','2018-02-28 01:41:14'),(27,0.80,'Quia est qui eius eius magnam ab.','2018-02-28 01:47:53','2018-02-28 01:47:53'),(28,0.80,'At repudiandae sit nulla nesciunt sapiente aspernatur.','2018-02-28 01:47:53','2018-02-28 01:47:53'),(29,0.80,'Quibusdam facilis iste omnis dolorum ipsam cupiditate.','2018-02-28 01:48:11','2018-02-28 01:48:11'),(30,0.80,'Aut voluptatem repudiandae ut sapiente.','2018-02-28 01:48:11','2018-02-28 01:48:11'),(31,0.80,'Rerum laboriosam consequatur ducimus fuga recusandae.','2018-02-28 01:48:20','2018-02-28 01:48:20'),(32,0.80,'Et aliquid assumenda non vel.','2018-02-28 01:48:20','2018-02-28 01:48:20');
/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'et','2018-02-28 01:27:36','2018-02-28 01:27:36'),(2,'quis','2018-02-28 01:27:36','2018-02-28 01:27:36'),(3,'animi','2018-02-28 01:27:36','2018-02-28 01:27:36'),(4,'delectus','2018-02-28 01:27:36','2018-02-28 01:27:36'),(5,'dolor','2018-02-28 01:27:36','2018-02-28 01:27:36'),(6,'doloribus','2018-02-28 01:27:36','2018-02-28 01:27:36'),(7,'eaque','2018-02-28 01:27:36','2018-02-28 01:27:36'),(8,'eos','2018-02-28 01:27:36','2018-02-28 01:27:36'),(9,'aut','2018-02-28 01:27:36','2018-02-28 01:27:36'),(10,'et','2018-02-28 01:27:36','2018-02-28 01:27:36'),(11,'in','2018-02-28 01:27:36','2018-02-28 01:27:36'),(12,'reiciendis','2018-02-28 01:27:36','2018-02-28 01:27:36'),(13,'amet','2018-02-28 01:27:36','2018-02-28 01:27:36'),(14,'voluptatibus','2018-02-28 01:27:36','2018-02-28 01:27:36'),(15,'fuga','2018-02-28 01:27:36','2018-02-28 01:27:36'),(16,'exercitationem','2018-02-28 01:27:36','2018-02-28 01:27:36'),(17,'officiis','2018-02-28 01:27:36','2018-02-28 01:27:36'),(18,'et','2018-02-28 01:27:36','2018-02-28 01:27:36'),(19,'ut','2018-02-28 01:27:36','2018-02-28 01:27:36'),(20,'magnam','2018-02-28 01:27:36','2018-02-28 01:27:36'),(21,'ducimus','2018-02-28 01:27:36','2018-02-28 01:27:36'),(22,'esse','2018-02-28 01:27:36','2018-02-28 01:27:36'),(23,'nisi','2018-02-28 01:27:36','2018-02-28 01:27:36'),(24,'praesentium','2018-02-28 01:27:36','2018-02-28 01:27:36'),(25,'earum','2018-02-28 01:27:36','2018-02-28 01:27:36'),(26,'assumenda','2018-02-28 01:27:36','2018-02-28 01:27:36'),(27,'quibusdam','2018-02-28 01:27:36','2018-02-28 01:27:36'),(28,'minus','2018-02-28 01:27:36','2018-02-28 01:27:36'),(29,'aut','2018-02-28 01:27:36','2018-02-28 01:27:36'),(30,'quos','2018-02-28 01:27:36','2018-02-28 01:27:36'),(31,'consectetur','2018-02-28 01:27:36','2018-02-28 01:27:36'),(32,'qui','2018-02-28 01:27:36','2018-02-28 01:27:36'),(33,'voluptatum','2018-02-28 01:27:36','2018-02-28 01:27:36'),(34,'voluptas','2018-02-28 01:27:36','2018-02-28 01:27:36'),(35,'ut','2018-02-28 01:27:36','2018-02-28 01:27:36'),(36,'hic','2018-02-28 01:27:36','2018-02-28 01:27:36'),(37,'occaecati','2018-02-28 01:27:36','2018-02-28 01:27:36'),(38,'velit','2018-02-28 01:27:36','2018-02-28 01:27:36'),(39,'similique','2018-02-28 01:27:36','2018-02-28 01:27:36'),(40,'placeat','2018-02-28 01:27:36','2018-02-28 01:27:36'),(41,'quaerat','2018-02-28 01:27:36','2018-02-28 01:27:36'),(42,'et','2018-02-28 01:27:36','2018-02-28 01:27:36'),(43,'odit','2018-02-28 01:27:36','2018-02-28 01:27:36'),(44,'ut','2018-02-28 01:27:36','2018-02-28 01:27:36'),(45,'nesciunt','2018-02-28 01:27:36','2018-02-28 01:27:36'),(46,'atque','2018-02-28 01:27:36','2018-02-28 01:27:36'),(47,'accusantium','2018-02-28 01:27:36','2018-02-28 01:27:36'),(48,'ut','2018-02-28 01:27:36','2018-02-28 01:27:36'),(49,'est','2018-02-28 01:27:36','2018-02-28 01:27:36'),(50,'nihil','2018-02-28 01:27:36','2018-02-28 01:27:36');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracks`
--

DROP TABLE IF EXISTS `tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(144) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracks`
--

LOCK TABLES `tracks` WRITE;
/*!40000 ALTER TABLE `tracks` DISABLE KEYS */;
INSERT INTO `tracks` VALUES (1,'Excepturi qui ut ut ratione esse maxime rerum consequatur.','Porro accusamus corrupti architecto dolorem. Error dicta ut dolor ratione quis fuga dolor. Quas illum consequatur eum ducimus non consequatur nobis. Maiores praesentium veritatis consequuntur dolor.','2018-02-28 01:27:35','2018-02-28 01:27:35'),(2,'Aliquam voluptatem eligendi repudiandae quo.','Sed sed fugiat quasi quidem in. Similique nostrum quia doloremque ea est non iure. Aspernatur deserunt perferendis qui error. Animi omnis cum alias et vel commodi iusto quam.','2018-02-28 01:27:35','2018-02-28 01:27:35'),(3,'Aut est exercitationem et et quibusdam provident qui vel.','Impedit sit accusamus velit molestias et ratione assumenda. Dolor maxime voluptatem fuga ab repellat voluptatem aut. Nemo iure laborum illum quod cumque voluptatibus. Non accusamus aliquam et fugiat.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(4,'Accusantium ea qui sequi.','Voluptas corrupti sed dolor aut et. Aut quaerat explicabo ipsa autem sint cupiditate quas. Et omnis sit placeat possimus autem. Ab in et vero id illo dignissimos quaerat natus.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(5,'Sunt unde voluptatem pariatur quod ut.','Dolorem quia aut dignissimos tempore dolorum reiciendis. Aperiam nulla ut fuga sed. Fugiat asperiores omnis est cum. Eius et omnis cumque sit.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(6,'Autem eum ducimus optio velit sunt ipsam iste minima.','Excepturi quia ipsum nostrum. Temporibus non ab similique. Qui quidem dolor est et debitis laborum. Quibusdam est culpa ab eum debitis maxime.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(7,'Laborum repellendus accusamus explicabo dolores voluptate.','Est id laborum fugiat eum quia sequi totam. Ea ut quo et sint adipisci. Velit dolorem quis accusamus.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(8,'Unde necessitatibus totam facere ipsam aut assumenda sequi.','Excepturi accusantium doloremque eos voluptatem sint quas illo ut. Ad in vero blanditiis eveniet veritatis et similique quisquam. Qui consequatur aspernatur aliquam cum expedita.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(9,'Quidem est ut et accusamus id omnis fuga eum.','Exercitationem id eum tempora quisquam. Natus occaecati libero velit iure et. Asperiores non praesentium in veniam. Ullam et rerum eum dolorem et non.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(10,'Et neque beatae laboriosam rerum magnam et repellendus.','Porro suscipit quia magnam sed placeat. Eos fugiat dolore dolorem maxime sint aperiam dolore. Et odit rerum corporis hic sunt debitis aut. Culpa error nesciunt provident tenetur quia.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(11,'Ducimus sint quaerat distinctio aut molestiae.','Beatae illo reprehenderit ut corporis atque incidunt. Molestiae sed ex molestias quia dolores. Nemo quia atque sed.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(12,'Voluptatem necessitatibus ea quos accusantium.','Rerum animi sequi voluptatem qui. Aut sit aperiam quisquam dolorum sit. Non accusamus sit ab. Reprehenderit consectetur illo exercitationem molestias ipsum.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(13,'Expedita facere enim dolores delectus eveniet.','Dolorem saepe corporis ipsum non. Deserunt libero eos et. Veritatis asperiores quos eos voluptatem aut unde ea rerum.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(14,'Omnis quo veniam ut qui dolor autem.','Laboriosam eaque alias consequatur unde. Vel quidem sit vel et. Modi consequuntur aliquid quo. Nam id quas porro itaque illum aut impedit esse.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(15,'Voluptate eum aspernatur saepe sint.','Magnam perferendis ut delectus nobis dolor. Ut quo debitis ipsa recusandae. Numquam qui doloribus sed occaecati minima qui. Libero et laborum est.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(16,'Temporibus doloribus fuga vitae ex quam quia.','Consequuntur perspiciatis iure consequatur natus aspernatur dicta quia aut. Laboriosam quisquam est architecto consequatur facilis in ut. Sapiente magni mollitia nisi earum et dicta necessitatibus.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(17,'Vero exercitationem culpa ut eligendi et.','Blanditiis adipisci et saepe labore fuga voluptas. Autem cupiditate id odio optio. Eos repudiandae voluptatem enim ea facilis vero et laudantium.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(18,'Sit dolores molestias odit sit iure molestias.','Nisi excepturi natus sapiente tempora animi alias nam. Delectus omnis qui est laborum porro ullam. Autem fuga dolorum vel placeat et in iste magnam.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(19,'Officiis exercitationem omnis porro vel veritatis.','Temporibus et fugiat et autem voluptatibus qui ut omnis. Possimus doloremque earum neque ipsa. Ratione doloremque et assumenda expedita praesentium aliquid aut.','2018-02-28 01:27:36','2018-02-28 01:27:36'),(20,'Ipsam hic consequatur et ea molestiae occaecati quia ut.','Et dolorum magni assumenda fuga quas maxime qui voluptatem. Accusamus adipisci et recusandae a autem at atque et. Quia doloremque voluptatum consequuntur recusandae nihil quod aliquam.','2018-02-28 01:27:36','2018-02-28 01:27:36');
/*!40000 ALTER TABLE `tracks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-02 12:24:31
