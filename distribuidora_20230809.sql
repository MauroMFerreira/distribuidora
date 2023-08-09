-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: distribuidora
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add categoria',7,'add_categoria'),(26,'Can change categoria',7,'change_categoria'),(27,'Can delete categoria',7,'delete_categoria'),(28,'Can view categoria',7,'view_categoria'),(29,'Can add subcategoria',8,'add_subcategoria'),(30,'Can change subcategoria',8,'change_subcategoria'),(31,'Can delete subcategoria',8,'delete_subcategoria'),(32,'Can view subcategoria',8,'view_subcategoria'),(33,'Can add tipo',9,'add_tipo'),(34,'Can change tipo',9,'change_tipo'),(35,'Can delete tipo',9,'delete_tipo'),(36,'Can view tipo',9,'view_tipo'),(37,'Can add marca',10,'add_marca'),(38,'Can change marca',10,'change_marca'),(39,'Can delete marca',10,'delete_marca'),(40,'Can view marca',10,'view_marca'),(41,'Can add modelo',11,'add_modelo'),(42,'Can change modelo',11,'change_modelo'),(43,'Can delete modelo',11,'delete_modelo'),(44,'Can view modelo',11,'view_modelo'),(45,'Can add item',12,'add_item'),(46,'Can change item',12,'change_item'),(47,'Can delete item',12,'delete_item'),(48,'Can view item',12,'view_item'),(49,'Can add produto',13,'add_produto'),(50,'Can change produto',13,'change_produto'),(51,'Can delete produto',13,'delete_produto'),(52,'Can view produto',13,'view_produto'),(53,'Can add etiqueta',14,'add_etiqueta'),(54,'Can change etiqueta',14,'change_etiqueta'),(55,'Can delete etiqueta',14,'delete_etiqueta'),(56,'Can view etiqueta',14,'view_etiqueta'),(57,'Can add movimento',15,'add_movimento'),(58,'Can change movimento',15,'change_movimento'),(59,'Can delete movimento',15,'delete_movimento'),(60,'Can view movimento',15,'view_movimento');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$AzaksOQYV1jD4Imk0k8iDi$2fzSZscvFs9P2f9eBa/Q4Jp3lmc7Wx7F+awLc4ktPVk=','2023-08-09 18:24:03.619670',1,'mauro','','','ipvox.voip@gmail.com',1,1,'2023-07-18 11:28:36.076561');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Categoria` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'CAPA'),(2,'Película');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-07-18 14:47:52.074117','1','Categoria object (1)',1,'[{\"added\": {}}]',7,1),(2,'2023-07-18 14:48:04.684232','1','Categoria object (1)',2,'[{\"added\": {\"name\": \"subcategoria\", \"object\": \"Subcategoria object (1)\"}}]',7,1),(3,'2023-07-18 14:49:43.814884','1','CAPA',2,'[{\"added\": {\"name\": \"subcategoria\", \"object\": \"TIPO 2\"}}]',7,1),(4,'2023-07-18 14:50:03.745458','2','TIPO 2',2,'[]',8,1),(5,'2023-07-18 15:05:33.118382','1','Motorola',1,'[{\"added\": {}}, {\"added\": {\"name\": \"modelo\", \"object\": \"G5\"}}, {\"added\": {\"name\": \"modelo\", \"object\": \"G7\"}}, {\"added\": {\"name\": \"modelo\", \"object\": \"A10\"}}]',10,1),(6,'2023-07-18 15:06:01.408163','1','Light',1,'[{\"added\": {}}]',9,1),(7,'2023-07-18 15:06:13.170031','2','Normal',1,'[{\"added\": {}}]',9,1),(8,'2023-07-18 15:06:19.692434','3','Heavy',1,'[{\"added\": {}}]',9,1),(9,'2023-07-18 15:06:43.455289','2','Apple',1,'[{\"added\": {}}, {\"added\": {\"name\": \"modelo\", \"object\": \"I10\"}}, {\"added\": {\"name\": \"modelo\", \"object\": \"I11\"}}, {\"added\": {\"name\": \"modelo\", \"object\": \"I12\"}}]',10,1),(10,'2023-07-18 15:07:34.488833','1','CAPA',2,'[{\"added\": {\"name\": \"subcategoria\", \"object\": \"Rosa\"}}, {\"added\": {\"name\": \"subcategoria\", \"object\": \"Verde\"}}, {\"added\": {\"name\": \"subcategoria\", \"object\": \"Azul\"}}, {\"changed\": {\"name\": \"subcategoria\", \"object\": \"Cristal\", \"fields\": [\"Subcategoria\"]}}, {\"changed\": {\"name\": \"subcategoria\", \"object\": \"Fume\", \"fields\": [\"Subcategoria\"]}}]',7,1),(11,'2023-07-18 15:08:30.525426','2','Película',1,'[{\"added\": {}}, {\"added\": {\"name\": \"subcategoria\", \"object\": \"Light\"}}, {\"added\": {\"name\": \"subcategoria\", \"object\": \"Medio\"}}, {\"added\": {\"name\": \"subcategoria\", \"object\": \"Full\"}}]',7,1),(12,'2023-07-18 15:10:58.370371','2','Película',2,'[{\"changed\": {\"name\": \"subcategoria\", \"object\": \"Filme\", \"fields\": [\"Subcategoria\"]}}, {\"changed\": {\"name\": \"subcategoria\", \"object\": \"Vidro\", \"fields\": [\"Subcategoria\"]}}, {\"changed\": {\"name\": \"subcategoria\", \"object\": \"Gorilla\", \"fields\": [\"Subcategoria\"]}}]',7,1),(13,'2023-07-18 15:11:45.704052','3','Extra',2,'[{\"changed\": {\"fields\": [\"Tipo\"]}}]',9,1),(14,'2023-07-19 21:29:09.464970','2','CAPA',1,'[{\"added\": {}}]',13,1),(15,'2023-08-09 18:39:50.567172','2','Película',2,'[{\"changed\": {\"name\": \"subcategoria\", \"object\": \"Gorillas\", \"fields\": [\"Subcategoria\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'distr','categoria'),(14,'distr','etiqueta'),(12,'distr','item'),(10,'distr','marca'),(11,'distr','modelo'),(15,'distr','movimento'),(13,'distr','produto'),(8,'distr','subcategoria'),(9,'distr','tipo'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-07-18 11:27:48.295775'),(2,'auth','0001_initial','2023-07-18 11:27:48.781168'),(3,'admin','0001_initial','2023-07-18 11:27:48.886940'),(4,'admin','0002_logentry_remove_auto_add','2023-07-18 11:27:48.895444'),(5,'admin','0003_logentry_add_action_flag_choices','2023-07-18 11:27:48.906272'),(6,'contenttypes','0002_remove_content_type_name','2023-07-18 11:27:48.980494'),(7,'auth','0002_alter_permission_name_max_length','2023-07-18 11:27:49.031249'),(8,'auth','0003_alter_user_email_max_length','2023-07-18 11:27:49.077032'),(9,'auth','0004_alter_user_username_opts','2023-07-18 11:27:49.083529'),(10,'auth','0005_alter_user_last_login_null','2023-07-18 11:27:49.126136'),(11,'auth','0006_require_contenttypes_0002','2023-07-18 11:27:49.129154'),(12,'auth','0007_alter_validators_add_error_messages','2023-07-18 11:27:49.137506'),(13,'auth','0008_alter_user_username_max_length','2023-07-18 11:27:49.170877'),(14,'auth','0009_alter_user_last_name_max_length','2023-07-18 11:27:49.202220'),(15,'auth','0010_alter_group_name_max_length','2023-07-18 11:27:49.245228'),(16,'auth','0011_update_proxy_permissions','2023-07-18 11:27:49.255177'),(17,'auth','0012_alter_user_first_name_max_length','2023-07-18 11:27:49.284906'),(18,'sessions','0001_initial','2023-07-18 11:27:49.331089'),(19,'distr','0001_initial','2023-07-18 14:47:07.767130'),(20,'distr','0002_alter_categoria_options_alter_subcategoria_options_and_more','2023-07-18 14:51:49.977085'),(21,'distr','0003_marca_tipo_modelo','2023-07-18 14:56:44.576559'),(22,'distr','0004_movimento_produto_item_etiqueta','2023-07-19 21:16:24.204915'),(23,'distr','0005_alter_modelo_marca_alter_subcategoria_categoria','2023-07-31 17:01:53.077544');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('iuz6g97tz5x6eqzrtzaknuor0cgfnthj','e30:1qLjcF:oRgYYFgfxnDVLBZD9l14s1NWkhmNbA-IViz1kPBCC9c','2023-08-01 12:15:43.861660'),('wcqus19uazog4hnb6g3g655tivythp93','.eJxVjMEOwiAQRP-FsyFdlrbBo3e_gezCIlUDSWlPjf9um_Sgt8m8N7MpT-uS_dpk9lNUVwXq8tsxhZeUA8QnlUfVoZZlnlgfij5p0_ca5X073b-DTC3va4TBDRaMSQxJTB-6DlwwIkQJ0BEIJrEY7IgWIErPZuz3bDmxi8jq8wXRRDe6:1qTnql:IgOdVSTcEnQbleiVEhU0H7Tp9Fqs0xHxBcAFMzRxDSc','2023-08-23 18:24:03.623003'),('xax34nnfl51beu976xiojm4bsbvlim4t','e30:1qLjgU:-sr7tfQF2CcEoRRat35KTe2rnO6nb_JHTPmBFg2-MGY','2023-08-01 12:20:06.294382');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etiqueta`
--

DROP TABLE IF EXISTS `etiqueta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `etiqueta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Quantidade` int(11) NOT NULL,
  `Produto_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `etiqueta_Produto_id_f2f9a721_fk_produto_id` (`Produto_id`),
  CONSTRAINT `etiqueta_Produto_id_f2f9a721_fk_produto_id` FOREIGN KEY (`Produto_id`) REFERENCES `produto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etiqueta`
--

LOCK TABLES `etiqueta` WRITE;
/*!40000 ALTER TABLE `etiqueta` DISABLE KEYS */;
/*!40000 ALTER TABLE `etiqueta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Quantidade` int(11) NOT NULL,
  `Custo` decimal(12,2) NOT NULL,
  `Preco` decimal(12,2) NOT NULL,
  `Movimento_id` bigint(20) NOT NULL,
  `Produto_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_Movimento_id_c3071a3d_fk_movimento_id` (`Movimento_id`),
  KEY `item_Produto_id_b7aec91d_fk_produto_id` (`Produto_id`),
  CONSTRAINT `item_Movimento_id_c3071a3d_fk_movimento_id` FOREIGN KEY (`Movimento_id`) REFERENCES `movimento` (`id`),
  CONSTRAINT `item_Produto_id_b7aec91d_fk_produto_id` FOREIGN KEY (`Produto_id`) REFERENCES `produto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Marca` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'Motorola'),(2,'Apple');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo`
--

DROP TABLE IF EXISTS `modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Modelo` varchar(16) NOT NULL,
  `Marca_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `modelo_Marca_id_d95b0419_fk_marca_id` (`Marca_id`),
  CONSTRAINT `modelo_Marca_id_d95b0419_fk_marca_id` FOREIGN KEY (`Marca_id`) REFERENCES `marca` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo`
--

LOCK TABLES `modelo` WRITE;
/*!40000 ALTER TABLE `modelo` DISABLE KEYS */;
INSERT INTO `modelo` VALUES (1,'G5',1),(2,'G7',1),(3,'A10',1),(4,'I10',2),(5,'I11',2),(6,'I12',2);
/*!40000 ALTER TABLE `modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimento`
--

DROP TABLE IF EXISTS `movimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimento` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Saida` tinyint(1) NOT NULL,
  `Obs` varchar(40) NOT NULL,
  `wins` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimento`
--

LOCK TABLES `movimento` WRITE;
/*!40000 ALTER TABLE `movimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `EAN` varchar(13) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `Custo` decimal(12,2) NOT NULL,
  `Preco` decimal(12,2) NOT NULL,
  `Categoria_id` bigint(20) NOT NULL,
  `Marca_id` bigint(20) NOT NULL,
  `Modelo_id` bigint(20) NOT NULL,
  `Subcategoria_id` bigint(20) NOT NULL,
  `Tipo_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `produto_Categoria_id_5e1d7239_fk_categoria_id` (`Categoria_id`),
  KEY `produto_Marca_id_b7472c24_fk_marca_id` (`Marca_id`),
  KEY `produto_Modelo_id_b34c91fd_fk_modelo_id` (`Modelo_id`),
  KEY `produto_Subcategoria_id_8ecbdc36_fk_subcategoria_id` (`Subcategoria_id`),
  KEY `produto_Tipo_id_855730a9_fk_tipo_id` (`Tipo_id`),
  CONSTRAINT `produto_Categoria_id_5e1d7239_fk_categoria_id` FOREIGN KEY (`Categoria_id`) REFERENCES `categoria` (`id`),
  CONSTRAINT `produto_Marca_id_b7472c24_fk_marca_id` FOREIGN KEY (`Marca_id`) REFERENCES `marca` (`id`),
  CONSTRAINT `produto_Modelo_id_b34c91fd_fk_modelo_id` FOREIGN KEY (`Modelo_id`) REFERENCES `modelo` (`id`),
  CONSTRAINT `produto_Subcategoria_id_8ecbdc36_fk_subcategoria_id` FOREIGN KEY (`Subcategoria_id`) REFERENCES `subcategoria` (`id`),
  CONSTRAINT `produto_Tipo_id_855730a9_fk_tipo_id` FOREIGN KEY (`Tipo_id`) REFERENCES `tipo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (2,'1234567890123',1,11.00,22.00,1,1,3,1,1);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategoria`
--

DROP TABLE IF EXISTS `subcategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategoria` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Subcategoria` varchar(16) NOT NULL,
  `Categoria_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `distr_subcategoria_Categoria_id_fb975bcd_fk_distr_categoria_id` (`Categoria_id`),
  CONSTRAINT `distr_subcategoria_Categoria_id_fb975bcd_fk_distr_categoria_id` FOREIGN KEY (`Categoria_id`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategoria`
--

LOCK TABLES `subcategoria` WRITE;
/*!40000 ALTER TABLE `subcategoria` DISABLE KEYS */;
INSERT INTO `subcategoria` VALUES (1,'Cristal',1),(2,'Fume',1),(3,'Rosa',1),(4,'Verde',1),(5,'Azul',1),(6,'Filme',2),(7,'Vidro',2),(8,'Gorillas',2);
/*!40000 ALTER TABLE `subcategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES (1,'Light'),(2,'Normal'),(3,'Extra');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-09 16:12:56
